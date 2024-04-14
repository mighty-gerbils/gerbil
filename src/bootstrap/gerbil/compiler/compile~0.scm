(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1713453201)
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
        (letrec ((_%hash-e146337%_
                  (lambda (_%id146339%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id146339%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e146337%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp147724 (list gxc#::void::t))
            (__tmp147723 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp147724
         '()
         __tmp147723
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args146333%_
        (apply make-instance gxc#::collect-bindings::t _%$args146333%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp147725
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
        (__make-promise __tmp147725)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx146325%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self146328%_
                (let ((__obj147699
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj147699))
               (__tmp147726
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146328%_ _%stx146325%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147726
           gxc#current-compile-method
           _%self146328%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp147728 (list gxc#::void::t))
            (__tmp147727 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp147728
         '(modules)
         __tmp147727
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args146322%_
        (apply make-instance gxc#::lift-modules::t _%$args146322%_)))
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
      (let ((__tmp147729
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
        (__make-promise __tmp147729)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords146296%_ _%modules146293146297%_ _%stx146299%_)
        (let ((_%modules146302%_
               (if (eq? _%modules146293146297%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules146293146297%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self146304%_
                  (let ((__obj147701
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147701
                       _%modules146302%_
                       '1
                       '#f
                       '#f))
                    __obj147701))
                 (__tmp147730
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self146304%_ _%stx146299%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147730
             gxc#current-compile-method
             _%self146304%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords146311%_ . _%args146312%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords146311%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146311%_
                  'modules:
                  absent-value))
               _%args146312%_)))
    (define gxc#apply-lift-modules
      (lambda _%args146294146318%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args146294146318%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp147732 (list)) (__tmp147731 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp147732
         '()
         __tmp147731
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args146289%_
        (apply make-instance gxc#::find-runtime-code::t _%$args146289%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp147733
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
        (__make-promise __tmp147733)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx146281%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self146284%_
                (let ((__obj147703
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj147703))
               (__tmp147734
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146284%_ _%stx146281%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147734
           gxc#current-compile-method
           _%self146284%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp147736 (list gxc#::false::t))
            (__tmp147735 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp147736
         '()
         __tmp147735
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args146278%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args146278%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp147737
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
        (__make-promise __tmp147737)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx146270%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self146273%_
                (let ((__obj147705
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj147705))
               (__tmp147738
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146273%_ _%stx146270%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147738
           gxc#current-compile-method
           _%self146273%_))))
    (define gxc#::count-values::t
      (let ((__tmp147740 (list gxc#::false-expression::t))
            (__tmp147739 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp147740
         '()
         __tmp147739
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args146267%_
        (apply make-instance gxc#::count-values::t _%$args146267%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp147741
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
        (__make-promise __tmp147741)))
    (define gxc#apply-count-values
      (lambda (_%stx146259%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self146262%_
                (let ((__obj147707
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj147707))
               (__tmp147742
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146262%_ _%stx146259%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147742
           gxc#current-compile-method
           _%self146262%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp147743 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp147743
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args146256%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args146256%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp147744
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
        (__make-promise __tmp147744)))
    (define gxc#::generate-loader::t
      (let ((__tmp147746 (list gxc#::generate-runtime-empty::t))
            (__tmp147745 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp147746
         '()
         __tmp147745
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args146252%_
        (apply make-instance gxc#::generate-loader::t _%$args146252%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp147747
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
        (__make-promise __tmp147747)))
    (define gxc#apply-generate-loader
      (lambda (_%stx146244%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self146247%_
                (let ((__obj147710
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj147710))
               (__tmp147748
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146247%_ _%stx146244%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147748
           gxc#current-compile-method
           _%self146247%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp147749 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp147749
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args146241%_
        (apply make-instance gxc#::generate-runtime::t _%$args146241%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp147750
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
        (__make-promise __tmp147750)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx146233%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self146236%_
                (let ((__obj147712
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj147712))
               (__tmp147751
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146236%_ _%stx146233%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147751
           gxc#current-compile-method
           _%self146236%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp147753 (list gxc#::generate-runtime::t))
            (__tmp147752 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp147753
         '()
         __tmp147752
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args146230%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args146230%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp147754
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
        (__make-promise __tmp147754)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx146222%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self146225%_
                (let ((__obj147714
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj147714))
               (__tmp147755
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self146225%_ _%stx146222%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147755
           gxc#current-compile-method
           _%self146225%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp147756 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp147756
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args146219%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args146219%_)))
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
      (let ((__tmp147757
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
        (__make-promise __tmp147757)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords146193%_ _%table146190146194%_ _%stx146196%_)
        (let ((_%table146199%_
               (if (eq? _%table146190146194%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table146190146194%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self146201%_
                  (let ((__obj147716
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147716
                       _%table146199%_
                       '1
                       '#f
                       '#f))
                    __obj147716))
                 (__tmp147758
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self146201%_ _%stx146196%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147758
             gxc#current-compile-method
             _%self146201%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords146208%_ . _%args146209%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords146208%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146208%_
                  'table:
                  absent-value))
               _%args146209%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args146191146215%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args146191146215%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp147760 (list gxc#::void-expression::t))
            (__tmp147759 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp147760
         '(state)
         __tmp147759
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args146186%_
        (apply make-instance gxc#::generate-meta::t _%$args146186%_)))
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
      (let ((__tmp147761
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
        (__make-promise __tmp147761)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords146160%_ _%state146157146161%_ _%stx146163%_)
        (let ((_%state146166%_
               (if (eq? _%state146157146161%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state146157146161%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self146168%_
                  (let ((__obj147718
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147718
                       _%state146166%_
                       '1
                       '#f
                       '#f))
                    __obj147718))
                 (__tmp147762
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self146168%_ _%stx146163%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147762
             gxc#current-compile-method
             _%self146168%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords146175%_ . _%args146176%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords146175%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146175%_
                  'state:
                  absent-value))
               _%args146176%_)))
    (define gxc#apply-generate-meta
      (lambda _%args146158146182%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args146158146182%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp147764 (list)) (__tmp147763 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp147764
         '(state)
         __tmp147763
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args146153%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args146153%_)))
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
      (let ((__tmp147765
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
        (__make-promise __tmp147765)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords146127%_ _%state146124146128%_ _%stx146130%_)
        (let ((_%state146133%_
               (if (eq? _%state146124146128%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state146124146128%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self146135%_
                  (let ((__obj147720
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147720
                       _%state146133%_
                       '1
                       '#f
                       '#f))
                    __obj147720))
                 (__tmp147766
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self146135%_ _%stx146130%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147766
             gxc#current-compile-method
             _%self146135%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords146142%_ . _%args146143%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords146142%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146142%_
                  'state:
                  absent-value))
               _%args146143%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args146125146149%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args146125146149%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self146053%_ _%stx146054%_)
        (let* ((_%g146056146073%_
                (lambda (_%g146057146070%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146057146070%_))))
               (_%g146055146120%_
                (lambda (_%g146057146076%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146057146076%_))
                      (let ((_%e146060146078%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146057146076%_))))
                        (let ((_%hd146061146081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146060146078%_)))
                              (_%tl146062146083%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146060146078%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146062146083%_))
                              (let ((_%e146063146086%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146062146083%_))))
                                (let ((_%hd146064146089%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146063146086%_)))
                                      (_%tl146065146091%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146063146086%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146065146091%_))
                                      (let ((_%e146066146094%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146065146091%_))))
                                        (let ((_%hd146067146097%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146066146094%_)))
                                              (_%tl146068146099%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146066146094%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146068146099%_))
                                              ((lambda (_%L146102%_
                                                        _%L146103%_)
                                                 (let ((__tmp147767
                                                        (lambda (_%bind146118%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind146118%_))
                      (gxc#add-module-binding! _%bind146118%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp147767
                                                    _%L146103%_)))
                                               _%hd146067146097%_
                                               _%hd146064146089%_)
                                              (_%g146056146073%_
                                               _%g146057146076%_))))
                                      (_%g146056146073%_ _%g146057146076%_))))
                              (_%g146056146073%_ _%g146057146076%_))))
                      (_%g146056146073%_ _%g146057146076%_)))))
          (_%g146055146120%_ _%stx146054%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self145985%_ _%stx145986%_)
        (let* ((_%g145988146005%_
                (lambda (_%g145989146002%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145989146002%_))))
               (_%g145987146050%_
                (lambda (_%g145989146008%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145989146008%_))
                      (let ((_%e145992146010%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145989146008%_))))
                        (let ((_%hd145993146013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145992146010%_)))
                              (_%tl145994146015%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145992146010%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145994146015%_))
                              (let ((_%e145995146018%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145994146015%_))))
                                (let ((_%hd145996146021%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145995146018%_)))
                                      (_%tl145997146023%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145995146018%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145997146023%_))
                                      (let ((_%e145998146026%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145997146023%_))))
                                        (let ((_%hd145999146029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145998146026%_)))
                                              (_%tl146000146031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145998146026%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146000146031%_))
                                              ((lambda (_%L146034%_
                                                        _%L146035%_)
                                                 (gxc#add-module-binding!
                                                  _%L146035%_
                                                  '#t))
                                               _%hd145999146029%_
                                               _%hd145996146021%_)
                                              (_%g145988146005%_
                                               _%g145989146008%_))))
                                      (_%g145988146005%_ _%g145989146008%_))))
                              (_%g145988146005%_ _%g145989146008%_))))
                      (_%g145988146005%_ _%g145989146008%_)))))
          (_%g145987146050%_ _%stx145986%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self145927%_ _%stx145928%_)
        (let* ((_%g145930145944%_
                (lambda (_%g145931145941%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145931145941%_))))
               (_%g145929145982%_
                (lambda (_%g145931145947%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145931145947%_))
                      (let ((_%e145934145949%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145931145947%_))))
                        (let ((_%hd145935145952%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145934145949%_)))
                              (_%tl145936145954%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145934145949%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145936145954%_))
                              (let ((_%e145937145957%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145936145954%_))))
                                (let ((_%hd145938145960%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145937145957%_)))
                                      (_%tl145939145962%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145937145957%_))))
                                  ((lambda (_%L145965%_ _%L145966%_)
                                     (let ((_%ctx145979%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L145966%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self145927%_
                                           'modules))
                                        (cons _%ctx145979%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self145927%_
                                                        'modules)))))
                                       (let ((__tmp147768
                                              (lambda ()
                                                (let ((__tmp147769
                                                       (##structure-ref
                                                        _%ctx145979%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self145927%_
                                                   __tmp147769)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp147768
                                          gx#current-expander-context
                                          _%ctx145979%_))))
                                   _%tl145939145962%_
                                   _%hd145938145960%_)))
                              (_%g145930145944%_ _%g145931145947%_))))
                      (_%g145930145944%_ _%g145931145947%_)))))
          (_%g145929145982%_ _%stx145928%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls145880145882%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls145880145882%_
              (let ((_%decls145885%_ _%decls145880145882%_))
                (let _%lp145887%_ ((_%rest145889%_ _%decls145885%_))
                  (let* ((_%rest145890145898%_ _%rest145889%_)
                         (_%else145892145906%_ (lambda () '#f))
                         (_%K145894145915%_
                          (lambda (_%decls145909%_ _%decl145910%_)
                            (if (equal? _%decl145910%_ '(not safe))
                                '#t
                                (if (equal? _%decl145910%_ '(safe))
                                    '#f
                                    (_%lp145887%_ _%decls145909%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145890145898%_))
                        (let ((_%hd145895145918%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145890145898%_)))
                              (_%tl145896145920%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145890145898%_))))
                          (let* ((_%decl145923%_ _%hd145895145918%_)
                                 (_%decls145925%_ _%tl145896145920%_))
                            (_%K145894145915%_
                             _%decls145925%_
                             _%decl145923%_)))
                        (_%else145892145906%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id145874%_ _%syntax?145875%_)
        (let ((_%eid145877%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id145874%_))
                '1
                gx#binding::t
                '#f))
              (_%ht145878%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid145877%_))
              '#!void
              (let ((__tmp147770
                     (let ((__tmp147771
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid145877%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp147771 _%syntax?145875%_))))
                (declare (not safe))
                (hash-put! _%ht145878%_ _%eid145877%_ __tmp147770))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id145872%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id145872%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key145827%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key145827%_))
            _%key145827%_
            (if (uninterned-symbol? _%key145827%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key145827%_))
                (let* ((_%key145831145838%_ _%key145827%_)
                       (_%E145833145842%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key145831145838%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K145834145860%_
                        (lambda (_%mark145845%_ _%eid145846%_)
                          (let ((_%$e145848%_
                                 (##structure-ref
                                  _%mark145845%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e145848%_
                                ((lambda (_%ht145851%_)
                                   (let ((_%$e145853%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht145851%_
                                             _%eid145846%_))))
                                     (if _%$e145853%_
                                         ((lambda (_%id145856%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id145856%_))
                                                _%id145856%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id145856%_))))
                                          _%$e145853%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid145846%_))))
                                 _%$e145848%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid145846%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%key145831145838%_))
                      (let ((_%hd145835145863%_
                             (let ()
                               (declare (not safe))
                               (##car _%key145831145838%_)))
                            (_%tl145836145865%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key145831145838%_))))
                        (let* ((_%eid145868%_ _%hd145835145863%_)
                               (_%mark145870%_ _%tl145836145865%_))
                          (_%K145834145860%_ _%mark145870%_ _%eid145868%_)))
                      (_%E145833145842%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self145824%_ _%stx145825%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self145671%_ _%stx145672%_)
        (letrec ((_%simplify145674%_
                  (lambda (_%body145722%_)
                    (let _%lp145724%_ ((_%rest145726%_ _%body145722%_)
                                       (_%r145727%_ '()))
                      (let* ((_%rest145728145736%_ _%rest145726%_)
                             (_%else145730145744%_
                              (lambda () (reverse _%r145727%_)))
                             (_%K145732145812%_
                              (lambda (_%rest145747%_ _%hd145748%_)
                                (let* ((_%hd145749145765%_ _%hd145748%_)
                                       (_%else145753145773%_
                                        (lambda ()
                                          (_%lp145724%_
                                           _%rest145747%_
                                           (cons _%hd145748%_ _%r145727%_)))))
                                  (let ((_%K145761145802%_
                                         (lambda (_%exprs145800%_)
                                           (_%lp145724%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest145747%_
                                               _%exprs145800%_))
                                            _%r145727%_)))
                                        (_%K145756145786%_
                                         (lambda ()
                                           (if (null? _%rest145747%_)
                                               (_%lp145724%_
                                                _%rest145747%_
                                                (cons _%hd145748%_
                                                      _%r145727%_))
                                               (_%lp145724%_
                                                _%rest145747%_
                                                _%r145727%_))))
                                        (_%K145755145778%_
                                         (lambda ()
                                           (if (null? _%rest145747%_)
                                               (_%lp145724%_
                                                _%rest145747%_
                                                (cons _%hd145748%_
                                                      _%r145727%_))
                                               (_%lp145724%_
                                                _%rest145747%_
                                                _%r145727%_)))))
                                    (let ((_%try-match145752145781%_
                                           (lambda ()
                                             (if (symbol? _%hd145749145765%_)
                                                 (_%K145755145778%_)
                                                 (_%else145753145773%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd145749145765%_))
                                          (let ((_%tl145763145807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd145749145765%_)))
                                                (_%hd145762145805%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd145749145765%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd145762145805%_
                                                         'begin))
                                                (let ((_%exprs145810%_
                                                       _%tl145763145807%_))
                                                  (_%K145761145802%_
                                                   _%exprs145810%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd145762145805%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl145763145807%_))
                                                        (let ((_%tl145760145794%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl145763145807%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl145760145794%_))
                      (_%K145756145786%_)
                      (_%try-match145752145781%_)))
                (_%try-match145752145781%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match145752145781%_))))
                                          (_%try-match145752145781%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest145728145736%_))
                            (let ((_%hd145733145815%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest145728145736%_)))
                                  (_%tl145734145817%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest145728145736%_))))
                              (let* ((_%hd145820%_ _%hd145733145815%_)
                                     (_%rest145822%_ _%tl145734145817%_))
                                (_%K145732145812%_
                                 _%rest145822%_
                                 _%hd145820%_)))
                            (_%else145730145744%_)))))))
          (let* ((_%g145676145686%_
                  (lambda (_%g145677145683%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g145677145683%_))))
                 (_%g145675145719%_
                  (lambda (_%g145677145689%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g145677145689%_))
                        (let ((_%e145679145691%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g145677145689%_))))
                          (let ((_%hd145680145694%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145679145691%_)))
                                (_%tl145681145696%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145679145691%_))))
                            ((lambda (_%L145699%_)
                               (let* ((_%body145714%_
                                       (map (lambda (_%g145709145711%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self145671%_
                                                 _%g145709145711%_)))
                                            _%L145699%_))
                                      (_%body145716%_
                                       (_%simplify145674%_ _%body145714%_)))
                                 (if (let ((__tmp147772
                                            (length _%body145716%_)))
                                       (declare (not safe))
                                       (##fx= __tmp147772 '1))
                                     (car _%body145716%_)
                                     (cons 'begin _%body145716%_))))
                             _%tl145681145696%_)))
                        (_%g145676145686%_ _%g145677145689%_)))))
            (_%g145675145719%_ _%stx145672%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self145632%_ _%stx145633%_)
        (let* ((_%g145635145645%_
                (lambda (_%g145636145642%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145636145642%_))))
               (_%g145634145668%_
                (lambda (_%g145636145648%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145636145648%_))
                      (let ((_%e145638145650%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145636145648%_))))
                        (let ((_%hd145639145653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145638145650%_)))
                              (_%tl145640145655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145638145650%_))))
                          ((lambda (_%L145658%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L145658%_))))
                           _%tl145640145655%_)))
                      (_%g145635145645%_ _%g145636145648%_)))))
          (_%g145634145668%_ _%stx145633%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self145396%_ _%stx145397%_)
        (let* ((_%__stx146362146363%_ _%stx145397%_)
               (_%g145401145453%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx146362146363%_)))))
          (let ((_%__kont146364146365%_
                 (lambda (_%L145614%_ _%L145615%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self145396%_ _%L145614%_))))
                (_%__kont146366146367%_
                 (lambda (_%L145562%_ _%L145563%_ _%L145564%_)
                   (if (let ((__tmp147773
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L145564%_))))
                         (declare (not safe))
                         (##memq __tmp147773 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self145396%_ _%L145562%_)))))
                (_%__kont146370146371%_
                 (lambda (_%L145482%_ _%L145483%_)
                   (let ((_%decls145498%_ (map gx#syntax->datum _%L145483%_)))
                     (let ((__tmp147776
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls145498%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self145396%_
                                                   _%L145482%_))
                                                '())))))
                           (__tmp147774
                            (let ((__tmp147775
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp147775 _%decls145498%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp147776
                        gxc#current-compile-decls
                        __tmp147774))))))
            (let* ((_%__match146417146418%_
                    (lambda (_%e145417145506%_
                             _%hd145418145509%_
                             _%tl145419145511%_
                             _%e145420145514%_
                             _%hd145421145517%_
                             _%tl145422145519%_
                             _%e145423145522%_
                             _%hd145424145525%_
                             _%tl145425145527%_
                             _%__splice146368146369%_
                             _%target145426145530%_
                             _%tl145428145532%_)
                      (letrec ((_%loop145429145535%_
                                (lambda (_%hd145427145538%_
                                         _%param145433145540%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd145427145538%_))
                                      (let ((_%e145430145543%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd145427145538%_))))
                                        (let ((_%lp-tl145432145548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145430145543%_)))
                                              (_%lp-hd145431145546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145430145543%_))))
                                          (_%loop145429145535%_
                                           _%lp-tl145432145548%_
                                           (cons _%lp-hd145431145546%_
                                                 _%param145433145540%_))))
                                      (let ((_%param145434145551%_
                                             (reverse _%param145433145540%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl145422145519%_))
                                            (let ((_%e145435145554%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl145422145519%_))))
                                              (let ((_%tl145437145559%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145435145554%_)))
                                                    (_%hd145436145557%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145435145554%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl145437145559%_))
                                                    (let ((_%L145562%_
                                                           _%hd145436145557%_)
                                                          (_%L145563%_
                                                           _%param145434145551%_)
                                                          (_%L145564%_
                                                           _%hd145424145525%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L145564%_))
                       (not (let ((__tmp147777
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L145564%_))))
                              (declare (not safe))
                              (##memq __tmp147777 gxc#gambit-annotations))))
                  (_%__kont146366146367%_ _%L145562%_ _%L145563%_ _%L145564%_)
                  (_%__kont146370146371%_
                   _%hd145436145557%_
                   _%hd145421145517%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g145401145453%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g145401145453%_))))))))
                        (_%loop145429145535%_ _%target145426145530%_ '()))))
                   (_%__match146391146392%_
                    (lambda (_%e145405145590%_
                             _%hd145406145593%_
                             _%tl145407145595%_
                             _%e145408145598%_
                             _%hd145409145601%_
                             _%tl145410145603%_
                             _%e145411145606%_
                             _%hd145412145609%_
                             _%tl145413145611%_)
                      (let ((_%L145614%_ _%hd145412145609%_)
                            (_%L145615%_ _%hd145409145601%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L145615%_))
                            (_%__kont146364146365%_ _%L145614%_ _%L145615%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd145409145601%_))
                                (let ((_%e145423145522%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd145409145601%_))))
                                  (let ((_%tl145425145527%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e145423145522%_)))
                                        (_%hd145424145525%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e145423145522%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl145425145527%_))
                                        (let ((_%__splice146368146369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl145425145527%_
                                                  '0))))
                                          (let ((_%tl145428145532%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice146368146369%_
                                                    '1)))
                                                (_%target145426145530%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice146368146369%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145428145532%_))
                                                (_%__match146417146418%_
                                                 _%e145405145590%_
                                                 _%hd145406145593%_
                                                 _%tl145407145595%_
                                                 _%e145408145598%_
                                                 _%hd145409145601%_
                                                 _%tl145410145603%_
                                                 _%e145423145522%_
                                                 _%hd145424145525%_
                                                 _%tl145425145527%_
                                                 _%__splice146368146369%_
                                                 _%target145426145530%_
                                                 _%tl145428145532%_)
                                                (_%__kont146370146371%_
                                                 _%hd145412145609%_
                                                 _%hd145409145601%_))))
                                        (_%__kont146370146371%_
                                         _%hd145412145609%_
                                         _%hd145409145601%_))))
                                (_%__kont146370146371%_
                                 _%hd145412145609%_
                                 _%hd145409145601%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx146362146363%_))
                  (let ((_%e145405145590%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx146362146363%_))))
                    (let ((_%tl145407145595%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145405145590%_)))
                          (_%hd145406145593%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145405145590%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl145407145595%_))
                          (let ((_%e145408145598%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl145407145595%_))))
                            (let ((_%tl145410145603%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145408145598%_)))
                                  (_%hd145409145601%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145408145598%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl145410145603%_))
                                  (let ((_%e145411145606%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl145410145603%_))))
                                    (let ((_%tl145413145611%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145411145606%_)))
                                          (_%hd145412145609%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145411145606%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl145413145611%_))
                                          (_%__match146391146392%_
                                           _%e145405145590%_
                                           _%hd145406145593%_
                                           _%tl145407145595%_
                                           _%e145408145598%_
                                           _%hd145409145601%_
                                           _%tl145410145603%_
                                           _%e145411145606%_
                                           _%hd145412145609%_
                                           _%tl145413145611%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd145409145601%_))
                                              (let ((_%e145423145522%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd145409145601%_))))
                                                (let ((_%tl145425145527%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145423145522%_)))
                                                      (_%hd145424145525%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145423145522%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl145425145527%_))
                                                      (let ((_%__splice146368146369%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl145425145527%_ '0))))
                (let ((_%tl145428145532%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice146368146369%_ '1)))
                      (_%target145426145530%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice146368146369%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl145428145532%_))
                      (_%__match146417146418%_
                       _%e145405145590%_
                       _%hd145406145593%_
                       _%tl145407145595%_
                       _%e145408145598%_
                       _%hd145409145601%_
                       _%tl145410145603%_
                       _%e145423145522%_
                       _%hd145424145525%_
                       _%tl145425145527%_
                       _%__splice146368146369%_
                       _%target145426145530%_
                       _%tl145428145532%_)
                      (let () (declare (not safe)) (_%g145401145453%_)))))
              (let () (declare (not safe)) (_%g145401145453%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g145401145453%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd145409145601%_))
                                      (let ((_%e145423145522%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd145409145601%_))))
                                        (let ((_%tl145425145527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145423145522%_)))
                                              (_%hd145424145525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145423145522%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl145425145527%_))
                                              (let ((_%__splice146368146369%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl145425145527%_
                                                        '0))))
                                                (let ((_%tl145428145532%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice146368146369%_
                                                          '1)))
                                                      (_%target145426145530%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice146368146369%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145428145532%_))
                                                      (_%__match146417146418%_
                                                       _%e145405145590%_
                                                       _%hd145406145593%_
                                                       _%tl145407145595%_
                                                       _%e145408145598%_
                                                       _%hd145409145601%_
                                                       _%tl145410145603%_
                                                       _%e145423145522%_
                                                       _%hd145424145525%_
                                                       _%tl145425145527%_
                                                       _%__splice146368146369%_
                                                       _%target145426145530%_
                                                       _%tl145428145532%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g145401145453%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g145401145453%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g145401145453%_))))))
                          (let () (declare (not safe)) (_%g145401145453%_)))))
                  (let () (declare (not safe)) (_%g145401145453%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self145355%_ _%stx145356%_)
        (let* ((_%g145358145368%_
                (lambda (_%g145359145365%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145359145365%_))))
               (_%g145357145393%_
                (lambda (_%g145359145371%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145359145371%_))
                      (let ((_%e145361145373%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145359145371%_))))
                        (let ((_%hd145362145376%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145361145373%_)))
                              (_%tl145363145378%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145361145373%_))))
                          ((lambda (_%L145381%_)
                             (let ((_%decls145391%_
                                    (map gx#syntax->datum _%L145381%_)))
                               (let ((__tmp147778
                                      (let ((__tmp147779
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp147779
                                         _%decls145391%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp147778))
                               (cons 'declare _%decls145391%_)))
                           _%tl145363145378%_)))
                      (_%g145358145368%_ _%g145359145371%_)))))
          (_%g145357145393%_ _%stx145356%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self145101%_ _%stx145102%_)
        (let* ((_%g145104145121%_
                (lambda (_%g145105145118%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145105145118%_))))
               (_%g145103145352%_
                (lambda (_%g145105145124%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145105145124%_))
                      (let ((_%e145108145126%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145105145124%_))))
                        (let ((_%hd145109145129%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145108145126%_)))
                              (_%tl145110145131%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145108145126%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145110145131%_))
                              (let ((_%e145111145134%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145110145131%_))))
                                (let ((_%hd145112145137%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145111145134%_)))
                                      (_%tl145113145139%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145111145134%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145113145139%_))
                                      (let ((_%e145114145142%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145113145139%_))))
                                        (let ((_%hd145115145145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145114145142%_)))
                                              (_%tl145116145147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145114145142%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145116145147%_))
                                              ((lambda (_%L145150%_
                                                        _%L145151%_)
                                                 (let* ((_%__stx146470146471%_
                                                         _%L145151%_)
                                                        (_%g145168145182%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx146470146471%_)))))
                                                   (let ((_%__kont146472146473%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self145101%_
                                                               _%L145150%_))))
                                                         (_%__kont146474146475%_
                                                          (lambda (_%L145314%_)
                                                            (let ((_%eid145323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L145314%_))))
                      (let ((_%lambda-expr145324145326%_
                             (gxc#apply-find-lambda-expression _%L145150%_)))
                        (if _%lambda-expr145324145326%_
                            (let* ((_%lambda-expr145329%_
                                    _%lambda-expr145324145326%_)
                                   (__tmp147780
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp147780
                               _%lambda-expr145329%_
                               _%eid145323%_))
                            '#f))
                      (cons 'define
                            (cons _%eid145323%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self145101%_
                                           _%L145150%_))
                                        '()))))))
                 (_%__kont146476146477%_
                  (lambda ()
                    (let* ((_%tmp145189%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body145298%_
                            (let _%lp145191%_ ((_%rest145193%_ _%L145151%_)
                                               (_%k145194%_ '0)
                                               (_%r145195%_ '()))
                              (let* ((_%__stx146440146441%_ _%rest145193%_)
                                     (_%g145200145217%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx146440146441%_)))))
                                (let ((_%__kont146442146443%_
                                       (lambda (_%L145285%_)
                                         (_%lp145191%_
                                          _%L145285%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k145194%_ '1))
                                          _%r145195%_)))
                                      (_%__kont146444146445%_
                                       (lambda (_%L145258%_ _%L145259%_)
                                         (_%lp145191%_
                                          _%L145258%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k145194%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L145259%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp145189%_
                           _%k145194%_
                           _%L145258%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r145195%_))))
                                      (_%__kont146446146447%_
                                       (lambda (_%L145229%_)
                                         (let ((__tmp147781
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L145229%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp145189%_
                                 _%k145194%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp147781
                                            _%r145195%_))))
                                      (_%__kont146448146449%_
                                       (lambda () (reverse _%r145195%_))))
                                  (let ((_%g145198145245%_
                                         (lambda ()
                                           (let ((_%L145229%_
                                                  _%__stx146440146441%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L145229%_))
                                                 (_%__kont146446146447%_
                                                  _%L145229%_)
                                                 (_%__kont146448146449%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx146440146441%_))
                                        (let ((_%e145203145274%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx146440146441%_))))
                                          (let ((_%tl145205145279%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145203145274%_)))
                                                (_%hd145204145277%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145203145274%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd145204145277%_))
                                                (let ((_%e145206145282%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145204145277%_))))
                                                  (if (equal? _%e145206145282%_
                                                              '#f)
                                                      (_%__kont146442146443%_
                                                       _%tl145205145279%_)
                                                      (_%__kont146444146445%_
                                                       _%tl145205145279%_
                                                       _%hd145204145277%_)))
                                                (_%__kont146444146445%_
                                                 _%tl145205145279%_
                                                 _%hd145204145277%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g145198145245%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp145189%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self145101%_
                                                       _%L145150%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp145189%_
                                         _%L145151%_
                                         _%L145150%_)
                                        _%body145298%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx146470146471%_))
                                                         (let ((_%e145170145336%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx146470146471%_))))
                   (let ((_%tl145172145341%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e145170145336%_)))
                         (_%hd145171145339%_
                          (let ()
                            (declare (not safe))
                            (##car _%e145170145336%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd145171145339%_))
                         (let ((_%e145173145344%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd145171145339%_))))
                           (if (equal? _%e145173145344%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl145172145341%_))
                                   (_%__kont146472146473%_)
                                   (_%__kont146476146477%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl145172145341%_))
                                   (_%__kont146474146475%_ _%hd145171145339%_)
                                   (_%__kont146476146477%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145172145341%_))
                             (_%__kont146474146475%_ _%hd145171145339%_)
                             (_%__kont146476146477%_)))))
                 (_%__kont146476146477%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd145115145145%_
                                               _%hd145112145137%_)
                                              (_%g145104145121%_
                                               _%g145105145124%_))))
                                      (_%g145104145121%_ _%g145105145124%_))))
                              (_%g145104145121%_ _%g145105145124%_))))
                      (_%g145104145121%_ _%g145105145124%_)))))
          (_%g145103145352%_ _%stx145102%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals145076%_ _%hd145077%_ _%expr145078%_)
        (let ((_%$e145080%_ (gxc#apply-count-values _%expr145078%_)))
          (if _%$e145080%_
              ((lambda (_%count145083%_)
                 (let ((_%len145085%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd145077%_)))
                       (_%cmp145086%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd145077%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len145085%_ '0))
                           (_%cmp145086%_ _%count145083%_ _%len145085%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr145078%_
                          _%hd145077%_)))))
               _%$e145080%_)
              (let* ((_%len145092%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd145077%_)))
                     (_%cmp145094%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd145077%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg145096%_
                      (let ((__tmp147783
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd145077%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp147782 (number->string _%len145092%_)))
                        (declare (not safe))
                        (##string-append __tmp147783 __tmp147782 '" values")))
                     (_%count145098%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd145077%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len145092%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count145098%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals145076%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp145094%_
                                (cons _%count145098%_
                                      (cons _%len145092%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp145094%_
                                                        (cons _%count145098%_
                                                              (cons _%len145092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg145096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count145098%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var145071%_)
        (letrec ((_%generate-inline145073%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var145071%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var145071%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline145073%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline145073%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var145064%_ _%i145065%_ _%rest145066%_)
        (letrec ((_%generate-inline145068%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i145065%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest145066%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var145064%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var145064%_
                                                      (cons '0 '())))
                                          (cons _%var145064%_ '()))))
                        (cons '##vector-ref
                              (cons _%var145064%_ (cons _%i145065%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline145068%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline145068%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var145058%_ _%i145059%_)
        (if (let () (declare (not safe)) (##fx= _%i145059%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var145058%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var145058%_ '()))
                                  (cons (cons 'list (cons _%var145058%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var145058%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var145058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var145058%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i145059%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var145058%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var145058%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var145058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var145058%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var145058%_ '()))
                                (cons _%i145059%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var145058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i145059%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self144990%_ _%stx144991%_)
        (let* ((_%g144993145010%_
                (lambda (_%g144994145007%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144994145007%_))))
               (_%g144992145055%_
                (lambda (_%g144994145013%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144994145013%_))
                      (let ((_%e144997145015%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144994145013%_))))
                        (let ((_%hd144998145018%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144997145015%_)))
                              (_%tl144999145020%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144997145015%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144999145020%_))
                              (let ((_%e145000145023%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144999145020%_))))
                                (let ((_%hd145001145026%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145000145023%_)))
                                      (_%tl145002145028%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145000145023%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145002145028%_))
                                      (let ((_%e145003145031%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145002145028%_))))
                                        (let ((_%hd145004145034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145003145031%_)))
                                              (_%tl145005145036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145003145031%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145005145036%_))
                                              ((lambda (_%L145039%_
                                                        _%L145040%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self144990%_
                                                  _%L145040%_
                                                  _%L145039%_))
                                               _%hd145004145034%_
                                               _%hd145001145026%_)
                                              (_%g144993145010%_
                                               _%g144994145013%_))))
                                      (_%g144993145010%_ _%g144994145013%_))))
                              (_%g144993145010%_ _%g144994145013%_))))
                      (_%g144993145010%_ _%g144994145013%_)))))
          (_%g144992145055%_ _%stx144991%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self144949%_ _%hd144950%_ _%body144951%_)
        (let* ((_%hd144953%_ (gxc#generate-runtime-lambda-head _%hd144950%_))
               (_%body144955%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self144949%_ _%body144951%_)))
               (_%body144987%_
                (let* ((_%body144956144964%_ _%body144955%_)
                       (_%else144958144972%_
                        (lambda () (cons _%body144955%_ '())))
                       (_%K144960144977%_
                        (lambda (_%exprs144975%_) _%exprs144975%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body144956144964%_))
                      (let ((_%hd144961144980%_
                             (let ()
                               (declare (not safe))
                               (##car _%body144956144964%_)))
                            (_%tl144962144982%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body144956144964%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd144961144980%_ 'begin))
                            (let ((_%exprs144985%_ _%tl144962144982%_))
                              (_%K144960144977%_ _%exprs144985%_))
                            (_%else144958144972%_)))
                      (_%else144958144972%_)))))
          (cons 'lambda (cons _%hd144953%_ _%body144987%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd144947%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd144947%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self143486%_ _%stx143487%_)
        (letrec ((_%dispatch-case?143489%_
                  (lambda (_%hd144177%_ _%body144178%_)
                    (let* ((_%form144180%_
                            (cons _%hd144177%_ (cons _%body144178%_ '())))
                           (_%__stx146502146503%_ _%form144180%_)
                           (_%g144185144342%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx146502146503%_)))))
                      (let ((_%__kont146504146505%_
                             (lambda (_%L144867%_ _%L144868%_ _%L144869%_)
                               '#t))
                            (_%__kont146510146511%_
                             (lambda (_%L144655%_
                                      _%L144656%_
                                      _%L144657%_
                                      _%L144658%_
                                      _%L144659%_
                                      _%L144660%_)
                               '#t))
                            (_%__kont146516146517%_
                             (lambda (_%L144450%_
                                      _%L144451%_
                                      _%L144452%_
                                      _%L144453%_)
                               '#t))
                            (_%__kont146518146519%_ (lambda () '#f)))
                        (let* ((_%__match146643146644%_
                                (lambda (_%e144302144354%_
                                         _%hd144303144357%_
                                         _%tl144304144359%_
                                         _%e144305144362%_
                                         _%hd144306144365%_
                                         _%tl144307144367%_
                                         _%e144308144370%_
                                         _%hd144309144373%_
                                         _%tl144310144375%_
                                         _%e144311144378%_
                                         _%hd144312144381%_
                                         _%tl144313144383%_
                                         _%e144314144386%_
                                         _%hd144315144389%_
                                         _%tl144316144391%_
                                         _%e144317144394%_
                                         _%hd144318144397%_
                                         _%tl144319144399%_
                                         _%e144320144402%_
                                         _%hd144321144405%_
                                         _%tl144322144407%_
                                         _%e144323144410%_
                                         _%hd144324144413%_
                                         _%tl144325144415%_
                                         _%e144326144418%_
                                         _%hd144327144421%_
                                         _%tl144328144423%_
                                         _%e144329144426%_
                                         _%hd144330144429%_
                                         _%tl144331144431%_
                                         _%e144332144434%_
                                         _%hd144333144437%_
                                         _%tl144334144439%_
                                         _%e144335144442%_
                                         _%hd144336144445%_
                                         _%tl144337144447%_)
                                  (let ((_%L144450%_ _%hd144336144445%_)
                                        (_%L144451%_ _%hd144327144421%_)
                                        (_%L144452%_ _%hd144318144397%_)
                                        (_%L144453%_ _%hd144303144357%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L144453%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L144452%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L144453%_
                                                _%L144450%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L144451%_
                                                     _%L144453%_))))
                                        (_%__kont146516146517%_
                                         _%L144450%_
                                         _%L144451%_
                                         _%L144452%_
                                         _%L144453%_)
                                        (_%__kont146518146519%_)))))
                               (_%__match146615146616%_
                                (lambda (_%e144302144354%_
                                         _%hd144303144357%_
                                         _%tl144304144359%_
                                         _%e144305144362%_
                                         _%hd144306144365%_
                                         _%tl144307144367%_
                                         _%e144308144370%_
                                         _%hd144309144373%_
                                         _%tl144310144375%_
                                         _%e144311144378%_
                                         _%hd144312144381%_
                                         _%tl144313144383%_
                                         _%e144314144386%_
                                         _%hd144315144389%_
                                         _%tl144316144391%_
                                         _%e144317144394%_
                                         _%hd144318144397%_
                                         _%tl144319144399%_
                                         _%e144320144402%_
                                         _%hd144321144405%_
                                         _%tl144322144407%_
                                         _%e144323144410%_
                                         _%hd144324144413%_
                                         _%tl144325144415%_
                                         _%e144326144418%_
                                         _%hd144327144421%_
                                         _%tl144328144423%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144322144407%_))
                                      (let ((_%e144329144426%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144322144407%_))))
                                        (let ((_%tl144331144431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144329144426%_)))
                                              (_%hd144330144429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144329144426%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd144330144429%_))
                                              (let ((_%e144332144434%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd144330144429%_))))
                                                (let ((_%tl144334144439%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144332144434%_)))
                                                      (_%hd144333144437%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144332144434%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd144333144437%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd144333144437%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl144334144439%_))
                      (let ((_%e144335144442%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl144334144439%_))))
                        (let ((_%tl144337144447%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144335144442%_)))
                              (_%hd144336144445%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144335144442%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl144337144447%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl144331144431%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl144307144367%_))
                                      (_%__match146643146644%_
                                       _%e144302144354%_
                                       _%hd144303144357%_
                                       _%tl144304144359%_
                                       _%e144305144362%_
                                       _%hd144306144365%_
                                       _%tl144307144367%_
                                       _%e144308144370%_
                                       _%hd144309144373%_
                                       _%tl144310144375%_
                                       _%e144311144378%_
                                       _%hd144312144381%_
                                       _%tl144313144383%_
                                       _%e144314144386%_
                                       _%hd144315144389%_
                                       _%tl144316144391%_
                                       _%e144317144394%_
                                       _%hd144318144397%_
                                       _%tl144319144399%_
                                       _%e144320144402%_
                                       _%hd144321144405%_
                                       _%tl144322144407%_
                                       _%e144323144410%_
                                       _%hd144324144413%_
                                       _%tl144325144415%_
                                       _%e144326144418%_
                                       _%hd144327144421%_
                                       _%tl144328144423%_
                                       _%e144329144426%_
                                       _%hd144330144429%_
                                       _%tl144331144431%_
                                       _%e144332144434%_
                                       _%hd144333144437%_
                                       _%tl144334144439%_
                                       _%e144335144442%_
                                       _%hd144336144445%_
                                       _%tl144337144447%_)
                                      (_%__kont146518146519%_))
                                  (_%__kont146518146519%_))
                              (_%__kont146518146519%_))))
                      (_%__kont146518146519%_))
                  (_%__kont146518146519%_))
              (_%__kont146518146519%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont146518146519%_))))
                                      (_%__kont146518146519%_))))
                               (_%__match146545146546%_
                                (lambda (_%e144238144495%_
                                         _%hd144239144498%_
                                         _%tl144240144500%_
                                         _%__splice146512146513%_
                                         _%target144241144503%_
                                         _%tl144243144505%_)
                                  (letrec ((_%loop144244144508%_
                                            (lambda (_%hd144242144511%_
                                                     _%arg144248144513%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd144242144511%_))
                                                  (let ((_%e144245144516%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd144242144511%_))))
                                                    (let ((_%lp-tl144247144521%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144245144516%_)))
                                                          (_%lp-hd144246144519%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144245144516%_))))
                                                      (_%loop144244144508%_
                                                       _%lp-tl144247144521%_
                                                       (cons _%lp-hd144246144519%_
                                                             _%arg144248144513%_))))
                                                  (let ((_%arg144249144524%_
                                                         (reverse _%arg144248144513%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl144240144500%_))
                                                        (let ((_%e144250144527%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl144240144500%_))))
                  (let ((_%tl144252144532%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144250144527%_)))
                        (_%hd144251144530%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144250144527%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144251144530%_))
                        (let ((_%e144253144535%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144251144530%_))))
                          (let ((_%tl144255144540%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144253144535%_)))
                                (_%hd144254144538%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144253144535%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd144254144538%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd144254144538%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144255144540%_))
                                        (let ((_%e144256144543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144255144540%_))))
                                          (let ((_%tl144258144548%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144256144543%_)))
                                                (_%hd144257144546%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144256144543%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd144257144546%_))
                                                (let ((_%e144259144551%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144257144546%_))))
                                                  (let ((_%tl144261144556%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144259144551%_)))
                                                        (_%hd144260144554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144259144551%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd144260144554%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd144260144554%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl144261144556%_))
                        (let ((_%e144262144559%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl144261144556%_))))
                          (let ((_%tl144264144564%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144262144559%_)))
                                (_%hd144263144562%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144262144559%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl144264144564%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl144258144548%_))
                                    (let ((_%e144265144567%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl144258144548%_))))
                                      (let ((_%tl144267144572%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e144265144567%_)))
                                            (_%hd144266144570%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e144265144567%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd144266144570%_))
                                            (let ((_%e144268144575%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd144266144570%_))))
                                              (let ((_%tl144270144580%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144268144575%_)))
                                                    (_%hd144269144578%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144268144575%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd144269144578%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd144269144578%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl144270144580%_))
                                                            (let ((_%e144271144583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl144270144580%_))))
                      (let ((_%tl144273144588%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144271144583%_)))
                            (_%hd144272144586%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144271144583%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl144273144588%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl144267144572%_))
                                (if (let ((__tmp147784
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl144267144572%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp147784 '1))
                                    (let ((_%__splice146514146515%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl144267144572%_
                                              '1))))
                                      (let ((_%tl144276144593%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146514146515%_
                                                '1)))
                                            (_%target144274144591%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146514146515%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144276144593%_))
                                            (let ((_%e144283144596%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144276144593%_))))
                                              (let ((_%tl144285144601%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144283144596%_)))
                                                    (_%hd144284144599%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144283144596%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd144284144599%_))
                                                    (let ((_%e144286144604%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd144284144599%_))))
                                                      (let ((_%tl144288144609%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e144286144604%_)))
                    (_%hd144287144607%_
                     (let () (declare (not safe)) (##car _%e144286144604%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd144287144607%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd144287144607%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl144288144609%_))
                            (let ((_%e144289144612%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl144288144609%_))))
                              (let ((_%tl144291144617%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144289144612%_)))
                                    (_%hd144290144615%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144289144612%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl144291144617%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl144285144601%_))
                                        (letrec ((_%loop144277144620%_
                                                  (lambda (_%hd144275144623%_
                                                           _%xarg144281144625%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd144275144623%_))
                                                        (let ((_%e144278144628%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd144275144623%_))))
                  (let ((_%lp-tl144280144633%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144278144628%_)))
                        (_%lp-hd144279144631%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144278144628%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd144279144631%_))
                        (let ((_%e144292144636%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd144279144631%_))))
                          (let ((_%tl144294144641%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144292144636%_)))
                                (_%hd144293144639%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144292144636%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd144293144639%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd144293144639%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144294144641%_))
                                        (let ((_%e144295144644%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144294144641%_))))
                                          (let ((_%tl144297144649%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144295144644%_)))
                                                (_%hd144296144647%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144295144644%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144297144649%_))
                                                (_%loop144277144620%_
                                                 _%lp-tl144280144633%_
                                                 (cons _%hd144296144647%_
                                                       _%xarg144281144625%_))
                                                (_%__match146615146616%_
                                                 _%e144238144495%_
                                                 _%hd144239144498%_
                                                 _%tl144240144500%_
                                                 _%e144250144527%_
                                                 _%hd144251144530%_
                                                 _%tl144252144532%_
                                                 _%e144253144535%_
                                                 _%hd144254144538%_
                                                 _%tl144255144540%_
                                                 _%e144256144543%_
                                                 _%hd144257144546%_
                                                 _%tl144258144548%_
                                                 _%e144259144551%_
                                                 _%hd144260144554%_
                                                 _%tl144261144556%_
                                                 _%e144262144559%_
                                                 _%hd144263144562%_
                                                 _%tl144264144564%_
                                                 _%e144265144567%_
                                                 _%hd144266144570%_
                                                 _%tl144267144572%_
                                                 _%e144268144575%_
                                                 _%hd144269144578%_
                                                 _%tl144270144580%_
                                                 _%e144271144583%_
                                                 _%hd144272144586%_
                                                 _%tl144273144588%_))))
                                        (_%__match146615146616%_
                                         _%e144238144495%_
                                         _%hd144239144498%_
                                         _%tl144240144500%_
                                         _%e144250144527%_
                                         _%hd144251144530%_
                                         _%tl144252144532%_
                                         _%e144253144535%_
                                         _%hd144254144538%_
                                         _%tl144255144540%_
                                         _%e144256144543%_
                                         _%hd144257144546%_
                                         _%tl144258144548%_
                                         _%e144259144551%_
                                         _%hd144260144554%_
                                         _%tl144261144556%_
                                         _%e144262144559%_
                                         _%hd144263144562%_
                                         _%tl144264144564%_
                                         _%e144265144567%_
                                         _%hd144266144570%_
                                         _%tl144267144572%_
                                         _%e144268144575%_
                                         _%hd144269144578%_
                                         _%tl144270144580%_
                                         _%e144271144583%_
                                         _%hd144272144586%_
                                         _%tl144273144588%_))
                                    (_%__match146615146616%_
                                     _%e144238144495%_
                                     _%hd144239144498%_
                                     _%tl144240144500%_
                                     _%e144250144527%_
                                     _%hd144251144530%_
                                     _%tl144252144532%_
                                     _%e144253144535%_
                                     _%hd144254144538%_
                                     _%tl144255144540%_
                                     _%e144256144543%_
                                     _%hd144257144546%_
                                     _%tl144258144548%_
                                     _%e144259144551%_
                                     _%hd144260144554%_
                                     _%tl144261144556%_
                                     _%e144262144559%_
                                     _%hd144263144562%_
                                     _%tl144264144564%_
                                     _%e144265144567%_
                                     _%hd144266144570%_
                                     _%tl144267144572%_
                                     _%e144268144575%_
                                     _%hd144269144578%_
                                     _%tl144270144580%_
                                     _%e144271144583%_
                                     _%hd144272144586%_
                                     _%tl144273144588%_))
                                (_%__match146615146616%_
                                 _%e144238144495%_
                                 _%hd144239144498%_
                                 _%tl144240144500%_
                                 _%e144250144527%_
                                 _%hd144251144530%_
                                 _%tl144252144532%_
                                 _%e144253144535%_
                                 _%hd144254144538%_
                                 _%tl144255144540%_
                                 _%e144256144543%_
                                 _%hd144257144546%_
                                 _%tl144258144548%_
                                 _%e144259144551%_
                                 _%hd144260144554%_
                                 _%tl144261144556%_
                                 _%e144262144559%_
                                 _%hd144263144562%_
                                 _%tl144264144564%_
                                 _%e144265144567%_
                                 _%hd144266144570%_
                                 _%tl144267144572%_
                                 _%e144268144575%_
                                 _%hd144269144578%_
                                 _%tl144270144580%_
                                 _%e144271144583%_
                                 _%hd144272144586%_
                                 _%tl144273144588%_))))
                        (_%__match146615146616%_
                         _%e144238144495%_
                         _%hd144239144498%_
                         _%tl144240144500%_
                         _%e144250144527%_
                         _%hd144251144530%_
                         _%tl144252144532%_
                         _%e144253144535%_
                         _%hd144254144538%_
                         _%tl144255144540%_
                         _%e144256144543%_
                         _%hd144257144546%_
                         _%tl144258144548%_
                         _%e144259144551%_
                         _%hd144260144554%_
                         _%tl144261144556%_
                         _%e144262144559%_
                         _%hd144263144562%_
                         _%tl144264144564%_
                         _%e144265144567%_
                         _%hd144266144570%_
                         _%tl144267144572%_
                         _%e144268144575%_
                         _%hd144269144578%_
                         _%tl144270144580%_
                         _%e144271144583%_
                         _%hd144272144586%_
                         _%tl144273144588%_))))
                (let ((_%xarg144282144652%_ (reverse _%xarg144281144625%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl144252144532%_))
                      (let ((_%L144655%_ _%hd144290144615%_)
                            (_%L144656%_ _%xarg144282144652%_)
                            (_%L144657%_ _%hd144272144586%_)
                            (_%L144658%_ _%hd144263144562%_)
                            (_%L144659%_ _%tl144243144505%_)
                            (_%L144660%_ _%arg144249144524%_))
                        (if (and (let ((__tmp147785
                                        (let ((__tmp147786
                                               (lambda (_%g144703144706%_
                                                        _%g144704144708%_)
                                                 (cons _%g144703144706%_
                                                       _%g144704144708%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147786
                                           '()
                                           _%L144660%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp147785))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L144659%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L144658%_
                                    'apply))
                                 (let ((__tmp147789
                                        (length (let ((__tmp147790
                                                       (lambda (_%g144710144713%_
                                                                _%g144711144715%_)
                                                         (cons _%g144710144713%_
                                                               _%g144711144715%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp147790
                                                   '()
                                                   _%L144660%_))))
                                       (__tmp147787
                                        (length (let ((__tmp147788
                                                       (lambda (_%g144717144720%_
                                                                _%g144718144722%_)
                                                         (cons _%g144717144720%_
                                                               _%g144718144722%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp147788
                                                   '()
                                                   _%L144656%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp147789 __tmp147787))
                                 (let ((__tmp147793
                                        (let ((__tmp147794
                                               (lambda (_%g144724144727%_
                                                        _%g144725144729%_)
                                                 (cons _%g144724144727%_
                                                       _%g144725144729%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147794
                                           '()
                                           _%L144660%_)))
                                       (__tmp147791
                                        (let ((__tmp147792
                                               (lambda (_%g144731144734%_
                                                        _%g144732144736%_)
                                                 (cons _%g144731144734%_
                                                       _%g144732144736%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147792
                                           '()
                                           _%L144656%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp147793
                                    __tmp147791))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L144659%_
                                    _%L144655%_))
                                 (not (let ((__tmp147798
                                             (lambda (_%g144738144740%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g144738144740%_
                                                  _%L144657%_))))
                                            (__tmp147795
                                             (let ((__tmp147797
                                                    (lambda (_%g144742144745%_
                                                             _%g144743144747%_)
                                                      (cons _%g144742144745%_
                                                            _%g144743144747%_)))
                                                   (__tmp147796
                                                    (cons _%L144659%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147797
                                                __tmp147796
                                                _%L144660%_))))
                                        (declare (not safe))
                                        (__find __tmp147798 __tmp147795))))
                            (_%__kont146510146511%_
                             _%L144655%_
                             _%L144656%_
                             _%L144657%_
                             _%L144658%_
                             _%L144659%_
                             _%L144660%_)
                            (_%__match146615146616%_
                             _%e144238144495%_
                             _%hd144239144498%_
                             _%tl144240144500%_
                             _%e144250144527%_
                             _%hd144251144530%_
                             _%tl144252144532%_
                             _%e144253144535%_
                             _%hd144254144538%_
                             _%tl144255144540%_
                             _%e144256144543%_
                             _%hd144257144546%_
                             _%tl144258144548%_
                             _%e144259144551%_
                             _%hd144260144554%_
                             _%tl144261144556%_
                             _%e144262144559%_
                             _%hd144263144562%_
                             _%tl144264144564%_
                             _%e144265144567%_
                             _%hd144266144570%_
                             _%tl144267144572%_
                             _%e144268144575%_
                             _%hd144269144578%_
                             _%tl144270144580%_
                             _%e144271144583%_
                             _%hd144272144586%_
                             _%tl144273144588%_)))
                      (_%__match146615146616%_
                       _%e144238144495%_
                       _%hd144239144498%_
                       _%tl144240144500%_
                       _%e144250144527%_
                       _%hd144251144530%_
                       _%tl144252144532%_
                       _%e144253144535%_
                       _%hd144254144538%_
                       _%tl144255144540%_
                       _%e144256144543%_
                       _%hd144257144546%_
                       _%tl144258144548%_
                       _%e144259144551%_
                       _%hd144260144554%_
                       _%tl144261144556%_
                       _%e144262144559%_
                       _%hd144263144562%_
                       _%tl144264144564%_
                       _%e144265144567%_
                       _%hd144266144570%_
                       _%tl144267144572%_
                       _%e144268144575%_
                       _%hd144269144578%_
                       _%tl144270144580%_
                       _%e144271144583%_
                       _%hd144272144586%_
                       _%tl144273144588%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop144277144620%_
                                           _%target144274144591%_
                                           '()))
                                        (_%__match146615146616%_
                                         _%e144238144495%_
                                         _%hd144239144498%_
                                         _%tl144240144500%_
                                         _%e144250144527%_
                                         _%hd144251144530%_
                                         _%tl144252144532%_
                                         _%e144253144535%_
                                         _%hd144254144538%_
                                         _%tl144255144540%_
                                         _%e144256144543%_
                                         _%hd144257144546%_
                                         _%tl144258144548%_
                                         _%e144259144551%_
                                         _%hd144260144554%_
                                         _%tl144261144556%_
                                         _%e144262144559%_
                                         _%hd144263144562%_
                                         _%tl144264144564%_
                                         _%e144265144567%_
                                         _%hd144266144570%_
                                         _%tl144267144572%_
                                         _%e144268144575%_
                                         _%hd144269144578%_
                                         _%tl144270144580%_
                                         _%e144271144583%_
                                         _%hd144272144586%_
                                         _%tl144273144588%_))
                                    (_%__match146615146616%_
                                     _%e144238144495%_
                                     _%hd144239144498%_
                                     _%tl144240144500%_
                                     _%e144250144527%_
                                     _%hd144251144530%_
                                     _%tl144252144532%_
                                     _%e144253144535%_
                                     _%hd144254144538%_
                                     _%tl144255144540%_
                                     _%e144256144543%_
                                     _%hd144257144546%_
                                     _%tl144258144548%_
                                     _%e144259144551%_
                                     _%hd144260144554%_
                                     _%tl144261144556%_
                                     _%e144262144559%_
                                     _%hd144263144562%_
                                     _%tl144264144564%_
                                     _%e144265144567%_
                                     _%hd144266144570%_
                                     _%tl144267144572%_
                                     _%e144268144575%_
                                     _%hd144269144578%_
                                     _%tl144270144580%_
                                     _%e144271144583%_
                                     _%hd144272144586%_
                                     _%tl144273144588%_))))
                            (_%__match146615146616%_
                             _%e144238144495%_
                             _%hd144239144498%_
                             _%tl144240144500%_
                             _%e144250144527%_
                             _%hd144251144530%_
                             _%tl144252144532%_
                             _%e144253144535%_
                             _%hd144254144538%_
                             _%tl144255144540%_
                             _%e144256144543%_
                             _%hd144257144546%_
                             _%tl144258144548%_
                             _%e144259144551%_
                             _%hd144260144554%_
                             _%tl144261144556%_
                             _%e144262144559%_
                             _%hd144263144562%_
                             _%tl144264144564%_
                             _%e144265144567%_
                             _%hd144266144570%_
                             _%tl144267144572%_
                             _%e144268144575%_
                             _%hd144269144578%_
                             _%tl144270144580%_
                             _%e144271144583%_
                             _%hd144272144586%_
                             _%tl144273144588%_))
                        (_%__match146615146616%_
                         _%e144238144495%_
                         _%hd144239144498%_
                         _%tl144240144500%_
                         _%e144250144527%_
                         _%hd144251144530%_
                         _%tl144252144532%_
                         _%e144253144535%_
                         _%hd144254144538%_
                         _%tl144255144540%_
                         _%e144256144543%_
                         _%hd144257144546%_
                         _%tl144258144548%_
                         _%e144259144551%_
                         _%hd144260144554%_
                         _%tl144261144556%_
                         _%e144262144559%_
                         _%hd144263144562%_
                         _%tl144264144564%_
                         _%e144265144567%_
                         _%hd144266144570%_
                         _%tl144267144572%_
                         _%e144268144575%_
                         _%hd144269144578%_
                         _%tl144270144580%_
                         _%e144271144583%_
                         _%hd144272144586%_
                         _%tl144273144588%_))
                    (_%__match146615146616%_
                     _%e144238144495%_
                     _%hd144239144498%_
                     _%tl144240144500%_
                     _%e144250144527%_
                     _%hd144251144530%_
                     _%tl144252144532%_
                     _%e144253144535%_
                     _%hd144254144538%_
                     _%tl144255144540%_
                     _%e144256144543%_
                     _%hd144257144546%_
                     _%tl144258144548%_
                     _%e144259144551%_
                     _%hd144260144554%_
                     _%tl144261144556%_
                     _%e144262144559%_
                     _%hd144263144562%_
                     _%tl144264144564%_
                     _%e144265144567%_
                     _%hd144266144570%_
                     _%tl144267144572%_
                     _%e144268144575%_
                     _%hd144269144578%_
                     _%tl144270144580%_
                     _%e144271144583%_
                     _%hd144272144586%_
                     _%tl144273144588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match146615146616%_
                                                     _%e144238144495%_
                                                     _%hd144239144498%_
                                                     _%tl144240144500%_
                                                     _%e144250144527%_
                                                     _%hd144251144530%_
                                                     _%tl144252144532%_
                                                     _%e144253144535%_
                                                     _%hd144254144538%_
                                                     _%tl144255144540%_
                                                     _%e144256144543%_
                                                     _%hd144257144546%_
                                                     _%tl144258144548%_
                                                     _%e144259144551%_
                                                     _%hd144260144554%_
                                                     _%tl144261144556%_
                                                     _%e144262144559%_
                                                     _%hd144263144562%_
                                                     _%tl144264144564%_
                                                     _%e144265144567%_
                                                     _%hd144266144570%_
                                                     _%tl144267144572%_
                                                     _%e144268144575%_
                                                     _%hd144269144578%_
                                                     _%tl144270144580%_
                                                     _%e144271144583%_
                                                     _%hd144272144586%_
                                                     _%tl144273144588%_))))
                                            (_%__match146615146616%_
                                             _%e144238144495%_
                                             _%hd144239144498%_
                                             _%tl144240144500%_
                                             _%e144250144527%_
                                             _%hd144251144530%_
                                             _%tl144252144532%_
                                             _%e144253144535%_
                                             _%hd144254144538%_
                                             _%tl144255144540%_
                                             _%e144256144543%_
                                             _%hd144257144546%_
                                             _%tl144258144548%_
                                             _%e144259144551%_
                                             _%hd144260144554%_
                                             _%tl144261144556%_
                                             _%e144262144559%_
                                             _%hd144263144562%_
                                             _%tl144264144564%_
                                             _%e144265144567%_
                                             _%hd144266144570%_
                                             _%tl144267144572%_
                                             _%e144268144575%_
                                             _%hd144269144578%_
                                             _%tl144270144580%_
                                             _%e144271144583%_
                                             _%hd144272144586%_
                                             _%tl144273144588%_))))
                                    (_%__match146615146616%_
                                     _%e144238144495%_
                                     _%hd144239144498%_
                                     _%tl144240144500%_
                                     _%e144250144527%_
                                     _%hd144251144530%_
                                     _%tl144252144532%_
                                     _%e144253144535%_
                                     _%hd144254144538%_
                                     _%tl144255144540%_
                                     _%e144256144543%_
                                     _%hd144257144546%_
                                     _%tl144258144548%_
                                     _%e144259144551%_
                                     _%hd144260144554%_
                                     _%tl144261144556%_
                                     _%e144262144559%_
                                     _%hd144263144562%_
                                     _%tl144264144564%_
                                     _%e144265144567%_
                                     _%hd144266144570%_
                                     _%tl144267144572%_
                                     _%e144268144575%_
                                     _%hd144269144578%_
                                     _%tl144270144580%_
                                     _%e144271144583%_
                                     _%hd144272144586%_
                                     _%tl144273144588%_))
                                (_%__match146615146616%_
                                 _%e144238144495%_
                                 _%hd144239144498%_
                                 _%tl144240144500%_
                                 _%e144250144527%_
                                 _%hd144251144530%_
                                 _%tl144252144532%_
                                 _%e144253144535%_
                                 _%hd144254144538%_
                                 _%tl144255144540%_
                                 _%e144256144543%_
                                 _%hd144257144546%_
                                 _%tl144258144548%_
                                 _%e144259144551%_
                                 _%hd144260144554%_
                                 _%tl144261144556%_
                                 _%e144262144559%_
                                 _%hd144263144562%_
                                 _%tl144264144564%_
                                 _%e144265144567%_
                                 _%hd144266144570%_
                                 _%tl144267144572%_
                                 _%e144268144575%_
                                 _%hd144269144578%_
                                 _%tl144270144580%_
                                 _%e144271144583%_
                                 _%hd144272144586%_
                                 _%tl144273144588%_))
                            (_%__kont146518146519%_))))
                    (_%__kont146518146519%_))
                (_%__kont146518146519%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont146518146519%_))))
                                            (_%__kont146518146519%_))))
                                    (_%__kont146518146519%_))
                                (_%__kont146518146519%_))))
                        (_%__kont146518146519%_))
                    (_%__kont146518146519%_))
                (_%__kont146518146519%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont146518146519%_))))
                                        (_%__kont146518146519%_))
                                    (_%__kont146518146519%_))
                                (_%__kont146518146519%_))))
                        (_%__kont146518146519%_))))
                (_%__kont146518146519%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop144244144508%_
                                     _%target144241144503%_
                                     '()))))
                               (_%__match146533146534%_
                                (lambda (_%e144190144755%_
                                         _%hd144191144758%_
                                         _%tl144192144760%_
                                         _%__splice146506146507%_
                                         _%target144193144763%_
                                         _%tl144195144765%_)
                                  (letrec ((_%loop144196144768%_
                                            (lambda (_%hd144194144771%_
                                                     _%arg144200144773%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd144194144771%_))
                                                  (let ((_%e144197144776%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd144194144771%_))))
                                                    (let ((_%lp-tl144199144781%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144197144776%_)))
                                                          (_%lp-hd144198144779%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144197144776%_))))
                                                      (_%loop144196144768%_
                                                       _%lp-tl144199144781%_
                                                       (cons _%lp-hd144198144779%_
                                                             _%arg144200144773%_))))
                                                  (let ((_%arg144201144784%_
                                                         (reverse _%arg144200144773%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl144192144760%_))
                                                        (let ((_%e144202144787%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl144192144760%_))))
                  (let ((_%tl144204144792%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144202144787%_)))
                        (_%hd144203144790%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144202144787%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144203144790%_))
                        (let ((_%e144205144795%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144203144790%_))))
                          (let ((_%tl144207144800%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144205144795%_)))
                                (_%hd144206144798%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144205144795%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd144206144798%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd144206144798%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144207144800%_))
                                        (let ((_%e144208144803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144207144800%_))))
                                          (let ((_%tl144210144808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144208144803%_)))
                                                (_%hd144209144806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144208144803%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd144209144806%_))
                                                (let ((_%e144211144811%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144209144806%_))))
                                                  (let ((_%tl144213144816%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144211144811%_)))
                                                        (_%hd144212144814%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144211144811%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd144212144814%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd144212144814%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl144213144816%_))
                        (let ((_%e144214144819%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl144213144816%_))))
                          (let ((_%tl144216144824%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144214144819%_)))
                                (_%hd144215144822%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144214144819%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl144216144824%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl144210144808%_))
                                    (let ((_%__splice146508146509%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl144210144808%_
                                              '0))))
                                      (let ((_%tl144219144829%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146508146509%_
                                                '1)))
                                            (_%target144217144827%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146508146509%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl144219144829%_))
                                            (letrec ((_%loop144220144832%_
                                                      (lambda (_%hd144218144835%_
                                                               _%xarg144224144837%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd144218144835%_))
                                                            (let ((_%e144221144840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd144218144835%_))))
                      (let ((_%lp-tl144223144845%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144221144840%_)))
                            (_%lp-hd144222144843%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144221144840%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd144222144843%_))
                            (let ((_%e144226144848%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd144222144843%_))))
                              (let ((_%tl144228144853%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144226144848%_)))
                                    (_%hd144227144851%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144226144848%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd144227144851%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd144227144851%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144228144853%_))
                                            (let ((_%e144229144856%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144228144853%_))))
                                              (let ((_%tl144231144861%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144229144856%_)))
                                                    (_%hd144230144859%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144229144856%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl144231144861%_))
                                                    (_%loop144220144832%_
                                                     _%lp-tl144223144845%_
                                                     (cons _%hd144230144859%_
                                                           _%xarg144224144837%_))
                                                    (_%__match146545146546%_
                                                     _%e144190144755%_
                                                     _%hd144191144758%_
                                                     _%tl144192144760%_
                                                     _%__splice146506146507%_
                                                     _%target144193144763%_
                                                     _%tl144195144765%_))))
                                            (_%__match146545146546%_
                                             _%e144190144755%_
                                             _%hd144191144758%_
                                             _%tl144192144760%_
                                             _%__splice146506146507%_
                                             _%target144193144763%_
                                             _%tl144195144765%_))
                                        (_%__match146545146546%_
                                         _%e144190144755%_
                                         _%hd144191144758%_
                                         _%tl144192144760%_
                                         _%__splice146506146507%_
                                         _%target144193144763%_
                                         _%tl144195144765%_))
                                    (_%__match146545146546%_
                                     _%e144190144755%_
                                     _%hd144191144758%_
                                     _%tl144192144760%_
                                     _%__splice146506146507%_
                                     _%target144193144763%_
                                     _%tl144195144765%_))))
                            (_%__match146545146546%_
                             _%e144190144755%_
                             _%hd144191144758%_
                             _%tl144192144760%_
                             _%__splice146506146507%_
                             _%target144193144763%_
                             _%tl144195144765%_))))
                    (let ((_%xarg144225144864%_
                           (reverse _%xarg144224144837%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl144204144792%_))
                          (let ((_%L144867%_ _%xarg144225144864%_)
                                (_%L144868%_ _%hd144215144822%_)
                                (_%L144869%_ _%arg144201144784%_))
                            (if (and (let ((__tmp147799
                                            (let ((__tmp147800
                                                   (lambda (_%g144897144900%_
                                                            _%g144898144902%_)
                                                     (cons _%g144897144900%_
                                                           _%g144898144902%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147800
                                               '()
                                               _%L144869%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp147799))
                                     (let ((__tmp147803
                                            (length (let ((__tmp147804
                                                           (lambda (_%g144904144907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g144905144909%_)
                     (cons _%g144904144907%_ _%g144905144909%_))))
              (declare (not safe))
              (__foldr1 __tmp147804 '() _%L144869%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp147801
                                            (length (let ((__tmp147802
                                                           (lambda (_%g144911144914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g144912144916%_)
                     (cons _%g144911144914%_ _%g144912144916%_))))
              (declare (not safe))
              (__foldr1 __tmp147802 '() _%L144867%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp147803 __tmp147801))
                                     (let ((__tmp147807
                                            (let ((__tmp147808
                                                   (lambda (_%g144918144921%_
                                                            _%g144919144923%_)
                                                     (cons _%g144918144921%_
                                                           _%g144919144923%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147808
                                               '()
                                               _%L144869%_)))
                                           (__tmp147805
                                            (let ((__tmp147806
                                                   (lambda (_%g144925144928%_
                                                            _%g144926144930%_)
                                                     (cons _%g144925144928%_
                                                           _%g144926144930%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147806
                                               '()
                                               _%L144867%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp147807
                                        __tmp147805))
                                     (not (let ((__tmp147811
                                                 (lambda (_%g144932144934%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g144932144934%_
                                                      _%L144868%_))))
                                                (__tmp147809
                                                 (let ((__tmp147810
                                                        (lambda (_%g144936144939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g144937144941%_)
                  (cons _%g144936144939%_ _%g144937144941%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp147810
                                                    '()
                                                    _%L144869%_))))
                                            (declare (not safe))
                                            (__find __tmp147811 __tmp147809))))
                                (_%__kont146504146505%_
                                 _%L144867%_
                                 _%L144868%_
                                 _%L144869%_)
                                (_%__match146545146546%_
                                 _%e144190144755%_
                                 _%hd144191144758%_
                                 _%tl144192144760%_
                                 _%__splice146506146507%_
                                 _%target144193144763%_
                                 _%tl144195144765%_)))
                          (_%__match146545146546%_
                           _%e144190144755%_
                           _%hd144191144758%_
                           _%tl144192144760%_
                           _%__splice146506146507%_
                           _%target144193144763%_
                           _%tl144195144765%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop144220144832%_
                                               _%target144217144827%_
                                               '()))
                                            (_%__match146545146546%_
                                             _%e144190144755%_
                                             _%hd144191144758%_
                                             _%tl144192144760%_
                                             _%__splice146506146507%_
                                             _%target144193144763%_
                                             _%tl144195144765%_))))
                                    (_%__match146545146546%_
                                     _%e144190144755%_
                                     _%hd144191144758%_
                                     _%tl144192144760%_
                                     _%__splice146506146507%_
                                     _%target144193144763%_
                                     _%tl144195144765%_))
                                (_%__match146545146546%_
                                 _%e144190144755%_
                                 _%hd144191144758%_
                                 _%tl144192144760%_
                                 _%__splice146506146507%_
                                 _%target144193144763%_
                                 _%tl144195144765%_))))
                        (_%__match146545146546%_
                         _%e144190144755%_
                         _%hd144191144758%_
                         _%tl144192144760%_
                         _%__splice146506146507%_
                         _%target144193144763%_
                         _%tl144195144765%_))
                    (_%__match146545146546%_
                     _%e144190144755%_
                     _%hd144191144758%_
                     _%tl144192144760%_
                     _%__splice146506146507%_
                     _%target144193144763%_
                     _%tl144195144765%_))
                (_%__match146545146546%_
                 _%e144190144755%_
                 _%hd144191144758%_
                 _%tl144192144760%_
                 _%__splice146506146507%_
                 _%target144193144763%_
                 _%tl144195144765%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match146545146546%_
                                                 _%e144190144755%_
                                                 _%hd144191144758%_
                                                 _%tl144192144760%_
                                                 _%__splice146506146507%_
                                                 _%target144193144763%_
                                                 _%tl144195144765%_))))
                                        (_%__match146545146546%_
                                         _%e144190144755%_
                                         _%hd144191144758%_
                                         _%tl144192144760%_
                                         _%__splice146506146507%_
                                         _%target144193144763%_
                                         _%tl144195144765%_))
                                    (_%__match146545146546%_
                                     _%e144190144755%_
                                     _%hd144191144758%_
                                     _%tl144192144760%_
                                     _%__splice146506146507%_
                                     _%target144193144763%_
                                     _%tl144195144765%_))
                                (_%__match146545146546%_
                                 _%e144190144755%_
                                 _%hd144191144758%_
                                 _%tl144192144760%_
                                 _%__splice146506146507%_
                                 _%target144193144763%_
                                 _%tl144195144765%_))))
                        (_%__match146545146546%_
                         _%e144190144755%_
                         _%hd144191144758%_
                         _%tl144192144760%_
                         _%__splice146506146507%_
                         _%target144193144763%_
                         _%tl144195144765%_))))
                (_%__match146545146546%_
                 _%e144190144755%_
                 _%hd144191144758%_
                 _%tl144192144760%_
                 _%__splice146506146507%_
                 _%target144193144763%_
                 _%tl144195144765%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop144196144768%_
                                     _%target144193144763%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146502146503%_))
                              (let ((_%e144190144755%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146502146503%_))))
                                (let ((_%tl144192144760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144190144755%_)))
                                      (_%hd144191144758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144190144755%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd144191144758%_))
                                      (let ((_%__splice146506146507%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd144191144758%_
                                                '0))))
                                        (let ((_%tl144195144765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice146506146507%_
                                                  '1)))
                                              (_%target144193144763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice146506146507%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144195144765%_))
                                              (_%__match146533146534%_
                                               _%e144190144755%_
                                               _%hd144191144758%_
                                               _%tl144192144760%_
                                               _%__splice146506146507%_
                                               _%target144193144763%_
                                               _%tl144195144765%_)
                                              (_%__match146545146546%_
                                               _%e144190144755%_
                                               _%hd144191144758%_
                                               _%tl144192144760%_
                                               _%__splice146506146507%_
                                               _%target144193144763%_
                                               _%tl144195144765%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl144192144760%_))
                                          (let ((_%e144305144362%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl144192144760%_))))
                                            (let ((_%tl144307144367%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e144305144362%_)))
                                                  (_%hd144306144365%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e144305144362%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd144306144365%_))
                                                  (let ((_%e144308144370%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd144306144365%_))))
                                                    (let ((_%tl144310144375%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144308144370%_)))
                                                          (_%hd144309144373%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144308144370%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd144309144373%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd144309144373%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl144310144375%_))
                          (let ((_%e144311144378%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl144310144375%_))))
                            (let ((_%tl144313144383%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144311144378%_)))
                                  (_%hd144312144381%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144311144378%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd144312144381%_))
                                  (let ((_%e144314144386%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd144312144381%_))))
                                    (let ((_%tl144316144391%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e144314144386%_)))
                                          (_%hd144315144389%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e144314144386%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd144315144389%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd144315144389%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl144316144391%_))
                                                  (let ((_%e144317144394%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl144316144391%_))))
                                                    (let ((_%tl144319144399%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144317144394%_)))
                                                          (_%hd144318144397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144317144394%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl144319144399%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl144313144383%_))
                      (let ((_%e144320144402%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl144313144383%_))))
                        (let ((_%tl144322144407%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144320144402%_)))
                              (_%hd144321144405%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144320144402%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd144321144405%_))
                              (let ((_%e144323144410%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd144321144405%_))))
                                (let ((_%tl144325144415%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144323144410%_)))
                                      (_%hd144324144413%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144323144410%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd144324144413%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd144324144413%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl144325144415%_))
                                              (let ((_%e144326144418%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl144325144415%_))))
                                                (let ((_%tl144328144423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144326144418%_)))
                                                      (_%hd144327144421%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144326144418%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl144328144423%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl144322144407%_))
                                                          (let ((_%e144329144426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl144322144407%_))))
                    (let ((_%tl144331144431%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e144329144426%_)))
                          (_%hd144330144429%_
                           (let ()
                             (declare (not safe))
                             (##car _%e144329144426%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd144330144429%_))
                          (let ((_%e144332144434%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd144330144429%_))))
                            (let ((_%tl144334144439%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144332144434%_)))
                                  (_%hd144333144437%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144332144434%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd144333144437%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd144333144437%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl144334144439%_))
                                          (let ((_%e144335144442%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl144334144439%_))))
                                            (let ((_%tl144337144447%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e144335144442%_)))
                                                  (_%hd144336144445%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e144335144442%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl144337144447%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl144331144431%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl144307144367%_))
                                                          (_%__match146643146644%_
                                                           _%e144190144755%_
                                                           _%hd144191144758%_
                                                           _%tl144192144760%_
                                                           _%e144305144362%_
                                                           _%hd144306144365%_
                                                           _%tl144307144367%_
                                                           _%e144308144370%_
                                                           _%hd144309144373%_
                                                           _%tl144310144375%_
                                                           _%e144311144378%_
                                                           _%hd144312144381%_
                                                           _%tl144313144383%_
                                                           _%e144314144386%_
                                                           _%hd144315144389%_
                                                           _%tl144316144391%_
                                                           _%e144317144394%_
                                                           _%hd144318144397%_
                                                           _%tl144319144399%_
                                                           _%e144320144402%_
                                                           _%hd144321144405%_
                                                           _%tl144322144407%_
                                                           _%e144323144410%_
                                                           _%hd144324144413%_
                                                           _%tl144325144415%_
                                                           _%e144326144418%_
                                                           _%hd144327144421%_
                                                           _%tl144328144423%_
                                                           _%e144329144426%_
                                                           _%hd144330144429%_
                                                           _%tl144331144431%_
                                                           _%e144332144434%_
                                                           _%hd144333144437%_
                                                           _%tl144334144439%_
                                                           _%e144335144442%_
                                                           _%hd144336144445%_
                                                           _%tl144337144447%_)
                                                          (_%__kont146518146519%_))
                                                      (_%__kont146518146519%_))
                                                  (_%__kont146518146519%_))))
                                          (_%__kont146518146519%_))
                                      (_%__kont146518146519%_))
                                  (_%__kont146518146519%_))))
                          (_%__kont146518146519%_))))
                  (_%__kont146518146519%_))
              (_%__kont146518146519%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont146518146519%_))
                                          (_%__kont146518146519%_))
                                      (_%__kont146518146519%_))))
                              (_%__kont146518146519%_))))
                      (_%__kont146518146519%_))
                  (_%__kont146518146519%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont146518146519%_))
                                              (_%__kont146518146519%_))
                                          (_%__kont146518146519%_))))
                                  (_%__kont146518146519%_))))
                          (_%__kont146518146519%_))
                      (_%__kont146518146519%_))
                  (_%__kont146518146519%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont146518146519%_))))
                                          (_%__kont146518146519%_)))))
                              (_%__kont146518146519%_)))))))
                 (_%dispatch-case-e143490%_
                  (lambda (_%hd143641%_ _%body143642%_)
                    (let* ((_%form143644%_
                            (cons _%hd143641%_ (cons _%body143642%_ '())))
                           (_%__stx146646146647%_ _%form143644%_)
                           (_%g143648143772%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx146646146647%_)))))
                      (let ((_%__kont146648146649%_
                             (lambda (_%L144143%_ _%L144144%_ _%L144145%_)
                               (let ((__tmp147812
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L144144%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self143486%_
                                  __tmp147812))))
                            (_%__kont146654146655%_
                             (lambda (_%L143991%_
                                      _%L143992%_
                                      _%L143993%_
                                      _%L143994%_)
                               (let ((__tmp147813
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143991%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self143486%_
                                  __tmp147813))))
                            (_%__kont146658146659%_
                             (lambda (_%L143857%_ _%L143858%_ _%L143859%_)
                               (let ((__tmp147814
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143857%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self143486%_
                                  __tmp147814)))))
                        (let* ((_%__match146755146756%_
                                (lambda (_%e143738143777%_
                                         _%hd143739143780%_
                                         _%tl143740143782%_
                                         _%e143741143785%_
                                         _%hd143742143788%_
                                         _%tl143743143790%_
                                         _%e143744143793%_
                                         _%hd143745143796%_
                                         _%tl143746143798%_
                                         _%e143747143801%_
                                         _%hd143748143804%_
                                         _%tl143749143806%_
                                         _%e143750143809%_
                                         _%hd143751143812%_
                                         _%tl143752143814%_
                                         _%e143753143817%_
                                         _%hd143754143820%_
                                         _%tl143755143822%_
                                         _%e143756143825%_
                                         _%hd143757143828%_
                                         _%tl143758143830%_
                                         _%e143759143833%_
                                         _%hd143760143836%_
                                         _%tl143761143838%_
                                         _%e143762143841%_
                                         _%hd143763143844%_
                                         _%tl143764143846%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143758143830%_))
                                      (let ((_%e143765143849%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143758143830%_))))
                                        (let ((_%tl143767143854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143765143849%_)))
                                              (_%hd143766143852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143765143849%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143767143854%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl143743143790%_))
                                                  (_%__kont146658146659%_
                                                   _%hd143763143844%_
                                                   _%hd143754143820%_
                                                   _%hd143739143780%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g143648143772%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g143648143772%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143648143772%_)))))
                               (_%__match146685146686%_
                                (lambda (_%e143699143895%_
                                         _%hd143700143898%_
                                         _%tl143701143900%_
                                         _%__splice146656146657%_
                                         _%target143702143903%_
                                         _%tl143704143905%_)
                                  (letrec ((_%loop143705143908%_
                                            (lambda (_%hd143703143911%_
                                                     _%arg143709143913%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143703143911%_))
                                                  (let ((_%e143706143916%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143703143911%_))))
                                                    (let ((_%lp-tl143708143921%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143706143916%_)))
                                                          (_%lp-hd143707143919%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143706143916%_))))
                                                      (_%loop143705143908%_
                                                       _%lp-tl143708143921%_
                                                       (cons _%lp-hd143707143919%_
                                                             _%arg143709143913%_))))
                                                  (let ((_%arg143710143924%_
                                                         (reverse _%arg143709143913%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143701143900%_))
                                                        (let ((_%e143711143927%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143701143900%_))))
                  (let ((_%tl143713143932%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143711143927%_)))
                        (_%hd143712143930%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143711143927%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143712143930%_))
                        (let ((_%e143714143935%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143712143930%_))))
                          (let ((_%tl143716143940%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143714143935%_)))
                                (_%hd143715143938%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143714143935%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143715143938%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143715143938%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143716143940%_))
                                        (let ((_%e143717143943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143716143940%_))))
                                          (let ((_%tl143719143948%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143717143943%_)))
                                                (_%hd143718143946%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143717143943%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143718143946%_))
                                                (let ((_%e143720143951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143718143946%_))))
                                                  (let ((_%tl143722143956%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143720143951%_)))
                                                        (_%hd143721143954%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143720143951%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143721143954%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143721143954%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143722143956%_))
                        (let ((_%e143723143959%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143722143956%_))))
                          (let ((_%tl143725143964%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143723143959%_)))
                                (_%hd143724143962%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143723143959%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143725143964%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl143719143948%_))
                                    (let ((_%e143726143967%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl143719143948%_))))
                                      (let ((_%tl143728143972%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143726143967%_)))
                                            (_%hd143727143970%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143726143967%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd143727143970%_))
                                            (let ((_%e143729143975%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd143727143970%_))))
                                              (let ((_%tl143731143980%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143729143975%_)))
                                                    (_%hd143730143978%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143729143975%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd143730143978%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd143730143978%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl143731143980%_))
                                                            (let ((_%e143732143983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143731143980%_))))
                      (let ((_%tl143734143988%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143732143983%_)))
                            (_%hd143733143986%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143732143983%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143734143988%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143713143932%_))
                                (_%__kont146654146655%_
                                 _%hd143733143986%_
                                 _%hd143724143962%_
                                 _%tl143704143905%_
                                 _%arg143710143924%_)
                                (_%__match146755146756%_
                                 _%e143699143895%_
                                 _%hd143700143898%_
                                 _%tl143701143900%_
                                 _%e143711143927%_
                                 _%hd143712143930%_
                                 _%tl143713143932%_
                                 _%e143714143935%_
                                 _%hd143715143938%_
                                 _%tl143716143940%_
                                 _%e143717143943%_
                                 _%hd143718143946%_
                                 _%tl143719143948%_
                                 _%e143720143951%_
                                 _%hd143721143954%_
                                 _%tl143722143956%_
                                 _%e143723143959%_
                                 _%hd143724143962%_
                                 _%tl143725143964%_
                                 _%e143726143967%_
                                 _%hd143727143970%_
                                 _%tl143728143972%_
                                 _%e143729143975%_
                                 _%hd143730143978%_
                                 _%tl143731143980%_
                                 _%e143732143983%_
                                 _%hd143733143986%_
                                 _%tl143734143988%_))
                            (let ()
                              (declare (not safe))
                              (_%g143648143772%_)))))
                    (let () (declare (not safe)) (_%g143648143772%_)))
                (let () (declare (not safe)) (_%g143648143772%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g143648143772%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g143648143772%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g143648143772%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g143648143772%_)))))
                        (let () (declare (not safe)) (_%g143648143772%_)))
                    (let () (declare (not safe)) (_%g143648143772%_)))
                (let () (declare (not safe)) (_%g143648143772%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g143648143772%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g143648143772%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g143648143772%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g143648143772%_)))))
                        (let () (declare (not safe)) (_%g143648143772%_)))))
                (let () (declare (not safe)) (_%g143648143772%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143705143908%_
                                     _%target143702143903%_
                                     '()))))
                               (_%__match146673146674%_
                                (lambda (_%e143653144031%_
                                         _%hd143654144034%_
                                         _%tl143655144036%_
                                         _%__splice146650146651%_
                                         _%target143656144039%_
                                         _%tl143658144041%_)
                                  (letrec ((_%loop143659144044%_
                                            (lambda (_%hd143657144047%_
                                                     _%arg143663144049%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143657144047%_))
                                                  (let ((_%e143660144052%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143657144047%_))))
                                                    (let ((_%lp-tl143662144057%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143660144052%_)))
                                                          (_%lp-hd143661144055%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143660144052%_))))
                                                      (_%loop143659144044%_
                                                       _%lp-tl143662144057%_
                                                       (cons _%lp-hd143661144055%_
                                                             _%arg143663144049%_))))
                                                  (let ((_%arg143664144060%_
                                                         (reverse _%arg143663144049%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143655144036%_))
                                                        (let ((_%e143665144063%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143655144036%_))))
                  (let ((_%tl143667144068%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143665144063%_)))
                        (_%hd143666144066%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143665144063%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143666144066%_))
                        (let ((_%e143668144071%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143666144066%_))))
                          (let ((_%tl143670144076%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143668144071%_)))
                                (_%hd143669144074%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143668144071%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143669144074%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143669144074%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143670144076%_))
                                        (let ((_%e143671144079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143670144076%_))))
                                          (let ((_%tl143673144084%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143671144079%_)))
                                                (_%hd143672144082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143671144079%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143672144082%_))
                                                (let ((_%e143674144087%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143672144082%_))))
                                                  (let ((_%tl143676144092%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143674144087%_)))
                                                        (_%hd143675144090%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143674144087%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143675144090%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143675144090%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143676144092%_))
                        (let ((_%e143677144095%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143676144092%_))))
                          (let ((_%tl143679144100%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143677144095%_)))
                                (_%hd143678144098%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143677144095%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143679144100%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl143673144084%_))
                                    (let ((_%__splice146652146653%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl143673144084%_
                                              '0))))
                                      (let ((_%tl143682144105%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146652146653%_
                                                '1)))
                                            (_%target143680144103%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice146652146653%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl143682144105%_))
                                            (letrec ((_%loop143683144108%_
                                                      (lambda (_%hd143681144111%_
                                                               _%xarg143687144113%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd143681144111%_))
                                                            (let ((_%e143684144116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd143681144111%_))))
                      (let ((_%lp-tl143686144121%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143684144116%_)))
                            (_%lp-hd143685144119%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143684144116%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd143685144119%_))
                            (let ((_%e143689144124%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd143685144119%_))))
                              (let ((_%tl143691144129%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143689144124%_)))
                                    (_%hd143690144127%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143689144124%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd143690144127%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd143690144127%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143691144129%_))
                                            (let ((_%e143692144132%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143691144129%_))))
                                              (let ((_%tl143694144137%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143692144132%_)))
                                                    (_%hd143693144135%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143692144132%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143694144137%_))
                                                    (_%loop143683144108%_
                                                     _%lp-tl143686144121%_
                                                     (cons _%hd143693144135%_
                                                           _%xarg143687144113%_))
                                                    (_%__match146685146686%_
                                                     _%e143653144031%_
                                                     _%hd143654144034%_
                                                     _%tl143655144036%_
                                                     _%__splice146650146651%_
                                                     _%target143656144039%_
                                                     _%tl143658144041%_))))
                                            (_%__match146685146686%_
                                             _%e143653144031%_
                                             _%hd143654144034%_
                                             _%tl143655144036%_
                                             _%__splice146650146651%_
                                             _%target143656144039%_
                                             _%tl143658144041%_))
                                        (_%__match146685146686%_
                                         _%e143653144031%_
                                         _%hd143654144034%_
                                         _%tl143655144036%_
                                         _%__splice146650146651%_
                                         _%target143656144039%_
                                         _%tl143658144041%_))
                                    (_%__match146685146686%_
                                     _%e143653144031%_
                                     _%hd143654144034%_
                                     _%tl143655144036%_
                                     _%__splice146650146651%_
                                     _%target143656144039%_
                                     _%tl143658144041%_))))
                            (_%__match146685146686%_
                             _%e143653144031%_
                             _%hd143654144034%_
                             _%tl143655144036%_
                             _%__splice146650146651%_
                             _%target143656144039%_
                             _%tl143658144041%_))))
                    (let ((_%xarg143688144140%_
                           (reverse _%xarg143687144113%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143667144068%_))
                          (_%__kont146648146649%_
                           _%xarg143688144140%_
                           _%hd143678144098%_
                           _%arg143664144060%_)
                          (_%__match146685146686%_
                           _%e143653144031%_
                           _%hd143654144034%_
                           _%tl143655144036%_
                           _%__splice146650146651%_
                           _%target143656144039%_
                           _%tl143658144041%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop143683144108%_
                                               _%target143680144103%_
                                               '()))
                                            (_%__match146685146686%_
                                             _%e143653144031%_
                                             _%hd143654144034%_
                                             _%tl143655144036%_
                                             _%__splice146650146651%_
                                             _%target143656144039%_
                                             _%tl143658144041%_))))
                                    (_%__match146685146686%_
                                     _%e143653144031%_
                                     _%hd143654144034%_
                                     _%tl143655144036%_
                                     _%__splice146650146651%_
                                     _%target143656144039%_
                                     _%tl143658144041%_))
                                (_%__match146685146686%_
                                 _%e143653144031%_
                                 _%hd143654144034%_
                                 _%tl143655144036%_
                                 _%__splice146650146651%_
                                 _%target143656144039%_
                                 _%tl143658144041%_))))
                        (_%__match146685146686%_
                         _%e143653144031%_
                         _%hd143654144034%_
                         _%tl143655144036%_
                         _%__splice146650146651%_
                         _%target143656144039%_
                         _%tl143658144041%_))
                    (_%__match146685146686%_
                     _%e143653144031%_
                     _%hd143654144034%_
                     _%tl143655144036%_
                     _%__splice146650146651%_
                     _%target143656144039%_
                     _%tl143658144041%_))
                (_%__match146685146686%_
                 _%e143653144031%_
                 _%hd143654144034%_
                 _%tl143655144036%_
                 _%__splice146650146651%_
                 _%target143656144039%_
                 _%tl143658144041%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match146685146686%_
                                                 _%e143653144031%_
                                                 _%hd143654144034%_
                                                 _%tl143655144036%_
                                                 _%__splice146650146651%_
                                                 _%target143656144039%_
                                                 _%tl143658144041%_))))
                                        (_%__match146685146686%_
                                         _%e143653144031%_
                                         _%hd143654144034%_
                                         _%tl143655144036%_
                                         _%__splice146650146651%_
                                         _%target143656144039%_
                                         _%tl143658144041%_))
                                    (_%__match146685146686%_
                                     _%e143653144031%_
                                     _%hd143654144034%_
                                     _%tl143655144036%_
                                     _%__splice146650146651%_
                                     _%target143656144039%_
                                     _%tl143658144041%_))
                                (_%__match146685146686%_
                                 _%e143653144031%_
                                 _%hd143654144034%_
                                 _%tl143655144036%_
                                 _%__splice146650146651%_
                                 _%target143656144039%_
                                 _%tl143658144041%_))))
                        (_%__match146685146686%_
                         _%e143653144031%_
                         _%hd143654144034%_
                         _%tl143655144036%_
                         _%__splice146650146651%_
                         _%target143656144039%_
                         _%tl143658144041%_))))
                (_%__match146685146686%_
                 _%e143653144031%_
                 _%hd143654144034%_
                 _%tl143655144036%_
                 _%__splice146650146651%_
                 _%target143656144039%_
                 _%tl143658144041%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143659144044%_
                                     _%target143656144039%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146646146647%_))
                              (let ((_%e143653144031%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146646146647%_))))
                                (let ((_%tl143655144036%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143653144031%_)))
                                      (_%hd143654144034%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143653144031%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd143654144034%_))
                                      (let ((_%__splice146650146651%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd143654144034%_
                                                '0))))
                                        (let ((_%tl143658144041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice146650146651%_
                                                  '1)))
                                              (_%target143656144039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice146650146651%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143658144041%_))
                                              (_%__match146673146674%_
                                               _%e143653144031%_
                                               _%hd143654144034%_
                                               _%tl143655144036%_
                                               _%__splice146650146651%_
                                               _%target143656144039%_
                                               _%tl143658144041%_)
                                              (_%__match146685146686%_
                                               _%e143653144031%_
                                               _%hd143654144034%_
                                               _%tl143655144036%_
                                               _%__splice146650146651%_
                                               _%target143656144039%_
                                               _%tl143658144041%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl143655144036%_))
                                          (let ((_%e143741143785%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl143655144036%_))))
                                            (let ((_%tl143743143790%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143741143785%_)))
                                                  (_%hd143742143788%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143741143785%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143742143788%_))
                                                  (let ((_%e143744143793%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143742143788%_))))
                                                    (let ((_%tl143746143798%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143744143793%_)))
                                                          (_%hd143745143796%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143744143793%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd143745143796%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd143745143796%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143746143798%_))
                          (let ((_%e143747143801%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143746143798%_))))
                            (let ((_%tl143749143806%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143747143801%_)))
                                  (_%hd143748143804%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143747143801%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143748143804%_))
                                  (let ((_%e143750143809%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143748143804%_))))
                                    (let ((_%tl143752143814%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143750143809%_)))
                                          (_%hd143751143812%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143750143809%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143751143812%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143751143812%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143752143814%_))
                                                  (let ((_%e143753143817%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143752143814%_))))
                                                    (let ((_%tl143755143822%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143753143817%_)))
                                                          (_%hd143754143820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143753143817%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143755143822%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl143749143806%_))
                      (let ((_%e143756143825%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl143749143806%_))))
                        (let ((_%tl143758143830%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143756143825%_)))
                              (_%hd143757143828%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143756143825%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd143757143828%_))
                              (let ((_%e143759143833%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd143757143828%_))))
                                (let ((_%tl143761143838%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143759143833%_)))
                                      (_%hd143760143836%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143759143833%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd143760143836%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd143760143836%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl143761143838%_))
                                              (let ((_%e143762143841%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl143761143838%_))))
                                                (let ((_%tl143764143846%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143762143841%_)))
                                                      (_%hd143763143844%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143762143841%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143764143846%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl143758143830%_))
                                                          (let ((_%e143765143849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl143758143830%_))))
                    (let ((_%tl143767143854%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143765143849%_)))
                          (_%hd143766143852%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143765143849%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143767143854%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl143743143790%_))
                              (_%__kont146658146659%_
                               _%hd143763143844%_
                               _%hd143754143820%_
                               _%hd143654144034%_)
                              (let ()
                                (declare (not safe))
                                (_%g143648143772%_)))
                          (let () (declare (not safe)) (_%g143648143772%_)))))
                  (let () (declare (not safe)) (_%g143648143772%_)))
              (let () (declare (not safe)) (_%g143648143772%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g143648143772%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g143648143772%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143648143772%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143648143772%_)))))
                      (let () (declare (not safe)) (_%g143648143772%_)))
                  (let () (declare (not safe)) (_%g143648143772%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g143648143772%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g143648143772%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g143648143772%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g143648143772%_)))))
                          (let () (declare (not safe)) (_%g143648143772%_)))
                      (let () (declare (not safe)) (_%g143648143772%_)))
                  (let () (declare (not safe)) (_%g143648143772%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g143648143772%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g143648143772%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g143648143772%_))))))))
                 (_%generate1143491%_
                  (lambda (_%args143626%_
                           _%arglen143627%_
                           _%hd143628%_
                           _%body143629%_)
                    (let* ((_%len143631%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd143628%_)))
                           (_%condition143636%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd143628%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen143627%_
                                                (cons _%len143631%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen143627%_ (cons _%len143631%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len143631%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen143627%_
                                                    (cons _%len143631%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen143627%_ (cons _%len143631%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch143638%_
                            (if (_%dispatch-case?143489%_
                                 _%hd143628%_
                                 _%body143629%_)
                                (_%dispatch-case-e143490%_
                                 _%hd143628%_
                                 _%body143629%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self143486%_
                                 _%hd143628%_
                                 _%body143629%_))))
                      (cons _%condition143636%_
                            (cons (cons 'apply
                                        (cons _%dispatch143638%_
                                              (cons _%args143626%_ '())))
                                  '()))))))
          (let* ((_%g143493143521%_
                  (lambda (_%g143494143518%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143494143518%_))))
                 (_%g143492143623%_
                  (lambda (_%g143494143524%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143494143524%_))
                        (let ((_%e143497143526%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143494143524%_))))
                          (let ((_%hd143498143529%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143497143526%_)))
                                (_%tl143499143531%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143497143526%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl143499143531%_))
                                (let ((_g147815_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl143499143531%_
                                          '0))))
                                  (begin
                                    (let ((_g147816_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g147815_)
                                                 (##vector-length _g147815_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g147816_ 2)))
                                          (error "Context expects 2 values"
                                                 _g147816_)))
                                    (let ((_%target143500143534%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147815_ 0)))
                                          (_%tl143502143536%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147815_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl143502143536%_))
                                          (letrec ((_%loop143503143539%_
                                                    (lambda (_%hd143501143542%_
                                                             _%body143507143544%_
                                                             _%hd143508143546%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd143501143542%_))
                                                          (let ((_%e143504143549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd143501143542%_))))
                    (let ((_%lp-hd143505143552%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143504143549%_)))
                          (_%lp-tl143506143554%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143504143549%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd143505143552%_))
                          (let ((_%e143511143557%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd143505143552%_))))
                            (let ((_%hd143512143560%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143511143557%_)))
                                  (_%tl143513143562%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143511143557%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl143513143562%_))
                                  (let ((_%e143514143565%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl143513143562%_))))
                                    (let ((_%hd143515143568%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143514143565%_)))
                                          (_%tl143516143570%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143514143565%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl143516143570%_))
                                          (_%loop143503143539%_
                                           _%lp-tl143506143554%_
                                           (cons _%hd143515143568%_
                                                 _%body143507143544%_)
                                           (cons _%hd143512143560%_
                                                 _%hd143508143546%_))
                                          (_%g143493143521%_
                                           _%g143494143524%_))))
                                  (_%g143493143521%_ _%g143494143524%_))))
                          (_%g143493143521%_ _%g143494143524%_))))
                  (let ((_%body143509143573%_ (reverse _%body143507143544%_))
                        (_%hd143510143575%_ (reverse _%hd143508143546%_)))
                    ((lambda (_%L143578%_ _%L143579%_)
                       (let ((_%args143598%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen143599%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name143600%_
                              (let ((_%$e143595%_
                                     (let ((__tmp147817
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp147817 _%stx143487%_))))
                                (if _%$e143595%_
                                    _%$e143595%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args143598%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen143599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args143598%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args143598%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp147821
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name143600%_
                                                                (cons _%args143598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp147818
                                  (map (lambda (_%g143601143604%_
                                                _%g143602143606%_)
                                         (_%generate1143491%_
                                          _%args143598%_
                                          _%arglen143599%_
                                          _%g143601143604%_
                                          _%g143602143606%_))
                                       (let ((__tmp147819
                                              (lambda (_%g143608143611%_
                                                       _%g143609143613%_)
                                                (cons _%g143608143611%_
                                                      _%g143609143613%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp147819
                                          '()
                                          _%L143579%_))
                                       (let ((__tmp147820
                                              (lambda (_%g143615143618%_
                                                       _%g143616143620%_)
                                                (cons _%g143615143618%_
                                                      _%g143616143620%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp147820
                                          '()
                                          _%L143578%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp147821 __tmp147818)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body143509143573%_
                     _%hd143510143575%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop143503143539%_
                                             _%target143500143534%_
                                             '()
                                             '()))
                                          (_%g143493143521%_
                                           _%g143494143524%_)))))
                                (_%g143493143521%_ _%g143494143524%_))))
                        (_%g143493143521%_ _%g143494143524%_)))))
            (_%g143492143623%_ _%stx143487%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self142723%_ _%stx142724%_ _%compiled-body?142725%_)
        (letrec ((_%generate-simple142727%_
                  (lambda (_%hd143471%_ _%body143472%_)
                    (_%coalesce-boolean142728%_
                     (_%simplify-let142729%_
                      (gxc#generate-runtime-simple-let
                       _%self142723%_
                       'let
                       _%hd143471%_
                       _%body143472%_
                       _%compiled-body?142725%_)))))
                 (_%coalesce-boolean142728%_
                  (lambda (_%code143332%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code143333143359%_ _%code143332%_)
                               (_%else143335143367%_
                                (lambda () _%code143332%_))
                               (_%K143337143404%_
                                (lambda (_%expr2143370%_
                                         _%expr1143371%_
                                         _%id143372%_)
                                  (let* ((_%expr2143373143381%_
                                          _%expr2143370%_)
                                         (_%else143375143389%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1143371%_
                                                        (cons _%expr2143370%_
                                                              '())))))
                                         (_%K143377143394%_
                                          (lambda (_%exprs143392%_)
                                            (cons 'or
                                                  (cons _%expr1143371%_
                                                        _%exprs143392%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2143373143381%_))
                                        (let ((_%hd143378143397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2143373143381%_)))
                                              (_%tl143379143399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2143373143381%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd143378143397%_ 'or))
                                              (let ((_%exprs143402%_
                                                     _%tl143379143399%_))
                                                (_%K143377143394%_
                                                 _%exprs143402%_))
                                              (_%else143375143389%_)))
                                        (_%else143375143389%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code143333143359%_))
                              (let ((_%hd143338143407%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code143333143359%_)))
                                    (_%tl143339143409%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code143333143359%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd143338143407%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl143339143409%_))
                                        (let ((_%hd143340143412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl143339143409%_)))
                                              (_%tl143341143414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl143339143409%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd143340143412%_))
                                              (let ((_%hd143352143417%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd143340143412%_)))
                                                    (_%tl143353143419%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd143340143412%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd143352143417%_))
                                                    (let ((_%hd143354143422%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd143352143417%_)))
                                                          (_%tl143355143424%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd143352143417%_))))
                                                      (let ((_%id143427%_
                                                             _%hd143354143422%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl143355143424%_))
                                                            (let ((_%hd143356143429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl143355143424%_)))
                          (_%tl143357143431%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl143355143424%_))))
                      (let ((_%expr1143434%_ _%hd143356143429%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl143357143431%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl143353143419%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl143341143414%_))
                                    (let ((_%hd143342143436%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl143341143414%_)))
                                          (_%tl143343143438%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl143341143414%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd143342143436%_))
                                          (let ((_%hd143344143441%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd143342143436%_)))
                                                (_%tl143345143443%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd143342143436%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd143344143441%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl143345143443%_))
                                                    (let ((_%hd143346143446%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl143345143443%_)))
                                                          (_%tl143347143448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl143345143443%_))))
                                                      (if ((lambda (_%g143450143452%_)
                                                             (eq? _%g143450143452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id143427%_))
                   _%hd143346143446%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl143347143448%_))
                      (let ((_%hd143348143455%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl143347143448%_)))
                            (_%tl143349143457%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl143347143448%_))))
                        (if ((lambda (_%g143459143461%_)
                               (eq? _%g143459143461%_ _%id143427%_))
                             _%hd143348143455%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl143349143457%_))
                                (let ((_%hd143350143464%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl143349143457%_)))
                                      (_%tl143351143466%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl143349143457%_))))
                                  (let ((_%expr2143469%_ _%hd143350143464%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl143351143466%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl143343143438%_))
                                            (_%K143337143404%_
                                             _%expr2143469%_
                                             _%expr1143434%_
                                             _%id143427%_)
                                            (_%else143335143367%_))
                                        (_%else143335143367%_))))
                                (_%else143335143367%_))
                            (_%else143335143367%_)))
                      (_%else143335143367%_))
                  (_%else143335143367%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else143335143367%_))
                                                (_%else143335143367%_)))
                                          (_%else143335143367%_)))
                                    (_%else143335143367%_))
                                (_%else143335143367%_))
                            (_%else143335143367%_))))
                    (_%else143335143367%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else143335143367%_)))
                                              (_%else143335143367%_)))
                                        (_%else143335143367%_))
                                    (_%else143335143367%_)))
                              (_%else143335143367%_)))
                        _%code143332%_)))
                 (_%simplify-let142729%_
                  (lambda (_%code143031%_)
                    (let* ((_%code143032143104%_ _%code143031%_)
                           (_%else143037143112%_ (lambda () _%code143031%_)))
                      (let ((_%K143096143312%_
                             (lambda (_%expr143310%_) _%expr143310%_))
                            (_%K143079143258%_
                             (lambda (_%body143254%_
                                      _%expr143255%_
                                      _%id143256%_)
                               (cons 'let
                                     (cons (cons (cons _%id143256%_
                                                       (cons _%expr143255%_
                                                             '()))
                                                 '())
                                           _%body143254%_))))
                            (_%K143056143182%_
                             (lambda (_%body143176%_
                                      _%expr2143177%_
                                      _%id2143178%_
                                      _%expr1143179%_
                                      _%id1143180%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1143180%_
                                                       (cons _%expr1143179%_
                                                             '()))
                                                 (cons (cons _%id2143178%_
                                                             (cons _%expr2143177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body143176%_))))
                            (_%K143039143121%_
                             (lambda (_%body143116%_
                                      _%bind143117%_
                                      _%expr1143118%_
                                      _%id1143119%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1143119%_
                                                       (cons _%expr1143118%_
                                                             '()))
                                                 _%bind143117%_)
                                           _%body143116%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code143032143104%_))
                            (let ((_%tl143098143317%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code143032143104%_)))
                                  (_%hd143097143315%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code143032143104%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd143097143315%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl143098143317%_))
                                      (let ((_%tl143100143322%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl143098143317%_)))
                                            (_%hd143099143320%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl143098143317%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd143099143320%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl143100143322%_))
                                                (let ((_%tl143102143327%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl143100143322%_)))
                                                      (_%hd143101143325%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl143100143322%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _%tl143102143327%_))
                                                      (let ((_%expr143330%_
                                                             _%hd143101143325%_))
                                                        (_%K143096143312%_
                                                         _%expr143330%_))
                                                      (_%else143037143112%_)))
                                                (_%else143037143112%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd143099143320%_))
                                                (let ((_%tl143091143273%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd143099143320%_)))
                                                      (_%hd143090143271%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd143099143320%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd143090143271%_))
                                                      (let ((_%tl143093143278%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd143090143271%_)))
                    (_%hd143092143276%_
                     (let () (declare (not safe)) (##car _%hd143090143271%_))))
                (if (let () (declare (not safe)) (##pair? _%tl143093143278%_))
                    (let ((_%tl143095143285%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl143093143278%_)))
                          (_%hd143094143283%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl143093143278%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl143095143285%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl143091143273%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl143100143322%_))
                                  (let ((_%tl143085143292%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl143100143322%_)))
                                        (_%hd143084143290%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl143100143322%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd143084143290%_))
                                        (let ((_%tl143087143297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd143084143290%_)))
                                              (_%hd143086143295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd143084143290%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd143086143295%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl143087143297%_))
                                                  (let ((_%tl143089143302%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl143087143297%_)))
                                                        (_%hd143088143300%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl143087143297%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd143088143300%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl143085143292%_))
                                                            (let ((_%id143281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd143092143276%_)
                          (_%expr143288%_ _%hd143094143283%_)
                          (_%body143305%_ _%tl143089143302%_))
                      (_%K143079143258%_
                       _%body143305%_
                       _%expr143288%_
                       _%id143281%_))
                    (_%else143037143112%_))
                (if (let () (declare (not safe)) (##pair? _%hd143088143300%_))
                    (let ((_%tl143068143231%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd143088143300%_)))
                          (_%hd143067143229%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd143088143300%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd143067143229%_))
                          (let ((_%tl143070143236%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd143067143229%_)))
                                (_%hd143069143234%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd143067143229%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl143070143236%_))
                                (let ((_%tl143072143243%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl143070143236%_)))
                                      (_%hd143071143241%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl143070143236%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl143072143243%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl143068143231%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl143085143292%_))
                                              (let ((_%id1143205%_
                                                     _%hd143092143276%_)
                                                    (_%expr1143212%_
                                                     _%hd143094143283%_)
                                                    (_%id2143239%_
                                                     _%hd143069143234%_)
                                                    (_%expr2143246%_
                                                     _%hd143071143241%_)
                                                    (_%body143248%_
                                                     _%tl143089143302%_))
                                                (_%K143056143182%_
                                                 _%body143248%_
                                                 _%expr2143246%_
                                                 _%id2143239%_
                                                 _%expr1143212%_
                                                 _%id1143205%_))
                                              (_%else143037143112%_))
                                          (_%else143037143112%_))
                                      (_%else143037143112%_)))
                                (_%else143037143112%_)))
                          (_%else143037143112%_)))
                    (_%else143037143112%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else143037143112%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd143086143295%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl143087143297%_))
                                                      (let ((_%tl143049143165%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl143087143297%_)))
                    (_%hd143048143163%_
                     (let () (declare (not safe)) (##car _%tl143087143297%_))))
                (if (let () (declare (not safe)) (##null? _%tl143085143292%_))
                    (let ((_%id1143144%_ _%hd143092143276%_)
                          (_%expr1143151%_ _%hd143094143283%_)
                          (_%bind143168%_ _%hd143048143163%_)
                          (_%body143170%_ _%tl143049143165%_))
                      (_%K143039143121%_
                       _%body143170%_
                       _%bind143168%_
                       _%expr1143151%_
                       _%id1143144%_))
                    (_%else143037143112%_)))
              (_%else143037143112%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else143037143112%_))))
                                        (_%else143037143112%_)))
                                  (_%else143037143112%_))
                              (_%else143037143112%_))
                          (_%else143037143112%_)))
                    (_%else143037143112%_)))
              (_%else143037143112%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else143037143112%_))))
                                      (_%else143037143112%_))
                                  (_%else143037143112%_)))
                            (_%else143037143112%_))))))
                 (_%generate-values142730%_
                  (lambda (_%hd142844%_ _%body142845%_)
                    (let _%lp142847%_ ((_%rest142849%_ _%hd142844%_)
                                       (_%bind142850%_ '())
                                       (_%check142851%_ '())
                                       (_%post142852%_ '()))
                      (let* ((_%__stx146975146976%_ _%rest142849%_)
                             (_%g142855142866%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146975146976%_)))))
                        (let ((_%__kont146977146978%_
                               (lambda (_%L142893%_ _%L142894%_)
                                 (let* ((_%__stx146931146932%_ _%L142894%_)
                                        (_%g142909142934%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146931146932%_)))))
                                   (let ((_%__kont146933146934%_
                                          (lambda (_%L143007%_ _%L143008%_)
                                            (let ((_%eid143022%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L143008%_)))
                                                  (_%expr143023%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self142723%_
                                                      _%L143007%_))))
                                              (_%lp142847%_
                                               _%L142893%_
                                               (cons (cons _%eid143022%_
                                                           (cons _%expr143023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142850%_)
                                               _%check142851%_
                                               _%post142852%_))))
                                         (_%__kont146935146936%_
                                          (lambda (_%L142955%_ _%L142956%_)
                                            (let* ((_%vals142969%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values142971%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals142969%_
                                                     _%L142956%_
                                                     _%L142955%_))
                                                   (_%refs142973%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals142969%_
                                                     _%L142956%_))
                                                   (_%expr142975%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142723%_
                                                       _%L142955%_))))
                                              (_%lp142847%_
                                               _%L142893%_
                                               (cons (cons _%vals142969%_
                                                           (cons _%expr142975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142850%_)
                                               (cons _%check-values142971%_
                                                     _%check142851%_)
                                               (cons _%refs142973%_
                                                     _%post142852%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146931146932%_))
                                         (let ((_%e142913142983%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146931146932%_))))
                                           (let ((_%tl142915142988%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142913142983%_)))
                                                 (_%hd142914142986%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142913142983%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd142914142986%_))
                                                 (let ((_%e142916142991%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd142914142986%_))))
                                                   (let ((_%tl142918142996%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142916142991%_)))
                                                         (_%hd142917142994%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142916142991%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142918142996%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142915142988%_))
                     (let ((_%e142919142999%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142915142988%_))))
                       (let ((_%tl142921143004%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142919142999%_)))
                             (_%hd142920143002%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142919142999%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142921143004%_))
                             (_%__kont146933146934%_
                              _%hd142920143002%_
                              _%hd142917142994%_)
                             (let ()
                               (declare (not safe))
                               (_%g142909142934%_)))))
                     (let () (declare (not safe)) (_%g142909142934%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl142915142988%_))
                     (let ((_%e142927142947%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142915142988%_))))
                       (let ((_%tl142929142952%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142927142947%_)))
                             (_%hd142928142950%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142927142947%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142929142952%_))
                             (_%__kont146935146936%_
                              _%hd142928142950%_
                              _%hd142914142986%_)
                             (let ()
                               (declare (not safe))
                               (_%g142909142934%_)))))
                     (let () (declare (not safe)) (_%g142909142934%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142915142988%_))
                                                     (let ((_%e142927142947%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142915142988%_))))
                                                       (let ((_%tl142929142952%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142927142947%_)))
                     (_%hd142928142950%_
                      (let () (declare (not safe)) (##car _%e142927142947%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142929142952%_))
                     (_%__kont146935146936%_
                      _%hd142928142950%_
                      _%hd142914142986%_)
                     (let () (declare (not safe)) (_%g142909142934%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g142909142934%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g142909142934%_)))))))
                              (_%__kont146979146980%_
                               (lambda ()
                                 (let* ((_%body142873%_
                                         (if _%compiled-body?142725%_
                                             _%body142845%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self142723%_
                                                _%body142845%_))))
                                        (_%body142875%_
                                         (_%generate-values-post142731%_
                                          _%post142852%_
                                          _%body142873%_))
                                        (_%body142877%_
                                         (_%generate-values-check142732%_
                                          _%check142851%_
                                          _%body142875%_)))
                                   (cons 'let
                                         (cons (reverse _%bind142850%_)
                                               (cons _%body142877%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146975146976%_))
                              (let ((_%e142859142885%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146975146976%_))))
                                (let ((_%tl142861142890%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142859142885%_)))
                                      (_%hd142860142888%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142859142885%_))))
                                  (_%__kont146977146978%_
                                   _%tl142861142890%_
                                   _%hd142860142888%_)))
                              (_%__kont146979146980%_)))))))
                 (_%generate-values-post142731%_
                  (lambda (_%post142803%_ _%body142804%_)
                    (let _%lp142806%_ ((_%rest142808%_ _%post142803%_)
                                       (_%body142809%_ _%body142804%_))
                      (let* ((_%rest142810142818%_ _%rest142808%_)
                             (_%else142812142826%_ (lambda () _%body142809%_))
                             (_%K142814142832%_
                              (lambda (_%rest142829%_ _%bind142830%_)
                                (_%lp142806%_
                                 _%rest142829%_
                                 (cons 'let
                                       (cons _%bind142830%_
                                             (cons _%body142809%_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest142810142818%_))
                            (let ((_%hd142815142835%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest142810142818%_)))
                                  (_%tl142816142837%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest142810142818%_))))
                              (let* ((_%bind142840%_ _%hd142815142835%_)
                                     (_%rest142842%_ _%tl142816142837%_))
                                (_%K142814142832%_
                                 _%rest142842%_
                                 _%bind142840%_)))
                            (_%else142812142826%_))))))
                 (_%generate-values-check142732%_
                  (lambda (_%check142800%_ _%body142801%_)
                    (cons 'begin
                          (let ((__tmp147823 (cons _%body142801%_ '()))
                                (__tmp147822 (reverse _%check142800%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp147823 __tmp147822))))))
          (let* ((_%g142734142751%_
                  (lambda (_%g142735142748%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142735142748%_))))
                 (_%g142733142797%_
                  (lambda (_%g142735142754%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142735142754%_))
                        (let ((_%e142738142756%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142735142754%_))))
                          (let ((_%hd142739142759%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142738142756%_)))
                                (_%tl142740142761%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142738142756%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142740142761%_))
                                (let ((_%e142741142764%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142740142761%_))))
                                  (let ((_%hd142742142767%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142741142764%_)))
                                        (_%tl142743142769%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142741142764%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142743142769%_))
                                        (let ((_%e142744142772%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142743142769%_))))
                                          (let ((_%hd142745142775%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142744142772%_)))
                                                (_%tl142746142777%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142744142772%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142746142777%_))
                                                ((lambda (_%L142780%_
                                                          _%L142781%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L142781%_)
                                                       (_%generate-simple142727%_
                                                        _%L142781%_
                                                        _%L142780%_)
                                                       (_%generate-values142730%_
                                                        _%L142781%_
                                                        _%L142780%_)))
                                                 _%hd142745142775%_
                                                 _%hd142742142767%_)
                                                (_%g142734142751%_
                                                 _%g142735142754%_))))
                                        (_%g142734142751%_
                                         _%g142735142754%_))))
                                (_%g142734142751%_ _%g142735142754%_))))
                        (_%g142734142751%_ _%g142735142754%_)))))
            (_%g142733142797%_ _%stx142724%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self143477%_ _%stx143478%_)
        (let ((_%compiled-body?143480%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self143477%_
           _%stx143478%_
           _%compiled-body?143480%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g147825_
        (let ((_g147824_ (let () (declare (not safe)) (##length _g147825_))))
          (cond ((let () (declare (not safe)) (##fx= _g147824_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g147825_))
                ((let () (declare (not safe)) (##fx= _g147824_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g147825_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g147825_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals142617%_ _%hd142618%_)
        (let _%lp142620%_ ((_%rest142622%_ _%hd142618%_)
                           (_%k142623%_ '0)
                           (_%r142624%_ '()))
          (let* ((_%__stx146989146990%_ _%rest142622%_)
                 (_%g142629142646%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx146989146990%_)))))
            (let ((_%__kont146991146992%_
                   (lambda (_%L142709%_)
                     (_%lp142620%_
                      _%L142709%_
                      (let () (declare (not safe)) (##fx+ _%k142623%_ '1))
                      _%r142624%_)))
                  (_%__kont146993146994%_
                   (lambda (_%L142682%_ _%L142683%_)
                     (_%lp142620%_
                      _%L142682%_
                      (let () (declare (not safe)) (##fx+ _%k142623%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L142683%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals142617%_
                                         _%k142623%_
                                         _%L142682%_)
                                        '()))
                            _%r142624%_))))
                  (_%__kont146995146996%_
                   (lambda (_%L142658%_)
                     (let ((__tmp147826
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L142658%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals142617%_
                                               _%k142623%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp147826 _%r142624%_))))
                  (_%__kont146997146998%_ (lambda () (reverse _%r142624%_))))
              (let ((_%g142627142669%_
                     (lambda ()
                       (let ((_%L142658%_ _%__stx146989146990%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L142658%_))
                             (_%__kont146995146996%_ _%L142658%_)
                             (_%__kont146997146998%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx146989146990%_))
                    (let ((_%e142632142698%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx146989146990%_))))
                      (let ((_%tl142634142703%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142632142698%_)))
                            (_%hd142633142701%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142632142698%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd142633142701%_))
                            (let ((_%e142635142706%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd142633142701%_))))
                              (if (equal? _%e142635142706%_ '#f)
                                  (_%__kont146991146992%_ _%tl142634142703%_)
                                  (_%__kont146993146994%_
                                   _%tl142634142703%_
                                   _%hd142633142701%_)))
                            (_%__kont146993146994%_
                             _%tl142634142703%_
                             _%hd142633142701%_))))
                    (let () (declare (not safe)) (_%g142627142669%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self142296%_ _%stx142297%_ _%compiled-body?142298%_)
        (letrec ((_%generate-simple142300%_
                  (lambda (_%hd142602%_ _%body142603%_)
                    (gxc#generate-runtime-simple-let
                     _%self142296%_
                     'letrec
                     _%hd142602%_
                     _%body142603%_
                     _%compiled-body?142298%_)))
                 (_%generate-values142301%_
                  (lambda (_%hd142381%_ _%body142382%_)
                    (let _%lp142384%_ ((_%rest142386%_ _%hd142381%_)
                                       (_%bind142387%_ '())
                                       (_%check142388%_ '())
                                       (_%post142389%_ '()))
                      (let* ((_%__stx147063147064%_ _%rest142386%_)
                             (_%g142392142403%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx147063147064%_)))))
                        (let ((_%__kont147065147066%_
                               (lambda (_%L142430%_ _%L142431%_)
                                 (let* ((_%__stx147019147020%_ _%L142431%_)
                                        (_%g142446142471%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx147019147020%_)))))
                                   (let ((_%__kont147021147022%_
                                          (lambda (_%L142578%_ _%L142579%_)
                                            (let ((_%eid142593%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L142579%_)))
                                                  (_%expr142594%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self142296%_
                                                      _%L142578%_))))
                                              (_%lp142384%_
                                               _%L142430%_
                                               (cons (cons _%eid142593%_
                                                           (cons _%expr142594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142387%_)
                                               _%check142388%_
                                               _%post142389%_))))
                                         (_%__kont147023147024%_
                                          (lambda (_%L142492%_ _%L142493%_)
                                            (let* ((_%vals142506%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values142508%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals142506%_
                                                     _%L142493%_
                                                     _%L142492%_))
                                                   (_%refs142510%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals142506%_
                                                     _%L142493%_))
                                                   (_%expr142512%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142296%_
                                                       _%L142492%_))))
                                              (_%lp142384%_
                                               _%L142430%_
                                               (let ((__tmp147828
                                                      (cons (cons _%vals142506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr142512%_ '()))
                    _%bind142387%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp147827
                                                      (map (lambda (_%e142514142516%_)
                                                             (let* ((_%g142518142527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e142514142516%_)
                            (_%E142520142531%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g142518142527%_
                                        '([eid _])))
                               '#!void))
                            (_%K142521142536%_
                             (lambda (_%eid142534%_)
                               (cons _%eid142534%_ (cons '#!void '())))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g142518142527%_))
                           (let ((_%hd142522142539%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g142518142527%_)))
                                 (_%tl142523142541%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g142518142527%_))))
                             (let ((_%eid142544%_ _%hd142522142539%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%tl142523142541%_))
                                   (let ((_%tl142525142546%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl142523142541%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _%tl142525142546%_))
                                         (_%K142521142536%_ _%eid142544%_)
                                         (_%E142520142531%_)))
                                   (_%E142520142531%_))))
                           (_%E142520142531%_))))
                   _%refs142510%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp147828
                                                  __tmp147827))
                                               (cons _%check-values142508%_
                                                     _%check142388%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs142510%_
                                                  _%post142389%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx147019147020%_))
                                         (let ((_%e142450142554%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx147019147020%_))))
                                           (let ((_%tl142452142559%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142450142554%_)))
                                                 (_%hd142451142557%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142450142554%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd142451142557%_))
                                                 (let ((_%e142453142562%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd142451142557%_))))
                                                   (let ((_%tl142455142567%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142453142562%_)))
                                                         (_%hd142454142565%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142453142562%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142455142567%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142452142559%_))
                     (let ((_%e142456142570%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142452142559%_))))
                       (let ((_%tl142458142575%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142456142570%_)))
                             (_%hd142457142573%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142456142570%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142458142575%_))
                             (_%__kont147021147022%_
                              _%hd142457142573%_
                              _%hd142454142565%_)
                             (let ()
                               (declare (not safe))
                               (_%g142446142471%_)))))
                     (let () (declare (not safe)) (_%g142446142471%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl142452142559%_))
                     (let ((_%e142464142484%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142452142559%_))))
                       (let ((_%tl142466142489%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142464142484%_)))
                             (_%hd142465142487%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142464142484%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142466142489%_))
                             (_%__kont147023147024%_
                              _%hd142465142487%_
                              _%hd142451142557%_)
                             (let ()
                               (declare (not safe))
                               (_%g142446142471%_)))))
                     (let () (declare (not safe)) (_%g142446142471%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142452142559%_))
                                                     (let ((_%e142464142484%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142452142559%_))))
                                                       (let ((_%tl142466142489%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142464142484%_)))
                     (_%hd142465142487%_
                      (let () (declare (not safe)) (##car _%e142464142484%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142466142489%_))
                     (_%__kont147023147024%_
                      _%hd142465142487%_
                      _%hd142451142557%_)
                     (let () (declare (not safe)) (_%g142446142471%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g142446142471%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g142446142471%_)))))))
                              (_%__kont147067147068%_
                               (lambda ()
                                 (let* ((_%body142410%_
                                         (if _%compiled-body?142298%_
                                             _%body142382%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self142296%_
                                                _%body142382%_))))
                                        (_%body142412%_
                                         (_%generate-values-post142303%_
                                          _%post142389%_
                                          _%body142410%_))
                                        (_%body142414%_
                                         (_%generate-values-check142302%_
                                          _%check142388%_
                                          _%body142412%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind142387%_)
                                               (cons _%body142414%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx147063147064%_))
                              (let ((_%e142396142422%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx147063147064%_))))
                                (let ((_%tl142398142427%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142396142422%_)))
                                      (_%hd142397142425%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142396142422%_))))
                                  (_%__kont147065147066%_
                                   _%tl142398142427%_
                                   _%hd142397142425%_)))
                              (_%__kont147067147068%_)))))))
                 (_%generate-values-check142302%_
                  (lambda (_%check142378%_ _%body142379%_)
                    (cons 'begin
                          (let ((__tmp147830 (cons _%body142379%_ '()))
                                (__tmp147829 (reverse _%check142378%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp147830 __tmp147829)))))
                 (_%generate-values-post142303%_
                  (lambda (_%post142371%_ _%body142372%_)
                    (cons 'begin
                          (let ((__tmp147834 (cons _%body142372%_ '()))
                                (__tmp147831
                                 (let ((__tmp147833
                                        (lambda (_%g142373142375%_)
                                          (cons 'set! _%g142373142375%_)))
                                       (__tmp147832 (reverse _%post142371%_)))
                                   (declare (not safe))
                                   (##map __tmp147833 __tmp147832))))
                            (declare (not safe))
                            (__foldr1 cons __tmp147834 __tmp147831))))))
          (let* ((_%g142305142322%_
                  (lambda (_%g142306142319%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142306142319%_))))
                 (_%g142304142368%_
                  (lambda (_%g142306142325%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142306142325%_))
                        (let ((_%e142309142327%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142306142325%_))))
                          (let ((_%hd142310142330%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142309142327%_)))
                                (_%tl142311142332%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142309142327%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142311142332%_))
                                (let ((_%e142312142335%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142311142332%_))))
                                  (let ((_%hd142313142338%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142312142335%_)))
                                        (_%tl142314142340%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142312142335%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142314142340%_))
                                        (let ((_%e142315142343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142314142340%_))))
                                          (let ((_%hd142316142346%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142315142343%_)))
                                                (_%tl142317142348%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142315142343%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142317142348%_))
                                                ((lambda (_%L142351%_
                                                          _%L142352%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L142352%_)
                                                       (_%generate-simple142300%_
                                                        _%L142352%_
                                                        _%L142351%_)
                                                       (_%generate-values142301%_
                                                        _%L142352%_
                                                        _%L142351%_)))
                                                 _%hd142316142346%_
                                                 _%hd142313142338%_)
                                                (_%g142305142322%_
                                                 _%g142306142325%_))))
                                        (_%g142305142322%_
                                         _%g142306142325%_))))
                                (_%g142305142322%_ _%g142306142325%_))))
                        (_%g142305142322%_ _%g142306142325%_)))))
            (_%g142304142368%_ _%stx142297%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self142608%_ _%stx142609%_)
        (let ((_%compiled-body?142611%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self142608%_
           _%stx142609%_
           _%compiled-body?142611%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g147836_
        (let ((_g147835_ (let () (declare (not safe)) (##length _g147836_))))
          (cond ((let () (declare (not safe)) (##fx= _g147835_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g147836_))
                ((let () (declare (not safe)) (##fx= _g147835_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g147836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g147836_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self141877%_ _%stx141878%_)
        (letrec ((_%generate-values141880%_
                  (lambda (_%hd142123%_ _%body142124%_)
                    (let _%lp142126%_ ((_%rest142128%_ _%hd142123%_)
                                       (_%bind142129%_ '()))
                      (let* ((_%rest142130142138%_ _%rest142128%_)
                             (_%else142132142149%_
                              (lambda ()
                                (let ((_%bind142146%_ (reverse _%bind142129%_))
                                      (_%body142147%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self141877%_
                                          _%body142124%_))))
                                  (cons 'letrec*
                                        (cons _%bind142146%_
                                              (cons _%body142147%_ '()))))))
                             (_%K142134142283%_
                              (lambda (_%rest142152%_ _%hd-bind142153%_)
                                (let* ((_%__stx147077147078%_
                                        _%hd-bind142153%_)
                                       (_%g142156142181%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx147077147078%_)))))
                                  (let ((_%__kont147079147080%_
                                         (lambda (_%L142262%_ _%L142263%_)
                                           (let ((_%eid142277%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L142263%_)))
                                                 (_%expr142278%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self141877%_
                                                     _%L142262%_))))
                                             (_%lp142126%_
                                              _%rest142152%_
                                              (cons (cons _%eid142277%_
                                                          (cons _%expr142278%_
                                                                '()))
                                                    _%bind142129%_)))))
                                        (_%__kont147081147082%_
                                         (lambda (_%L142202%_ _%L142203%_)
                                           (let* ((_%vals142222%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp142224%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values142226%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp142224%_
                                                    _%L142203%_
                                                    _%L142202%_))
                                                  (_%refs142228%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals142222%_
                                                    _%L142203%_))
                                                  (_%expr142230%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self141877%_
                                                      _%L142202%_))))
                                             (_%lp142126%_
                                              _%rest142152%_
                                              (let ((__tmp147837
                                                     (cons (cons _%vals142222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp142224%_
                                                       (cons _%expr142230%_
                                                             '()))
                                                 '())
                                           (cons _%check-values142226%_
                                                 (cons _%tmp142224%_ '()))))
                               '()))
                   _%bind142129%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp147837
                                                 _%refs142228%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx147077147078%_))
                                        (let ((_%e142160142238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx147077147078%_))))
                                          (let ((_%tl142162142243%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142160142238%_)))
                                                (_%hd142161142241%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142160142238%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142161142241%_))
                                                (let ((_%e142163142246%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142161142241%_))))
                                                  (let ((_%tl142165142251%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142163142246%_)))
                                                        (_%hd142164142249%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142163142246%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl142165142251%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl142162142243%_))
                                                            (let ((_%e142166142254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl142162142243%_))))
                      (let ((_%tl142168142259%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142166142254%_)))
                            (_%hd142167142257%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142166142254%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl142168142259%_))
                            (_%__kont147079147080%_
                             _%hd142167142257%_
                             _%hd142164142249%_)
                            (let ()
                              (declare (not safe))
                              (_%g142156142181%_)))))
                    (let () (declare (not safe)) (_%g142156142181%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl142162142243%_))
                    (let ((_%e142174142194%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl142162142243%_))))
                      (let ((_%tl142176142199%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142174142194%_)))
                            (_%hd142175142197%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142174142194%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl142176142199%_))
                            (_%__kont147081147082%_
                             _%hd142175142197%_
                             _%hd142161142241%_)
                            (let ()
                              (declare (not safe))
                              (_%g142156142181%_)))))
                    (let () (declare (not safe)) (_%g142156142181%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl142162142243%_))
                                                    (let ((_%e142174142194%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl142162142243%_))))
                                                      (let ((_%tl142176142199%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e142174142194%_)))
                    (_%hd142175142197%_
                     (let () (declare (not safe)) (##car _%e142174142194%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl142176142199%_))
                    (_%__kont147081147082%_
                     _%hd142175142197%_
                     _%hd142161142241%_)
                    (let () (declare (not safe)) (_%g142156142181%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g142156142181%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g142156142181%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest142130142138%_))
                            (let ((_%hd142135142286%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest142130142138%_)))
                                  (_%tl142136142288%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest142130142138%_))))
                              (let* ((_%hd-bind142291%_ _%hd142135142286%_)
                                     (_%rest142293%_ _%tl142136142288%_))
                                (_%K142134142283%_
                                 _%rest142293%_
                                 _%hd-bind142291%_)))
                            (_%else142132142149%_))))))
                 (_%generate-letrec?141881%_
                  (lambda (_%hd142013%_)
                    (let _%lp142015%_ ((_%rest142017%_ _%hd142013%_))
                      (let* ((_%rest142018142026%_ _%rest142017%_)
                             (_%else142020142034%_ (lambda () '#t))
                             (_%K142022142111%_
                              (lambda (_%rest142037%_ _%hd-bind142038%_)
                                (let* ((_%g142040142057%_
                                        (lambda (_%g142041142054%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g142041142054%_))))
                                       (_%g142039142108%_
                                        (lambda (_%g142041142060%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g142041142060%_))
                                              (let ((_%e142044142062%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g142041142060%_))))
                                                (let ((_%hd142045142065%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142044142062%_)))
                                                      (_%tl142046142067%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142044142062%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd142045142065%_))
                                                      (let ((_%e142047142070%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd142045142065%_))))
                (let ((_%hd142048142073%_
                       (let () (declare (not safe)) (##car _%e142047142070%_)))
                      (_%tl142049142075%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e142047142070%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142049142075%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142046142067%_))
                          (let ((_%e142050142078%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142046142067%_))))
                            (let ((_%hd142051142081%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142050142078%_)))
                                  (_%tl142052142083%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142050142078%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl142052142083%_))
                                  ((lambda (_%L142086%_ _%L142087%_)
                                     (if (_%is-lambda-expr?141882%_
                                          _%L142086%_)
                                         (_%lp142015%_ _%rest142037%_)
                                         '#f))
                                   _%hd142051142081%_
                                   _%hd142048142073%_)
                                  (_%g142040142057%_ _%g142041142060%_))))
                          (_%g142040142057%_ _%g142041142060%_))
                      (_%g142040142057%_ _%g142041142060%_))))
              (_%g142040142057%_ _%g142041142060%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142040142057%_
                                               _%g142041142060%_)))))
                                  (_%g142039142108%_ _%hd-bind142038%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest142018142026%_))
                            (let ((_%hd142023142114%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest142018142026%_)))
                                  (_%tl142024142116%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest142018142026%_))))
                              (let* ((_%hd-bind142119%_ _%hd142023142114%_)
                                     (_%rest142121%_ _%tl142024142116%_))
                                (_%K142022142111%_
                                 _%rest142121%_
                                 _%hd-bind142119%_)))
                            (_%else142020142034%_))))))
                 (_%is-lambda-expr?141882%_
                  (lambda (_%expr141950%_)
                    (let* ((_%__stx147121147122%_ _%expr141950%_)
                           (_%g141953141967%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx147121147122%_)))))
                      (let ((_%__kont147123147124%_
                             (lambda (_%L141995%_ _%L141996%_) '#t))
                            (_%__kont147125147126%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx147121147122%_))
                            (let ((_%e141957141979%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx147121147122%_))))
                              (let ((_%tl141959141984%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141957141979%_)))
                                    (_%hd141958141982%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141957141979%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141958141982%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd141958141982%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141959141984%_))
                                            (let ((_%e141960141987%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141959141984%_))))
                                              (let ((_%tl141962141992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141960141987%_)))
                                                    (_%hd141961141990%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141960141987%_))))
                                                (_%__kont147123147124%_
                                                 _%tl141962141992%_
                                                 _%hd141961141990%_)))
                                            (_%__kont147125147126%_))
                                        (_%__kont147125147126%_))
                                    (_%__kont147125147126%_))))
                            (_%__kont147125147126%_)))))))
          (let* ((_%g141884141901%_
                  (lambda (_%g141885141898%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141885141898%_))))
                 (_%g141883141947%_
                  (lambda (_%g141885141904%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141885141904%_))
                        (let ((_%e141888141906%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141885141904%_))))
                          (let ((_%hd141889141909%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141888141906%_)))
                                (_%tl141890141911%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141888141906%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141890141911%_))
                                (let ((_%e141891141914%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141890141911%_))))
                                  (let ((_%hd141892141917%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141891141914%_)))
                                        (_%tl141893141919%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141891141914%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141893141919%_))
                                        (let ((_%e141894141922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141893141919%_))))
                                          (let ((_%hd141895141925%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141894141922%_)))
                                                (_%tl141896141927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141894141922%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141896141927%_))
                                                ((lambda (_%L141930%_
                                                          _%L141931%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L141931%_)
                                                       (if (_%generate-letrec?141881%_
                                                            _%L141931%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self141877%_
                                                            'letrec
                                                            _%L141931%_
                                                            _%L141930%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self141877%_
                                                            'letrec*
                                                            _%L141931%_
                                                            _%L141930%_
                                                            '#f))
                                                       (_%generate-values141880%_
                                                        _%L141931%_
                                                        _%L141930%_)))
                                                 _%hd141895141925%_
                                                 _%hd141892141917%_)
                                                (_%g141884141901%_
                                                 _%g141885141904%_))))
                                        (_%g141884141901%_
                                         _%g141885141904%_))))
                                (_%g141884141901%_ _%g141885141904%_))))
                        (_%g141884141901%_ _%g141885141904%_)))))
            (_%g141883141947%_ _%stx141878%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd141814%_)
        (let _%lp141816%_ ((_%rest141818%_ _%hd141814%_))
          (let* ((_%rest141819141835%_ _%rest141818%_)
                 (_%else141822141843%_ (lambda () '#f)))
            (let ((_%K141825141856%_
                   (lambda (_%rest141854%_) (_%lp141816%_ _%rest141854%_)))
                  (_%K141824141848%_ (lambda () '#t)))
              (let ((_%try-match141821141851%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest141819141835%_))
                           (_%K141824141848%_)
                           (_%else141822141843%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest141819141835%_))
                    (let ((_%tl141827141861%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest141819141835%_)))
                          (_%hd141826141859%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest141819141835%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd141826141859%_))
                          (let ((_%tl141829141866%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd141826141859%_)))
                                (_%hd141828141864%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd141826141859%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd141828141864%_))
                                (let ((_%tl141833141869%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd141828141864%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl141833141869%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl141829141866%_))
                                          (let ((_%tl141831141872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl141829141866%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl141831141872%_))
                                                (let ((_%rest141875%_
                                                       _%tl141827141861%_))
                                                  (_%lp141816%_
                                                   _%rest141875%_))
                                                (_%else141822141843%_)))
                                          (_%else141822141843%_))
                                      (_%else141822141843%_)))
                                (_%else141822141843%_)))
                          (_%else141822141843%_)))
                    (_%try-match141821141851%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self141725%_
               _%form141726%_
               _%hd141727%_
               _%body141728%_
               _%compiled-body?141729%_)
        (letrec ((_%generate1141731%_
                  (lambda (_%bind141770%_)
                    (let* ((_%bind141771141782%_ _%bind141770%_)
                           (_%E141773141786%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind141771141782%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K141774141792%_
                            (lambda (_%expr141789%_ _%id141790%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id141790%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self141725%_
                                             _%expr141789%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind141771141782%_))
                          (let ((_%hd141775141795%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind141771141782%_)))
                                (_%tl141776141797%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind141771141782%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd141775141795%_))
                                (let ((_%hd141779141800%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd141775141795%_)))
                                      (_%tl141780141802%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd141775141795%_))))
                                  (let ((_%id141805%_ _%hd141779141800%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl141780141802%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl141776141797%_))
                                            (let ((_%hd141777141807%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl141776141797%_)))
                                                  (_%tl141778141809%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl141776141797%_))))
                                              (let ((_%expr141812%_
                                                     _%hd141777141807%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl141778141809%_))
                                                    (_%K141774141792%_
                                                     _%expr141812%_
                                                     _%id141805%_)
                                                    (_%E141773141786%_))))
                                            (_%E141773141786%_))
                                        (_%E141773141786%_))))
                                (_%E141773141786%_)))
                          (_%E141773141786%_))))))
          (let* ((_%bind141733%_ (map _%generate1141731%_ _%hd141727%_))
                 (_%body141735%_
                  (if _%compiled-body?141729%_
                      _%body141728%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self141725%_ _%body141728%_))))
                 (_%body141767%_
                  (let* ((_%body141736141744%_ _%body141735%_)
                         (_%else141738141752%_
                          (lambda () (cons _%body141735%_ '())))
                         (_%K141740141757%_
                          (lambda (_%exprs141755%_) _%exprs141755%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body141736141744%_))
                        (let ((_%hd141741141760%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body141736141744%_)))
                              (_%tl141742141762%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body141736141744%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd141741141760%_ 'begin))
                              (let ((_%exprs141765%_ _%tl141742141762%_))
                                (_%K141740141757%_ _%exprs141765%_))
                              (_%else141738141752%_)))
                        (_%else141738141752%_)))))
            (cons _%form141726%_ (cons _%bind141733%_ _%body141767%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self141625%_ _%stx141626%_)
        (letrec ((_%generate1141628%_
                  (lambda (_%datum141680%_)
                    (if (or (null? _%datum141680%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum141680%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum141680%_))
                            (eof-object? _%datum141680%_))
                        _%datum141680%_
                        (if (uninterned-symbol? _%datum141680%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum141680%_
                               '#t))
                            (if (pair? _%datum141680%_)
                                (cons (_%generate1141628%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum141680%_)))
                                      (_%generate1141628%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum141680%_))))
                                (if (box? _%datum141680%_)
                                    (box (_%generate1141628%_
                                          (unbox _%datum141680%_)))
                                    (if (vector? _%datum141680%_)
                                        (vector-map
                                         _%generate1141628%_
                                         _%datum141680%_)
                                        (if (or (s8vector? _%datum141680%_)
                                                (u8vector? _%datum141680%_)
                                                (s16vector? _%datum141680%_)
                                                (u16vector? _%datum141680%_)
                                                (s32vector? _%datum141680%_)
                                                (u32vector? _%datum141680%_)
                                                (s64vector? _%datum141680%_)
                                                (u64vector? _%datum141680%_)
                                                (f32vector? _%datum141680%_)
                                                (f64vector? _%datum141680%_))
                                            _%datum141680%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx141626%_)))))))))))
          (let* ((_%g141630141643%_
                  (lambda (_%g141631141640%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141631141640%_))))
                 (_%g141629141677%_
                  (lambda (_%g141631141646%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141631141646%_))
                        (let ((_%e141633141648%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141631141646%_))))
                          (let ((_%hd141634141651%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141633141648%_)))
                                (_%tl141635141653%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141633141648%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141635141653%_))
                                (let ((_%e141636141656%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141635141653%_))))
                                  (let ((_%hd141637141659%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141636141656%_)))
                                        (_%tl141638141661%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141636141656%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141638141661%_))
                                        ((lambda (_%L141664%_)
                                           (cons 'quote
                                                 (cons (_%generate1141628%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L141664%_)))
                                                       '())))
                                         _%hd141637141659%_)
                                        (_%g141630141643%_
                                         _%g141631141646%_))))
                                (_%g141630141643%_ _%g141631141646%_))))
                        (_%g141630141643%_ _%g141631141646%_)))))
            (_%g141629141677%_ _%stx141626%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self141066%_ _%stx141067%_)
        (letrec ((_%compile-call141069%_
                  (lambda (_%rator141358%_ _%rands141359%_)
                    (let ((_%rator141365%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self141066%_
                              _%rator141358%_)))
                          (_%rands141366%_
                           (map (lambda (_%g141360141362%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self141066%_
                                     _%g141360141362%_)))
                                _%rands141359%_)))
                      (let* ((_%__stx147168147169%_ _%rator141365%_)
                             (_%g141369141421%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx147168147169%_)))))
                        (let ((_%__kont147170147171%_
                               (lambda (_%L141545%_
                                        _%L141546%_
                                        _%L141547%_
                                        _%L141548%_)
                                 (if (let ((__tmp147840
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands141366%_)))
                                           (__tmp147838
                                            (length (let ((__tmp147839
                                                           (lambda (_%g141584141587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g141585141589%_)
                     (cons _%g141584141587%_ _%g141585141589%_))))
              (declare (not safe))
              (__foldr1 __tmp147839 '() _%L141547%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp147840 __tmp147838))
                                     (let* ((_%id141592%_ _%L141548%_)
                                            (_%args141601%_
                                             (let ((__tmp147841
                                                    (lambda (_%g141593141596%_
                                                             _%g141594141598%_)
                                                      (cons _%g141593141596%_
                                                            _%g141594141598%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147841
                                                '()
                                                _%L141547%_)))
                                            (_%body141610%_
                                             (let ((__tmp147842
                                                    (lambda (_%g141602141605%_
                                                             _%g141603141607%_)
                                                      (cons _%g141602141605%_
                                                            _%g141603141607%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147842
                                                '()
                                                _%L141546%_)))
                                            (_%init141612%_
                                             (map list
                                                  _%args141601%_
                                                  _%rands141366%_)))
                                       (cons 'let
                                             (cons _%id141592%_
                                                   (cons _%init141612%_
                                                         _%body141610%_))))
                                     (let ((__tmp147843
                                            (let ((__tmp147844
                                                   (lambda (_%g141614141617%_
                                                            _%g141615141619%_)
                                                     (cons _%g141614141617%_
                                                           _%g141615141619%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147844
                                               '()
                                               _%L141547%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx141067%_
                                        __tmp147843
                                        _%rands141366%_)))))
                              (_%__kont147176147177%_
                               (lambda ()
                                 (cons _%rator141365%_ _%rands141366%_))))
                          (let ((_%__match147235147236%_
                                 (lambda (_%e141375141433%_
                                          _%hd141376141436%_
                                          _%tl141377141438%_
                                          _%e141378141441%_
                                          _%hd141379141444%_
                                          _%tl141380141446%_
                                          _%e141381141449%_
                                          _%hd141382141452%_
                                          _%tl141383141454%_
                                          _%e141384141457%_
                                          _%hd141385141460%_
                                          _%tl141386141462%_
                                          _%e141387141465%_
                                          _%hd141388141468%_
                                          _%tl141389141470%_
                                          _%e141390141473%_
                                          _%hd141391141476%_
                                          _%tl141392141478%_
                                          _%e141393141481%_
                                          _%hd141394141484%_
                                          _%tl141395141486%_
                                          _%__splice147172147173%_
                                          _%target141396141489%_
                                          _%tl141398141491%_)
                                   (letrec ((_%loop141399141494%_
                                             (lambda (_%hd141397141497%_
                                                      _%arg141403141499%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd141397141497%_))
                                                   (let ((_%e141400141502%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd141397141497%_))))
                                                     (let ((_%lp-tl141402141507%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e141400141502%_)))
                                                           (_%lp-hd141401141505%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e141400141502%_))))
                                                       (_%loop141399141494%_
                                                        _%lp-tl141402141507%_
                                                        (cons _%lp-hd141401141505%_
                                                              _%arg141403141499%_))))
                                                   (let ((_%arg141404141510%_
                                                          (reverse _%arg141403141499%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl141395141486%_))
                                                         (let ((_%__splice147174147175%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl141395141486%_ '0))))
                   (let ((_%tl141407141515%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice147174147175%_ '1)))
                         (_%target141405141513%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice147174147175%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl141407141515%_))
                         (letrec ((_%loop141408141518%_
                                   (lambda (_%hd141406141521%_
                                            _%body141412141523%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd141406141521%_))
                                         (let ((_%e141409141526%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd141406141521%_))))
                                           (let ((_%lp-tl141411141531%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e141409141526%_)))
                                                 (_%lp-hd141410141529%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e141409141526%_))))
                                             (_%loop141408141518%_
                                              _%lp-tl141411141531%_
                                              (cons _%lp-hd141410141529%_
                                                    _%body141412141523%_))))
                                         (let ((_%body141413141534%_
                                                (reverse _%body141412141523%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl141389141470%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl141383141454%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl141380141446%_))
                                                       (let ((_%e141414141537%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl141380141446%_))))
                 (let ((_%tl141416141542%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e141414141537%_)))
                       (_%hd141415141540%_
                        (let ()
                          (declare (not safe))
                          (##car _%e141414141537%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl141416141542%_))
                       (let ((_%L141545%_ _%hd141415141540%_)
                             (_%L141546%_ _%body141413141534%_)
                             (_%L141547%_ _%arg141404141510%_)
                             (_%L141548%_ _%hd141385141460%_))
                         (if (eq? _%L141548%_ _%L141545%_)
                             (_%__kont147170147171%_
                              _%L141545%_
                              _%L141546%_
                              _%L141547%_
                              _%L141548%_)
                             (_%__kont147176147177%_)))
                       (_%__kont147176147177%_))))
               (_%__kont147176147177%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont147176147177%_))
                                               (_%__kont147176147177%_)))))))
                           (_%loop141408141518%_ _%target141405141513%_ '()))
                         (_%__kont147176147177%_))))
                 (_%__kont147176147177%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop141399141494%_
                                      _%target141396141489%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx147168147169%_))
                                (let ((_%e141375141433%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx147168147169%_))))
                                  (let ((_%tl141377141438%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141375141433%_)))
                                        (_%hd141376141436%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141375141433%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd141376141436%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd141376141436%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl141377141438%_))
                                                (let ((_%e141378141441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl141377141438%_))))
                                                  (let ((_%tl141380141446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141378141441%_)))
                                                        (_%hd141379141444%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141378141441%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd141379141444%_))
                                                        (let ((_%e141381141449%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd141379141444%_))))
                  (let ((_%tl141383141454%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141381141449%_)))
                        (_%hd141382141452%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141381141449%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141382141452%_))
                        (let ((_%e141384141457%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141382141452%_))))
                          (let ((_%tl141386141462%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141384141457%_)))
                                (_%hd141385141460%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141384141457%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141386141462%_))
                                (let ((_%e141387141465%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141386141462%_))))
                                  (let ((_%tl141389141470%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141387141465%_)))
                                        (_%hd141388141468%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141387141465%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd141388141468%_))
                                        (let ((_%e141390141473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd141388141468%_))))
                                          (let ((_%tl141392141478%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141390141473%_)))
                                                (_%hd141391141476%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141390141473%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd141391141476%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd141391141476%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141392141478%_))
                                                        (let ((_%e141393141481%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141392141478%_))))
                  (let ((_%tl141395141486%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141393141481%_)))
                        (_%hd141394141484%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141393141481%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd141394141484%_))
                        (let ((_%__splice147172147173%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd141394141484%_
                                  '0))))
                          (let ((_%tl141398141491%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice147172147173%_ '1)))
                                (_%target141396141489%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice147172147173%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141398141491%_))
                                (_%__match147235147236%_
                                 _%e141375141433%_
                                 _%hd141376141436%_
                                 _%tl141377141438%_
                                 _%e141378141441%_
                                 _%hd141379141444%_
                                 _%tl141380141446%_
                                 _%e141381141449%_
                                 _%hd141382141452%_
                                 _%tl141383141454%_
                                 _%e141384141457%_
                                 _%hd141385141460%_
                                 _%tl141386141462%_
                                 _%e141387141465%_
                                 _%hd141388141468%_
                                 _%tl141389141470%_
                                 _%e141390141473%_
                                 _%hd141391141476%_
                                 _%tl141392141478%_
                                 _%e141393141481%_
                                 _%hd141394141484%_
                                 _%tl141395141486%_
                                 _%__splice147172147173%_
                                 _%target141396141489%_
                                 _%tl141398141491%_)
                                (_%__kont147176147177%_))))
                        (_%__kont147176147177%_))))
                (_%__kont147176147177%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont147176147177%_))
                                                (_%__kont147176147177%_))))
                                        (_%__kont147176147177%_))))
                                (_%__kont147176147177%_))))
                        (_%__kont147176147177%_))))
                (_%__kont147176147177%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont147176147177%_))
                                            (_%__kont147176147177%_))
                                        (_%__kont147176147177%_))))
                                (_%__kont147176147177%_)))))))))
          (let* ((_%g141071141094%_
                  (lambda (_%g141072141091%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141072141091%_))))
                 (_%g141070141355%_
                  (lambda (_%g141072141097%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141072141097%_))
                        (let ((_%e141075141099%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141072141097%_))))
                          (let ((_%hd141076141102%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141075141099%_)))
                                (_%tl141077141104%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141075141099%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141077141104%_))
                                (let ((_%e141078141107%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141077141104%_))))
                                  (let ((_%hd141079141110%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141078141107%_)))
                                        (_%tl141080141112%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141078141107%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl141080141112%_))
                                        (let ((_g147845_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl141080141112%_
                                                  '0))))
                                          (begin
                                            (let ((_g147846_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g147845_)
                                                         (##vector-length
                                                          _g147845_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g147846_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g147846_)))
                                            (let ((_%target141081141115%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g147845_
                                                      0)))
                                                  (_%tl141083141117%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g147845_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141083141117%_))
                                                  (letrec ((_%loop141084141120%_
                                                            (lambda (_%hd141082141123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand141088141125%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd141082141123%_))
                          (let ((_%e141085141128%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd141082141123%_))))
                            (let ((_%lp-hd141086141131%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141085141128%_)))
                                  (_%lp-tl141087141133%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141085141128%_))))
                              (_%loop141084141120%_
                               _%lp-tl141087141133%_
                               (cons _%lp-hd141086141131%_
                                     _%rand141088141125%_))))
                          (let ((_%rand141089141136%_
                                 (reverse _%rand141088141125%_)))
                            ((lambda (_%L141139%_ _%L141140%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call141069%_
                                    _%L141140%_
                                    (let ((__tmp147847
                                           (lambda (_%g141157141160%_
                                                    _%g141158141162%_)
                                             (cons _%g141157141160%_
                                                   _%g141158141162%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp147847 '() _%L141139%_)))
                                   (let* ((_%__stx147284147285%_ _%L141140%_)
                                          (_%g141166141178%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx147284147285%_)))))
                                     (let ((_%__kont147286147287%_
                                            (lambda ()
                                              (let ((_%f141215%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self141066%_
                                                        _%L141140%_))))
                                                (if (and (let ((__tmp147848
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f141215%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp147848))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f141215%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp141217%_ ((_%rest141220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp147850
                                                (lambda (_%g141337141340%_
                                                         _%g141338141342%_)
                                                  (cons _%g141337141340%_
                                                        _%g141338141342%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp147850
                                            '()
                                            _%L141139%_))))
                               (_%bind141222%_ '())
                               (_%args141223%_ '()))
              (let* ((_%rest141224141232%_ _%rest141220%_)
                     (_%else141226141240%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind141222%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f141215%_
                                                      _%args141223%_)
                                                '()))))))
                     (_%K141228141326%_
                      (lambda (_%rest141243%_ _%e141244%_)
                        (let* ((_%__stx147238147239%_ _%e141244%_)
                               (_%g141249141267%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx147238147239%_)))))
                          (let ((_%__kont147240147241%_
                                 (lambda ()
                                   (_%lp141217%_
                                    _%rest141243%_
                                    _%bind141222%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e141244%_))
                                          _%args141223%_))))
                                (_%__kont147242147243%_
                                 (lambda ()
                                   (_%lp141217%_
                                    _%rest141243%_
                                    _%bind141222%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e141244%_))
                                          _%args141223%_))))
                                (_%__kont147244147245%_
                                 (lambda ()
                                   (let ((_%tmp141274%_
                                          (let ((__tmp147849
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp147849))))
                                     (_%lp141217%_
                                      _%rest141243%_
                                      (cons (cons _%tmp141274%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e141244%_))
                                                        '()))
                                            _%bind141222%_)
                                      (cons _%tmp141274%_ _%args141223%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx147238147239%_))
                                (let ((_%e141251141305%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx147238147239%_))))
                                  (let ((_%tl141253141310%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141251141305%_)))
                                        (_%hd141252141308%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141251141305%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd141252141308%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd141252141308%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl141253141310%_))
                                                (let ((_%e141254141313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl141253141310%_))))
                                                  (let ((_%tl141256141318%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141254141313%_)))
                                                        (_%hd141255141316%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141254141313%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl141256141318%_))
                                                        (_%__kont147240147241%_)
                                                        (_%__kont147244147245%_))))
                                                (_%__kont147244147245%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd141252141308%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl141253141310%_))
                                                    (let ((_%e141260141290%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl141253141310%_))))
                                                      (let ((_%tl141262141295%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141260141290%_)))
                    (_%hd141261141293%_
                     (let () (declare (not safe)) (##car _%e141260141290%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl141262141295%_))
                    (_%__kont147242147243%_)
                    (_%__kont147244147245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont147244147245%_))
                                                (_%__kont147244147245%_)))
                                        (_%__kont147244147245%_))))
                                (_%__kont147244147245%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest141224141232%_))
                    (let ((_%hd141229141329%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest141224141232%_)))
                          (_%tl141230141331%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest141224141232%_))))
                      (let* ((_%e141334%_ _%hd141229141329%_)
                             (_%rest141336%_ _%tl141230141331%_))
                        (_%K141228141326%_ _%rest141336%_ _%e141334%_)))
                    (_%else141226141240%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call141069%_
                                                     _%L141140%_
                                                     (let ((__tmp147851
                                                            (lambda (_%g141344141347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g141345141349%_)
                      (cons _%g141344141347%_ _%g141345141349%_))))
               (declare (not safe))
               (__foldr1 __tmp147851 '() _%L141139%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont147288147289%_
                                            (lambda ()
                                              (_%compile-call141069%_
                                               _%L141140%_
                                               (let ((__tmp147852
                                                      (lambda (_%g141184141187%_
                                                               _%g141185141189%_)
                                                        (cons _%g141184141187%_
                                                              _%g141185141189%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp147852
                                                  '()
                                                  _%L141139%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx147284147285%_))
                                           (let ((_%e141168141197%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx147284147285%_))))
                                             (let ((_%tl141170141202%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e141168141197%_)))
                                                   (_%hd141169141200%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e141168141197%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd141169141200%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd141169141200%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl141170141202%_))
                                                           (let ((_%e141171141205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl141170141202%_))))
                     (let ((_%tl141173141210%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e141171141205%_)))
                           (_%hd141172141208%_
                            (let ()
                              (declare (not safe))
                              (##car _%e141171141205%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl141173141210%_))
                           (_%__kont147286147287%_)
                           (_%__kont147288147289%_))))
                   (_%__kont147288147289%_))
               (_%__kont147288147289%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont147288147289%_))))
                                           (_%__kont147288147289%_))))))
                             _%rand141089141136%_
                             _%hd141079141110%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop141084141120%_
                                                     _%target141081141115%_
                                                     '()))
                                                  (_%g141071141094%_
                                                   _%g141072141097%_)))))
                                        (_%g141071141094%_
                                         _%g141072141097%_))))
                                (_%g141071141094%_ _%g141072141097%_))))
                        (_%g141071141094%_ _%g141072141097%_)))))
            (_%g141070141355%_ _%stx141067%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self140809%_ _%stx140810%_)
        (let* ((_%__stx147356147357%_ _%stx140810%_)
               (_%g140813140842%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx147356147357%_)))))
          (let ((_%__kont147358147359%_
                 (lambda (_%L140910%_ _%L140911%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self140809%_
                        _%stx140810%_)
                       (let ((_%f140933%_
                              (let ((__tmp147853
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L140911%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self140809%_
                                 __tmp147853))))
                         (let _%lp140935%_ ((_%rest140938%_
                                             (reverse (let ((__tmp147855
                                                             (lambda (_%g141055141058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g141056141060%_)
                       (cons _%g141055141058%_ _%g141056141060%_))))
                (declare (not safe))
                (__foldr1 __tmp147855 '() _%L140910%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind140940%_ '())
                                            (_%args140941%_ '()))
                           (let* ((_%rest140942140950%_ _%rest140938%_)
                                  (_%else140944140958%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind140940%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f140933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args140941%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K140946141044%_
                                   (lambda (_%rest140961%_ _%e140962%_)
                                     (let* ((_%__stx147310147311%_ _%e140962%_)
                                            (_%g140967140985%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx147310147311%_)))))
                                       (let ((_%__kont147312147313%_
                                              (lambda ()
                                                (_%lp140935%_
                                                 _%rest140961%_
                                                 _%bind140940%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e140962%_))
                                                       _%args140941%_))))
                                             (_%__kont147314147315%_
                                              (lambda ()
                                                (_%lp140935%_
                                                 _%rest140961%_
                                                 _%bind140940%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e140962%_))
                                                       _%args140941%_))))
                                             (_%__kont147316147317%_
                                              (lambda ()
                                                (let ((_%tmp140992%_
                                                       (let ((__tmp147854
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp147854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp140935%_
                                                   _%rest140961%_
                                                   (cons (cons _%tmp140992%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e140962%_))
                             '()))
                 _%bind140940%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp140992%_
                                                         _%args140941%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx147310147311%_))
                                             (let ((_%e140969141023%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx147310147311%_))))
                                               (let ((_%tl140971141028%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e140969141023%_)))
                                                     (_%hd140970141026%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e140969141023%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd140970141026%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd140970141026%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140971141028%_))
                     (let ((_%e140972141031%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140971141028%_))))
                       (let ((_%tl140974141036%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140972141031%_)))
                             (_%hd140973141034%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140972141031%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140974141036%_))
                             (_%__kont147312147313%_)
                             (_%__kont147316147317%_))))
                     (_%__kont147316147317%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd140970141026%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl140971141028%_))
                         (let ((_%e140978141008%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl140971141028%_))))
                           (let ((_%tl140980141013%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e140978141008%_)))
                                 (_%hd140979141011%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e140978141008%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl140980141013%_))
                                 (_%__kont147314147315%_)
                                 (_%__kont147316147317%_))))
                         (_%__kont147316147317%_))
                     (_%__kont147316147317%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont147316147317%_))))
                                             (_%__kont147316147317%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest140942140950%_))
                                 (let ((_%hd140947141047%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest140942140950%_)))
                                       (_%tl140948141049%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest140942140950%_))))
                                   (let* ((_%e141052%_ _%hd140947141047%_)
                                          (_%rest141054%_ _%tl140948141049%_))
                                     (_%K140946141044%_
                                      _%rest141054%_
                                      _%e141052%_)))
                                 (_%else140944140958%_))))))))
                (_%__kont147362147363%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self140809%_ _%stx140810%_))))
            (let ((_%__match147401147402%_
                   (lambda (_%e140817140854%_
                            _%hd140818140857%_
                            _%tl140819140859%_
                            _%e140820140862%_
                            _%hd140821140865%_
                            _%tl140822140867%_
                            _%e140823140870%_
                            _%hd140824140873%_
                            _%tl140825140875%_
                            _%e140826140878%_
                            _%hd140827140881%_
                            _%tl140828140883%_
                            _%__splice147360147361%_
                            _%target140829140886%_
                            _%tl140831140888%_)
                     (letrec ((_%loop140832140891%_
                               (lambda (_%hd140830140894%_
                                        _%rand140836140896%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd140830140894%_))
                                     (let ((_%e140833140899%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd140830140894%_))))
                                       (let ((_%lp-tl140835140904%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e140833140899%_)))
                                             (_%lp-hd140834140902%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e140833140899%_))))
                                         (_%loop140832140891%_
                                          _%lp-tl140835140904%_
                                          (cons _%lp-hd140834140902%_
                                                _%rand140836140896%_))))
                                     (let ((_%rand140837140907%_
                                            (reverse _%rand140836140896%_)))
                                       (_%__kont147358147359%_
                                        _%rand140837140907%_
                                        _%hd140827140881%_))))))
                       (_%loop140832140891%_ _%target140829140886%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx147356147357%_))
                  (let ((_%e140817140854%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx147356147357%_))))
                    (let ((_%tl140819140859%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140817140854%_)))
                          (_%hd140818140857%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140817140854%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140819140859%_))
                          (let ((_%e140820140862%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140819140859%_))))
                            (let ((_%tl140822140867%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140820140862%_)))
                                  (_%hd140821140865%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140820140862%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd140821140865%_))
                                  (let ((_%e140823140870%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd140821140865%_))))
                                    (let ((_%tl140825140875%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140823140870%_)))
                                          (_%hd140824140873%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140823140870%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd140824140873%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd140824140873%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl140825140875%_))
                                                  (let ((_%e140826140878%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl140825140875%_))))
                                                    (let ((_%tl140828140883%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140826140878%_)))
                                                          (_%hd140827140881%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140826140878%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl140828140883%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl140822140867%_))
                      (let ((_%__splice147360147361%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl140822140867%_
                                '0))))
                        (let ((_%tl140831140888%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice147360147361%_ '1)))
                              (_%target140829140886%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice147360147361%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl140831140888%_))
                              (_%__match147401147402%_
                               _%e140817140854%_
                               _%hd140818140857%_
                               _%tl140819140859%_
                               _%e140820140862%_
                               _%hd140821140865%_
                               _%tl140822140867%_
                               _%e140823140870%_
                               _%hd140824140873%_
                               _%tl140825140875%_
                               _%e140826140878%_
                               _%hd140827140881%_
                               _%tl140828140883%_
                               _%__splice147360147361%_
                               _%target140829140886%_
                               _%tl140831140888%_)
                              (_%__kont147362147363%_))))
                      (_%__kont147362147363%_))
                  (_%__kont147362147363%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont147362147363%_))
                                              (_%__kont147362147363%_))
                                          (_%__kont147362147363%_))))
                                  (_%__kont147362147363%_))))
                          (_%__kont147362147363%_))))
                  (_%__kont147362147363%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self140621%_ _%stx140622%_)
        (letrec ((_%simplify140624%_
                  (lambda (_%code140709%_)
                    (let* ((_%code140710140728%_ _%code140709%_)
                           (_%else140712140736%_ (lambda () _%code140709%_))
                           (_%K140714140772%_
                            (lambda (_%expr140739%_ _%test140740%_)
                              (let* ((_%expr140741140749%_ _%expr140739%_)
                                     (_%else140743140757%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test140740%_
                                                    (cons _%expr140739%_
                                                          '())))))
                                     (_%K140745140762%_
                                      (lambda (_%exprs140760%_)
                                        (cons 'and
                                              (cons _%test140740%_
                                                    _%exprs140760%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr140741140749%_))
                                    (let ((_%hd140746140765%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr140741140749%_)))
                                          (_%tl140747140767%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr140741140749%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd140746140765%_ 'and))
                                          (let ((_%exprs140770%_
                                                 _%tl140747140767%_))
                                            (_%K140745140762%_
                                             _%exprs140770%_))
                                          (_%else140743140757%_)))
                                    (_%else140743140757%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code140710140728%_))
                          (let ((_%hd140715140775%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code140710140728%_)))
                                (_%tl140716140777%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code140710140728%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd140715140775%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl140716140777%_))
                                    (let ((_%hd140717140780%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl140716140777%_)))
                                          (_%tl140718140782%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl140716140777%_))))
                                      (let ((_%test140785%_
                                             _%hd140717140780%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl140718140782%_))
                                            (let ((_%hd140719140787%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl140718140782%_)))
                                                  (_%tl140720140789%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl140718140782%_))))
                                              (let ((_%expr140792%_
                                                     _%hd140719140787%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl140720140789%_))
                                                    (let ((_%hd140721140794%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl140720140789%_)))
                                                          (_%tl140722140796%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl140720140789%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd140721140794%_))
                                                          (let ((_%hd140723140799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd140721140794%_)))
                        (_%tl140724140801%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd140721140794%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd140723140799%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl140724140801%_))
                            (let ((_%hd140725140804%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl140724140801%_)))
                                  (_%tl140726140806%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl140724140801%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140725140804%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140726140806%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140722140796%_))
                                          (_%K140714140772%_
                                           _%expr140792%_
                                           _%test140785%_)
                                          (_%else140712140736%_))
                                      (_%else140712140736%_))
                                  (_%else140712140736%_)))
                            (_%else140712140736%_))
                        (_%else140712140736%_)))
                  (_%else140712140736%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else140712140736%_))))
                                            (_%else140712140736%_))))
                                    (_%else140712140736%_))
                                (_%else140712140736%_)))
                          (_%else140712140736%_))))))
          (let* ((_%g140626140647%_
                  (lambda (_%g140627140644%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140627140644%_))))
                 (_%g140625140706%_
                  (lambda (_%g140627140650%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140627140650%_))
                        (let ((_%e140631140652%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140627140650%_))))
                          (let ((_%hd140632140655%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140631140652%_)))
                                (_%tl140633140657%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140631140652%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140633140657%_))
                                (let ((_%e140634140660%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140633140657%_))))
                                  (let ((_%hd140635140663%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140634140660%_)))
                                        (_%tl140636140665%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140634140660%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140636140665%_))
                                        (let ((_%e140637140668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140636140665%_))))
                                          (let ((_%hd140638140671%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140637140668%_)))
                                                (_%tl140639140673%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140637140668%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl140639140673%_))
                                                (let ((_%e140640140676%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl140639140673%_))))
                                                  (let ((_%hd140641140679%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140640140676%_)))
                                                        (_%tl140642140681%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140640140676%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140642140681%_))
                                                        ((lambda (_%L140684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L140685%_
                          _%L140686%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify140624%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self140621%_
                                       _%L140686%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self140621%_
                                             _%L140685%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self140621%_
                                                   _%L140684%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp147856
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self140621%_
                                               _%L140686%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp147856
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self140621%_
                                            _%L140685%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self140621%_
                                                  _%L140684%_))
                                               '()))))))
                 _%hd140641140679%_
                 _%hd140638140671%_
                 _%hd140635140663%_)
                (_%g140626140647%_ _%g140627140650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g140626140647%_
                                                 _%g140627140650%_))))
                                        (_%g140626140647%_
                                         _%g140627140650%_))))
                                (_%g140626140647%_ _%g140627140650%_))))
                        (_%g140626140647%_ _%g140627140650%_)))))
            (_%g140625140706%_ _%stx140622%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self140569%_ _%stx140570%_)
        (let* ((_%g140572140585%_
                (lambda (_%g140573140582%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140573140582%_))))
               (_%g140571140618%_
                (lambda (_%g140573140588%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140573140588%_))
                      (let ((_%e140575140590%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140573140588%_))))
                        (let ((_%hd140576140593%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140575140590%_)))
                              (_%tl140577140595%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140575140590%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140577140595%_))
                              (let ((_%e140578140598%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140577140595%_))))
                                (let ((_%hd140579140601%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140578140598%_)))
                                      (_%tl140580140603%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140578140598%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl140580140603%_))
                                      ((lambda (_%L140606%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L140606%_)))
                                       _%hd140579140601%_)
                                      (_%g140572140585%_ _%g140573140588%_))))
                              (_%g140572140585%_ _%g140573140588%_))))
                      (_%g140572140585%_ _%g140573140588%_)))))
          (_%g140571140618%_ _%stx140570%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self140501%_ _%stx140502%_)
        (let* ((_%g140504140521%_
                (lambda (_%g140505140518%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140505140518%_))))
               (_%g140503140566%_
                (lambda (_%g140505140524%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140505140524%_))
                      (let ((_%e140508140526%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140505140524%_))))
                        (let ((_%hd140509140529%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140508140526%_)))
                              (_%tl140510140531%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140508140526%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140510140531%_))
                              (let ((_%e140511140534%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140510140531%_))))
                                (let ((_%hd140512140537%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140511140534%_)))
                                      (_%tl140513140539%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140511140534%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140513140539%_))
                                      (let ((_%e140514140542%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140513140539%_))))
                                        (let ((_%hd140515140545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140514140542%_)))
                                              (_%tl140516140547%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140514140542%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140516140547%_))
                                              ((lambda (_%L140550%_
                                                        _%L140551%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L140551%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self140501%_ _%L140550%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140515140545%_
                                               _%hd140512140537%_)
                                              (_%g140504140521%_
                                               _%g140505140524%_))))
                                      (_%g140504140521%_ _%g140505140524%_))))
                              (_%g140504140521%_ _%g140505140524%_))))
                      (_%g140504140521%_ _%g140505140524%_)))))
          (_%g140503140566%_ _%stx140502%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self140312%_ _%stx140313%_)
        (let* ((_%g140315140332%_
                (lambda (_%g140316140329%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140316140329%_))))
               (_%g140314140498%_
                (lambda (_%g140316140335%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140316140335%_))
                      (let ((_%e140319140337%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140316140335%_))))
                        (let ((_%hd140320140340%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140319140337%_)))
                              (_%tl140321140342%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140319140337%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140321140342%_))
                              (let ((_%e140322140345%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140321140342%_))))
                                (let ((_%hd140323140348%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140322140345%_)))
                                      (_%tl140324140350%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140322140345%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140324140350%_))
                                      (let ((_%e140325140353%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140324140350%_))))
                                        (let ((_%hd140326140356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140325140353%_)))
                                              (_%tl140327140358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140325140353%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140327140358%_))
                                              ((lambda (_%L140361%_
                                                        _%L140362%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self140312%_ _%L140361%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self140312%_ _%L140362%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp140377%_ ((_%rest140380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L140362%_ (cons _%L140361%_ '())))
                                (_%bind140382%_ '())
                                (_%args140383%_ '()))
               (let* ((_%rest140384140392%_ _%rest140380%_)
                      (_%else140386140400%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind140382%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args140383%_)
                                                 '()))))))
                      (_%K140388140486%_
                       (lambda (_%rest140403%_ _%e140404%_)
                         (let* ((_%__stx147404147405%_ _%e140404%_)
                                (_%g140409140427%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx147404147405%_)))))
                           (let ((_%__kont147406147407%_
                                  (lambda ()
                                    (_%lp140377%_
                                     _%rest140403%_
                                     _%bind140382%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e140404%_))
                                           _%args140383%_))))
                                 (_%__kont147408147409%_
                                  (lambda ()
                                    (_%lp140377%_
                                     _%rest140403%_
                                     _%bind140382%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e140404%_))
                                           _%args140383%_))))
                                 (_%__kont147410147411%_
                                  (lambda ()
                                    (let ((_%tmp140434%_
                                           (let ((__tmp147857
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp147857))))
                                      (_%lp140377%_
                                       _%rest140403%_
                                       (cons (cons _%tmp140434%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e140404%_))
                                                         '()))
                                             _%bind140382%_)
                                       (cons _%tmp140434%_ _%args140383%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx147404147405%_))
                                 (let ((_%e140411140465%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx147404147405%_))))
                                   (let ((_%tl140413140470%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e140411140465%_)))
                                         (_%hd140412140468%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e140411140465%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd140412140468%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd140412140468%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl140413140470%_))
                                                 (let ((_%e140414140473%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl140413140470%_))))
                                                   (let ((_%tl140416140478%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140414140473%_)))
                                                         (_%hd140415140476%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140414140473%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140416140478%_))
                                                         (_%__kont147406147407%_)
                                                         (_%__kont147410147411%_))))
                                                 (_%__kont147410147411%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd140412140468%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140413140470%_))
                                                     (let ((_%e140420140450%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140413140470%_))))
                                                       (let ((_%tl140422140455%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140420140450%_)))
                     (_%hd140421140453%_
                      (let () (declare (not safe)) (##car _%e140420140450%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140422140455%_))
                     (_%__kont147408147409%_)
                     (_%__kont147410147411%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont147410147411%_))
                                                 (_%__kont147410147411%_)))
                                         (_%__kont147410147411%_))))
                                 (_%__kont147410147411%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest140384140392%_))
                     (let ((_%hd140389140489%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest140384140392%_)))
                           (_%tl140390140491%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest140384140392%_))))
                       (let* ((_%e140494%_ _%hd140389140489%_)
                              (_%rest140496%_ _%tl140390140491%_))
                         (_%K140388140486%_ _%rest140496%_ _%e140494%_)))
                     (_%else140386140400%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140326140356%_
                                               _%hd140323140348%_)
                                              (_%g140315140332%_
                                               _%g140316140335%_))))
                                      (_%g140315140332%_ _%g140316140335%_))))
                              (_%g140315140332%_ _%g140316140335%_))))
                      (_%g140315140332%_ _%g140316140335%_)))))
          (_%g140314140498%_ _%stx140313%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self140123%_ _%stx140124%_)
        (let* ((_%g140126140143%_
                (lambda (_%g140127140140%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140127140140%_))))
               (_%g140125140309%_
                (lambda (_%g140127140146%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140127140146%_))
                      (let ((_%e140130140148%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140127140146%_))))
                        (let ((_%hd140131140151%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140130140148%_)))
                              (_%tl140132140153%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140130140148%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140132140153%_))
                              (let ((_%e140133140156%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140132140153%_))))
                                (let ((_%hd140134140159%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140133140156%_)))
                                      (_%tl140135140161%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140133140156%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140135140161%_))
                                      (let ((_%e140136140164%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140135140161%_))))
                                        (let ((_%hd140137140167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140136140164%_)))
                                              (_%tl140138140169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140136140164%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140138140169%_))
                                              ((lambda (_%L140172%_
                                                        _%L140173%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self140123%_ _%L140172%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self140123%_ _%L140173%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp140188%_ ((_%rest140191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L140173%_ (cons _%L140172%_ '())))
                                (_%bind140193%_ '())
                                (_%args140194%_ '()))
               (let* ((_%rest140195140203%_ _%rest140191%_)
                      (_%else140197140211%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind140193%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args140194%_)
                                                 '()))))))
                      (_%K140199140297%_
                       (lambda (_%rest140214%_ _%e140215%_)
                         (let* ((_%__stx147450147451%_ _%e140215%_)
                                (_%g140220140238%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx147450147451%_)))))
                           (let ((_%__kont147452147453%_
                                  (lambda ()
                                    (_%lp140188%_
                                     _%rest140214%_
                                     _%bind140193%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e140215%_))
                                           _%args140194%_))))
                                 (_%__kont147454147455%_
                                  (lambda ()
                                    (_%lp140188%_
                                     _%rest140214%_
                                     _%bind140193%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e140215%_))
                                           _%args140194%_))))
                                 (_%__kont147456147457%_
                                  (lambda ()
                                    (let ((_%tmp140245%_
                                           (let ((__tmp147858
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp147858))))
                                      (_%lp140188%_
                                       _%rest140214%_
                                       (cons (cons _%tmp140245%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e140215%_))
                                                         '()))
                                             _%bind140193%_)
                                       (cons _%tmp140245%_ _%args140194%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx147450147451%_))
                                 (let ((_%e140222140276%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx147450147451%_))))
                                   (let ((_%tl140224140281%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e140222140276%_)))
                                         (_%hd140223140279%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e140222140276%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd140223140279%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd140223140279%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl140224140281%_))
                                                 (let ((_%e140225140284%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl140224140281%_))))
                                                   (let ((_%tl140227140289%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140225140284%_)))
                                                         (_%hd140226140287%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140225140284%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140227140289%_))
                                                         (_%__kont147452147453%_)
                                                         (_%__kont147456147457%_))))
                                                 (_%__kont147456147457%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd140223140279%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140224140281%_))
                                                     (let ((_%e140231140261%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140224140281%_))))
                                                       (let ((_%tl140233140266%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140231140261%_)))
                     (_%hd140232140264%_
                      (let () (declare (not safe)) (##car _%e140231140261%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140233140266%_))
                     (_%__kont147454147455%_)
                     (_%__kont147456147457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont147456147457%_))
                                                 (_%__kont147456147457%_)))
                                         (_%__kont147456147457%_))))
                                 (_%__kont147456147457%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest140195140203%_))
                     (let ((_%hd140200140300%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest140195140203%_)))
                           (_%tl140201140302%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest140195140203%_))))
                       (let* ((_%e140305%_ _%hd140200140300%_)
                              (_%rest140307%_ _%tl140201140302%_))
                         (_%K140199140297%_ _%rest140307%_ _%e140305%_)))
                     (_%else140197140211%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140137140167%_
                                               _%hd140134140159%_)
                                              (_%g140126140143%_
                                               _%g140127140146%_))))
                                      (_%g140126140143%_ _%g140127140146%_))))
                              (_%g140126140143%_ _%g140127140146%_))))
                      (_%g140126140143%_ _%g140127140146%_)))))
          (_%g140125140309%_ _%stx140124%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self140039%_ _%stx140040%_)
        (let* ((_%g140042140063%_
                (lambda (_%g140043140060%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140043140060%_))))
               (_%g140041140120%_
                (lambda (_%g140043140066%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140043140066%_))
                      (let ((_%e140047140068%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140043140066%_))))
                        (let ((_%hd140048140071%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140047140068%_)))
                              (_%tl140049140073%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140047140068%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140049140073%_))
                              (let ((_%e140050140076%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140049140073%_))))
                                (let ((_%hd140051140079%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140050140076%_)))
                                      (_%tl140052140081%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140050140076%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140052140081%_))
                                      (let ((_%e140053140084%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140052140081%_))))
                                        (let ((_%hd140054140087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140053140084%_)))
                                              (_%tl140055140089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140053140084%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140055140089%_))
                                              (let ((_%e140056140092%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140055140089%_))))
                                                (let ((_%hd140057140095%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140056140092%_)))
                                                      (_%tl140058140097%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140056140092%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl140058140097%_))
                                                      ((lambda (_%L140100%_
                                                                _%L140101%_
                                                                _%L140102%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self140039%_ _%L140100%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self140039%_
                                      _%L140101%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self140039%_
                                            _%L140102%_))
                                         (cons ''#f '()))))))
               _%hd140057140095%_
               _%hd140054140087%_
               _%hd140051140079%_)
              (_%g140042140063%_ _%g140043140066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140042140063%_
                                               _%g140043140066%_))))
                                      (_%g140042140063%_ _%g140043140066%_))))
                              (_%g140042140063%_ _%g140043140066%_))))
                      (_%g140042140063%_ _%g140043140066%_)))))
          (_%g140041140120%_ _%stx140040%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self139939%_ _%stx139940%_)
        (let* ((_%g139942139967%_
                (lambda (_%g139943139964%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139943139964%_))))
               (_%g139941140036%_
                (lambda (_%g139943139970%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139943139970%_))
                      (let ((_%e139948139972%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139943139970%_))))
                        (let ((_%hd139949139975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139948139972%_)))
                              (_%tl139950139977%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139948139972%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139950139977%_))
                              (let ((_%e139951139980%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139950139977%_))))
                                (let ((_%hd139952139983%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139951139980%_)))
                                      (_%tl139953139985%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139951139980%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139953139985%_))
                                      (let ((_%e139954139988%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139953139985%_))))
                                        (let ((_%hd139955139991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139954139988%_)))
                                              (_%tl139956139993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139954139988%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139956139993%_))
                                              (let ((_%e139957139996%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139956139993%_))))
                                                (let ((_%hd139958139999%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139957139996%_)))
                                                      (_%tl139959140001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139957139996%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139959140001%_))
                                                      (let ((_%e139960140004%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139959140001%_))))
                (let ((_%hd139961140007%_
                       (let () (declare (not safe)) (##car _%e139960140004%_)))
                      (_%tl139962140009%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139960140004%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139962140009%_))
                      ((lambda (_%L140012%_
                                _%L140013%_
                                _%L140014%_
                                _%L140015%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self139939%_
                                        _%L140013%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self139939%_
                                              _%L140012%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self139939%_
                                                    _%L140014%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self139939%_
                                                          _%L140015%_))
                                                       (cons ''#f '())))))))
                       _%hd139961140007%_
                       _%hd139958139999%_
                       _%hd139955139991%_
                       _%hd139952139983%_)
                      (_%g139942139967%_ _%g139943139970%_))))
              (_%g139942139967%_ _%g139943139970%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139942139967%_
                                               _%g139943139970%_))))
                                      (_%g139942139967%_ _%g139943139970%_))))
                              (_%g139942139967%_ _%g139943139970%_))))
                      (_%g139942139967%_ _%g139943139970%_)))))
          (_%g139941140036%_ _%stx139940%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self139855%_ _%stx139856%_)
        (let* ((_%g139858139879%_
                (lambda (_%g139859139876%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139859139876%_))))
               (_%g139857139936%_
                (lambda (_%g139859139882%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139859139882%_))
                      (let ((_%e139863139884%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139859139882%_))))
                        (let ((_%hd139864139887%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139863139884%_)))
                              (_%tl139865139889%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139863139884%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139865139889%_))
                              (let ((_%e139866139892%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139865139889%_))))
                                (let ((_%hd139867139895%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139866139892%_)))
                                      (_%tl139868139897%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139866139892%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139868139897%_))
                                      (let ((_%e139869139900%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139868139897%_))))
                                        (let ((_%hd139870139903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139869139900%_)))
                                              (_%tl139871139905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139869139900%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139871139905%_))
                                              (let ((_%e139872139908%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139871139905%_))))
                                                (let ((_%hd139873139911%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139872139908%_)))
                                                      (_%tl139874139913%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139872139908%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139874139913%_))
                                                      ((lambda (_%L139916%_
                                                                _%L139917%_
                                                                _%L139918%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self139855%_ _%L139916%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self139855%_
                                      _%L139917%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139855%_
                                            _%L139918%_))
                                         (cons ''#f '()))))))
               _%hd139873139911%_
               _%hd139870139903%_
               _%hd139867139895%_)
              (_%g139858139879%_ _%g139859139882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139858139879%_
                                               _%g139859139882%_))))
                                      (_%g139858139879%_ _%g139859139882%_))))
                              (_%g139858139879%_ _%g139859139882%_))))
                      (_%g139858139879%_ _%g139859139882%_)))))
          (_%g139857139936%_ _%stx139856%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self139755%_ _%stx139756%_)
        (let* ((_%g139758139783%_
                (lambda (_%g139759139780%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139759139780%_))))
               (_%g139757139852%_
                (lambda (_%g139759139786%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139759139786%_))
                      (let ((_%e139764139788%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139759139786%_))))
                        (let ((_%hd139765139791%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139764139788%_)))
                              (_%tl139766139793%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139764139788%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139766139793%_))
                              (let ((_%e139767139796%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139766139793%_))))
                                (let ((_%hd139768139799%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139767139796%_)))
                                      (_%tl139769139801%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139767139796%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139769139801%_))
                                      (let ((_%e139770139804%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139769139801%_))))
                                        (let ((_%hd139771139807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139770139804%_)))
                                              (_%tl139772139809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139770139804%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139772139809%_))
                                              (let ((_%e139773139812%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139772139809%_))))
                                                (let ((_%hd139774139815%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139773139812%_)))
                                                      (_%tl139775139817%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139773139812%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139775139817%_))
                                                      (let ((_%e139776139820%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139775139817%_))))
                (let ((_%hd139777139823%_
                       (let () (declare (not safe)) (##car _%e139776139820%_)))
                      (_%tl139778139825%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139776139820%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139778139825%_))
                      ((lambda (_%L139828%_
                                _%L139829%_
                                _%L139830%_
                                _%L139831%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self139755%_
                                        _%L139829%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self139755%_
                                              _%L139828%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self139755%_
                                                    _%L139830%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self139755%_
                                                          _%L139831%_))
                                                       (cons ''#f '())))))))
                       _%hd139777139823%_
                       _%hd139774139815%_
                       _%hd139771139807%_
                       _%hd139768139799%_)
                      (_%g139758139783%_ _%g139759139786%_))))
              (_%g139758139783%_ _%g139759139786%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139758139783%_
                                               _%g139759139786%_))))
                                      (_%g139758139783%_ _%g139759139786%_))))
                              (_%g139758139783%_ _%g139759139786%_))))
                      (_%g139758139783%_ _%g139759139786%_)))))
          (_%g139757139852%_ _%stx139756%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self139550%_ _%stx139551%_)
        (let* ((_%g139553139574%_
                (lambda (_%g139554139571%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139554139571%_))))
               (_%g139552139752%_
                (lambda (_%g139554139577%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139554139577%_))
                      (let ((_%e139558139579%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139554139577%_))))
                        (let ((_%hd139559139582%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139558139579%_)))
                              (_%tl139560139584%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139558139579%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139560139584%_))
                              (let ((_%e139561139587%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139560139584%_))))
                                (let ((_%hd139562139590%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139561139587%_)))
                                      (_%tl139563139592%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139561139587%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139563139592%_))
                                      (let ((_%e139564139595%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139563139592%_))))
                                        (let ((_%hd139565139598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139564139595%_)))
                                              (_%tl139566139600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139564139595%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139566139600%_))
                                              (let ((_%e139567139603%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139566139600%_))))
                                                (let ((_%hd139568139606%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139567139603%_)))
                                                      (_%tl139569139608%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139567139603%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139569139608%_))
                                                      ((lambda (_%L139611%_
                                                                _%L139612%_
                                                                _%L139613%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self139550%_
                                    _%L139611%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139550%_
                                          _%L139612%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp139631%_ ((_%rest139634%_
                                         (cons _%L139612%_
                                               (cons _%L139611%_ '())))
                                        (_%bind139636%_ '())
                                        (_%args139637%_ '()))
                       (let* ((_%rest139638139646%_ _%rest139634%_)
                              (_%else139640139654%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind139636%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp147859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp147859 _%args139637%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K139642139740%_
                               (lambda (_%rest139657%_ _%e139658%_)
                                 (let* ((_%__stx147496147497%_ _%e139658%_)
                                        (_%g139663139681%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx147496147497%_)))))
                                   (let ((_%__kont147498147499%_
                                          (lambda ()
                                            (_%lp139631%_
                                             _%rest139657%_
                                             _%bind139636%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e139658%_))
                                                   _%args139637%_))))
                                         (_%__kont147500147501%_
                                          (lambda ()
                                            (_%lp139631%_
                                             _%rest139657%_
                                             _%bind139636%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e139658%_))
                                                   _%args139637%_))))
                                         (_%__kont147502147503%_
                                          (lambda ()
                                            (let ((_%tmp139688%_
                                                   (let ((__tmp147860
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp147860))))
                                              (_%lp139631%_
                                               _%rest139657%_
                                               (cons (cons _%tmp139688%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e139658%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind139636%_)
                                               (cons _%tmp139688%_
                                                     _%args139637%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx147496147497%_))
                                         (let ((_%e139665139719%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx147496147497%_))))
                                           (let ((_%tl139667139724%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139665139719%_)))
                                                 (_%hd139666139722%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139665139719%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd139666139722%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd139666139722%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl139667139724%_))
                                                         (let ((_%e139668139727%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl139667139724%_))))
                   (let ((_%tl139670139732%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e139668139727%_)))
                         (_%hd139669139730%_
                          (let ()
                            (declare (not safe))
                            (##car _%e139668139727%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl139670139732%_))
                         (_%__kont147498147499%_)
                         (_%__kont147502147503%_))))
                 (_%__kont147502147503%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd139666139722%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl139667139724%_))
                     (let ((_%e139674139704%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139667139724%_))))
                       (let ((_%tl139676139709%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139674139704%_)))
                             (_%hd139675139707%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139674139704%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139676139709%_))
                             (_%__kont147500147501%_)
                             (_%__kont147502147503%_))))
                     (_%__kont147502147503%_))
                 (_%__kont147502147503%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont147502147503%_))))
                                         (_%__kont147502147503%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest139638139646%_))
                             (let ((_%hd139643139743%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest139638139646%_)))
                                   (_%tl139644139745%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest139638139646%_))))
                               (let* ((_%e139748%_ _%hd139643139743%_)
                                      (_%rest139750%_ _%tl139644139745%_))
                                 (_%K139642139740%_
                                  _%rest139750%_
                                  _%e139748%_)))
                             (_%else139640139654%_))))))
               _%hd139568139606%_
               _%hd139565139598%_
               _%hd139562139590%_)
              (_%g139553139574%_ _%g139554139577%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139553139574%_
                                               _%g139554139577%_))))
                                      (_%g139553139574%_ _%g139554139577%_))))
                              (_%g139553139574%_ _%g139554139577%_))))
                      (_%g139553139574%_ _%g139554139577%_)))))
          (_%g139552139752%_ _%stx139551%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self139329%_ _%stx139330%_)
        (let* ((_%g139332139357%_
                (lambda (_%g139333139354%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139333139354%_))))
               (_%g139331139547%_
                (lambda (_%g139333139360%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139333139360%_))
                      (let ((_%e139338139362%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139333139360%_))))
                        (let ((_%hd139339139365%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139338139362%_)))
                              (_%tl139340139367%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139338139362%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139340139367%_))
                              (let ((_%e139341139370%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139340139367%_))))
                                (let ((_%hd139342139373%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139341139370%_)))
                                      (_%tl139343139375%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139341139370%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139343139375%_))
                                      (let ((_%e139344139378%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139343139375%_))))
                                        (let ((_%hd139345139381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139344139378%_)))
                                              (_%tl139346139383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139344139378%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139346139383%_))
                                              (let ((_%e139347139386%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139346139383%_))))
                                                (let ((_%hd139348139389%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139347139386%_)))
                                                      (_%tl139349139391%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139347139386%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139349139391%_))
                                                      (let ((_%e139350139394%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139349139391%_))))
                (let ((_%hd139351139397%_
                       (let () (declare (not safe)) (##car _%e139350139394%_)))
                      (_%tl139352139399%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139350139394%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139352139399%_))
                      ((lambda (_%L139402%_
                                _%L139403%_
                                _%L139404%_
                                _%L139405%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139329%_
                                            _%L139403%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self139329%_
                                                  _%L139402%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self139329%_
                                                        _%L139404%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp139426%_ ((_%rest139429%_
                                                 (cons _%L139404%_
                                                       (cons _%L139402%_
                                                             (cons _%L139403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind139431%_ '())
                                                (_%args139432%_ '()))
                               (let* ((_%rest139433139441%_ _%rest139429%_)
                                      (_%else139435139449%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind139431%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp147861 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp147861 _%args139432%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K139437139535%_
                                       (lambda (_%rest139452%_ _%e139453%_)
                                         (let* ((_%__stx147542147543%_
                                                 _%e139453%_)
                                                (_%g139458139476%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx147542147543%_)))))
                                           (let ((_%__kont147544147545%_
                                                  (lambda ()
                                                    (_%lp139426%_
                                                     _%rest139452%_
                                                     _%bind139431%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e139453%_))
                                                           _%args139432%_))))
                                                 (_%__kont147546147547%_
                                                  (lambda ()
                                                    (_%lp139426%_
                                                     _%rest139452%_
                                                     _%bind139431%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e139453%_))
                                                           _%args139432%_))))
                                                 (_%__kont147548147549%_
                                                  (lambda ()
                                                    (let ((_%tmp139483%_
                                                           (let ((__tmp147862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp147862))))
              (_%lp139426%_
               _%rest139452%_
               (cons (cons _%tmp139483%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e139453%_))
                                 '()))
                     _%bind139431%_)
               (cons _%tmp139483%_ _%args139432%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx147542147543%_))
                                                 (let ((_%e139460139514%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx147542147543%_))))
                                                   (let ((_%tl139462139519%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139460139514%_)))
                                                         (_%hd139461139517%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139460139514%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd139461139517%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd139461139517%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl139462139519%_))
                         (let ((_%e139463139522%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl139462139519%_))))
                           (let ((_%tl139465139527%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e139463139522%_)))
                                 (_%hd139464139525%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e139463139522%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl139465139527%_))
                                 (_%__kont147544147545%_)
                                 (_%__kont147548147549%_))))
                         (_%__kont147548147549%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd139461139517%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl139462139519%_))
                             (let ((_%e139469139499%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl139462139519%_))))
                               (let ((_%tl139471139504%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e139469139499%_)))
                                     (_%hd139470139502%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e139469139499%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl139471139504%_))
                                     (_%__kont147546147547%_)
                                     (_%__kont147548147549%_))))
                             (_%__kont147548147549%_))
                         (_%__kont147548147549%_)))
                 (_%__kont147548147549%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont147548147549%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest139433139441%_))
                                     (let ((_%hd139438139538%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest139433139441%_)))
                                           (_%tl139439139540%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest139433139441%_))))
                                       (let* ((_%e139543%_ _%hd139438139538%_)
                                              (_%rest139545%_
                                               _%tl139439139540%_))
                                         (_%K139437139535%_
                                          _%rest139545%_
                                          _%e139543%_)))
                                     (_%else139435139449%_))))))
                       _%hd139351139397%_
                       _%hd139348139389%_
                       _%hd139345139381%_
                       _%hd139342139373%_)
                      (_%g139332139357%_ _%g139333139360%_))))
              (_%g139332139357%_ _%g139333139360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139332139357%_
                                               _%g139333139360%_))))
                                      (_%g139332139357%_ _%g139333139360%_))))
                              (_%g139332139357%_ _%g139333139360%_))))
                      (_%g139332139357%_ _%g139333139360%_)))))
          (_%g139331139547%_ _%stx139330%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self139168%_ _%stx139169%_)
        (letrec ((_%import-set-template139171%_
                  (lambda (_%in139274%_ _%phi139275%_)
                    (let ((_%iphi139277%_
                           (fx+ _%phi139275%_
                                (##direct-structure-ref
                                 _%in139274%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports139278%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in139274%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp139280%_ ((_%rest139282%_ _%imports139278%_)
                                         (_%r139283%_ '()))
                        (let* ((_%rest139284139292%_ _%rest139282%_)
                               (_%else139286139300%_ (lambda () _%r139283%_))
                               (_%K139288139317%_
                                (lambda (_%rest139303%_ _%in139304%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in139304%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi139277%_))
                                          (_%lp139280%_
                                           _%rest139303%_
                                           (cons _%in139304%_ _%r139283%_))
                                          (_%lp139280%_
                                           _%rest139303%_
                                           _%r139283%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in139304%_
                                             'gx#module-import::t))
                                          (let ((_%iphi139308%_
                                                 (fx+ _%phi139275%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in139304%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi139308%_))
                                                (_%lp139280%_
                                                 _%rest139303%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in139304%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r139283%_))
                                                (_%lp139280%_
                                                 _%rest139303%_
                                                 _%r139283%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in139304%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi139311%_
                                                     (fx+ _%iphi139277%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in139304%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi139311%_))
                                                    (_%lp139280%_
                                                     _%rest139303%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in139304%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r139283%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi139311%_))
                                                        (_%lp139280%_
                                                         _%rest139303%_
                                                         (let ((__tmp147863
                                                                (_%import-set-template139171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in139304%_
                         _%iphi139277%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r139283%_ __tmp147863)))
                (_%lp139280%_ _%rest139303%_ _%r139283%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp139280%_
                                               _%rest139303%_
                                               _%r139283%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest139284139292%_))
                              (let ((_%hd139289139320%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest139284139292%_)))
                                    (_%tl139290139322%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest139284139292%_))))
                                (let* ((_%in139325%_ _%hd139289139320%_)
                                       (_%rest139327%_ _%tl139290139322%_))
                                  (_%K139288139317%_
                                   _%rest139327%_
                                   _%in139325%_)))
                              (_%else139286139300%_))))))))
          (let* ((_%g139173139183%_
                  (lambda (_%g139174139180%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139174139180%_))))
                 (_%g139172139271%_
                  (lambda (_%g139174139186%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139174139186%_))
                        (let ((_%e139176139188%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139174139186%_))))
                          (let ((_%hd139177139191%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139176139188%_)))
                                (_%tl139178139193%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139176139188%_))))
                            ((lambda (_%L139196%_)
                               (let ((_%ht139207%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp139209%_ ((_%rest139211%_
                                                     _%L139196%_)
                                                    (_%loads139212%_ '()))
                                   (letrec ((_%K139214%_
                                             (lambda (_%ctx139264%_
                                                      _%rest139265%_)
                                               (let ((_%id139267%_
                                                      (##structure-ref
                                                       _%ctx139264%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht139207%_
                                                        _%id139267%_))
                                                     (_%lp139209%_
                                                      _%rest139265%_
                                                      _%loads139212%_)
                                                     (let ((_%rt139269%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id139267%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht139207%_
                                                          _%id139267%_
                                                          _%rt139269%_))
                                                       (_%lp139209%_
                                                        _%rest139265%_
                                                        (cons _%rt139269%_
                                                              _%loads139212%_))))))))
                                     (let* ((_%rest139215139223%_
                                             _%rest139211%_)
                                            (_%else139217139235%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp147865
                                                            (lambda (_%g139230139232%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g139230139232%_)))
                   (__tmp147864 (reverse _%loads139212%_)))
               (declare (not safe))
               (##map __tmp147865 __tmp147864)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K139219139252%_
                                             (lambda (_%rest139238%_
                                                      _%in139239%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in139239%_
                                                      'gx#module-context::t))
                                                   (_%K139214%_
                                                    _%in139239%_
                                                    _%rest139238%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in139239%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in139239%_
                               '3
                               '#f
                               '#f)))
                   (_%K139214%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in139239%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest139238%_)
                   (_%lp139209%_ _%rest139238%_ _%loads139212%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in139239%_
                      'gx#import-set::t))
                   (let ((_%phi139244%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in139239%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi139244%_)
                         (_%K139214%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in139239%_
                             '1
                             '#f
                             '#f))
                          _%rest139238%_)
                         (if (fxpositive? _%phi139244%_)
                             (let ((_%deps139248%_
                                    (_%import-set-template139171%_
                                     _%in139239%_
                                     '0)))
                               (_%lp139209%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest139238%_
                                   _%deps139248%_))
                                _%loads139212%_))
                             (_%lp139209%_ _%rest139238%_ _%loads139212%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx139169%_
                      _%in139239%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest139215139223%_))
                                           (let ((_%hd139220139255%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest139215139223%_)))
                                                 (_%tl139221139257%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest139215139223%_))))
                                             (let* ((_%in139260%_
                                                     _%hd139220139255%_)
                                                    (_%rest139262%_
                                                     _%tl139221139257%_))
                                               (_%K139219139252%_
                                                _%rest139262%_
                                                _%in139260%_)))
                                           (_%else139217139235%_)))))))
                             _%tl139178139193%_)))
                        (_%g139173139183%_ _%g139174139186%_)))))
            (_%g139172139271%_ _%stx139169%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self138981%_ _%stx138982%_)
        (letrec ((_%add-lift!138984%_
                  (lambda (_%expr139166%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr139166%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote138985%_
                  (lambda (_%id139163%_ _%marks139164%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id139163%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks139164%_
                                                        '()))))))))
                 (_%generate-simple138986%_
                  (lambda (_%stxq139158%_)
                    (let ((_%gid139160%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid139161%_
                           (gxc#generate-runtime-identifier _%stxq139158%_)))
                      (_%add-lift!138984%_
                       (cons 'define
                             (cons _%gid139160%_
                                   (cons (_%generate-syntax-quote138985%_
                                          _%qid139161%_
                                          ''())
                                         '()))))
                      (let ((__tmp147866
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp147866 _%stxq139158%_ _%gid139160%_))
                      _%gid139160%_)))
                 (_%generate-serialized138987%_
                  (lambda (_%stxq139148%_ _%marks139149%_)
                    (let* ((_%mark-refs139151%_
                            (map _%generate-mark138988%_ _%marks139149%_))
                           (_%gid139153%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid139155%_
                            (gxc#generate-runtime-identifier _%stxq139148%_)))
                      (_%add-lift!138984%_
                       (cons 'define
                             (cons _%gid139153%_
                                   (cons (_%generate-syntax-quote138985%_
                                          _%qid139155%_
                                          (cons 'list _%mark-refs139151%_))
                                         '()))))
                      (let ((__tmp147867
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp147867 _%stxq139148%_ _%gid139153%_))
                      _%gid139153%_)))
                 (_%generate-mark138988%_
                  (lambda (_%mark139133%_)
                    (let ((_%$e139135%_
                           (let ((__tmp147868
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp147868 _%mark139133%_))))
                      (if _%$e139135%_
                          _%$e139135%_
                          (let* ((_%gid139139%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr139141%_
                                  (_%serialize-mark138989%_ _%mark139133%_))
                                 (_%ctx139143%_
                                  (let ((__tmp147869
                                         (##structure-ref
                                          _%mark139133%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp147869)))
                                 (_%ctx-ref139145%_
                                  (if (eq? _%ctx139143%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref138990%_
                                                               _%ctx139143%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp147870
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp147870
                               _%mark139133%_
                               _%gid139139%_))
                            (_%add-lift!138984%_
                             (cons 'define
                                   (cons _%gid139139%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr139141%_ '()))
                   (cons _%ctx-ref139145%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid139139%_)))))
                 (_%serialize-mark138989%_
                  (lambda (_%mark139080%_)
                    (letrec ((_%quote-e139082%_
                              (lambda (_%sym139131%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym139131%_))
                                    _%sym139131%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym139131%_))))))
                      (let* ((_%mark139083139092%_ _%mark139080%_)
                             (_%E139085139096%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark139083139092%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K139086139108%_
                              (lambda (_%trace139099%_
                                       _%phi139100%_
                                       _%ctx139101%_
                                       _%subst139102%_)
                                (let ((_%subs139104%_
                                       (if _%subst139102%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst139102%_))
                                           '())))
                                  (cons _%phi139100%_
                                        (map (lambda (_%pair139106%_)
                                               (cons (_%quote-e139082%_
                                                      (car _%pair139106%_))
                                                     (_%quote-e139082%_
                                                      (cdr _%pair139106%_))))
                                             _%subs139104%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark139083139092%_
                               'gx#expander-mark::t))
                            (let* ((_%e139087139111%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark139083139092%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst139114%_ _%e139087139111%_)
                                   (_%e139088139116%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark139083139092%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx139119%_ _%e139088139116%_)
                                   (_%e139089139121%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark139083139092%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi139124%_ _%e139089139121%_)
                                   (_%e139090139126%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark139083139092%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace139129%_ _%e139090139126%_))
                              (_%K139086139108%_
                               _%trace139129%_
                               _%phi139124%_
                               _%ctx139119%_
                               _%subst139114%_))
                            (_%E139085139096%_))))))
                 (_%context-ref138990%_
                  (lambda (_%ctx139067%_)
                    (if (let ((__tmp147871
                               (##structure-ref
                                _%ctx139067%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp147871
                           'gx#module-context::t))
                        (let ((_%ctx-ref139069%_
                               (_%context-ref-nested138992%_ _%ctx139067%_))
                              (_%ctx-origin139070%_
                               (_%context-ref-origin138991%_ _%ctx139067%_))
                              (_%origin139071%_
                               (_%context-ref-origin138991%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin139071%_ _%ctx-origin139070%_)
                              (let ((_%ref139073%_
                                     (_%context-ref-nested138992%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp139075%_ ((_%ref139077%_
                                                    (cdr _%ref139073%_))
                                                   (_%ctx-ref139078%_
                                                    (cdr _%ctx-ref139069%_)))
                                  (if (and (pair? _%ref139077%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref139077%_))
                                                (car _%ctx-ref139078%_)))
                                      (_%lp139075%_
                                       (cdr _%ref139077%_)
                                       (cdr _%ctx-ref139078%_))
                                      (cons '#f _%ctx-ref139078%_))))
                              _%ctx-ref139069%_))
                        (let ((__tmp147872
                               (##structure-ref
                                _%ctx139067%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp147872)))))
                 (_%context-ref-origin138991%_
                  (lambda (_%ctx139059%_)
                    (let _%lp139061%_ ((_%ctx139063%_ _%ctx139059%_))
                      (let ((_%super139065%_
                             (##structure-ref
                              _%ctx139063%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super139065%_
                               'gx#module-context::t))
                            (_%lp139061%_ _%super139065%_)
                            _%ctx139063%_)))))
                 (_%context-ref-nested138992%_
                  (lambda (_%ctx139050%_)
                    (let _%lp139052%_ ((_%ctx139054%_ _%ctx139050%_)
                                       (_%r139055%_ '()))
                      (let ((_%super139057%_
                             (##structure-ref
                              _%ctx139054%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super139057%_
                               'gx#module-context::t))
                            (_%lp139052%_
                             _%super139057%_
                             (cons (car (##structure-ref
                                         _%ctx139054%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r139055%_))
                            (cons (let ((__tmp147873
                                         (##structure-ref
                                          _%ctx139054%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp147873))
                                  _%r139055%_)))))))
          (let* ((_%g138994139007%_
                  (lambda (_%g138995139004%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138995139004%_))))
                 (_%g138993139047%_
                  (lambda (_%g138995139010%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138995139010%_))
                        (let ((_%e138997139012%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138995139010%_))))
                          (let ((_%hd138998139015%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138997139012%_)))
                                (_%tl138999139017%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138997139012%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138999139017%_))
                                (let ((_%e139000139020%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138999139017%_))))
                                  (let ((_%hd139001139023%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139000139020%_)))
                                        (_%tl139002139025%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139000139020%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl139002139025%_))
                                        ((lambda (_%L139028%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L139028%_))
                                               (let ((_%$e139041%_
                                                      (let ((__tmp147874
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp147874 _%L139028%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e139041%_
                                                     _%$e139041%_
                                                     (let ((_%marks139045%_
                                                            (##direct-structure-ref
                                                             _%L139028%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks139045%_)
                                                           (_%generate-simple138986%_
                                                            _%L139028%_)
                                                           (_%generate-serialized138987%_
                                                            _%L139028%_
                                                            _%marks139045%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L139028%_))))
                                         _%hd139001139023%_)
                                        (_%g138994139007%_
                                         _%g138995139010%_))))
                                (_%g138994139007%_ _%g138995139010%_))))
                        (_%g138994139007%_ _%g138995139010%_)))))
            (_%g138993139047%_ _%stx138982%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self138913%_ _%stx138914%_)
        (let* ((_%g138916138933%_
                (lambda (_%g138917138930%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138917138930%_))))
               (_%g138915138978%_
                (lambda (_%g138917138936%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138917138936%_))
                      (let ((_%e138920138938%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138917138936%_))))
                        (let ((_%hd138921138941%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138920138938%_)))
                              (_%tl138922138943%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138920138938%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138922138943%_))
                              (let ((_%e138923138946%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138922138943%_))))
                                (let ((_%hd138924138949%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138923138946%_)))
                                      (_%tl138925138951%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138923138946%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138925138951%_))
                                      (let ((_%e138926138954%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138925138951%_))))
                                        (let ((_%hd138927138957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138926138954%_)))
                                              (_%tl138928138959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138926138954%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138928138959%_))
                                              ((lambda (_%L138962%_
                                                        _%L138963%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L138963%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self138913%_ _%L138962%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138927138957%_
                                               _%hd138924138949%_)
                                              (_%g138916138933%_
                                               _%g138917138936%_))))
                                      (_%g138916138933%_ _%g138917138936%_))))
                              (_%g138916138933%_ _%g138917138936%_))))
                      (_%g138916138933%_ _%g138917138936%_)))))
          (_%g138915138978%_ _%stx138914%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self138862%_ _%stx138863%_)
        (let* ((_%g138865138875%_
                (lambda (_%g138866138872%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138866138872%_))))
               (_%g138864138910%_
                (lambda (_%g138866138878%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138866138878%_))
                      (let ((_%e138868138880%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138866138878%_))))
                        (let ((_%hd138869138883%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138868138880%_)))
                              (_%tl138870138885%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138868138880%_))))
                          ((lambda (_%L138888%_)
                             (let* ((_%c-body138902%_
                                     (map (lambda (_%g138897138899%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self138862%_
                                               _%g138897138899%_)))
                                          _%L138888%_))
                                    (_%c-body138907%_
                                     (let ((__tmp147875
                                            (lambda (_%$obj138904%_)
                                              (not (eq? _%$obj138904%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp147875
                                        _%c-body138902%_))))
                               (cons '%#begin _%c-body138907%_)))
                           _%tl138870138885%_)))
                      (_%g138865138875%_ _%g138866138878%_)))))
          (_%g138864138910%_ _%stx138863%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self138767%_ _%stx138768%_)
        (let* ((_%g138770138780%_
                (lambda (_%g138771138777%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138771138777%_))))
               (_%g138769138859%_
                (lambda (_%g138771138783%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138771138783%_))
                      (let ((_%e138773138785%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138771138783%_))))
                        (let ((_%hd138774138788%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138773138785%_)))
                              (_%tl138775138790%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138773138785%_))))
                          ((lambda (_%L138793%_)
                             (let* ((_%phi138803%_
                                     (let ((__tmp147876
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp147876 '1)))
                                    (_%block138805%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self138767%_ 'state))
                                      _%phi138803%_))
                                    (_%compiled138808%_
                                     (let ((__tmp147877
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self138767%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L138793%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp147877
                                        gx#current-expander-phi
                                        _%phi138803%_)))
                                    (_%g138811138821%_
                                     (lambda (_%g138812138818%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g138812138818%_))))
                                    (_%g138810138856%_
                                     (lambda (_%g138812138824%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g138812138824%_))
                                           (let ((_%e138814138826%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g138812138824%_))))
                                             (let ((_%hd138815138829%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e138814138826%_)))
                                                   (_%tl138816138831%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e138814138826%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd138815138829%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd138815138829%_))
                                                       ((lambda (_%L138834%_)
                                                          (let ((_%c-body138851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj138848%_)
                                   (not (eq? _%$obj138848%_ '#!void)))
                                 _%L138834%_)))
                    (if _%block138805%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block138805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body138851%_))
                        (if (null? _%c-body138851%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body138851%_)))))
                _%tl138816138831%_)
               (_%g138811138821%_ _%g138812138824%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g138811138821%_
                                                    _%g138812138824%_))))
                                           (_%g138811138821%_
                                            _%g138812138824%_)))))
                               (_%g138810138856%_ _%compiled138808%_)))
                           _%tl138775138790%_)))
                      (_%g138770138780%_ _%g138771138783%_)))))
          (_%g138769138859%_ _%stx138768%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self138698%_ _%stx138699%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self138698%_ 'state)))
        (let* ((_%g138701138715%_
                (lambda (_%g138702138712%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138702138712%_))))
               (_%g138700138764%_
                (lambda (_%g138702138718%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138702138718%_))
                      (let ((_%e138705138720%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138702138718%_))))
                        (let ((_%hd138706138723%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138705138720%_)))
                              (_%tl138707138725%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138705138720%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138707138725%_))
                              (let ((_%e138708138728%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138707138725%_))))
                                (let ((_%hd138709138731%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138708138728%_)))
                                      (_%tl138710138733%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138708138728%_))))
                                  ((lambda (_%L138736%_ _%L138737%_)
                                     (let ((_%key138750%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L138737%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key138750%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx138699%_
                                              _%L138737%_
                                              _%key138750%_)))
                                       (let* ((_%ctx138752%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L138737%_)))
                                              (_%code138755%_
                                               (let ((__tmp147878
                                                      (lambda ()
                                                        (let ((__tmp147879
                                                               (##structure-ref
                                                                _%ctx138752%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self138698%_
                                                           __tmp147879)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp147878
                                                  gx#current-expander-context
                                                  _%ctx138752%_)))
                                              (_%rt138757%_
                                               (let ((__tmp147880
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp147880
                                                  _%ctx138752%_)))
                                              (_%loader138759%_
                                               (if _%rt138757%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt138757%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid138761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L138737%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self138698%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid138761%_
                                                     (cons _%code138755%_
                                                           _%loader138759%_))))))
                                   _%tl138710138733%_
                                   _%hd138709138731%_)))
                              (_%g138701138715%_ _%g138702138718%_))))
                      (_%g138701138715%_ _%g138702138718%_)))))
          (_%g138700138764%_ _%stx138699%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx138685%_ _%context-chain138686%_)
        (let _%lp138688%_ ((_%ctx138690%_ _%ctx138685%_) (_%path138691%_ '()))
          (let ((_%super138693%_
                 (##structure-ref _%ctx138690%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super138693%_ _%context-chain138686%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx138690%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path138691%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super138693%_
                       'gx#module-context::t))
                    (_%lp138688%_
                     _%super138693%_
                     (cons (car (##structure-ref
                                 _%ctx138690%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path138691%_))
                    (cons (let ((__tmp147881
                                 (##structure-ref
                                  _%ctx138690%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp147881))
                          _%path138691%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp138678%_ ((_%ctx138680%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r138681%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx138680%_ 'gx#module-context::t))
              (_%lp138678%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx138680%_ '3 '#f '#f))
               (cons _%ctx138680%_ _%r138681%_))
              _%r138681%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self138441%_ _%stx138442%_)
        (letrec* ((_%context-chain138444%_ (gxc#current-context-chain))
                  (_%make-import-spec138445%_
                   (lambda (_%in138614%_)
                     (let* ((_%in138615138627%_ _%in138614%_)
                            (_%E138617138631%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in138615138627%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K138618138641%_
                             (lambda (_%phi138634%_
                                      _%name138635%_
                                      _%src-name138636%_
                                      _%src-phi138637%_
                                      _%src-key138638%_
                                      _%src-ctx138639%_)
                               (cons _%phi138634%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name138635%_)
                                           (cons _%src-phi138637%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name138636%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in138615138627%_
                              'gx#module-import::t))
                           (let ((_%e138619138644%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in138615138627%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e138619138644%_
                                    'gx#module-export::t))
                                 (let* ((_%e138622138647%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e138619138644%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx138650%_ _%e138622138647%_)
                                        (_%e138623138652%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e138619138644%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key138655%_ _%e138623138652%_)
                                        (_%e138624138657%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e138619138644%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi138660%_ _%e138624138657%_)
                                        (_%e138625138662%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e138619138644%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name138665%_ _%e138625138662%_)
                                        (_%e138620138667%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in138615138627%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name138670%_ _%e138620138667%_)
                                        (_%e138621138672%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in138615138627%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi138675%_ _%e138621138672%_))
                                   (_%K138618138641%_
                                    _%phi138675%_
                                    _%name138670%_
                                    _%src-name138665%_
                                    _%src-phi138660%_
                                    _%src-key138655%_
                                    _%src-ctx138650%_))
                                 (_%E138617138631%_)))
                           (_%E138617138631%_)))))
                  (_%make-import-path138446%_
                   (lambda (_%ctx138612%_)
                     (gxc#generate-meta-import-path
                      _%ctx138612%_
                      _%context-chain138444%_)))
                  (_%make-import-spec-in138447%_
                   (lambda (_%ctx138609%_ _%in138610%_)
                     (cons 'spec:
                           (cons (_%make-import-path138446%_ _%ctx138609%_)
                                 (reverse _%in138610%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self138441%_ 'state)))
          (let* ((_%g138449138459%_
                  (lambda (_%g138450138456%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138450138456%_))))
                 (_%g138448138606%_
                  (lambda (_%g138450138462%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138450138462%_))
                        (let ((_%e138452138464%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138450138462%_))))
                          (let ((_%hd138453138467%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138452138464%_)))
                                (_%tl138454138469%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138452138464%_))))
                            ((lambda (_%L138472%_)
                               (let _%lp138483%_ ((_%rest138485%_ _%L138472%_)
                                                  (_%current-src138486%_ '#f)
                                                  (_%current-in138487%_ '())
                                                  (_%r138488%_ '()))
                                 (let* ((_%rest138489138497%_ _%rest138485%_)
                                        (_%else138491138507%_
                                         (lambda ()
                                           (let ((_%r138505%_
                                                  (if _%current-src138486%_
                                                      (cons (_%make-import-spec-in138447%_
                                                             _%current-src138486%_
                                                             _%current-in138487%_)
                                                            _%r138488%_)
                                                      _%r138488%_)))
                                             (cons '%#import
                                                   (reverse _%r138505%_)))))
                                        (_%K138493138594%_
                                         (lambda (_%rest138510%_ _%in138511%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in138511%_
                                                  'gx#module-import::t))
                                               (let* ((_%in138513138520%_
                                                       _%in138511%_)
                                                      (_%E138515138524%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in138513138520%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K138516138532%_
               (lambda (_%src-ctx138527%_)
                 (if (eq? _%current-src138486%_ _%src-ctx138527%_)
                     (_%lp138483%_
                      _%rest138510%_
                      _%current-src138486%_
                      (cons (_%make-import-spec138445%_ _%in138511%_)
                            _%current-in138487%_)
                      _%r138488%_)
                     (if _%current-src138486%_
                         (_%lp138483%_
                          _%rest138510%_
                          _%src-ctx138527%_
                          (cons (_%make-import-spec138445%_ _%in138511%_) '())
                          (cons (_%make-import-spec-in138447%_
                                 _%current-src138486%_
                                 _%current-in138487%_)
                                _%r138488%_))
                         (_%lp138483%_
                          _%rest138510%_
                          _%src-ctx138527%_
                          (cons (_%make-import-spec138445%_ _%in138511%_) '())
                          _%r138488%_)))))
              (_%e138517138535%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in138513138520%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e138517138535%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e138518138538%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e138517138535%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx138541%_ _%e138518138538%_))
               (_%K138516138532%_ _%src-ctx138541%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E138515138524%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in138511%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi138544%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in138511%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src138546%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in138511%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in138586%_
                                                           (let* ((_%g138547138556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path138446%_ _%src138546%_))
                          (_%E138550138560%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g138547138556%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K138552138576%_
                            (lambda (_%path138574%_) _%path138574%_))
                           (_%K138551138566%_
                            (lambda (_%path138564%_)
                              (cons 'in: _%path138564%_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g138547138556%_))
                           (let ((_%tl138554138581%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g138547138556%_)))
                                 (_%hd138553138579%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g138547138556%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tl138554138581%_))
                                 (let ((_%path138584%_ _%hd138553138579%_))
                                   (_%K138552138576%_ _%path138584%_))
                                 (let ((_%path138569%_ _%g138547138556%_))
                                   (_%K138551138566%_ _%path138569%_))))
                           (let ((_%path138569%_ _%g138547138556%_))
                             (_%K138551138566%_ _%path138569%_))))))
                  (_%r138588%_
                   (if _%current-src138486%_
                       (cons (_%make-import-spec-in138447%_
                              _%current-src138486%_
                              _%current-in138487%_)
                             _%r138488%_)
                       _%r138488%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp138483%_
                                                      _%rest138510%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi138544%_)
                                                                _%src-in138586%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi138544%_
                                    (cons _%src-in138586%_ '()))))
                    _%r138588%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in138511%_
                                                          'gx#module-context::t))
                                                       (let ((_%r138592%_
                                                              (if _%current-src138486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in138447%_
                                 _%current-src138486%_
                                 _%current-in138487%_)
                                _%r138488%_)
                          _%r138488%_)))
                 (_%lp138483%_
                  _%rest138510%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path138446%_ _%in138511%_))
                        _%r138592%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest138489138497%_))
                                       (let ((_%hd138494138597%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest138489138497%_)))
                                             (_%tl138495138599%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest138489138497%_))))
                                         (let* ((_%in138602%_
                                                 _%hd138494138597%_)
                                                (_%rest138604%_
                                                 _%tl138495138599%_))
                                           (_%K138493138594%_
                                            _%rest138604%_
                                            _%in138602%_)))
                                       (_%else138491138507%_)))))
                             _%tl138454138469%_)))
                        (_%g138449138459%_ _%g138450138462%_)))))
            (_%g138448138606%_ _%stx138442%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self138251%_ _%stx138252%_)
        (letrec* ((_%context-chain138254%_ (gxc#current-context-chain))
                  (_%make-import-path138255%_
                   (lambda (_%ctx138439%_)
                     (gxc#generate-meta-import-path
                      _%ctx138439%_
                      _%context-chain138254%_))))
          (let* ((_%g138257138267%_
                  (lambda (_%g138258138264%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138258138264%_))))
                 (_%g138256138436%_
                  (lambda (_%g138258138270%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138258138270%_))
                        (let ((_%e138260138272%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138258138270%_))))
                          (let ((_%hd138261138275%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138260138272%_)))
                                (_%tl138262138277%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138260138272%_))))
                            ((lambda (_%L138280%_)
                               (let _%lp138291%_ ((_%rest138293%_ _%L138280%_)
                                                  (_%r138294%_ '()))
                                 (let* ((_%rest138295138303%_ _%rest138293%_)
                                        (_%else138297138311%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r138294%_))))
                                        (_%K138299138424%_
                                         (lambda (_%rest138314%_ _%out138315%_)
                                           (let* ((_%out138316138329%_
                                                   _%out138315%_)
                                                  (_%E138319138333%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out138316138329%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K138323138403%_
                                                    (lambda (_%name138399%_
                                                             _%phi138400%_
                                                             _%key138401%_)
                                                      (_%lp138291%_
                                                       _%rest138314%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi138400%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key138401%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name138399%_)
                                             '()))))
                     _%r138294%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K138320138383%_
                                                    (lambda (_%phi138337%_
                                                             _%src138338%_)
                                                      (let* ((_%out138378%_
                                                              (if _%src138338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g138339138348%_
                                              (_%make-import-path138255%_
                                               _%src138338%_))
                                             (_%E138342138352%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g138339138348%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K138344138368%_
                                               (lambda (_%path138366%_)
                                                 _%path138366%_))
                                              (_%K138343138358%_
                                               (lambda (_%path138356%_)
                                                 (cons 'in: _%path138356%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g138339138348%_))
                                              (let ((_%tl138346138373%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g138339138348%_)))
                                                    (_%hd138345138371%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g138339138348%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl138346138373%_))
                                                    (let ((_%path138376%_
                                                           _%hd138345138371%_))
                                                      (_%K138344138368%_
                                                       _%path138376%_))
                                                    (let ((_%path138361%_
                                                           _%g138339138348%_))
                                                      (_%K138343138358%_
                                                       _%path138361%_))))
                                              (let ((_%path138361%_
                                                     _%g138339138348%_))
                                                (_%K138343138358%_
                                                 _%path138361%_)))))
                                      '()))
                          '#t))
                     (_%out138380%_
                      (if (fxzero? _%phi138337%_)
                          _%out138378%_
                          (cons 'phi:
                                (cons _%phi138337%_
                                      (cons _%out138378%_ '()))))))
                (_%lp138291%_
                 _%rest138314%_
                 (cons _%out138380%_ _%r138294%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match138318138396%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out138316138329%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e138321138386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out138316138329%_
                               '1
                               '#f
                               '#f)))
                           (_%e138322138391%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out138316138329%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src138389%_ _%e138321138386%_)
                            (_%phi138394%_ _%e138322138391%_))
                        (_%K138320138383%_ _%phi138394%_ _%src138389%_)))
                    (_%E138319138333%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out138316138329%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e138324138406%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out138316138329%_
                        '1
                        '#f
                        '#f)))
                    (_%e138325138409%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out138316138329%_
                        '2
                        '#f
                        '#f)))
                    (_%e138326138414%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out138316138329%_
                        '3
                        '#f
                        '#f)))
                    (_%e138327138419%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out138316138329%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key138412%_ _%e138325138409%_)
                     (_%phi138417%_ _%e138326138414%_)
                     (_%name138422%_ _%e138327138419%_))
                 (_%K138323138403%_
                  _%name138422%_
                  _%phi138417%_
                  _%key138412%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match138318138396%_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest138295138303%_))
                                       (let ((_%hd138300138427%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest138295138303%_)))
                                             (_%tl138301138429%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest138295138303%_))))
                                         (let* ((_%out138432%_
                                                 _%hd138300138427%_)
                                                (_%rest138434%_
                                                 _%tl138301138429%_))
                                           (_%K138299138424%_
                                            _%rest138434%_
                                            _%out138432%_)))
                                       (_%else138297138311%_)))))
                             _%tl138262138277%_)))
                        (_%g138257138267%_ _%g138258138270%_)))))
            (_%g138256138436%_ _%stx138252%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self138212%_ _%stx138213%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self138212%_ 'state)))
        (let* ((_%g138215138225%_
                (lambda (_%g138216138222%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138216138222%_))))
               (_%g138214138248%_
                (lambda (_%g138216138228%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138216138228%_))
                      (let ((_%e138218138230%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138216138228%_))))
                        (let ((_%hd138219138233%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138218138230%_)))
                              (_%tl138220138235%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138218138230%_))))
                          ((lambda (_%L138238%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L138238%_)))
                           _%tl138220138235%_)))
                      (_%g138215138225%_ _%g138216138228%_)))))
          (_%g138214138248%_ _%stx138213%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self138083%_ _%stx138084%_)
        (letrec ((_%generate1138086%_
                  (lambda (_%id138207%_ _%eid138208%_)
                    (let ((_%eid138210%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid138208%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid138210%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx138084%_
                             _%eid138210%_)))
                      (cons (gxc#generate-runtime-identifier _%id138207%_)
                            (cons _%eid138210%_ '()))))))
          (let* ((_%g138088138116%_
                  (lambda (_%g138089138113%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138089138113%_))))
                 (_%g138087138204%_
                  (lambda (_%g138089138119%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138089138119%_))
                        (let ((_%e138092138121%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138089138119%_))))
                          (let ((_%hd138093138124%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138092138121%_)))
                                (_%tl138094138126%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138092138121%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl138094138126%_))
                                (let ((_g147882_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl138094138126%_
                                          '0))))
                                  (begin
                                    (let ((_g147883_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g147882_)
                                                 (##vector-length _g147882_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g147883_ 2)))
                                          (error "Context expects 2 values"
                                                 _g147883_)))
                                    (let ((_%target138095138129%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147882_ 0)))
                                          (_%tl138097138131%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147882_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl138097138131%_))
                                          (letrec ((_%loop138098138134%_
                                                    (lambda (_%hd138096138137%_
                                                             _%eid138102138139%_
                                                             _%id138103138141%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd138096138137%_))
                                                          (let ((_%e138099138144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd138096138137%_))))
                    (let ((_%lp-hd138100138147%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138099138144%_)))
                          (_%lp-tl138101138149%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138099138144%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd138100138147%_))
                          (let ((_%e138106138152%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd138100138147%_))))
                            (let ((_%hd138107138155%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138106138152%_)))
                                  (_%tl138108138157%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138106138152%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl138108138157%_))
                                  (let ((_%e138109138160%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl138108138157%_))))
                                    (let ((_%hd138110138163%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138109138160%_)))
                                          (_%tl138111138165%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138109138160%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl138111138165%_))
                                          (_%loop138098138134%_
                                           _%lp-tl138101138149%_
                                           (cons _%hd138110138163%_
                                                 _%eid138102138139%_)
                                           (cons _%hd138107138155%_
                                                 _%id138103138141%_))
                                          (_%g138088138116%_
                                           _%g138089138119%_))))
                                  (_%g138088138116%_ _%g138089138119%_))))
                          (_%g138088138116%_ _%g138089138119%_))))
                  (let ((_%eid138104138168%_ (reverse _%eid138102138139%_))
                        (_%id138105138170%_ (reverse _%id138103138141%_)))
                    ((lambda (_%L138173%_ _%L138174%_)
                       (cons '%#extern
                             (map _%generate1138086%_
                                  (let ((__tmp147884
                                         (lambda (_%g138189138192%_
                                                  _%g138190138194%_)
                                           (cons _%g138189138192%_
                                                 _%g138190138194%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp147884 '() _%L138174%_))
                                  (let ((__tmp147885
                                         (lambda (_%g138196138199%_
                                                  _%g138197138201%_)
                                           (cons _%g138196138199%_
                                                 _%g138197138201%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp147885 '() _%L138173%_)))))
                     _%eid138104138168%_
                     _%id138105138170%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop138098138134%_
                                             _%target138095138129%_
                                             '()
                                             '()))
                                          (_%g138088138116%_
                                           _%g138089138119%_)))))
                                (_%g138088138116%_ _%g138089138119%_))))
                        (_%g138088138116%_ _%g138089138119%_)))))
            (_%g138087138204%_ _%stx138084%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self137873%_ _%stx137874%_)
        (letrec ((_%generate1137876%_
                  (lambda (_%id138078%_)
                    (let ((_%eid138080%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id138078%_)))
                          (_%ident138081%_
                           (gxc#generate-runtime-identifier _%id138078%_)))
                      (cons '%#define-runtime
                            (cons _%ident138081%_ (cons _%eid138080%_ '()))))))
                 (_%generate*137877%_
                  (lambda (_%all138046%_)
                    (let* ((_%all138047138055%_ _%all138046%_)
                           (_%else138049138063%_
                            (lambda () (cons '%#begin _%all138046%_)))
                           (_%K138051138068%_
                            (lambda (_%one138066%_) _%one138066%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all138047138055%_))
                          (let ((_%hd138052138071%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all138047138055%_)))
                                (_%tl138053138073%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all138047138055%_))))
                            (let ((_%one138076%_ _%hd138052138071%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl138053138073%_))
                                  (_%K138051138068%_ _%one138076%_)
                                  (_%else138049138063%_))))
                          (_%else138049138063%_))))))
          (let* ((_%g137879137896%_
                  (lambda (_%g137880137893%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137880137893%_))))
                 (_%g137878138043%_
                  (lambda (_%g137880137899%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137880137899%_))
                        (let ((_%e137883137901%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137880137899%_))))
                          (let ((_%hd137884137904%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137883137901%_)))
                                (_%tl137885137906%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137883137901%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137885137906%_))
                                (let ((_%e137886137909%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137885137906%_))))
                                  (let ((_%hd137887137912%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137886137909%_)))
                                        (_%tl137888137914%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137886137909%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137888137914%_))
                                        (let ((_%e137889137917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137888137914%_))))
                                          (let ((_%hd137890137920%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137889137917%_)))
                                                (_%tl137891137922%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137889137917%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137891137922%_))
                                                ((lambda (_%L137925%_
                                                          _%L137926%_)
                                                   (let _%lp137942%_ ((_%rest137944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L137926%_)
                              (_%r137945%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx147621147622%_
                                                             _%rest137944%_)
                                                            (_%g137950137967%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx147621147622%_)))))
               (let ((_%__kont147623147624%_
                      (lambda (_%L138030%_)
                        (_%lp137942%_ _%L138030%_ _%r137945%_)))
                     (_%__kont147625147626%_
                      (lambda (_%L138003%_ _%L138004%_)
                        (_%lp137942%_
                         _%L138003%_
                         (cons (_%generate1137876%_ _%L138004%_)
                               _%r137945%_))))
                     (_%__kont147627147628%_
                      (lambda (_%L137979%_)
                        (_%generate*137877%_
                         (let ((__tmp147886
                                (cons (_%generate1137876%_ _%L137979%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp147886 _%r137945%_)))))
                     (_%__kont147629147630%_
                      (lambda () (_%generate*137877%_ (reverse _%r137945%_)))))
                 (let ((_%g137948137990%_
                        (lambda ()
                          (let ((_%L137979%_ _%__stx147621147622%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L137979%_))
                                (_%__kont147627147628%_ _%L137979%_)
                                (_%__kont147629147630%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx147621147622%_))
                       (let ((_%e137953138019%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx147621147622%_))))
                         (let ((_%tl137955138024%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e137953138019%_)))
                               (_%hd137954138022%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e137953138019%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd137954138022%_))
                               (let ((_%e137956138027%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd137954138022%_))))
                                 (if (equal? _%e137956138027%_ '#f)
                                     (_%__kont147623147624%_
                                      _%tl137955138024%_)
                                     (_%__kont147625147626%_
                                      _%tl137955138024%_
                                      _%hd137954138022%_)))
                               (_%__kont147625147626%_
                                _%tl137955138024%_
                                _%hd137954138022%_))))
                       (let () (declare (not safe)) (_%g137948137990%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd137890137920%_
                                                 _%hd137887137912%_)
                                                (_%g137879137896%_
                                                 _%g137880137899%_))))
                                        (_%g137879137896%_
                                         _%g137880137899%_))))
                                (_%g137879137896%_ _%g137880137899%_))))
                        (_%g137879137896%_ _%g137880137899%_)))))
            (_%g137878138043%_ _%stx137874%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self137770%_ _%stx137771%_)
        (let* ((_%g137773137790%_
                (lambda (_%g137774137787%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137774137787%_))))
               (_%g137772137870%_
                (lambda (_%g137774137793%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137774137793%_))
                      (let ((_%e137777137795%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137774137793%_))))
                        (let ((_%hd137778137798%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137777137795%_)))
                              (_%tl137779137800%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137777137795%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137779137800%_))
                              (let ((_%e137780137803%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137779137800%_))))
                                (let ((_%hd137781137806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137780137803%_)))
                                      (_%tl137782137808%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137780137803%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137782137808%_))
                                      (let ((_%e137783137811%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137782137808%_))))
                                        (let ((_%hd137784137814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137783137811%_)))
                                              (_%tl137785137816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137783137811%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137785137816%_))
                                              ((lambda (_%L137819%_
                                                        _%L137820%_)
                                                 (let* ((_%eid137835%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L137820%_)))
                                                        (_%phi137837%_
                                                         (let ((__tmp147887
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp147887 '1)))
                (_%block137839%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self137770%_ 'state))
                  _%phi137837%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g137842137849%_
                                                           (lambda (_%g137843137846%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g137843137846%_))))
                  (_%g137841137867%_
                   (lambda (_%g137843137852%_)
                     ((lambda (_%L137854%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self137770%_ 'state))
                         _%phi137837%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L137854%_ (cons _%L137819%_ '())))))
                      _%g137843137852%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g137841137867%_
                                                      _%eid137835%_))
                                                   (if _%block137839%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block137839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L137820%_)
                                             (cons _%eid137835%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L137820%_)
                           (cons _%eid137835%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137784137814%_
                                               _%hd137781137806%_)
                                              (_%g137773137790%_
                                               _%g137774137793%_))))
                                      (_%g137773137790%_ _%g137774137793%_))))
                              (_%g137773137790%_ _%g137774137793%_))))
                      (_%g137773137790%_ _%g137774137793%_)))))
          (_%g137772137870%_ _%stx137771%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self137702%_ _%stx137703%_)
        (let* ((_%g137705137722%_
                (lambda (_%g137706137719%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137706137719%_))))
               (_%g137704137767%_
                (lambda (_%g137706137725%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137706137725%_))
                      (let ((_%e137709137727%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137706137725%_))))
                        (let ((_%hd137710137730%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137709137727%_)))
                              (_%tl137711137732%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137709137727%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137711137732%_))
                              (let ((_%e137712137735%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137711137732%_))))
                                (let ((_%hd137713137738%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137712137735%_)))
                                      (_%tl137714137740%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137712137735%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137714137740%_))
                                      (let ((_%e137715137743%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137714137740%_))))
                                        (let ((_%hd137716137746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137715137743%_)))
                                              (_%tl137717137748%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137715137743%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137717137748%_))
                                              ((lambda (_%L137751%_
                                                        _%L137752%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L137752%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L137751%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137716137746%_
                                               _%hd137713137738%_)
                                              (_%g137705137722%_
                                               _%g137706137725%_))))
                                      (_%g137705137722%_ _%g137706137725%_))))
                              (_%g137705137722%_ _%g137706137725%_))))
                      (_%g137705137722%_ _%g137706137725%_)))))
          (_%g137704137767%_ _%stx137703%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self137699%_ _%stx137700%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137699%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx137700%_)
        (gxc#generate-meta-define-values% _%self137699%_ _%stx137700%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self137696%_ _%stx137697%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137696%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx137697%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp147889 (list)) (__tmp147888 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp147889
         '(src n open blocks)
         __tmp147888
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args137693%_
        (apply make-instance gxc#meta-state::t _%$args137693%_)))
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
      (lambda (_%self137038137677%_ _%ctx137679%_)
        (let* ((_%self137681%_ _%self137038137677%_)
               (_%self137683%_ _%self137681%_))
          (if (let ((__tmp147890
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self137683%_))))
                (declare (not safe))
                (##fx< '4 __tmp147890))
              (begin
                (let ((__tmp147891
                       (let ((__tmp147892
                              (##structure-ref
                               _%ctx137679%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp147892))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self137683%_
                   __tmp147891
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self137683%_ '1 '2 '#f '#f))
                (let ((__tmp147893
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self137683%_
                   __tmp147893
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self137683%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp147894
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self137683%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self137683%_
                       '4
                       __tmp147894))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp147896 (list)) (__tmp147895 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp147896
         '(ctx phi n code)
         __tmp147895
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args137552%_
        (apply make-instance gxc#meta-state-block::t _%$args137552%_)))
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
      (lambda (_%state137511%_ _%phi137512%_)
        (let* ((_%state137513137521%_ _%state137511%_)
               (_%E137515137525%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state137513137521%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K137516137534%_
                (lambda (_%open137528%_ _%n137529%_ _%src137530%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open137528%_ _%phi137512%_))
                      '#f
                      (let ((_%block-ref137532%_
                             (let ((__tmp147897 (number->string _%n137529%_)))
                               (declare (not safe))
                               (##string-append
                                _%src137530%_
                                '"~"
                                __tmp147897))))
                        (##structure-set!
                         _%state137511%_
                         (let () (declare (not safe)) (##fx+ _%n137529%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp147898
                               (let ((__tmp147899
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp147899
                                  _%phi137512%_
                                  _%n137529%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open137528%_ _%phi137512%_ __tmp147898))
                        _%block-ref137532%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state137513137521%_
                 'gxc#meta-state::t))
              (let* ((_%e137517137537%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state137513137521%_
                         '1
                         '#f
                         '#f)))
                     (_%src137540%_ _%e137517137537%_)
                     (_%e137518137542%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state137513137521%_
                         '2
                         '#f
                         '#f)))
                     (_%n137545%_ _%e137518137542%_)
                     (_%e137519137547%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state137513137521%_
                         '3
                         '#f
                         '#f)))
                     (_%open137550%_ _%e137519137547%_))
                (_%K137516137534%_ _%open137550%_ _%n137545%_ _%src137540%_))
              (_%E137515137525%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state137505%_ _%phi137506%_ _%stx137507%_)
        (let ((_%block137509%_
               (let ((__tmp147900
                      (##structure-ref
                       _%state137505%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp147900 _%phi137506%_))))
          (##structure-set!
           _%block137509%_
           (cons _%stx137507%_
                 (##structure-ref
                  _%block137509%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state137499%_)
        (##structure-set!
         _%state137499%_
         (let ((__tmp147903
                (lambda (_%_137501%_ _%block137502%_ _%r137503%_)
                  (cons _%block137502%_ _%r137503%_)))
               (__tmp147902
                (##structure-ref _%state137499%_ '4 gxc#meta-state::t '#f))
               (__tmp147901
                (##structure-ref _%state137499%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp147903 __tmp147902 __tmp147901))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state137499%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state137451%_)
        (gxc#meta-state-end-phi! _%state137451%_)
        (let ((__tmp147905
               (lambda (_%block137453%_ _%r137454%_)
                 (let* ((_%block137455137464%_ _%block137453%_)
                        (_%E137457137468%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block137455137464%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K137458137476%_
                         (lambda (_%code137471%_
                                  _%n137472%_
                                  _%phi137473%_
                                  _%ctx137474%_)
                           (if (null? _%code137471%_)
                               _%r137454%_
                               (cons (cons _%ctx137474%_
                                           (cons _%phi137473%_
                                                 (cons _%n137472%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code137471%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r137454%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block137455137464%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e137459137479%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block137455137464%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx137482%_ _%e137459137479%_)
                              (_%e137460137484%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block137455137464%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi137487%_ _%e137460137484%_)
                              (_%e137461137489%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block137455137464%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n137492%_ _%e137461137489%_)
                              (_%e137462137494%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block137455137464%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code137497%_ _%e137462137494%_))
                         (_%K137458137476%_
                          _%code137497%_
                          _%n137492%_
                          _%phi137487%_
                          _%ctx137482%_))
                       (_%E137457137468%_)))))
              (__tmp147904
               (##structure-ref _%state137451%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp147905 '() __tmp147904))))
    (define gxc#collect-expression-refs
      (lambda (_%stx137447%_)
        (let ((_%ht137449%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht137449%_ _%stx137447%_)
          _%ht137449%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self137390%_ _%stx137391%_)
        (let* ((_%g137393137406%_
                (lambda (_%g137394137403%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137394137403%_))))
               (_%g137392137444%_
                (lambda (_%g137394137409%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137394137409%_))
                      (let ((_%e137396137411%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137394137409%_))))
                        (let ((_%hd137397137414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137396137411%_)))
                              (_%tl137398137416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137396137411%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137398137416%_))
                              (let ((_%e137399137419%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137398137416%_))))
                                (let ((_%hd137400137422%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137399137419%_)))
                                      (_%tl137401137424%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137399137419%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl137401137424%_))
                                      ((lambda (_%L137427%_)
                                         (let* ((_%bind137439%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L137427%_)))
                                                (_%eid137441%_
                                                 (if _%bind137439%_
                                                     (##structure-ref
                                                      _%bind137439%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L137427%_))))
                                                (__tmp147906
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self137390%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp147906
                                            _%eid137441%_
                                            _%eid137441%_)))
                                       _%hd137400137422%_)
                                      (_%g137393137406%_ _%g137394137409%_))))
                              (_%g137393137406%_ _%g137394137409%_))))
                      (_%g137393137406%_ _%g137394137409%_)))))
          (_%g137392137444%_ _%stx137391%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self137317%_ _%stx137318%_)
        (let* ((_%g137320137337%_
                (lambda (_%g137321137334%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137321137334%_))))
               (_%g137319137387%_
                (lambda (_%g137321137340%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137321137340%_))
                      (let ((_%e137324137342%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137321137340%_))))
                        (let ((_%hd137325137345%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137324137342%_)))
                              (_%tl137326137347%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137324137342%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137326137347%_))
                              (let ((_%e137327137350%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137326137347%_))))
                                (let ((_%hd137328137353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137327137350%_)))
                                      (_%tl137329137355%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137327137350%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137329137355%_))
                                      (let ((_%e137330137358%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137329137355%_))))
                                        (let ((_%hd137331137361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137330137358%_)))
                                              (_%tl137332137363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137330137358%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137332137363%_))
                                              ((lambda (_%L137366%_
                                                        _%L137367%_)
                                                 (let* ((_%bind137382%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L137367%_)))
                                                        (_%eid137384%_
                                                         (if _%bind137382%_
                                                             (##structure-ref
                                                              _%bind137382%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L137367%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp147907
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self137317%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp147907
                                                      _%eid137384%_
                                                      _%eid137384%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self137317%_
                                                      _%L137366%_))))
                                               _%hd137331137361%_
                                               _%hd137328137353%_)
                                              (_%g137320137337%_
                                               _%g137321137340%_))))
                                      (_%g137320137337%_ _%g137321137340%_))))
                              (_%g137320137337%_ _%g137321137340%_))))
                      (_%g137320137337%_ _%g137321137340%_)))))
          (_%g137319137387%_ _%stx137318%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self137274%_ _%stx137275%_)
        (let* ((_%g137277137287%_
                (lambda (_%g137278137284%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137278137284%_))))
               (_%g137276137314%_
                (lambda (_%g137278137290%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137278137290%_))
                      (let ((_%e137280137292%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137278137290%_))))
                        (let ((_%hd137281137295%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137280137292%_)))
                              (_%tl137282137297%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137280137292%_))))
                          ((lambda (_%L137300%_)
                             (let ((__tmp147908
                                    (lambda (_%g137309137311%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self137274%_
                                         _%g137309137311%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp147908 _%L137300%_)))
                           _%tl137282137297%_)))
                      (_%g137277137287%_ _%g137278137290%_)))))
          (_%g137276137314%_ _%stx137275%_))))
    (define gxc#count-values-single%
      (lambda (_%self137271%_ _%stx137272%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self137137%_ _%stx137138%_)
        (let* ((_%__stx147651147652%_ _%stx137138%_)
               (_%g137141137170%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx147651147652%_)))))
          (let ((_%__kont147653147654%_
                 (lambda (_%L137238%_ _%L137239%_)
                   (length (let ((__tmp147909
                                  (lambda (_%g137260137263%_ _%g137261137265%_)
                                    (cons _%g137260137263%_
                                          _%g137261137265%_))))
                             (declare (not safe))
                             (__foldr1 __tmp147909 '() _%L137238%_)))))
                (_%__kont147657147658%_ (lambda () '#f)))
            (let ((_%__match147696147697%_
                   (lambda (_%e137145137182%_
                            _%hd137146137185%_
                            _%tl137147137187%_
                            _%e137148137190%_
                            _%hd137149137193%_
                            _%tl137150137195%_
                            _%e137151137198%_
                            _%hd137152137201%_
                            _%tl137153137203%_
                            _%e137154137206%_
                            _%hd137155137209%_
                            _%tl137156137211%_
                            _%__splice147655147656%_
                            _%target137157137214%_
                            _%tl137159137216%_)
                     (letrec ((_%loop137160137219%_
                               (lambda (_%hd137158137222%_
                                        _%rand137164137224%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd137158137222%_))
                                     (let ((_%e137161137227%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd137158137222%_))))
                                       (let ((_%lp-tl137163137232%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e137161137227%_)))
                                             (_%lp-hd137162137230%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e137161137227%_))))
                                         (_%loop137160137219%_
                                          _%lp-tl137163137232%_
                                          (cons _%lp-hd137162137230%_
                                                _%rand137164137224%_))))
                                     (let ((_%rand137165137235%_
                                            (reverse _%rand137164137224%_)))
                                       (let ((_%L137238%_ _%rand137165137235%_)
                                             (_%L137239%_ _%hd137155137209%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L137239%_
                                                'values))
                                             (_%__kont147653147654%_
                                              _%L137238%_
                                              _%L137239%_)
                                             (_%__kont147657147658%_))))))))
                       (_%loop137160137219%_ _%target137157137214%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx147651147652%_))
                  (let ((_%e137145137182%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx147651147652%_))))
                    (let ((_%tl137147137187%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e137145137182%_)))
                          (_%hd137146137185%_
                           (let ()
                             (declare (not safe))
                             (##car _%e137145137182%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl137147137187%_))
                          (let ((_%e137148137190%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl137147137187%_))))
                            (let ((_%tl137150137195%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e137148137190%_)))
                                  (_%hd137149137193%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e137148137190%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd137149137193%_))
                                  (let ((_%e137151137198%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd137149137193%_))))
                                    (let ((_%tl137153137203%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e137151137198%_)))
                                          (_%hd137152137201%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e137151137198%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd137152137201%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd137152137201%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl137153137203%_))
                                                  (let ((_%e137154137206%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl137153137203%_))))
                                                    (let ((_%tl137156137211%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e137154137206%_)))
                                                          (_%hd137155137209%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e137154137206%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl137156137211%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl137150137195%_))
                      (let ((_%__splice147655147656%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl137150137195%_
                                '0))))
                        (let ((_%tl137159137216%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice147655147656%_ '1)))
                              (_%target137157137214%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice147655147656%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl137159137216%_))
                              (_%__match147696147697%_
                               _%e137145137182%_
                               _%hd137146137185%_
                               _%tl137147137187%_
                               _%e137148137190%_
                               _%hd137149137193%_
                               _%tl137150137195%_
                               _%e137151137198%_
                               _%hd137152137201%_
                               _%tl137153137203%_
                               _%e137154137206%_
                               _%hd137155137209%_
                               _%tl137156137211%_
                               _%__splice147655147656%_
                               _%target137157137214%_
                               _%tl137159137216%_)
                              (_%__kont147657147658%_))))
                      (_%__kont147657147658%_))
                  (_%__kont147657147658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont147657147658%_))
                                              (_%__kont147657147658%_))
                                          (_%__kont147657147658%_))))
                                  (_%__kont147657147658%_))))
                          (_%__kont147657147658%_))))
                  (_%__kont147657147658%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self137040%_ _%stx137041%_)
        (let* ((_%g137043137064%_
                (lambda (_%g137044137061%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137044137061%_))))
               (_%g137042137134%_
                (lambda (_%g137044137067%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137044137067%_))
                      (let ((_%e137048137069%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137044137067%_))))
                        (let ((_%hd137049137072%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137048137069%_)))
                              (_%tl137050137074%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137048137069%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137050137074%_))
                              (let ((_%e137051137077%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137050137074%_))))
                                (let ((_%hd137052137080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137051137077%_)))
                                      (_%tl137053137082%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137051137077%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137053137082%_))
                                      (let ((_%e137054137085%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137053137082%_))))
                                        (let ((_%hd137055137088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137054137085%_)))
                                              (_%tl137056137090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137054137085%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137056137090%_))
                                              (let ((_%e137057137093%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137056137090%_))))
                                                (let ((_%hd137058137096%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137057137093%_)))
                                                      (_%tl137059137098%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137057137093%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137059137098%_))
                                                      ((lambda (_%L137101%_
                                                                _%L137102%_
                                                                _%L137103%_)
                                                         (let ((_%c1137120137122%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self137040%_ _%L137102%_))))
                   (if _%c1137120137122%_
                       (let* ((_%c1137125%_ _%c1137120137122%_)
                              (_%c2137126137128%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self137040%_
                                  _%L137101%_))))
                         (if _%c2137126137128%_
                             (let ((_%c2137131%_ _%c2137126137128%_))
                               (if (fx= _%c1137125%_ _%c2137131%_)
                                   _%c1137125%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd137058137096%_
               _%hd137055137088%_
               _%hd137052137080%_)
              (_%g137043137064%_ _%g137044137067%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137043137064%_
                                               _%g137044137067%_))))
                                      (_%g137043137064%_ _%g137044137067%_))))
                              (_%g137043137064%_ _%g137044137067%_))))
                      (_%g137043137064%_ _%g137044137067%_)))))
          (_%g137042137134%_ _%stx137041%_))))))
