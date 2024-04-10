(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712773526)
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
        (letrec ((_%hash-e144499%_
                  (lambda (_%id144501%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id144501%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e144499%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp145886 (list gxc#::void::t))
            (__tmp145885 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp145886
         '()
         __tmp145885
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args144495%_
        (apply make-instance gxc#::collect-bindings::t _%$args144495%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp145887
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
        (__make-promise __tmp145887)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx144487%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self144490%_
                (let ((__obj145861
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj145861))
               (__tmp145888
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144490%_ _%stx144487%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145888
           gxc#current-compile-method
           _%self144490%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp145890 (list gxc#::void::t))
            (__tmp145889 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp145890
         '(modules)
         __tmp145889
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args144484%_
        (apply make-instance gxc#::lift-modules::t _%$args144484%_)))
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
      (let ((__tmp145891
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
        (__make-promise __tmp145891)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords144458%_ _%modules144455144459%_ _%stx144461%_)
        (let ((_%modules144464%_
               (if (eq? _%modules144455144459%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules144455144459%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self144466%_
                  (let ((__obj145863
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145863
                       _%modules144464%_
                       '1
                       '#f
                       '#f))
                    __obj145863))
                 (__tmp145892
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144466%_ _%stx144461%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145892
             gxc#current-compile-method
             _%self144466%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords144473%_ . _%args144474%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords144473%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144473%_
                  'modules:
                  absent-value))
               _%args144474%_)))
    (define gxc#apply-lift-modules
      (lambda _%args144456144480%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args144456144480%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp145894 (list)) (__tmp145893 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp145894
         '()
         __tmp145893
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args144451%_
        (apply make-instance gxc#::find-runtime-code::t _%$args144451%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp145895
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
        (__make-promise __tmp145895)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx144443%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self144446%_
                (let ((__obj145865
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj145865))
               (__tmp145896
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144446%_ _%stx144443%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145896
           gxc#current-compile-method
           _%self144446%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp145898 (list gxc#::false::t))
            (__tmp145897 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp145898
         '()
         __tmp145897
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args144440%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args144440%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp145899
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
        (__make-promise __tmp145899)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx144432%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self144435%_
                (let ((__obj145867
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj145867))
               (__tmp145900
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144435%_ _%stx144432%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145900
           gxc#current-compile-method
           _%self144435%_))))
    (define gxc#::count-values::t
      (let ((__tmp145902 (list gxc#::false-expression::t))
            (__tmp145901 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp145902
         '()
         __tmp145901
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args144429%_
        (apply make-instance gxc#::count-values::t _%$args144429%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp145903
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
        (__make-promise __tmp145903)))
    (define gxc#apply-count-values
      (lambda (_%stx144421%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self144424%_
                (let ((__obj145869
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj145869))
               (__tmp145904
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144424%_ _%stx144421%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145904
           gxc#current-compile-method
           _%self144424%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp145905 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp145905
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args144418%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args144418%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp145906
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
        (__make-promise __tmp145906)))
    (define gxc#::generate-loader::t
      (let ((__tmp145908 (list gxc#::generate-runtime-empty::t))
            (__tmp145907 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp145908
         '()
         __tmp145907
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args144414%_
        (apply make-instance gxc#::generate-loader::t _%$args144414%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp145909
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
        (__make-promise __tmp145909)))
    (define gxc#apply-generate-loader
      (lambda (_%stx144406%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self144409%_
                (let ((__obj145872
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj145872))
               (__tmp145910
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144409%_ _%stx144406%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145910
           gxc#current-compile-method
           _%self144409%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp145911 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp145911
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args144403%_
        (apply make-instance gxc#::generate-runtime::t _%$args144403%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp145912
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
        (__make-promise __tmp145912)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx144395%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self144398%_
                (let ((__obj145874
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj145874))
               (__tmp145913
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144398%_ _%stx144395%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145913
           gxc#current-compile-method
           _%self144398%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp145915 (list gxc#::generate-runtime::t))
            (__tmp145914 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp145915
         '()
         __tmp145914
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args144392%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args144392%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp145916
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
        (__make-promise __tmp145916)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx144384%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self144387%_
                (let ((__obj145876
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj145876))
               (__tmp145917
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144387%_ _%stx144384%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145917
           gxc#current-compile-method
           _%self144387%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp145918 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp145918
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args144381%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args144381%_)))
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
      (let ((__tmp145919
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
        (__make-promise __tmp145919)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords144355%_ _%table144352144356%_ _%stx144358%_)
        (let ((_%table144361%_
               (if (eq? _%table144352144356%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table144352144356%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self144363%_
                  (let ((__obj145878
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145878
                       _%table144361%_
                       '1
                       '#f
                       '#f))
                    __obj145878))
                 (__tmp145920
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144363%_ _%stx144358%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145920
             gxc#current-compile-method
             _%self144363%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords144370%_ . _%args144371%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords144370%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144370%_
                  'table:
                  absent-value))
               _%args144371%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args144353144377%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args144353144377%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp145922 (list gxc#::void-expression::t))
            (__tmp145921 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp145922
         '(state)
         __tmp145921
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args144348%_
        (apply make-instance gxc#::generate-meta::t _%$args144348%_)))
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
      (let ((__tmp145923
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
        (__make-promise __tmp145923)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords144322%_ _%state144319144323%_ _%stx144325%_)
        (let ((_%state144328%_
               (if (eq? _%state144319144323%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state144319144323%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self144330%_
                  (let ((__obj145880
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145880
                       _%state144328%_
                       '1
                       '#f
                       '#f))
                    __obj145880))
                 (__tmp145924
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144330%_ _%stx144325%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145924
             gxc#current-compile-method
             _%self144330%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords144337%_ . _%args144338%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords144337%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144337%_
                  'state:
                  absent-value))
               _%args144338%_)))
    (define gxc#apply-generate-meta
      (lambda _%args144320144344%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args144320144344%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp145926 (list)) (__tmp145925 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp145926
         '(state)
         __tmp145925
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args144315%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args144315%_)))
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
      (let ((__tmp145927
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
        (__make-promise __tmp145927)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords144289%_ _%state144286144290%_ _%stx144292%_)
        (let ((_%state144295%_
               (if (eq? _%state144286144290%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state144286144290%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self144297%_
                  (let ((__obj145882
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145882
                       _%state144295%_
                       '1
                       '#f
                       '#f))
                    __obj145882))
                 (__tmp145928
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144297%_ _%stx144292%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145928
             gxc#current-compile-method
             _%self144297%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords144304%_ . _%args144305%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords144304%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144304%_
                  'state:
                  absent-value))
               _%args144305%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args144287144311%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args144287144311%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self144215%_ _%stx144216%_)
        (let* ((_%g144218144235%_
                (lambda (_%g144219144232%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144219144232%_))))
               (_%g144217144282%_
                (lambda (_%g144219144238%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144219144238%_))
                      (let ((_%e144222144240%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144219144238%_))))
                        (let ((_%hd144223144243%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144222144240%_)))
                              (_%tl144224144245%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144222144240%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144224144245%_))
                              (let ((_%e144225144248%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144224144245%_))))
                                (let ((_%hd144226144251%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144225144248%_)))
                                      (_%tl144227144253%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144225144248%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144227144253%_))
                                      (let ((_%e144228144256%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144227144253%_))))
                                        (let ((_%hd144229144259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144228144256%_)))
                                              (_%tl144230144261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144228144256%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144230144261%_))
                                              ((lambda (_%L144264%_
                                                        _%L144265%_)
                                                 (let ((__tmp145929
                                                        (lambda (_%bind144280%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind144280%_))
                      (gxc#add-module-binding! _%bind144280%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp145929
                                                    _%L144265%_)))
                                               _%hd144229144259%_
                                               _%hd144226144251%_)
                                              (_%g144218144235%_
                                               _%g144219144238%_))))
                                      (_%g144218144235%_ _%g144219144238%_))))
                              (_%g144218144235%_ _%g144219144238%_))))
                      (_%g144218144235%_ _%g144219144238%_)))))
          (_%g144217144282%_ _%stx144216%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self144147%_ _%stx144148%_)
        (let* ((_%g144150144167%_
                (lambda (_%g144151144164%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144151144164%_))))
               (_%g144149144212%_
                (lambda (_%g144151144170%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144151144170%_))
                      (let ((_%e144154144172%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144151144170%_))))
                        (let ((_%hd144155144175%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144154144172%_)))
                              (_%tl144156144177%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144154144172%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144156144177%_))
                              (let ((_%e144157144180%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144156144177%_))))
                                (let ((_%hd144158144183%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144157144180%_)))
                                      (_%tl144159144185%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144157144180%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144159144185%_))
                                      (let ((_%e144160144188%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144159144185%_))))
                                        (let ((_%hd144161144191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144160144188%_)))
                                              (_%tl144162144193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144160144188%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144162144193%_))
                                              ((lambda (_%L144196%_
                                                        _%L144197%_)
                                                 (gxc#add-module-binding!
                                                  _%L144197%_
                                                  '#t))
                                               _%hd144161144191%_
                                               _%hd144158144183%_)
                                              (_%g144150144167%_
                                               _%g144151144170%_))))
                                      (_%g144150144167%_ _%g144151144170%_))))
                              (_%g144150144167%_ _%g144151144170%_))))
                      (_%g144150144167%_ _%g144151144170%_)))))
          (_%g144149144212%_ _%stx144148%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self144089%_ _%stx144090%_)
        (let* ((_%g144092144106%_
                (lambda (_%g144093144103%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144093144103%_))))
               (_%g144091144144%_
                (lambda (_%g144093144109%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144093144109%_))
                      (let ((_%e144096144111%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144093144109%_))))
                        (let ((_%hd144097144114%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144096144111%_)))
                              (_%tl144098144116%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144096144111%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144098144116%_))
                              (let ((_%e144099144119%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144098144116%_))))
                                (let ((_%hd144100144122%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144099144119%_)))
                                      (_%tl144101144124%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144099144119%_))))
                                  ((lambda (_%L144127%_ _%L144128%_)
                                     (let ((_%ctx144141%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L144128%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self144089%_
                                           'modules))
                                        (cons _%ctx144141%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self144089%_
                                                        'modules)))))
                                       (let ((__tmp145930
                                              (lambda ()
                                                (let ((__tmp145931
                                                       (##structure-ref
                                                        _%ctx144141%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self144089%_
                                                   __tmp145931)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp145930
                                          gx#current-expander-context
                                          _%ctx144141%_))))
                                   _%tl144101144124%_
                                   _%hd144100144122%_)))
                              (_%g144092144106%_ _%g144093144109%_))))
                      (_%g144092144106%_ _%g144093144109%_)))))
          (_%g144091144144%_ _%stx144090%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls144042144044%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls144042144044%_
              (let ((_%decls144047%_ _%decls144042144044%_))
                (let _%lp144049%_ ((_%rest144051%_ _%decls144047%_))
                  (let* ((_%rest144052144060%_ _%rest144051%_)
                         (_%else144054144068%_ (lambda () '#f))
                         (_%K144056144077%_
                          (lambda (_%decls144071%_ _%decl144072%_)
                            (if (equal? _%decl144072%_ '(not safe))
                                '#t
                                (if (equal? _%decl144072%_ '(safe))
                                    '#f
                                    (_%lp144049%_ _%decls144071%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest144052144060%_))
                        (let ((_%hd144057144080%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest144052144060%_)))
                              (_%tl144058144082%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest144052144060%_))))
                          (let* ((_%decl144085%_ _%hd144057144080%_)
                                 (_%decls144087%_ _%tl144058144082%_))
                            (_%K144056144077%_
                             _%decls144087%_
                             _%decl144085%_)))
                        (_%else144054144068%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id144036%_ _%syntax?144037%_)
        (let ((_%eid144039%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id144036%_))
                '1
                gx#binding::t
                '#f))
              (_%ht144040%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid144039%_))
              '#!void
              (let ((__tmp145932
                     (let ((__tmp145933
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid144039%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp145933 _%syntax?144037%_))))
                (declare (not safe))
                (hash-put! _%ht144040%_ _%eid144039%_ __tmp145932))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id144034%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id144034%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key143989%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key143989%_))
            _%key143989%_
            (if (uninterned-symbol? _%key143989%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key143989%_))
                (let* ((_%key143993144000%_ _%key143989%_)
                       (_%E143995144004%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key143993144000%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K143996144022%_
                        (lambda (_%mark144007%_ _%eid144008%_)
                          (let ((_%$e144010%_
                                 (##structure-ref
                                  _%mark144007%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e144010%_
                                ((lambda (_%ht144013%_)
                                   (let ((_%$e144015%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht144013%_
                                             _%eid144008%_))))
                                     (if _%$e144015%_
                                         ((lambda (_%id144018%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id144018%_))
                                                _%id144018%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id144018%_))))
                                          _%$e144015%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid144008%_))))
                                 _%$e144010%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid144008%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%key143993144000%_))
                      (let ((_%hd143997144025%_
                             (let ()
                               (declare (not safe))
                               (##car _%key143993144000%_)))
                            (_%tl143998144027%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key143993144000%_))))
                        (let* ((_%eid144030%_ _%hd143997144025%_)
                               (_%mark144032%_ _%tl143998144027%_))
                          (_%K143996144022%_ _%mark144032%_ _%eid144030%_)))
                      (_%E143995144004%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self143986%_ _%stx143987%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self143833%_ _%stx143834%_)
        (letrec ((_%simplify143836%_
                  (lambda (_%body143884%_)
                    (let _%lp143886%_ ((_%rest143888%_ _%body143884%_)
                                       (_%r143889%_ '()))
                      (let* ((_%rest143890143898%_ _%rest143888%_)
                             (_%else143892143906%_
                              (lambda () (reverse _%r143889%_)))
                             (_%K143894143974%_
                              (lambda (_%rest143909%_ _%hd143910%_)
                                (let* ((_%hd143911143927%_ _%hd143910%_)
                                       (_%else143915143935%_
                                        (lambda ()
                                          (_%lp143886%_
                                           _%rest143909%_
                                           (cons _%hd143910%_ _%r143889%_)))))
                                  (let ((_%K143923143964%_
                                         (lambda (_%exprs143962%_)
                                           (_%lp143886%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest143909%_
                                               _%exprs143962%_))
                                            _%r143889%_)))
                                        (_%K143918143948%_
                                         (lambda ()
                                           (if (null? _%rest143909%_)
                                               (_%lp143886%_
                                                _%rest143909%_
                                                (cons _%hd143910%_
                                                      _%r143889%_))
                                               (_%lp143886%_
                                                _%rest143909%_
                                                _%r143889%_))))
                                        (_%K143917143940%_
                                         (lambda ()
                                           (if (null? _%rest143909%_)
                                               (_%lp143886%_
                                                _%rest143909%_
                                                (cons _%hd143910%_
                                                      _%r143889%_))
                                               (_%lp143886%_
                                                _%rest143909%_
                                                _%r143889%_)))))
                                    (let ((_%try-match143914143943%_
                                           (lambda ()
                                             (if (symbol? _%hd143911143927%_)
                                                 (_%K143917143940%_)
                                                 (_%else143915143935%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd143911143927%_))
                                          (let ((_%tl143925143969%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd143911143927%_)))
                                                (_%hd143924143967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd143911143927%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd143924143967%_
                                                         'begin))
                                                (let ((_%exprs143972%_
                                                       _%tl143925143969%_))
                                                  (_%K143923143964%_
                                                   _%exprs143972%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd143924143967%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl143925143969%_))
                                                        (let ((_%tl143922143956%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl143925143969%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl143922143956%_))
                      (_%K143918143948%_)
                      (_%try-match143914143943%_)))
                (_%try-match143914143943%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match143914143943%_))))
                                          (_%try-match143914143943%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest143890143898%_))
                            (let ((_%hd143895143977%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143890143898%_)))
                                  (_%tl143896143979%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143890143898%_))))
                              (let* ((_%hd143982%_ _%hd143895143977%_)
                                     (_%rest143984%_ _%tl143896143979%_))
                                (_%K143894143974%_
                                 _%rest143984%_
                                 _%hd143982%_)))
                            (_%else143892143906%_)))))))
          (let* ((_%g143838143848%_
                  (lambda (_%g143839143845%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143839143845%_))))
                 (_%g143837143881%_
                  (lambda (_%g143839143851%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143839143851%_))
                        (let ((_%e143841143853%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143839143851%_))))
                          (let ((_%hd143842143856%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143841143853%_)))
                                (_%tl143843143858%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143841143853%_))))
                            ((lambda (_%L143861%_)
                               (let* ((_%body143876%_
                                       (map (lambda (_%g143871143873%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self143833%_
                                                 _%g143871143873%_)))
                                            _%L143861%_))
                                      (_%body143878%_
                                       (_%simplify143836%_ _%body143876%_)))
                                 (if (let ((__tmp145934
                                            (length _%body143878%_)))
                                       (declare (not safe))
                                       (##fx= __tmp145934 '1))
                                     (car _%body143878%_)
                                     (cons 'begin _%body143878%_))))
                             _%tl143843143858%_)))
                        (_%g143838143848%_ _%g143839143851%_)))))
            (_%g143837143881%_ _%stx143834%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self143794%_ _%stx143795%_)
        (let* ((_%g143797143807%_
                (lambda (_%g143798143804%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143798143804%_))))
               (_%g143796143830%_
                (lambda (_%g143798143810%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143798143810%_))
                      (let ((_%e143800143812%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143798143810%_))))
                        (let ((_%hd143801143815%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143800143812%_)))
                              (_%tl143802143817%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143800143812%_))))
                          ((lambda (_%L143820%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L143820%_))))
                           _%tl143802143817%_)))
                      (_%g143797143807%_ _%g143798143810%_)))))
          (_%g143796143830%_ _%stx143795%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self143558%_ _%stx143559%_)
        (let* ((_%__stx144524144525%_ _%stx143559%_)
               (_%g143563143615%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144524144525%_)))))
          (let ((_%__kont144526144527%_
                 (lambda (_%L143776%_ _%L143777%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self143558%_ _%L143776%_))))
                (_%__kont144528144529%_
                 (lambda (_%L143724%_ _%L143725%_ _%L143726%_)
                   (if (let ((__tmp145935
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L143726%_))))
                         (declare (not safe))
                         (##memq __tmp145935 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self143558%_ _%L143724%_)))))
                (_%__kont144532144533%_
                 (lambda (_%L143644%_ _%L143645%_)
                   (let ((_%decls143660%_ (map gx#syntax->datum _%L143645%_)))
                     (let ((__tmp145938
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls143660%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143558%_
                                                   _%L143644%_))
                                                '())))))
                           (__tmp145936
                            (let ((__tmp145937
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp145937 _%decls143660%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp145938
                        gxc#current-compile-decls
                        __tmp145936))))))
            (let* ((_%__match144579144580%_
                    (lambda (_%e143579143668%_
                             _%hd143580143671%_
                             _%tl143581143673%_
                             _%e143582143676%_
                             _%hd143583143679%_
                             _%tl143584143681%_
                             _%e143585143684%_
                             _%hd143586143687%_
                             _%tl143587143689%_
                             _%__splice144530144531%_
                             _%target143588143692%_
                             _%tl143590143694%_)
                      (letrec ((_%loop143591143697%_
                                (lambda (_%hd143589143700%_
                                         _%param143595143702%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd143589143700%_))
                                      (let ((_%e143592143705%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd143589143700%_))))
                                        (let ((_%lp-tl143594143710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143592143705%_)))
                                              (_%lp-hd143593143708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143592143705%_))))
                                          (_%loop143591143697%_
                                           _%lp-tl143594143710%_
                                           (cons _%lp-hd143593143708%_
                                                 _%param143595143702%_))))
                                      (let ((_%param143596143713%_
                                             (reverse _%param143595143702%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143584143681%_))
                                            (let ((_%e143597143716%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143584143681%_))))
                                              (let ((_%tl143599143721%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143597143716%_)))
                                                    (_%hd143598143719%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143597143716%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143599143721%_))
                                                    (let ((_%L143724%_
                                                           _%hd143598143719%_)
                                                          (_%L143725%_
                                                           _%param143596143713%_)
                                                          (_%L143726%_
                                                           _%hd143586143687%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L143726%_))
                       (not (let ((__tmp145939
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L143726%_))))
                              (declare (not safe))
                              (##memq __tmp145939 gxc#gambit-annotations))))
                  (_%__kont144528144529%_ _%L143724%_ _%L143725%_ _%L143726%_)
                  (_%__kont144532144533%_
                   _%hd143598143719%_
                   _%hd143583143679%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g143563143615%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g143563143615%_))))))))
                        (_%loop143591143697%_ _%target143588143692%_ '()))))
                   (_%__match144553144554%_
                    (lambda (_%e143567143752%_
                             _%hd143568143755%_
                             _%tl143569143757%_
                             _%e143570143760%_
                             _%hd143571143763%_
                             _%tl143572143765%_
                             _%e143573143768%_
                             _%hd143574143771%_
                             _%tl143575143773%_)
                      (let ((_%L143776%_ _%hd143574143771%_)
                            (_%L143777%_ _%hd143571143763%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L143777%_))
                            (_%__kont144526144527%_ _%L143776%_ _%L143777%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd143571143763%_))
                                (let ((_%e143585143684%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd143571143763%_))))
                                  (let ((_%tl143587143689%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143585143684%_)))
                                        (_%hd143586143687%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143585143684%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl143587143689%_))
                                        (let ((_%__splice144530144531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl143587143689%_
                                                  '0))))
                                          (let ((_%tl143590143694%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice144530144531%_
                                                    '1)))
                                                (_%target143588143692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice144530144531%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143590143694%_))
                                                (_%__match144579144580%_
                                                 _%e143567143752%_
                                                 _%hd143568143755%_
                                                 _%tl143569143757%_
                                                 _%e143570143760%_
                                                 _%hd143571143763%_
                                                 _%tl143572143765%_
                                                 _%e143585143684%_
                                                 _%hd143586143687%_
                                                 _%tl143587143689%_
                                                 _%__splice144530144531%_
                                                 _%target143588143692%_
                                                 _%tl143590143694%_)
                                                (_%__kont144532144533%_
                                                 _%hd143574143771%_
                                                 _%hd143571143763%_))))
                                        (_%__kont144532144533%_
                                         _%hd143574143771%_
                                         _%hd143571143763%_))))
                                (_%__kont144532144533%_
                                 _%hd143574143771%_
                                 _%hd143571143763%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144524144525%_))
                  (let ((_%e143567143752%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144524144525%_))))
                    (let ((_%tl143569143757%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143567143752%_)))
                          (_%hd143568143755%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143567143752%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143569143757%_))
                          (let ((_%e143570143760%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143569143757%_))))
                            (let ((_%tl143572143765%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143570143760%_)))
                                  (_%hd143571143763%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143570143760%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl143572143765%_))
                                  (let ((_%e143573143768%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl143572143765%_))))
                                    (let ((_%tl143575143773%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143573143768%_)))
                                          (_%hd143574143771%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143573143768%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl143575143773%_))
                                          (_%__match144553144554%_
                                           _%e143567143752%_
                                           _%hd143568143755%_
                                           _%tl143569143757%_
                                           _%e143570143760%_
                                           _%hd143571143763%_
                                           _%tl143572143765%_
                                           _%e143573143768%_
                                           _%hd143574143771%_
                                           _%tl143575143773%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd143571143763%_))
                                              (let ((_%e143585143684%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd143571143763%_))))
                                                (let ((_%tl143587143689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143585143684%_)))
                                                      (_%hd143586143687%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143585143684%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl143587143689%_))
                                                      (let ((_%__splice144530144531%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl143587143689%_ '0))))
                (let ((_%tl143590143694%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice144530144531%_ '1)))
                      (_%target143588143692%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice144530144531%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143590143694%_))
                      (_%__match144579144580%_
                       _%e143567143752%_
                       _%hd143568143755%_
                       _%tl143569143757%_
                       _%e143570143760%_
                       _%hd143571143763%_
                       _%tl143572143765%_
                       _%e143585143684%_
                       _%hd143586143687%_
                       _%tl143587143689%_
                       _%__splice144530144531%_
                       _%target143588143692%_
                       _%tl143590143694%_)
                      (let () (declare (not safe)) (_%g143563143615%_)))))
              (let () (declare (not safe)) (_%g143563143615%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g143563143615%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd143571143763%_))
                                      (let ((_%e143585143684%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd143571143763%_))))
                                        (let ((_%tl143587143689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143585143684%_)))
                                              (_%hd143586143687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143585143684%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl143587143689%_))
                                              (let ((_%__splice144530144531%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl143587143689%_
                                                        '0))))
                                                (let ((_%tl143590143694%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice144530144531%_
                                                          '1)))
                                                      (_%target143588143692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice144530144531%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143590143694%_))
                                                      (_%__match144579144580%_
                                                       _%e143567143752%_
                                                       _%hd143568143755%_
                                                       _%tl143569143757%_
                                                       _%e143570143760%_
                                                       _%hd143571143763%_
                                                       _%tl143572143765%_
                                                       _%e143585143684%_
                                                       _%hd143586143687%_
                                                       _%tl143587143689%_
                                                       _%__splice144530144531%_
                                                       _%target143588143692%_
                                                       _%tl143590143694%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g143563143615%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g143563143615%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143563143615%_))))))
                          (let () (declare (not safe)) (_%g143563143615%_)))))
                  (let () (declare (not safe)) (_%g143563143615%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self143517%_ _%stx143518%_)
        (let* ((_%g143520143530%_
                (lambda (_%g143521143527%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143521143527%_))))
               (_%g143519143555%_
                (lambda (_%g143521143533%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143521143533%_))
                      (let ((_%e143523143535%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143521143533%_))))
                        (let ((_%hd143524143538%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143523143535%_)))
                              (_%tl143525143540%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143523143535%_))))
                          ((lambda (_%L143543%_)
                             (let ((_%decls143553%_
                                    (map gx#syntax->datum _%L143543%_)))
                               (let ((__tmp145940
                                      (let ((__tmp145941
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp145941
                                         _%decls143553%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp145940))
                               (cons 'declare _%decls143553%_)))
                           _%tl143525143540%_)))
                      (_%g143520143530%_ _%g143521143533%_)))))
          (_%g143519143555%_ _%stx143518%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self143263%_ _%stx143264%_)
        (let* ((_%g143266143283%_
                (lambda (_%g143267143280%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143267143280%_))))
               (_%g143265143514%_
                (lambda (_%g143267143286%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143267143286%_))
                      (let ((_%e143270143288%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143267143286%_))))
                        (let ((_%hd143271143291%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143270143288%_)))
                              (_%tl143272143293%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143270143288%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143272143293%_))
                              (let ((_%e143273143296%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143272143293%_))))
                                (let ((_%hd143274143299%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143273143296%_)))
                                      (_%tl143275143301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143273143296%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143275143301%_))
                                      (let ((_%e143276143304%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143275143301%_))))
                                        (let ((_%hd143277143307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143276143304%_)))
                                              (_%tl143278143309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143276143304%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143278143309%_))
                                              ((lambda (_%L143312%_
                                                        _%L143313%_)
                                                 (let* ((_%__stx144632144633%_
                                                         _%L143313%_)
                                                        (_%g143330143344%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx144632144633%_)))))
                                                   (let ((_%__kont144634144635%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self143263%_
                                                               _%L143312%_))))
                                                         (_%__kont144636144637%_
                                                          (lambda (_%L143476%_)
                                                            (let ((_%eid143485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L143476%_))))
                      (let ((_%lambda-expr143486143488%_
                             (gxc#apply-find-lambda-expression _%L143312%_)))
                        (if _%lambda-expr143486143488%_
                            (let* ((_%lambda-expr143491%_
                                    _%lambda-expr143486143488%_)
                                   (__tmp145942
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp145942
                               _%lambda-expr143491%_
                               _%eid143485%_))
                            '#f))
                      (cons 'define
                            (cons _%eid143485%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self143263%_
                                           _%L143312%_))
                                        '()))))))
                 (_%__kont144638144639%_
                  (lambda ()
                    (let* ((_%tmp143351%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body143460%_
                            (let _%lp143353%_ ((_%rest143355%_ _%L143313%_)
                                               (_%k143356%_ '0)
                                               (_%r143357%_ '()))
                              (let* ((_%__stx144602144603%_ _%rest143355%_)
                                     (_%g143362143379%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx144602144603%_)))))
                                (let ((_%__kont144604144605%_
                                       (lambda (_%L143447%_)
                                         (_%lp143353%_
                                          _%L143447%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k143356%_ '1))
                                          _%r143357%_)))
                                      (_%__kont144606144607%_
                                       (lambda (_%L143420%_ _%L143421%_)
                                         (_%lp143353%_
                                          _%L143420%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k143356%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L143421%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp143351%_
                           _%k143356%_
                           _%L143420%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r143357%_))))
                                      (_%__kont144608144609%_
                                       (lambda (_%L143391%_)
                                         (let ((__tmp145943
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L143391%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp143351%_
                                 _%k143356%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp145943
                                            _%r143357%_))))
                                      (_%__kont144610144611%_
                                       (lambda () (reverse _%r143357%_))))
                                  (let ((_%g143360143407%_
                                         (lambda ()
                                           (let ((_%L143391%_
                                                  _%__stx144602144603%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L143391%_))
                                                 (_%__kont144608144609%_
                                                  _%L143391%_)
                                                 (_%__kont144610144611%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144602144603%_))
                                        (let ((_%e143365143436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144602144603%_))))
                                          (let ((_%tl143367143441%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143365143436%_)))
                                                (_%hd143366143439%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143365143436%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd143366143439%_))
                                                (let ((_%e143368143444%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143366143439%_))))
                                                  (if (equal? _%e143368143444%_
                                                              '#f)
                                                      (_%__kont144604144605%_
                                                       _%tl143367143441%_)
                                                      (_%__kont144606144607%_
                                                       _%tl143367143441%_
                                                       _%hd143366143439%_)))
                                                (_%__kont144606144607%_
                                                 _%tl143367143441%_
                                                 _%hd143366143439%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g143360143407%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp143351%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self143263%_
                                                       _%L143312%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp143351%_
                                         _%L143313%_
                                         _%L143312%_)
                                        _%body143460%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx144632144633%_))
                                                         (let ((_%e143332143498%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx144632144633%_))))
                   (let ((_%tl143334143503%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e143332143498%_)))
                         (_%hd143333143501%_
                          (let ()
                            (declare (not safe))
                            (##car _%e143332143498%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd143333143501%_))
                         (let ((_%e143335143506%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd143333143501%_))))
                           (if (equal? _%e143335143506%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl143334143503%_))
                                   (_%__kont144634144635%_)
                                   (_%__kont144638144639%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl143334143503%_))
                                   (_%__kont144636144637%_ _%hd143333143501%_)
                                   (_%__kont144638144639%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143334143503%_))
                             (_%__kont144636144637%_ _%hd143333143501%_)
                             (_%__kont144638144639%_)))))
                 (_%__kont144638144639%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd143277143307%_
                                               _%hd143274143299%_)
                                              (_%g143266143283%_
                                               _%g143267143286%_))))
                                      (_%g143266143283%_ _%g143267143286%_))))
                              (_%g143266143283%_ _%g143267143286%_))))
                      (_%g143266143283%_ _%g143267143286%_)))))
          (_%g143265143514%_ _%stx143264%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals143238%_ _%hd143239%_ _%expr143240%_)
        (let ((_%$e143242%_ (gxc#apply-count-values _%expr143240%_)))
          (if _%$e143242%_
              ((lambda (_%count143245%_)
                 (let ((_%len143247%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd143239%_)))
                       (_%cmp143248%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd143239%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len143247%_ '0))
                           (_%cmp143248%_ _%count143245%_ _%len143247%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr143240%_
                          _%hd143239%_)))))
               _%$e143242%_)
              (let* ((_%len143254%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd143239%_)))
                     (_%cmp143256%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd143239%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg143258%_
                      (let ((__tmp145945
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd143239%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp145944 (number->string _%len143254%_)))
                        (declare (not safe))
                        (##string-append __tmp145945 __tmp145944 '" values")))
                     (_%count143260%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (not (let ()
                                (declare (not safe))
                                (gx#stx-list? _%hd143239%_)))
                         (let ()
                           (declare (not safe))
                           (##fx= _%len143254%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count143260%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals143238%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp143256%_
                                (cons _%count143260%_
                                      (cons _%len143254%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp143256%_
                                                        (cons _%count143260%_
                                                              (cons _%len143254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg143258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count143260%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var143233%_)
        (letrec ((_%generate-inline143235%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var143233%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var143233%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline143235%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline143235%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var143226%_ _%i143227%_ _%rest143228%_)
        (letrec ((_%generate-inline143230%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i143227%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest143228%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var143226%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var143226%_
                                                      (cons '0 '())))
                                          (cons _%var143226%_ '()))))
                        (cons '##vector-ref
                              (cons _%var143226%_ (cons _%i143227%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline143230%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline143230%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var143220%_ _%i143221%_)
        (if (let () (declare (not safe)) (##fx= _%i143221%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var143220%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var143220%_ '()))
                                  (cons (cons 'list (cons _%var143220%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var143220%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var143220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var143220%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i143221%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var143220%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var143220%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var143220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var143220%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var143220%_ '()))
                                (cons _%i143221%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var143220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i143221%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self143152%_ _%stx143153%_)
        (let* ((_%g143155143172%_
                (lambda (_%g143156143169%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143156143169%_))))
               (_%g143154143217%_
                (lambda (_%g143156143175%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143156143175%_))
                      (let ((_%e143159143177%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143156143175%_))))
                        (let ((_%hd143160143180%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143159143177%_)))
                              (_%tl143161143182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143159143177%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143161143182%_))
                              (let ((_%e143162143185%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143161143182%_))))
                                (let ((_%hd143163143188%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143162143185%_)))
                                      (_%tl143164143190%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143162143185%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143164143190%_))
                                      (let ((_%e143165143193%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143164143190%_))))
                                        (let ((_%hd143166143196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143165143193%_)))
                                              (_%tl143167143198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143165143193%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143167143198%_))
                                              ((lambda (_%L143201%_
                                                        _%L143202%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self143152%_
                                                  _%L143202%_
                                                  _%L143201%_))
                                               _%hd143166143196%_
                                               _%hd143163143188%_)
                                              (_%g143155143172%_
                                               _%g143156143175%_))))
                                      (_%g143155143172%_ _%g143156143175%_))))
                              (_%g143155143172%_ _%g143156143175%_))))
                      (_%g143155143172%_ _%g143156143175%_)))))
          (_%g143154143217%_ _%stx143153%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self143111%_ _%hd143112%_ _%body143113%_)
        (let* ((_%hd143115%_ (gxc#generate-runtime-lambda-head _%hd143112%_))
               (_%body143117%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self143111%_ _%body143113%_)))
               (_%body143149%_
                (let* ((_%body143118143126%_ _%body143117%_)
                       (_%else143120143134%_
                        (lambda () (cons _%body143117%_ '())))
                       (_%K143122143139%_
                        (lambda (_%exprs143137%_) _%exprs143137%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body143118143126%_))
                      (let ((_%hd143123143142%_
                             (let ()
                               (declare (not safe))
                               (##car _%body143118143126%_)))
                            (_%tl143124143144%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body143118143126%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd143123143142%_ 'begin))
                            (let ((_%exprs143147%_ _%tl143124143144%_))
                              (_%K143122143139%_ _%exprs143147%_))
                            (_%else143120143134%_)))
                      (_%else143120143134%_)))))
          (cons 'lambda (cons _%hd143115%_ _%body143149%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd143109%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd143109%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self141648%_ _%stx141649%_)
        (letrec ((_%dispatch-case?141651%_
                  (lambda (_%hd142339%_ _%body142340%_)
                    (let* ((_%form142342%_
                            (cons _%hd142339%_ (cons _%body142340%_ '())))
                           (_%__stx144664144665%_ _%form142342%_)
                           (_%g142347142504%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144664144665%_)))))
                      (let ((_%__kont144666144667%_
                             (lambda (_%L143029%_ _%L143030%_ _%L143031%_)
                               '#t))
                            (_%__kont144672144673%_
                             (lambda (_%L142817%_
                                      _%L142818%_
                                      _%L142819%_
                                      _%L142820%_
                                      _%L142821%_
                                      _%L142822%_)
                               '#t))
                            (_%__kont144678144679%_
                             (lambda (_%L142612%_
                                      _%L142613%_
                                      _%L142614%_
                                      _%L142615%_)
                               '#t))
                            (_%__kont144680144681%_ (lambda () '#f)))
                        (let* ((_%__match144805144806%_
                                (lambda (_%e142464142516%_
                                         _%hd142465142519%_
                                         _%tl142466142521%_
                                         _%e142467142524%_
                                         _%hd142468142527%_
                                         _%tl142469142529%_
                                         _%e142470142532%_
                                         _%hd142471142535%_
                                         _%tl142472142537%_
                                         _%e142473142540%_
                                         _%hd142474142543%_
                                         _%tl142475142545%_
                                         _%e142476142548%_
                                         _%hd142477142551%_
                                         _%tl142478142553%_
                                         _%e142479142556%_
                                         _%hd142480142559%_
                                         _%tl142481142561%_
                                         _%e142482142564%_
                                         _%hd142483142567%_
                                         _%tl142484142569%_
                                         _%e142485142572%_
                                         _%hd142486142575%_
                                         _%tl142487142577%_
                                         _%e142488142580%_
                                         _%hd142489142583%_
                                         _%tl142490142585%_
                                         _%e142491142588%_
                                         _%hd142492142591%_
                                         _%tl142493142593%_
                                         _%e142494142596%_
                                         _%hd142495142599%_
                                         _%tl142496142601%_
                                         _%e142497142604%_
                                         _%hd142498142607%_
                                         _%tl142499142609%_)
                                  (let ((_%L142612%_ _%hd142498142607%_)
                                        (_%L142613%_ _%hd142489142583%_)
                                        (_%L142614%_ _%hd142480142559%_)
                                        (_%L142615%_ _%hd142465142519%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L142615%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L142614%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L142615%_
                                                _%L142612%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L142613%_
                                                     _%L142615%_))))
                                        (_%__kont144678144679%_
                                         _%L142612%_
                                         _%L142613%_
                                         _%L142614%_
                                         _%L142615%_)
                                        (_%__kont144680144681%_)))))
                               (_%__match144777144778%_
                                (lambda (_%e142464142516%_
                                         _%hd142465142519%_
                                         _%tl142466142521%_
                                         _%e142467142524%_
                                         _%hd142468142527%_
                                         _%tl142469142529%_
                                         _%e142470142532%_
                                         _%hd142471142535%_
                                         _%tl142472142537%_
                                         _%e142473142540%_
                                         _%hd142474142543%_
                                         _%tl142475142545%_
                                         _%e142476142548%_
                                         _%hd142477142551%_
                                         _%tl142478142553%_
                                         _%e142479142556%_
                                         _%hd142480142559%_
                                         _%tl142481142561%_
                                         _%e142482142564%_
                                         _%hd142483142567%_
                                         _%tl142484142569%_
                                         _%e142485142572%_
                                         _%hd142486142575%_
                                         _%tl142487142577%_
                                         _%e142488142580%_
                                         _%hd142489142583%_
                                         _%tl142490142585%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142484142569%_))
                                      (let ((_%e142491142588%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142484142569%_))))
                                        (let ((_%tl142493142593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142491142588%_)))
                                              (_%hd142492142591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142491142588%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd142492142591%_))
                                              (let ((_%e142494142596%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd142492142591%_))))
                                                (let ((_%tl142496142601%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142494142596%_)))
                                                      (_%hd142495142599%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142494142596%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd142495142599%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd142495142599%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl142496142601%_))
                      (let ((_%e142497142604%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl142496142601%_))))
                        (let ((_%tl142499142609%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142497142604%_)))
                              (_%hd142498142607%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142497142604%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl142499142609%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl142493142593%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl142469142529%_))
                                      (_%__match144805144806%_
                                       _%e142464142516%_
                                       _%hd142465142519%_
                                       _%tl142466142521%_
                                       _%e142467142524%_
                                       _%hd142468142527%_
                                       _%tl142469142529%_
                                       _%e142470142532%_
                                       _%hd142471142535%_
                                       _%tl142472142537%_
                                       _%e142473142540%_
                                       _%hd142474142543%_
                                       _%tl142475142545%_
                                       _%e142476142548%_
                                       _%hd142477142551%_
                                       _%tl142478142553%_
                                       _%e142479142556%_
                                       _%hd142480142559%_
                                       _%tl142481142561%_
                                       _%e142482142564%_
                                       _%hd142483142567%_
                                       _%tl142484142569%_
                                       _%e142485142572%_
                                       _%hd142486142575%_
                                       _%tl142487142577%_
                                       _%e142488142580%_
                                       _%hd142489142583%_
                                       _%tl142490142585%_
                                       _%e142491142588%_
                                       _%hd142492142591%_
                                       _%tl142493142593%_
                                       _%e142494142596%_
                                       _%hd142495142599%_
                                       _%tl142496142601%_
                                       _%e142497142604%_
                                       _%hd142498142607%_
                                       _%tl142499142609%_)
                                      (_%__kont144680144681%_))
                                  (_%__kont144680144681%_))
                              (_%__kont144680144681%_))))
                      (_%__kont144680144681%_))
                  (_%__kont144680144681%_))
              (_%__kont144680144681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont144680144681%_))))
                                      (_%__kont144680144681%_))))
                               (_%__match144707144708%_
                                (lambda (_%e142400142657%_
                                         _%hd142401142660%_
                                         _%tl142402142662%_
                                         _%__splice144674144675%_
                                         _%target142403142665%_
                                         _%tl142405142667%_)
                                  (letrec ((_%loop142406142670%_
                                            (lambda (_%hd142404142673%_
                                                     _%arg142410142675%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142404142673%_))
                                                  (let ((_%e142407142678%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142404142673%_))))
                                                    (let ((_%lp-tl142409142683%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142407142678%_)))
                                                          (_%lp-hd142408142681%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142407142678%_))))
                                                      (_%loop142406142670%_
                                                       _%lp-tl142409142683%_
                                                       (cons _%lp-hd142408142681%_
                                                             _%arg142410142675%_))))
                                                  (let ((_%arg142411142686%_
                                                         (reverse _%arg142410142675%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142402142662%_))
                                                        (let ((_%e142412142689%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142402142662%_))))
                  (let ((_%tl142414142694%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142412142689%_)))
                        (_%hd142413142692%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142412142689%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142413142692%_))
                        (let ((_%e142415142697%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142413142692%_))))
                          (let ((_%tl142417142702%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142415142697%_)))
                                (_%hd142416142700%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142415142697%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142416142700%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142416142700%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142417142702%_))
                                        (let ((_%e142418142705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142417142702%_))))
                                          (let ((_%tl142420142710%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142418142705%_)))
                                                (_%hd142419142708%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142418142705%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142419142708%_))
                                                (let ((_%e142421142713%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142419142708%_))))
                                                  (let ((_%tl142423142718%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142421142713%_)))
                                                        (_%hd142422142716%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142421142713%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142422142716%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142422142716%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142423142718%_))
                        (let ((_%e142424142721%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142423142718%_))))
                          (let ((_%tl142426142726%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142424142721%_)))
                                (_%hd142425142724%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142424142721%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142426142726%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl142420142710%_))
                                    (let ((_%e142427142729%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl142420142710%_))))
                                      (let ((_%tl142429142734%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e142427142729%_)))
                                            (_%hd142428142732%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e142427142729%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd142428142732%_))
                                            (let ((_%e142430142737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd142428142732%_))))
                                              (let ((_%tl142432142742%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142430142737%_)))
                                                    (_%hd142431142740%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142430142737%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd142431142740%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd142431142740%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl142432142742%_))
                                                            (let ((_%e142433142745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl142432142742%_))))
                      (let ((_%tl142435142750%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142433142745%_)))
                            (_%hd142434142748%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142433142745%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl142435142750%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl142429142734%_))
                                (if (let ((__tmp145946
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl142429142734%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp145946 '1))
                                    (let ((_%__splice144676144677%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142429142734%_
                                              '1))))
                                      (let ((_%tl142438142755%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144676144677%_
                                                '1)))
                                            (_%target142436142753%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144676144677%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142438142755%_))
                                            (let ((_%e142445142758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142438142755%_))))
                                              (let ((_%tl142447142763%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142445142758%_)))
                                                    (_%hd142446142761%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142445142758%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd142446142761%_))
                                                    (let ((_%e142448142766%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd142446142761%_))))
                                                      (let ((_%tl142450142771%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e142448142766%_)))
                    (_%hd142449142769%_
                     (let () (declare (not safe)) (##car _%e142448142766%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd142449142769%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd142449142769%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl142450142771%_))
                            (let ((_%e142451142774%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl142450142771%_))))
                              (let ((_%tl142453142779%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e142451142774%_)))
                                    (_%hd142452142777%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e142451142774%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl142453142779%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl142447142763%_))
                                        (letrec ((_%loop142439142782%_
                                                  (lambda (_%hd142437142785%_
                                                           _%xarg142443142787%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd142437142785%_))
                                                        (let ((_%e142440142790%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd142437142785%_))))
                  (let ((_%lp-tl142442142795%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142440142790%_)))
                        (_%lp-hd142441142793%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142440142790%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd142441142793%_))
                        (let ((_%e142454142798%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd142441142793%_))))
                          (let ((_%tl142456142803%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142454142798%_)))
                                (_%hd142455142801%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142454142798%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142455142801%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd142455142801%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142456142803%_))
                                        (let ((_%e142457142806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142456142803%_))))
                                          (let ((_%tl142459142811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142457142806%_)))
                                                (_%hd142458142809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142457142806%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142459142811%_))
                                                (_%loop142439142782%_
                                                 _%lp-tl142442142795%_
                                                 (cons _%hd142458142809%_
                                                       _%xarg142443142787%_))
                                                (_%__match144777144778%_
                                                 _%e142400142657%_
                                                 _%hd142401142660%_
                                                 _%tl142402142662%_
                                                 _%e142412142689%_
                                                 _%hd142413142692%_
                                                 _%tl142414142694%_
                                                 _%e142415142697%_
                                                 _%hd142416142700%_
                                                 _%tl142417142702%_
                                                 _%e142418142705%_
                                                 _%hd142419142708%_
                                                 _%tl142420142710%_
                                                 _%e142421142713%_
                                                 _%hd142422142716%_
                                                 _%tl142423142718%_
                                                 _%e142424142721%_
                                                 _%hd142425142724%_
                                                 _%tl142426142726%_
                                                 _%e142427142729%_
                                                 _%hd142428142732%_
                                                 _%tl142429142734%_
                                                 _%e142430142737%_
                                                 _%hd142431142740%_
                                                 _%tl142432142742%_
                                                 _%e142433142745%_
                                                 _%hd142434142748%_
                                                 _%tl142435142750%_))))
                                        (_%__match144777144778%_
                                         _%e142400142657%_
                                         _%hd142401142660%_
                                         _%tl142402142662%_
                                         _%e142412142689%_
                                         _%hd142413142692%_
                                         _%tl142414142694%_
                                         _%e142415142697%_
                                         _%hd142416142700%_
                                         _%tl142417142702%_
                                         _%e142418142705%_
                                         _%hd142419142708%_
                                         _%tl142420142710%_
                                         _%e142421142713%_
                                         _%hd142422142716%_
                                         _%tl142423142718%_
                                         _%e142424142721%_
                                         _%hd142425142724%_
                                         _%tl142426142726%_
                                         _%e142427142729%_
                                         _%hd142428142732%_
                                         _%tl142429142734%_
                                         _%e142430142737%_
                                         _%hd142431142740%_
                                         _%tl142432142742%_
                                         _%e142433142745%_
                                         _%hd142434142748%_
                                         _%tl142435142750%_))
                                    (_%__match144777144778%_
                                     _%e142400142657%_
                                     _%hd142401142660%_
                                     _%tl142402142662%_
                                     _%e142412142689%_
                                     _%hd142413142692%_
                                     _%tl142414142694%_
                                     _%e142415142697%_
                                     _%hd142416142700%_
                                     _%tl142417142702%_
                                     _%e142418142705%_
                                     _%hd142419142708%_
                                     _%tl142420142710%_
                                     _%e142421142713%_
                                     _%hd142422142716%_
                                     _%tl142423142718%_
                                     _%e142424142721%_
                                     _%hd142425142724%_
                                     _%tl142426142726%_
                                     _%e142427142729%_
                                     _%hd142428142732%_
                                     _%tl142429142734%_
                                     _%e142430142737%_
                                     _%hd142431142740%_
                                     _%tl142432142742%_
                                     _%e142433142745%_
                                     _%hd142434142748%_
                                     _%tl142435142750%_))
                                (_%__match144777144778%_
                                 _%e142400142657%_
                                 _%hd142401142660%_
                                 _%tl142402142662%_
                                 _%e142412142689%_
                                 _%hd142413142692%_
                                 _%tl142414142694%_
                                 _%e142415142697%_
                                 _%hd142416142700%_
                                 _%tl142417142702%_
                                 _%e142418142705%_
                                 _%hd142419142708%_
                                 _%tl142420142710%_
                                 _%e142421142713%_
                                 _%hd142422142716%_
                                 _%tl142423142718%_
                                 _%e142424142721%_
                                 _%hd142425142724%_
                                 _%tl142426142726%_
                                 _%e142427142729%_
                                 _%hd142428142732%_
                                 _%tl142429142734%_
                                 _%e142430142737%_
                                 _%hd142431142740%_
                                 _%tl142432142742%_
                                 _%e142433142745%_
                                 _%hd142434142748%_
                                 _%tl142435142750%_))))
                        (_%__match144777144778%_
                         _%e142400142657%_
                         _%hd142401142660%_
                         _%tl142402142662%_
                         _%e142412142689%_
                         _%hd142413142692%_
                         _%tl142414142694%_
                         _%e142415142697%_
                         _%hd142416142700%_
                         _%tl142417142702%_
                         _%e142418142705%_
                         _%hd142419142708%_
                         _%tl142420142710%_
                         _%e142421142713%_
                         _%hd142422142716%_
                         _%tl142423142718%_
                         _%e142424142721%_
                         _%hd142425142724%_
                         _%tl142426142726%_
                         _%e142427142729%_
                         _%hd142428142732%_
                         _%tl142429142734%_
                         _%e142430142737%_
                         _%hd142431142740%_
                         _%tl142432142742%_
                         _%e142433142745%_
                         _%hd142434142748%_
                         _%tl142435142750%_))))
                (let ((_%xarg142444142814%_ (reverse _%xarg142443142787%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142414142694%_))
                      (let ((_%L142817%_ _%hd142452142777%_)
                            (_%L142818%_ _%xarg142444142814%_)
                            (_%L142819%_ _%hd142434142748%_)
                            (_%L142820%_ _%hd142425142724%_)
                            (_%L142821%_ _%tl142405142667%_)
                            (_%L142822%_ _%arg142411142686%_))
                        (if (and (let ((__tmp145947
                                        (let ((__tmp145948
                                               (lambda (_%g142865142868%_
                                                        _%g142866142870%_)
                                                 (cons _%g142865142868%_
                                                       _%g142866142870%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145948
                                           '()
                                           _%L142822%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp145947))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L142821%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L142820%_
                                    'apply))
                                 (let ((__tmp145951
                                        (length (let ((__tmp145952
                                                       (lambda (_%g142872142875%_
                                                                _%g142873142877%_)
                                                         (cons _%g142872142875%_
                                                               _%g142873142877%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145952
                                                   '()
                                                   _%L142822%_))))
                                       (__tmp145949
                                        (length (let ((__tmp145950
                                                       (lambda (_%g142879142882%_
                                                                _%g142880142884%_)
                                                         (cons _%g142879142882%_
                                                               _%g142880142884%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145950
                                                   '()
                                                   _%L142818%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp145951 __tmp145949))
                                 (let ((__tmp145955
                                        (let ((__tmp145956
                                               (lambda (_%g142886142889%_
                                                        _%g142887142891%_)
                                                 (cons _%g142886142889%_
                                                       _%g142887142891%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145956
                                           '()
                                           _%L142822%_)))
                                       (__tmp145953
                                        (let ((__tmp145954
                                               (lambda (_%g142893142896%_
                                                        _%g142894142898%_)
                                                 (cons _%g142893142896%_
                                                       _%g142894142898%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145954
                                           '()
                                           _%L142818%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp145955
                                    __tmp145953))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L142821%_
                                    _%L142817%_))
                                 (not (let ((__tmp145960
                                             (lambda (_%g142900142902%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g142900142902%_
                                                  _%L142819%_))))
                                            (__tmp145957
                                             (let ((__tmp145959
                                                    (lambda (_%g142904142907%_
                                                             _%g142905142909%_)
                                                      (cons _%g142904142907%_
                                                            _%g142905142909%_)))
                                                   (__tmp145958
                                                    (cons _%L142821%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145959
                                                __tmp145958
                                                _%L142822%_))))
                                        (declare (not safe))
                                        (__find __tmp145960 __tmp145957))))
                            (_%__kont144672144673%_
                             _%L142817%_
                             _%L142818%_
                             _%L142819%_
                             _%L142820%_
                             _%L142821%_
                             _%L142822%_)
                            (_%__match144777144778%_
                             _%e142400142657%_
                             _%hd142401142660%_
                             _%tl142402142662%_
                             _%e142412142689%_
                             _%hd142413142692%_
                             _%tl142414142694%_
                             _%e142415142697%_
                             _%hd142416142700%_
                             _%tl142417142702%_
                             _%e142418142705%_
                             _%hd142419142708%_
                             _%tl142420142710%_
                             _%e142421142713%_
                             _%hd142422142716%_
                             _%tl142423142718%_
                             _%e142424142721%_
                             _%hd142425142724%_
                             _%tl142426142726%_
                             _%e142427142729%_
                             _%hd142428142732%_
                             _%tl142429142734%_
                             _%e142430142737%_
                             _%hd142431142740%_
                             _%tl142432142742%_
                             _%e142433142745%_
                             _%hd142434142748%_
                             _%tl142435142750%_)))
                      (_%__match144777144778%_
                       _%e142400142657%_
                       _%hd142401142660%_
                       _%tl142402142662%_
                       _%e142412142689%_
                       _%hd142413142692%_
                       _%tl142414142694%_
                       _%e142415142697%_
                       _%hd142416142700%_
                       _%tl142417142702%_
                       _%e142418142705%_
                       _%hd142419142708%_
                       _%tl142420142710%_
                       _%e142421142713%_
                       _%hd142422142716%_
                       _%tl142423142718%_
                       _%e142424142721%_
                       _%hd142425142724%_
                       _%tl142426142726%_
                       _%e142427142729%_
                       _%hd142428142732%_
                       _%tl142429142734%_
                       _%e142430142737%_
                       _%hd142431142740%_
                       _%tl142432142742%_
                       _%e142433142745%_
                       _%hd142434142748%_
                       _%tl142435142750%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop142439142782%_
                                           _%target142436142753%_
                                           '()))
                                        (_%__match144777144778%_
                                         _%e142400142657%_
                                         _%hd142401142660%_
                                         _%tl142402142662%_
                                         _%e142412142689%_
                                         _%hd142413142692%_
                                         _%tl142414142694%_
                                         _%e142415142697%_
                                         _%hd142416142700%_
                                         _%tl142417142702%_
                                         _%e142418142705%_
                                         _%hd142419142708%_
                                         _%tl142420142710%_
                                         _%e142421142713%_
                                         _%hd142422142716%_
                                         _%tl142423142718%_
                                         _%e142424142721%_
                                         _%hd142425142724%_
                                         _%tl142426142726%_
                                         _%e142427142729%_
                                         _%hd142428142732%_
                                         _%tl142429142734%_
                                         _%e142430142737%_
                                         _%hd142431142740%_
                                         _%tl142432142742%_
                                         _%e142433142745%_
                                         _%hd142434142748%_
                                         _%tl142435142750%_))
                                    (_%__match144777144778%_
                                     _%e142400142657%_
                                     _%hd142401142660%_
                                     _%tl142402142662%_
                                     _%e142412142689%_
                                     _%hd142413142692%_
                                     _%tl142414142694%_
                                     _%e142415142697%_
                                     _%hd142416142700%_
                                     _%tl142417142702%_
                                     _%e142418142705%_
                                     _%hd142419142708%_
                                     _%tl142420142710%_
                                     _%e142421142713%_
                                     _%hd142422142716%_
                                     _%tl142423142718%_
                                     _%e142424142721%_
                                     _%hd142425142724%_
                                     _%tl142426142726%_
                                     _%e142427142729%_
                                     _%hd142428142732%_
                                     _%tl142429142734%_
                                     _%e142430142737%_
                                     _%hd142431142740%_
                                     _%tl142432142742%_
                                     _%e142433142745%_
                                     _%hd142434142748%_
                                     _%tl142435142750%_))))
                            (_%__match144777144778%_
                             _%e142400142657%_
                             _%hd142401142660%_
                             _%tl142402142662%_
                             _%e142412142689%_
                             _%hd142413142692%_
                             _%tl142414142694%_
                             _%e142415142697%_
                             _%hd142416142700%_
                             _%tl142417142702%_
                             _%e142418142705%_
                             _%hd142419142708%_
                             _%tl142420142710%_
                             _%e142421142713%_
                             _%hd142422142716%_
                             _%tl142423142718%_
                             _%e142424142721%_
                             _%hd142425142724%_
                             _%tl142426142726%_
                             _%e142427142729%_
                             _%hd142428142732%_
                             _%tl142429142734%_
                             _%e142430142737%_
                             _%hd142431142740%_
                             _%tl142432142742%_
                             _%e142433142745%_
                             _%hd142434142748%_
                             _%tl142435142750%_))
                        (_%__match144777144778%_
                         _%e142400142657%_
                         _%hd142401142660%_
                         _%tl142402142662%_
                         _%e142412142689%_
                         _%hd142413142692%_
                         _%tl142414142694%_
                         _%e142415142697%_
                         _%hd142416142700%_
                         _%tl142417142702%_
                         _%e142418142705%_
                         _%hd142419142708%_
                         _%tl142420142710%_
                         _%e142421142713%_
                         _%hd142422142716%_
                         _%tl142423142718%_
                         _%e142424142721%_
                         _%hd142425142724%_
                         _%tl142426142726%_
                         _%e142427142729%_
                         _%hd142428142732%_
                         _%tl142429142734%_
                         _%e142430142737%_
                         _%hd142431142740%_
                         _%tl142432142742%_
                         _%e142433142745%_
                         _%hd142434142748%_
                         _%tl142435142750%_))
                    (_%__match144777144778%_
                     _%e142400142657%_
                     _%hd142401142660%_
                     _%tl142402142662%_
                     _%e142412142689%_
                     _%hd142413142692%_
                     _%tl142414142694%_
                     _%e142415142697%_
                     _%hd142416142700%_
                     _%tl142417142702%_
                     _%e142418142705%_
                     _%hd142419142708%_
                     _%tl142420142710%_
                     _%e142421142713%_
                     _%hd142422142716%_
                     _%tl142423142718%_
                     _%e142424142721%_
                     _%hd142425142724%_
                     _%tl142426142726%_
                     _%e142427142729%_
                     _%hd142428142732%_
                     _%tl142429142734%_
                     _%e142430142737%_
                     _%hd142431142740%_
                     _%tl142432142742%_
                     _%e142433142745%_
                     _%hd142434142748%_
                     _%tl142435142750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144777144778%_
                                                     _%e142400142657%_
                                                     _%hd142401142660%_
                                                     _%tl142402142662%_
                                                     _%e142412142689%_
                                                     _%hd142413142692%_
                                                     _%tl142414142694%_
                                                     _%e142415142697%_
                                                     _%hd142416142700%_
                                                     _%tl142417142702%_
                                                     _%e142418142705%_
                                                     _%hd142419142708%_
                                                     _%tl142420142710%_
                                                     _%e142421142713%_
                                                     _%hd142422142716%_
                                                     _%tl142423142718%_
                                                     _%e142424142721%_
                                                     _%hd142425142724%_
                                                     _%tl142426142726%_
                                                     _%e142427142729%_
                                                     _%hd142428142732%_
                                                     _%tl142429142734%_
                                                     _%e142430142737%_
                                                     _%hd142431142740%_
                                                     _%tl142432142742%_
                                                     _%e142433142745%_
                                                     _%hd142434142748%_
                                                     _%tl142435142750%_))))
                                            (_%__match144777144778%_
                                             _%e142400142657%_
                                             _%hd142401142660%_
                                             _%tl142402142662%_
                                             _%e142412142689%_
                                             _%hd142413142692%_
                                             _%tl142414142694%_
                                             _%e142415142697%_
                                             _%hd142416142700%_
                                             _%tl142417142702%_
                                             _%e142418142705%_
                                             _%hd142419142708%_
                                             _%tl142420142710%_
                                             _%e142421142713%_
                                             _%hd142422142716%_
                                             _%tl142423142718%_
                                             _%e142424142721%_
                                             _%hd142425142724%_
                                             _%tl142426142726%_
                                             _%e142427142729%_
                                             _%hd142428142732%_
                                             _%tl142429142734%_
                                             _%e142430142737%_
                                             _%hd142431142740%_
                                             _%tl142432142742%_
                                             _%e142433142745%_
                                             _%hd142434142748%_
                                             _%tl142435142750%_))))
                                    (_%__match144777144778%_
                                     _%e142400142657%_
                                     _%hd142401142660%_
                                     _%tl142402142662%_
                                     _%e142412142689%_
                                     _%hd142413142692%_
                                     _%tl142414142694%_
                                     _%e142415142697%_
                                     _%hd142416142700%_
                                     _%tl142417142702%_
                                     _%e142418142705%_
                                     _%hd142419142708%_
                                     _%tl142420142710%_
                                     _%e142421142713%_
                                     _%hd142422142716%_
                                     _%tl142423142718%_
                                     _%e142424142721%_
                                     _%hd142425142724%_
                                     _%tl142426142726%_
                                     _%e142427142729%_
                                     _%hd142428142732%_
                                     _%tl142429142734%_
                                     _%e142430142737%_
                                     _%hd142431142740%_
                                     _%tl142432142742%_
                                     _%e142433142745%_
                                     _%hd142434142748%_
                                     _%tl142435142750%_))
                                (_%__match144777144778%_
                                 _%e142400142657%_
                                 _%hd142401142660%_
                                 _%tl142402142662%_
                                 _%e142412142689%_
                                 _%hd142413142692%_
                                 _%tl142414142694%_
                                 _%e142415142697%_
                                 _%hd142416142700%_
                                 _%tl142417142702%_
                                 _%e142418142705%_
                                 _%hd142419142708%_
                                 _%tl142420142710%_
                                 _%e142421142713%_
                                 _%hd142422142716%_
                                 _%tl142423142718%_
                                 _%e142424142721%_
                                 _%hd142425142724%_
                                 _%tl142426142726%_
                                 _%e142427142729%_
                                 _%hd142428142732%_
                                 _%tl142429142734%_
                                 _%e142430142737%_
                                 _%hd142431142740%_
                                 _%tl142432142742%_
                                 _%e142433142745%_
                                 _%hd142434142748%_
                                 _%tl142435142750%_))
                            (_%__kont144680144681%_))))
                    (_%__kont144680144681%_))
                (_%__kont144680144681%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144680144681%_))))
                                            (_%__kont144680144681%_))))
                                    (_%__kont144680144681%_))
                                (_%__kont144680144681%_))))
                        (_%__kont144680144681%_))
                    (_%__kont144680144681%_))
                (_%__kont144680144681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont144680144681%_))))
                                        (_%__kont144680144681%_))
                                    (_%__kont144680144681%_))
                                (_%__kont144680144681%_))))
                        (_%__kont144680144681%_))))
                (_%__kont144680144681%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop142406142670%_
                                     _%target142403142665%_
                                     '()))))
                               (_%__match144695144696%_
                                (lambda (_%e142352142917%_
                                         _%hd142353142920%_
                                         _%tl142354142922%_
                                         _%__splice144668144669%_
                                         _%target142355142925%_
                                         _%tl142357142927%_)
                                  (letrec ((_%loop142358142930%_
                                            (lambda (_%hd142356142933%_
                                                     _%arg142362142935%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142356142933%_))
                                                  (let ((_%e142359142938%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142356142933%_))))
                                                    (let ((_%lp-tl142361142943%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142359142938%_)))
                                                          (_%lp-hd142360142941%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142359142938%_))))
                                                      (_%loop142358142930%_
                                                       _%lp-tl142361142943%_
                                                       (cons _%lp-hd142360142941%_
                                                             _%arg142362142935%_))))
                                                  (let ((_%arg142363142946%_
                                                         (reverse _%arg142362142935%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142354142922%_))
                                                        (let ((_%e142364142949%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142354142922%_))))
                  (let ((_%tl142366142954%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142364142949%_)))
                        (_%hd142365142952%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142364142949%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142365142952%_))
                        (let ((_%e142367142957%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142365142952%_))))
                          (let ((_%tl142369142962%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142367142957%_)))
                                (_%hd142368142960%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142367142957%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142368142960%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142368142960%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142369142962%_))
                                        (let ((_%e142370142965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142369142962%_))))
                                          (let ((_%tl142372142970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142370142965%_)))
                                                (_%hd142371142968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142370142965%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142371142968%_))
                                                (let ((_%e142373142973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142371142968%_))))
                                                  (let ((_%tl142375142978%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142373142973%_)))
                                                        (_%hd142374142976%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142373142973%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142374142976%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142374142976%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142375142978%_))
                        (let ((_%e142376142981%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142375142978%_))))
                          (let ((_%tl142378142986%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142376142981%_)))
                                (_%hd142377142984%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142376142981%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142378142986%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl142372142970%_))
                                    (let ((_%__splice144670144671%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142372142970%_
                                              '0))))
                                      (let ((_%tl142381142991%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144670144671%_
                                                '1)))
                                            (_%target142379142989%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144670144671%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl142381142991%_))
                                            (letrec ((_%loop142382142994%_
                                                      (lambda (_%hd142380142997%_
                                                               _%xarg142386142999%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd142380142997%_))
                                                            (let ((_%e142383143002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd142380142997%_))))
                      (let ((_%lp-tl142385143007%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142383143002%_)))
                            (_%lp-hd142384143005%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142383143002%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd142384143005%_))
                            (let ((_%e142388143010%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd142384143005%_))))
                              (let ((_%tl142390143015%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e142388143010%_)))
                                    (_%hd142389143013%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e142388143010%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd142389143013%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd142389143013%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142390143015%_))
                                            (let ((_%e142391143018%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142390143015%_))))
                                              (let ((_%tl142393143023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142391143018%_)))
                                                    (_%hd142392143021%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142391143018%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl142393143023%_))
                                                    (_%loop142382142994%_
                                                     _%lp-tl142385143007%_
                                                     (cons _%hd142392143021%_
                                                           _%xarg142386142999%_))
                                                    (_%__match144707144708%_
                                                     _%e142352142917%_
                                                     _%hd142353142920%_
                                                     _%tl142354142922%_
                                                     _%__splice144668144669%_
                                                     _%target142355142925%_
                                                     _%tl142357142927%_))))
                                            (_%__match144707144708%_
                                             _%e142352142917%_
                                             _%hd142353142920%_
                                             _%tl142354142922%_
                                             _%__splice144668144669%_
                                             _%target142355142925%_
                                             _%tl142357142927%_))
                                        (_%__match144707144708%_
                                         _%e142352142917%_
                                         _%hd142353142920%_
                                         _%tl142354142922%_
                                         _%__splice144668144669%_
                                         _%target142355142925%_
                                         _%tl142357142927%_))
                                    (_%__match144707144708%_
                                     _%e142352142917%_
                                     _%hd142353142920%_
                                     _%tl142354142922%_
                                     _%__splice144668144669%_
                                     _%target142355142925%_
                                     _%tl142357142927%_))))
                            (_%__match144707144708%_
                             _%e142352142917%_
                             _%hd142353142920%_
                             _%tl142354142922%_
                             _%__splice144668144669%_
                             _%target142355142925%_
                             _%tl142357142927%_))))
                    (let ((_%xarg142387143026%_
                           (reverse _%xarg142386142999%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl142366142954%_))
                          (let ((_%L143029%_ _%xarg142387143026%_)
                                (_%L143030%_ _%hd142377142984%_)
                                (_%L143031%_ _%arg142363142946%_))
                            (if (and (let ((__tmp145961
                                            (let ((__tmp145962
                                                   (lambda (_%g143059143062%_
                                                            _%g143060143064%_)
                                                     (cons _%g143059143062%_
                                                           _%g143060143064%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145962
                                               '()
                                               _%L143031%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp145961))
                                     (let ((__tmp145965
                                            (length (let ((__tmp145966
                                                           (lambda (_%g143066143069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g143067143071%_)
                     (cons _%g143066143069%_ _%g143067143071%_))))
              (declare (not safe))
              (__foldr1 __tmp145966 '() _%L143031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp145963
                                            (length (let ((__tmp145964
                                                           (lambda (_%g143073143076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g143074143078%_)
                     (cons _%g143073143076%_ _%g143074143078%_))))
              (declare (not safe))
              (__foldr1 __tmp145964 '() _%L143029%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145965 __tmp145963))
                                     (let ((__tmp145969
                                            (let ((__tmp145970
                                                   (lambda (_%g143080143083%_
                                                            _%g143081143085%_)
                                                     (cons _%g143080143083%_
                                                           _%g143081143085%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145970
                                               '()
                                               _%L143031%_)))
                                           (__tmp145967
                                            (let ((__tmp145968
                                                   (lambda (_%g143087143090%_
                                                            _%g143088143092%_)
                                                     (cons _%g143087143090%_
                                                           _%g143088143092%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145968
                                               '()
                                               _%L143029%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp145969
                                        __tmp145967))
                                     (not (let ((__tmp145973
                                                 (lambda (_%g143094143096%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g143094143096%_
                                                      _%L143030%_))))
                                                (__tmp145971
                                                 (let ((__tmp145972
                                                        (lambda (_%g143098143101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g143099143103%_)
                  (cons _%g143098143101%_ _%g143099143103%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp145972
                                                    '()
                                                    _%L143031%_))))
                                            (declare (not safe))
                                            (__find __tmp145973 __tmp145971))))
                                (_%__kont144666144667%_
                                 _%L143029%_
                                 _%L143030%_
                                 _%L143031%_)
                                (_%__match144707144708%_
                                 _%e142352142917%_
                                 _%hd142353142920%_
                                 _%tl142354142922%_
                                 _%__splice144668144669%_
                                 _%target142355142925%_
                                 _%tl142357142927%_)))
                          (_%__match144707144708%_
                           _%e142352142917%_
                           _%hd142353142920%_
                           _%tl142354142922%_
                           _%__splice144668144669%_
                           _%target142355142925%_
                           _%tl142357142927%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop142382142994%_
                                               _%target142379142989%_
                                               '()))
                                            (_%__match144707144708%_
                                             _%e142352142917%_
                                             _%hd142353142920%_
                                             _%tl142354142922%_
                                             _%__splice144668144669%_
                                             _%target142355142925%_
                                             _%tl142357142927%_))))
                                    (_%__match144707144708%_
                                     _%e142352142917%_
                                     _%hd142353142920%_
                                     _%tl142354142922%_
                                     _%__splice144668144669%_
                                     _%target142355142925%_
                                     _%tl142357142927%_))
                                (_%__match144707144708%_
                                 _%e142352142917%_
                                 _%hd142353142920%_
                                 _%tl142354142922%_
                                 _%__splice144668144669%_
                                 _%target142355142925%_
                                 _%tl142357142927%_))))
                        (_%__match144707144708%_
                         _%e142352142917%_
                         _%hd142353142920%_
                         _%tl142354142922%_
                         _%__splice144668144669%_
                         _%target142355142925%_
                         _%tl142357142927%_))
                    (_%__match144707144708%_
                     _%e142352142917%_
                     _%hd142353142920%_
                     _%tl142354142922%_
                     _%__splice144668144669%_
                     _%target142355142925%_
                     _%tl142357142927%_))
                (_%__match144707144708%_
                 _%e142352142917%_
                 _%hd142353142920%_
                 _%tl142354142922%_
                 _%__splice144668144669%_
                 _%target142355142925%_
                 _%tl142357142927%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144707144708%_
                                                 _%e142352142917%_
                                                 _%hd142353142920%_
                                                 _%tl142354142922%_
                                                 _%__splice144668144669%_
                                                 _%target142355142925%_
                                                 _%tl142357142927%_))))
                                        (_%__match144707144708%_
                                         _%e142352142917%_
                                         _%hd142353142920%_
                                         _%tl142354142922%_
                                         _%__splice144668144669%_
                                         _%target142355142925%_
                                         _%tl142357142927%_))
                                    (_%__match144707144708%_
                                     _%e142352142917%_
                                     _%hd142353142920%_
                                     _%tl142354142922%_
                                     _%__splice144668144669%_
                                     _%target142355142925%_
                                     _%tl142357142927%_))
                                (_%__match144707144708%_
                                 _%e142352142917%_
                                 _%hd142353142920%_
                                 _%tl142354142922%_
                                 _%__splice144668144669%_
                                 _%target142355142925%_
                                 _%tl142357142927%_))))
                        (_%__match144707144708%_
                         _%e142352142917%_
                         _%hd142353142920%_
                         _%tl142354142922%_
                         _%__splice144668144669%_
                         _%target142355142925%_
                         _%tl142357142927%_))))
                (_%__match144707144708%_
                 _%e142352142917%_
                 _%hd142353142920%_
                 _%tl142354142922%_
                 _%__splice144668144669%_
                 _%target142355142925%_
                 _%tl142357142927%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop142358142930%_
                                     _%target142355142925%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144664144665%_))
                              (let ((_%e142352142917%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144664144665%_))))
                                (let ((_%tl142354142922%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142352142917%_)))
                                      (_%hd142353142920%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142352142917%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd142353142920%_))
                                      (let ((_%__splice144668144669%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd142353142920%_
                                                '0))))
                                        (let ((_%tl142357142927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144668144669%_
                                                  '1)))
                                              (_%target142355142925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144668144669%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142357142927%_))
                                              (_%__match144695144696%_
                                               _%e142352142917%_
                                               _%hd142353142920%_
                                               _%tl142354142922%_
                                               _%__splice144668144669%_
                                               _%target142355142925%_
                                               _%tl142357142927%_)
                                              (_%__match144707144708%_
                                               _%e142352142917%_
                                               _%hd142353142920%_
                                               _%tl142354142922%_
                                               _%__splice144668144669%_
                                               _%target142355142925%_
                                               _%tl142357142927%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142354142922%_))
                                          (let ((_%e142467142524%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142354142922%_))))
                                            (let ((_%tl142469142529%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e142467142524%_)))
                                                  (_%hd142468142527%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e142467142524%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142468142527%_))
                                                  (let ((_%e142470142532%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142468142527%_))))
                                                    (let ((_%tl142472142537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142470142532%_)))
                                                          (_%hd142471142535%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142470142532%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd142471142535%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd142471142535%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142472142537%_))
                          (let ((_%e142473142540%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142472142537%_))))
                            (let ((_%tl142475142545%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142473142540%_)))
                                  (_%hd142474142543%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142473142540%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd142474142543%_))
                                  (let ((_%e142476142548%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd142474142543%_))))
                                    (let ((_%tl142478142553%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142476142548%_)))
                                          (_%hd142477142551%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142476142548%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd142477142551%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd142477142551%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl142478142553%_))
                                                  (let ((_%e142479142556%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl142478142553%_))))
                                                    (let ((_%tl142481142561%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142479142556%_)))
                                                          (_%hd142480142559%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142479142556%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142481142561%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl142475142545%_))
                      (let ((_%e142482142564%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl142475142545%_))))
                        (let ((_%tl142484142569%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142482142564%_)))
                              (_%hd142483142567%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142482142564%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd142483142567%_))
                              (let ((_%e142485142572%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd142483142567%_))))
                                (let ((_%tl142487142577%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142485142572%_)))
                                      (_%hd142486142575%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142485142572%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd142486142575%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd142486142575%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142487142577%_))
                                              (let ((_%e142488142580%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142487142577%_))))
                                                (let ((_%tl142490142585%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142488142580%_)))
                                                      (_%hd142489142583%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142488142580%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142490142585%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl142484142569%_))
                                                          (let ((_%e142491142588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl142484142569%_))))
                    (let ((_%tl142493142593%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142491142588%_)))
                          (_%hd142492142591%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142491142588%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd142492142591%_))
                          (let ((_%e142494142596%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd142492142591%_))))
                            (let ((_%tl142496142601%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142494142596%_)))
                                  (_%hd142495142599%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142494142596%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd142495142599%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd142495142599%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142496142601%_))
                                          (let ((_%e142497142604%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142496142601%_))))
                                            (let ((_%tl142499142609%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e142497142604%_)))
                                                  (_%hd142498142607%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e142497142604%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl142499142609%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142493142593%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142469142529%_))
                                                          (_%__match144805144806%_
                                                           _%e142352142917%_
                                                           _%hd142353142920%_
                                                           _%tl142354142922%_
                                                           _%e142467142524%_
                                                           _%hd142468142527%_
                                                           _%tl142469142529%_
                                                           _%e142470142532%_
                                                           _%hd142471142535%_
                                                           _%tl142472142537%_
                                                           _%e142473142540%_
                                                           _%hd142474142543%_
                                                           _%tl142475142545%_
                                                           _%e142476142548%_
                                                           _%hd142477142551%_
                                                           _%tl142478142553%_
                                                           _%e142479142556%_
                                                           _%hd142480142559%_
                                                           _%tl142481142561%_
                                                           _%e142482142564%_
                                                           _%hd142483142567%_
                                                           _%tl142484142569%_
                                                           _%e142485142572%_
                                                           _%hd142486142575%_
                                                           _%tl142487142577%_
                                                           _%e142488142580%_
                                                           _%hd142489142583%_
                                                           _%tl142490142585%_
                                                           _%e142491142588%_
                                                           _%hd142492142591%_
                                                           _%tl142493142593%_
                                                           _%e142494142596%_
                                                           _%hd142495142599%_
                                                           _%tl142496142601%_
                                                           _%e142497142604%_
                                                           _%hd142498142607%_
                                                           _%tl142499142609%_)
                                                          (_%__kont144680144681%_))
                                                      (_%__kont144680144681%_))
                                                  (_%__kont144680144681%_))))
                                          (_%__kont144680144681%_))
                                      (_%__kont144680144681%_))
                                  (_%__kont144680144681%_))))
                          (_%__kont144680144681%_))))
                  (_%__kont144680144681%_))
              (_%__kont144680144681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont144680144681%_))
                                          (_%__kont144680144681%_))
                                      (_%__kont144680144681%_))))
                              (_%__kont144680144681%_))))
                      (_%__kont144680144681%_))
                  (_%__kont144680144681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144680144681%_))
                                              (_%__kont144680144681%_))
                                          (_%__kont144680144681%_))))
                                  (_%__kont144680144681%_))))
                          (_%__kont144680144681%_))
                      (_%__kont144680144681%_))
                  (_%__kont144680144681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144680144681%_))))
                                          (_%__kont144680144681%_)))))
                              (_%__kont144680144681%_)))))))
                 (_%dispatch-case-e141652%_
                  (lambda (_%hd141803%_ _%body141804%_)
                    (let* ((_%form141806%_
                            (cons _%hd141803%_ (cons _%body141804%_ '())))
                           (_%__stx144808144809%_ _%form141806%_)
                           (_%g141810141934%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144808144809%_)))))
                      (let ((_%__kont144810144811%_
                             (lambda (_%L142305%_ _%L142306%_ _%L142307%_)
                               (let ((__tmp145974
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L142306%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141648%_
                                  __tmp145974))))
                            (_%__kont144816144817%_
                             (lambda (_%L142153%_
                                      _%L142154%_
                                      _%L142155%_
                                      _%L142156%_)
                               (let ((__tmp145975
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L142153%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141648%_
                                  __tmp145975))))
                            (_%__kont144820144821%_
                             (lambda (_%L142019%_ _%L142020%_ _%L142021%_)
                               (let ((__tmp145976
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L142019%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self141648%_
                                  __tmp145976)))))
                        (let* ((_%__match144917144918%_
                                (lambda (_%e141900141939%_
                                         _%hd141901141942%_
                                         _%tl141902141944%_
                                         _%e141903141947%_
                                         _%hd141904141950%_
                                         _%tl141905141952%_
                                         _%e141906141955%_
                                         _%hd141907141958%_
                                         _%tl141908141960%_
                                         _%e141909141963%_
                                         _%hd141910141966%_
                                         _%tl141911141968%_
                                         _%e141912141971%_
                                         _%hd141913141974%_
                                         _%tl141914141976%_
                                         _%e141915141979%_
                                         _%hd141916141982%_
                                         _%tl141917141984%_
                                         _%e141918141987%_
                                         _%hd141919141990%_
                                         _%tl141920141992%_
                                         _%e141921141995%_
                                         _%hd141922141998%_
                                         _%tl141923142000%_
                                         _%e141924142003%_
                                         _%hd141925142006%_
                                         _%tl141926142008%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141920141992%_))
                                      (let ((_%e141927142011%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141920141992%_))))
                                        (let ((_%tl141929142016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141927142011%_)))
                                              (_%hd141928142014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141927142011%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141929142016%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141905141952%_))
                                                  (_%__kont144820144821%_
                                                   _%hd141925142006%_
                                                   _%hd141916141982%_
                                                   _%hd141901141942%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141810141934%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141810141934%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141810141934%_)))))
                               (_%__match144847144848%_
                                (lambda (_%e141861142057%_
                                         _%hd141862142060%_
                                         _%tl141863142062%_
                                         _%__splice144818144819%_
                                         _%target141864142065%_
                                         _%tl141866142067%_)
                                  (letrec ((_%loop141867142070%_
                                            (lambda (_%hd141865142073%_
                                                     _%arg141871142075%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141865142073%_))
                                                  (let ((_%e141868142078%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141865142073%_))))
                                                    (let ((_%lp-tl141870142083%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141868142078%_)))
                                                          (_%lp-hd141869142081%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141868142078%_))))
                                                      (_%loop141867142070%_
                                                       _%lp-tl141870142083%_
                                                       (cons _%lp-hd141869142081%_
                                                             _%arg141871142075%_))))
                                                  (let ((_%arg141872142086%_
                                                         (reverse _%arg141871142075%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141863142062%_))
                                                        (let ((_%e141873142089%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141863142062%_))))
                  (let ((_%tl141875142094%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141873142089%_)))
                        (_%hd141874142092%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141873142089%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141874142092%_))
                        (let ((_%e141876142097%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141874142092%_))))
                          (let ((_%tl141878142102%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141876142097%_)))
                                (_%hd141877142100%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141876142097%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141877142100%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141877142100%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141878142102%_))
                                        (let ((_%e141879142105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141878142102%_))))
                                          (let ((_%tl141881142110%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141879142105%_)))
                                                (_%hd141880142108%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141879142105%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141880142108%_))
                                                (let ((_%e141882142113%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141880142108%_))))
                                                  (let ((_%tl141884142118%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141882142113%_)))
                                                        (_%hd141883142116%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141882142113%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141883142116%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141883142116%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141884142118%_))
                        (let ((_%e141885142121%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141884142118%_))))
                          (let ((_%tl141887142126%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141885142121%_)))
                                (_%hd141886142124%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141885142121%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141887142126%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141881142110%_))
                                    (let ((_%e141888142129%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141881142110%_))))
                                      (let ((_%tl141890142134%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141888142129%_)))
                                            (_%hd141889142132%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141888142129%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141889142132%_))
                                            (let ((_%e141891142137%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141889142132%_))))
                                              (let ((_%tl141893142142%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141891142137%_)))
                                                    (_%hd141892142140%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141891142137%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141892142140%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141892142140%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141893142142%_))
                                                            (let ((_%e141894142145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141893142142%_))))
                      (let ((_%tl141896142150%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141894142145%_)))
                            (_%hd141895142148%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141894142145%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141896142150%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141875142094%_))
                                (_%__kont144816144817%_
                                 _%hd141895142148%_
                                 _%hd141886142124%_
                                 _%tl141866142067%_
                                 _%arg141872142086%_)
                                (_%__match144917144918%_
                                 _%e141861142057%_
                                 _%hd141862142060%_
                                 _%tl141863142062%_
                                 _%e141873142089%_
                                 _%hd141874142092%_
                                 _%tl141875142094%_
                                 _%e141876142097%_
                                 _%hd141877142100%_
                                 _%tl141878142102%_
                                 _%e141879142105%_
                                 _%hd141880142108%_
                                 _%tl141881142110%_
                                 _%e141882142113%_
                                 _%hd141883142116%_
                                 _%tl141884142118%_
                                 _%e141885142121%_
                                 _%hd141886142124%_
                                 _%tl141887142126%_
                                 _%e141888142129%_
                                 _%hd141889142132%_
                                 _%tl141890142134%_
                                 _%e141891142137%_
                                 _%hd141892142140%_
                                 _%tl141893142142%_
                                 _%e141894142145%_
                                 _%hd141895142148%_
                                 _%tl141896142150%_))
                            (let ()
                              (declare (not safe))
                              (_%g141810141934%_)))))
                    (let () (declare (not safe)) (_%g141810141934%_)))
                (let () (declare (not safe)) (_%g141810141934%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g141810141934%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g141810141934%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141810141934%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141810141934%_)))))
                        (let () (declare (not safe)) (_%g141810141934%_)))
                    (let () (declare (not safe)) (_%g141810141934%_)))
                (let () (declare (not safe)) (_%g141810141934%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g141810141934%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g141810141934%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g141810141934%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g141810141934%_)))))
                        (let () (declare (not safe)) (_%g141810141934%_)))))
                (let () (declare (not safe)) (_%g141810141934%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop141867142070%_
                                     _%target141864142065%_
                                     '()))))
                               (_%__match144835144836%_
                                (lambda (_%e141815142193%_
                                         _%hd141816142196%_
                                         _%tl141817142198%_
                                         _%__splice144812144813%_
                                         _%target141818142201%_
                                         _%tl141820142203%_)
                                  (letrec ((_%loop141821142206%_
                                            (lambda (_%hd141819142209%_
                                                     _%arg141825142211%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141819142209%_))
                                                  (let ((_%e141822142214%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141819142209%_))))
                                                    (let ((_%lp-tl141824142219%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141822142214%_)))
                                                          (_%lp-hd141823142217%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141822142214%_))))
                                                      (_%loop141821142206%_
                                                       _%lp-tl141824142219%_
                                                       (cons _%lp-hd141823142217%_
                                                             _%arg141825142211%_))))
                                                  (let ((_%arg141826142222%_
                                                         (reverse _%arg141825142211%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141817142198%_))
                                                        (let ((_%e141827142225%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141817142198%_))))
                  (let ((_%tl141829142230%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141827142225%_)))
                        (_%hd141828142228%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141827142225%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141828142228%_))
                        (let ((_%e141830142233%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141828142228%_))))
                          (let ((_%tl141832142238%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141830142233%_)))
                                (_%hd141831142236%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141830142233%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141831142236%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141831142236%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141832142238%_))
                                        (let ((_%e141833142241%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141832142238%_))))
                                          (let ((_%tl141835142246%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141833142241%_)))
                                                (_%hd141834142244%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141833142241%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141834142244%_))
                                                (let ((_%e141836142249%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141834142244%_))))
                                                  (let ((_%tl141838142254%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141836142249%_)))
                                                        (_%hd141837142252%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141836142249%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141837142252%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141837142252%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141838142254%_))
                        (let ((_%e141839142257%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141838142254%_))))
                          (let ((_%tl141841142262%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141839142257%_)))
                                (_%hd141840142260%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141839142257%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141841142262%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141835142246%_))
                                    (let ((_%__splice144814144815%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141835142246%_
                                              '0))))
                                      (let ((_%tl141844142267%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144814144815%_
                                                '1)))
                                            (_%target141842142265%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice144814144815%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141844142267%_))
                                            (letrec ((_%loop141845142270%_
                                                      (lambda (_%hd141843142273%_
                                                               _%xarg141849142275%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141843142273%_))
                                                            (let ((_%e141846142278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141843142273%_))))
                      (let ((_%lp-tl141848142283%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141846142278%_)))
                            (_%lp-hd141847142281%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141846142278%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141847142281%_))
                            (let ((_%e141851142286%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141847142281%_))))
                              (let ((_%tl141853142291%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141851142286%_)))
                                    (_%hd141852142289%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141851142286%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141852142289%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141852142289%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141853142291%_))
                                            (let ((_%e141854142294%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141853142291%_))))
                                              (let ((_%tl141856142299%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141854142294%_)))
                                                    (_%hd141855142297%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141854142294%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141856142299%_))
                                                    (_%loop141845142270%_
                                                     _%lp-tl141848142283%_
                                                     (cons _%hd141855142297%_
                                                           _%xarg141849142275%_))
                                                    (_%__match144847144848%_
                                                     _%e141815142193%_
                                                     _%hd141816142196%_
                                                     _%tl141817142198%_
                                                     _%__splice144812144813%_
                                                     _%target141818142201%_
                                                     _%tl141820142203%_))))
                                            (_%__match144847144848%_
                                             _%e141815142193%_
                                             _%hd141816142196%_
                                             _%tl141817142198%_
                                             _%__splice144812144813%_
                                             _%target141818142201%_
                                             _%tl141820142203%_))
                                        (_%__match144847144848%_
                                         _%e141815142193%_
                                         _%hd141816142196%_
                                         _%tl141817142198%_
                                         _%__splice144812144813%_
                                         _%target141818142201%_
                                         _%tl141820142203%_))
                                    (_%__match144847144848%_
                                     _%e141815142193%_
                                     _%hd141816142196%_
                                     _%tl141817142198%_
                                     _%__splice144812144813%_
                                     _%target141818142201%_
                                     _%tl141820142203%_))))
                            (_%__match144847144848%_
                             _%e141815142193%_
                             _%hd141816142196%_
                             _%tl141817142198%_
                             _%__splice144812144813%_
                             _%target141818142201%_
                             _%tl141820142203%_))))
                    (let ((_%xarg141850142302%_
                           (reverse _%xarg141849142275%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141829142230%_))
                          (_%__kont144810144811%_
                           _%xarg141850142302%_
                           _%hd141840142260%_
                           _%arg141826142222%_)
                          (_%__match144847144848%_
                           _%e141815142193%_
                           _%hd141816142196%_
                           _%tl141817142198%_
                           _%__splice144812144813%_
                           _%target141818142201%_
                           _%tl141820142203%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop141845142270%_
                                               _%target141842142265%_
                                               '()))
                                            (_%__match144847144848%_
                                             _%e141815142193%_
                                             _%hd141816142196%_
                                             _%tl141817142198%_
                                             _%__splice144812144813%_
                                             _%target141818142201%_
                                             _%tl141820142203%_))))
                                    (_%__match144847144848%_
                                     _%e141815142193%_
                                     _%hd141816142196%_
                                     _%tl141817142198%_
                                     _%__splice144812144813%_
                                     _%target141818142201%_
                                     _%tl141820142203%_))
                                (_%__match144847144848%_
                                 _%e141815142193%_
                                 _%hd141816142196%_
                                 _%tl141817142198%_
                                 _%__splice144812144813%_
                                 _%target141818142201%_
                                 _%tl141820142203%_))))
                        (_%__match144847144848%_
                         _%e141815142193%_
                         _%hd141816142196%_
                         _%tl141817142198%_
                         _%__splice144812144813%_
                         _%target141818142201%_
                         _%tl141820142203%_))
                    (_%__match144847144848%_
                     _%e141815142193%_
                     _%hd141816142196%_
                     _%tl141817142198%_
                     _%__splice144812144813%_
                     _%target141818142201%_
                     _%tl141820142203%_))
                (_%__match144847144848%_
                 _%e141815142193%_
                 _%hd141816142196%_
                 _%tl141817142198%_
                 _%__splice144812144813%_
                 _%target141818142201%_
                 _%tl141820142203%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144847144848%_
                                                 _%e141815142193%_
                                                 _%hd141816142196%_
                                                 _%tl141817142198%_
                                                 _%__splice144812144813%_
                                                 _%target141818142201%_
                                                 _%tl141820142203%_))))
                                        (_%__match144847144848%_
                                         _%e141815142193%_
                                         _%hd141816142196%_
                                         _%tl141817142198%_
                                         _%__splice144812144813%_
                                         _%target141818142201%_
                                         _%tl141820142203%_))
                                    (_%__match144847144848%_
                                     _%e141815142193%_
                                     _%hd141816142196%_
                                     _%tl141817142198%_
                                     _%__splice144812144813%_
                                     _%target141818142201%_
                                     _%tl141820142203%_))
                                (_%__match144847144848%_
                                 _%e141815142193%_
                                 _%hd141816142196%_
                                 _%tl141817142198%_
                                 _%__splice144812144813%_
                                 _%target141818142201%_
                                 _%tl141820142203%_))))
                        (_%__match144847144848%_
                         _%e141815142193%_
                         _%hd141816142196%_
                         _%tl141817142198%_
                         _%__splice144812144813%_
                         _%target141818142201%_
                         _%tl141820142203%_))))
                (_%__match144847144848%_
                 _%e141815142193%_
                 _%hd141816142196%_
                 _%tl141817142198%_
                 _%__splice144812144813%_
                 _%target141818142201%_
                 _%tl141820142203%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop141821142206%_
                                     _%target141818142201%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144808144809%_))
                              (let ((_%e141815142193%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144808144809%_))))
                                (let ((_%tl141817142198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141815142193%_)))
                                      (_%hd141816142196%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141815142193%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141816142196%_))
                                      (let ((_%__splice144812144813%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141816142196%_
                                                '0))))
                                        (let ((_%tl141820142203%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144812144813%_
                                                  '1)))
                                              (_%target141818142201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice144812144813%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141820142203%_))
                                              (_%__match144835144836%_
                                               _%e141815142193%_
                                               _%hd141816142196%_
                                               _%tl141817142198%_
                                               _%__splice144812144813%_
                                               _%target141818142201%_
                                               _%tl141820142203%_)
                                              (_%__match144847144848%_
                                               _%e141815142193%_
                                               _%hd141816142196%_
                                               _%tl141817142198%_
                                               _%__splice144812144813%_
                                               _%target141818142201%_
                                               _%tl141820142203%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141817142198%_))
                                          (let ((_%e141903141947%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141817142198%_))))
                                            (let ((_%tl141905141952%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141903141947%_)))
                                                  (_%hd141904141950%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141903141947%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141904141950%_))
                                                  (let ((_%e141906141955%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141904141950%_))))
                                                    (let ((_%tl141908141960%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141906141955%_)))
                                                          (_%hd141907141958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141906141955%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141907141958%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141907141958%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141908141960%_))
                          (let ((_%e141909141963%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141908141960%_))))
                            (let ((_%tl141911141968%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141909141963%_)))
                                  (_%hd141910141966%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141909141963%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141910141966%_))
                                  (let ((_%e141912141971%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141910141966%_))))
                                    (let ((_%tl141914141976%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141912141971%_)))
                                          (_%hd141913141974%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141912141971%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141913141974%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141913141974%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141914141976%_))
                                                  (let ((_%e141915141979%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141914141976%_))))
                                                    (let ((_%tl141917141984%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141915141979%_)))
                                                          (_%hd141916141982%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141915141979%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141917141984%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141911141968%_))
                      (let ((_%e141918141987%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141911141968%_))))
                        (let ((_%tl141920141992%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141918141987%_)))
                              (_%hd141919141990%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141918141987%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141919141990%_))
                              (let ((_%e141921141995%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141919141990%_))))
                                (let ((_%tl141923142000%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141921141995%_)))
                                      (_%hd141922141998%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141921141995%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141922141998%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141922141998%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141923142000%_))
                                              (let ((_%e141924142003%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141923142000%_))))
                                                (let ((_%tl141926142008%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141924142003%_)))
                                                      (_%hd141925142006%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141924142003%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141926142008%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141920141992%_))
                                                          (let ((_%e141927142011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141920141992%_))))
                    (let ((_%tl141929142016%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141927142011%_)))
                          (_%hd141928142014%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141927142011%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141929142016%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141905141952%_))
                              (_%__kont144820144821%_
                               _%hd141925142006%_
                               _%hd141916141982%_
                               _%hd141816142196%_)
                              (let ()
                                (declare (not safe))
                                (_%g141810141934%_)))
                          (let () (declare (not safe)) (_%g141810141934%_)))))
                  (let () (declare (not safe)) (_%g141810141934%_)))
              (let () (declare (not safe)) (_%g141810141934%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g141810141934%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141810141934%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g141810141934%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g141810141934%_)))))
                      (let () (declare (not safe)) (_%g141810141934%_)))
                  (let () (declare (not safe)) (_%g141810141934%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141810141934%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g141810141934%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141810141934%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g141810141934%_)))))
                          (let () (declare (not safe)) (_%g141810141934%_)))
                      (let () (declare (not safe)) (_%g141810141934%_)))
                  (let () (declare (not safe)) (_%g141810141934%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g141810141934%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g141810141934%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g141810141934%_))))))))
                 (_%generate1141653%_
                  (lambda (_%args141788%_
                           _%arglen141789%_
                           _%hd141790%_
                           _%body141791%_)
                    (let* ((_%len141793%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd141790%_)))
                           (_%condition141798%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd141790%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen141789%_
                                                (cons _%len141793%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen141789%_ (cons _%len141793%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len141793%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen141789%_
                                                    (cons _%len141793%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen141789%_ (cons _%len141793%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch141800%_
                            (if (_%dispatch-case?141651%_
                                 _%hd141790%_
                                 _%body141791%_)
                                (_%dispatch-case-e141652%_
                                 _%hd141790%_
                                 _%body141791%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self141648%_
                                 _%hd141790%_
                                 _%body141791%_))))
                      (cons _%condition141798%_
                            (cons (cons 'apply
                                        (cons _%dispatch141800%_
                                              (cons _%args141788%_ '())))
                                  '()))))))
          (let* ((_%g141655141683%_
                  (lambda (_%g141656141680%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141656141680%_))))
                 (_%g141654141785%_
                  (lambda (_%g141656141686%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141656141686%_))
                        (let ((_%e141659141688%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141656141686%_))))
                          (let ((_%hd141660141691%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141659141688%_)))
                                (_%tl141661141693%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141659141688%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl141661141693%_))
                                (let ((_g145977_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl141661141693%_
                                          '0))))
                                  (begin
                                    (let ((_g145978_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145977_)
                                                 (##vector-length _g145977_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145978_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145978_)))
                                    (let ((_%target141662141696%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145977_ 0)))
                                          (_%tl141664141698%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145977_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl141664141698%_))
                                          (letrec ((_%loop141665141701%_
                                                    (lambda (_%hd141663141704%_
                                                             _%body141669141706%_
                                                             _%hd141670141708%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd141663141704%_))
                                                          (let ((_%e141666141711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd141663141704%_))))
                    (let ((_%lp-hd141667141714%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141666141711%_)))
                          (_%lp-tl141668141716%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141666141711%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd141667141714%_))
                          (let ((_%e141673141719%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd141667141714%_))))
                            (let ((_%hd141674141722%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141673141719%_)))
                                  (_%tl141675141724%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141673141719%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl141675141724%_))
                                  (let ((_%e141676141727%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl141675141724%_))))
                                    (let ((_%hd141677141730%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141676141727%_)))
                                          (_%tl141678141732%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141676141727%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl141678141732%_))
                                          (_%loop141665141701%_
                                           _%lp-tl141668141716%_
                                           (cons _%hd141677141730%_
                                                 _%body141669141706%_)
                                           (cons _%hd141674141722%_
                                                 _%hd141670141708%_))
                                          (_%g141655141683%_
                                           _%g141656141686%_))))
                                  (_%g141655141683%_ _%g141656141686%_))))
                          (_%g141655141683%_ _%g141656141686%_))))
                  (let ((_%body141671141735%_ (reverse _%body141669141706%_))
                        (_%hd141672141737%_ (reverse _%hd141670141708%_)))
                    ((lambda (_%L141740%_ _%L141741%_)
                       (let ((_%args141760%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen141761%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name141762%_
                              (let ((_%$e141757%_
                                     (let ((__tmp145979
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp145979 _%stx141649%_))))
                                (if _%$e141757%_
                                    _%$e141757%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args141760%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen141761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args141760%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args141760%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp145983
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name141762%_
                                                                (cons _%args141760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp145980
                                  (map (lambda (_%g141763141766%_
                                                _%g141764141768%_)
                                         (_%generate1141653%_
                                          _%args141760%_
                                          _%arglen141761%_
                                          _%g141763141766%_
                                          _%g141764141768%_))
                                       (let ((__tmp145981
                                              (lambda (_%g141770141773%_
                                                       _%g141771141775%_)
                                                (cons _%g141770141773%_
                                                      _%g141771141775%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145981
                                          '()
                                          _%L141741%_))
                                       (let ((__tmp145982
                                              (lambda (_%g141777141780%_
                                                       _%g141778141782%_)
                                                (cons _%g141777141780%_
                                                      _%g141778141782%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145982
                                          '()
                                          _%L141740%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp145983 __tmp145980)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body141671141735%_
                     _%hd141672141737%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop141665141701%_
                                             _%target141662141696%_
                                             '()
                                             '()))
                                          (_%g141655141683%_
                                           _%g141656141686%_)))))
                                (_%g141655141683%_ _%g141656141686%_))))
                        (_%g141655141683%_ _%g141656141686%_)))))
            (_%g141654141785%_ _%stx141649%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self140885%_ _%stx140886%_ _%compiled-body?140887%_)
        (letrec ((_%generate-simple140889%_
                  (lambda (_%hd141633%_ _%body141634%_)
                    (_%coalesce-boolean140890%_
                     (_%simplify-let140891%_
                      (gxc#generate-runtime-simple-let
                       _%self140885%_
                       'let
                       _%hd141633%_
                       _%body141634%_
                       _%compiled-body?140887%_)))))
                 (_%coalesce-boolean140890%_
                  (lambda (_%code141494%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code141495141521%_ _%code141494%_)
                               (_%else141497141529%_
                                (lambda () _%code141494%_))
                               (_%K141499141566%_
                                (lambda (_%expr2141532%_
                                         _%expr1141533%_
                                         _%id141534%_)
                                  (let* ((_%expr2141535141543%_
                                          _%expr2141532%_)
                                         (_%else141537141551%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1141533%_
                                                        (cons _%expr2141532%_
                                                              '())))))
                                         (_%K141539141556%_
                                          (lambda (_%exprs141554%_)
                                            (cons 'or
                                                  (cons _%expr1141533%_
                                                        _%exprs141554%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2141535141543%_))
                                        (let ((_%hd141540141559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2141535141543%_)))
                                              (_%tl141541141561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2141535141543%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd141540141559%_ 'or))
                                              (let ((_%exprs141564%_
                                                     _%tl141541141561%_))
                                                (_%K141539141556%_
                                                 _%exprs141564%_))
                                              (_%else141537141551%_)))
                                        (_%else141537141551%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code141495141521%_))
                              (let ((_%hd141500141569%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code141495141521%_)))
                                    (_%tl141501141571%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code141495141521%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd141500141569%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl141501141571%_))
                                        (let ((_%hd141502141574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl141501141571%_)))
                                              (_%tl141503141576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl141501141571%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd141502141574%_))
                                              (let ((_%hd141514141579%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd141502141574%_)))
                                                    (_%tl141515141581%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd141502141574%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd141514141579%_))
                                                    (let ((_%hd141516141584%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd141514141579%_)))
                                                          (_%tl141517141586%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd141514141579%_))))
                                                      (let ((_%id141589%_
                                                             _%hd141516141584%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl141517141586%_))
                                                            (let ((_%hd141518141591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl141517141586%_)))
                          (_%tl141519141593%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl141517141586%_))))
                      (let ((_%expr1141596%_ _%hd141518141591%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl141519141593%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl141515141581%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl141503141576%_))
                                    (let ((_%hd141504141598%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl141503141576%_)))
                                          (_%tl141505141600%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl141503141576%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd141504141598%_))
                                          (let ((_%hd141506141603%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd141504141598%_)))
                                                (_%tl141507141605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd141504141598%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd141506141603%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl141507141605%_))
                                                    (let ((_%hd141508141608%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl141507141605%_)))
                                                          (_%tl141509141610%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl141507141605%_))))
                                                      (if ((lambda (_%g141612141614%_)
                                                             (eq? _%g141612141614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id141589%_))
                   _%hd141508141608%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl141509141610%_))
                      (let ((_%hd141510141617%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl141509141610%_)))
                            (_%tl141511141619%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl141509141610%_))))
                        (if ((lambda (_%g141621141623%_)
                               (eq? _%g141621141623%_ _%id141589%_))
                             _%hd141510141617%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl141511141619%_))
                                (let ((_%hd141512141626%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl141511141619%_)))
                                      (_%tl141513141628%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl141511141619%_))))
                                  (let ((_%expr2141631%_ _%hd141512141626%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl141513141628%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl141505141600%_))
                                            (_%K141499141566%_
                                             _%expr2141631%_
                                             _%expr1141596%_
                                             _%id141589%_)
                                            (_%else141497141529%_))
                                        (_%else141497141529%_))))
                                (_%else141497141529%_))
                            (_%else141497141529%_)))
                      (_%else141497141529%_))
                  (_%else141497141529%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else141497141529%_))
                                                (_%else141497141529%_)))
                                          (_%else141497141529%_)))
                                    (_%else141497141529%_))
                                (_%else141497141529%_))
                            (_%else141497141529%_))))
                    (_%else141497141529%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else141497141529%_)))
                                              (_%else141497141529%_)))
                                        (_%else141497141529%_))
                                    (_%else141497141529%_)))
                              (_%else141497141529%_)))
                        _%code141494%_)))
                 (_%simplify-let140891%_
                  (lambda (_%code141193%_)
                    (let* ((_%code141194141266%_ _%code141193%_)
                           (_%else141199141274%_ (lambda () _%code141193%_)))
                      (let ((_%K141258141474%_
                             (lambda (_%expr141472%_) _%expr141472%_))
                            (_%K141241141420%_
                             (lambda (_%body141416%_
                                      _%expr141417%_
                                      _%id141418%_)
                               (cons 'let
                                     (cons (cons (cons _%id141418%_
                                                       (cons _%expr141417%_
                                                             '()))
                                                 '())
                                           _%body141416%_))))
                            (_%K141218141344%_
                             (lambda (_%body141338%_
                                      _%expr2141339%_
                                      _%id2141340%_
                                      _%expr1141341%_
                                      _%id1141342%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1141342%_
                                                       (cons _%expr1141341%_
                                                             '()))
                                                 (cons (cons _%id2141340%_
                                                             (cons _%expr2141339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body141338%_))))
                            (_%K141201141283%_
                             (lambda (_%body141278%_
                                      _%bind141279%_
                                      _%expr1141280%_
                                      _%id1141281%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1141281%_
                                                       (cons _%expr1141280%_
                                                             '()))
                                                 _%bind141279%_)
                                           _%body141278%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code141194141266%_))
                            (let ((_%tl141260141479%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code141194141266%_)))
                                  (_%hd141259141477%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code141194141266%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd141259141477%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl141260141479%_))
                                      (let ((_%tl141262141484%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl141260141479%_)))
                                            (_%hd141261141482%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl141260141479%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd141261141482%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl141262141484%_))
                                                (let ((_%tl141264141489%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl141262141484%_)))
                                                      (_%hd141263141487%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl141262141484%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _%tl141264141489%_))
                                                      (let ((_%expr141492%_
                                                             _%hd141263141487%_))
                                                        (_%K141258141474%_
                                                         _%expr141492%_))
                                                      (_%else141199141274%_)))
                                                (_%else141199141274%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd141261141482%_))
                                                (let ((_%tl141253141435%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd141261141482%_)))
                                                      (_%hd141252141433%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd141261141482%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd141252141433%_))
                                                      (let ((_%tl141255141440%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd141252141433%_)))
                    (_%hd141254141438%_
                     (let () (declare (not safe)) (##car _%hd141252141433%_))))
                (if (let () (declare (not safe)) (##pair? _%tl141255141440%_))
                    (let ((_%tl141257141447%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl141255141440%_)))
                          (_%hd141256141445%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl141255141440%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl141257141447%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl141253141435%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl141262141484%_))
                                  (let ((_%tl141247141454%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl141262141484%_)))
                                        (_%hd141246141452%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl141262141484%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd141246141452%_))
                                        (let ((_%tl141249141459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd141246141452%_)))
                                              (_%hd141248141457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd141246141452%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd141248141457%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl141249141459%_))
                                                  (let ((_%tl141251141464%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl141249141459%_)))
                                                        (_%hd141250141462%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl141249141459%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd141250141462%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl141247141454%_))
                                                            (let ((_%id141443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd141254141438%_)
                          (_%expr141450%_ _%hd141256141445%_)
                          (_%body141467%_ _%tl141251141464%_))
                      (_%K141241141420%_
                       _%body141467%_
                       _%expr141450%_
                       _%id141443%_))
                    (_%else141199141274%_))
                (if (let () (declare (not safe)) (##pair? _%hd141250141462%_))
                    (let ((_%tl141230141393%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd141250141462%_)))
                          (_%hd141229141391%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd141250141462%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd141229141391%_))
                          (let ((_%tl141232141398%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd141229141391%_)))
                                (_%hd141231141396%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd141229141391%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl141232141398%_))
                                (let ((_%tl141234141405%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl141232141398%_)))
                                      (_%hd141233141403%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl141232141398%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl141234141405%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl141230141393%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl141247141454%_))
                                              (let ((_%id1141367%_
                                                     _%hd141254141438%_)
                                                    (_%expr1141374%_
                                                     _%hd141256141445%_)
                                                    (_%id2141401%_
                                                     _%hd141231141396%_)
                                                    (_%expr2141408%_
                                                     _%hd141233141403%_)
                                                    (_%body141410%_
                                                     _%tl141251141464%_))
                                                (_%K141218141344%_
                                                 _%body141410%_
                                                 _%expr2141408%_
                                                 _%id2141401%_
                                                 _%expr1141374%_
                                                 _%id1141367%_))
                                              (_%else141199141274%_))
                                          (_%else141199141274%_))
                                      (_%else141199141274%_)))
                                (_%else141199141274%_)))
                          (_%else141199141274%_)))
                    (_%else141199141274%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else141199141274%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd141248141457%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl141249141459%_))
                                                      (let ((_%tl141211141327%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl141249141459%_)))
                    (_%hd141210141325%_
                     (let () (declare (not safe)) (##car _%tl141249141459%_))))
                (if (let () (declare (not safe)) (##null? _%tl141247141454%_))
                    (let ((_%id1141306%_ _%hd141254141438%_)
                          (_%expr1141313%_ _%hd141256141445%_)
                          (_%bind141330%_ _%hd141210141325%_)
                          (_%body141332%_ _%tl141211141327%_))
                      (_%K141201141283%_
                       _%body141332%_
                       _%bind141330%_
                       _%expr1141313%_
                       _%id1141306%_))
                    (_%else141199141274%_)))
              (_%else141199141274%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else141199141274%_))))
                                        (_%else141199141274%_)))
                                  (_%else141199141274%_))
                              (_%else141199141274%_))
                          (_%else141199141274%_)))
                    (_%else141199141274%_)))
              (_%else141199141274%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else141199141274%_))))
                                      (_%else141199141274%_))
                                  (_%else141199141274%_)))
                            (_%else141199141274%_))))))
                 (_%generate-values140892%_
                  (lambda (_%hd141006%_ _%body141007%_)
                    (let _%lp141009%_ ((_%rest141011%_ _%hd141006%_)
                                       (_%bind141012%_ '())
                                       (_%check141013%_ '())
                                       (_%post141014%_ '()))
                      (let* ((_%__stx145137145138%_ _%rest141011%_)
                             (_%g141017141028%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx145137145138%_)))))
                        (let ((_%__kont145139145140%_
                               (lambda (_%L141055%_ _%L141056%_)
                                 (let* ((_%__stx145093145094%_ _%L141056%_)
                                        (_%g141071141096%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx145093145094%_)))))
                                   (let ((_%__kont145095145096%_
                                          (lambda (_%L141169%_ _%L141170%_)
                                            (let ((_%eid141184%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L141170%_)))
                                                  (_%expr141185%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140885%_
                                                      _%L141169%_))))
                                              (_%lp141009%_
                                               _%L141055%_
                                               (cons (cons _%eid141184%_
                                                           (cons _%expr141185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind141012%_)
                                               _%check141013%_
                                               _%post141014%_))))
                                         (_%__kont145097145098%_
                                          (lambda (_%L141117%_ _%L141118%_)
                                            (let* ((_%vals141131%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values141133%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals141131%_
                                                     _%L141118%_
                                                     _%L141117%_))
                                                   (_%refs141135%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals141131%_
                                                     _%L141118%_))
                                                   (_%expr141137%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140885%_
                                                       _%L141117%_))))
                                              (_%lp141009%_
                                               _%L141055%_
                                               (cons (cons _%vals141131%_
                                                           (cons _%expr141137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind141012%_)
                                               (cons _%check-values141133%_
                                                     _%check141013%_)
                                               (cons _%refs141135%_
                                                     _%post141014%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx145093145094%_))
                                         (let ((_%e141075141145%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx145093145094%_))))
                                           (let ((_%tl141077141150%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e141075141145%_)))
                                                 (_%hd141076141148%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e141075141145%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd141076141148%_))
                                                 (let ((_%e141078141153%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd141076141148%_))))
                                                   (let ((_%tl141080141158%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141078141153%_)))
                                                         (_%hd141079141156%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141078141153%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141080141158%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl141077141150%_))
                     (let ((_%e141081141161%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141077141150%_))))
                       (let ((_%tl141083141166%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141081141161%_)))
                             (_%hd141082141164%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141081141161%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141083141166%_))
                             (_%__kont145095145096%_
                              _%hd141082141164%_
                              _%hd141079141156%_)
                             (let ()
                               (declare (not safe))
                               (_%g141071141096%_)))))
                     (let () (declare (not safe)) (_%g141071141096%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl141077141150%_))
                     (let ((_%e141089141109%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141077141150%_))))
                       (let ((_%tl141091141114%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141089141109%_)))
                             (_%hd141090141112%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141089141109%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141091141114%_))
                             (_%__kont145097145098%_
                              _%hd141090141112%_
                              _%hd141076141148%_)
                             (let ()
                               (declare (not safe))
                               (_%g141071141096%_)))))
                     (let () (declare (not safe)) (_%g141071141096%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl141077141150%_))
                                                     (let ((_%e141089141109%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl141077141150%_))))
                                                       (let ((_%tl141091141114%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141089141109%_)))
                     (_%hd141090141112%_
                      (let () (declare (not safe)) (##car _%e141089141109%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl141091141114%_))
                     (_%__kont145097145098%_
                      _%hd141090141112%_
                      _%hd141076141148%_)
                     (let () (declare (not safe)) (_%g141071141096%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g141071141096%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g141071141096%_)))))))
                              (_%__kont145141145142%_
                               (lambda ()
                                 (let* ((_%body141035%_
                                         (if _%compiled-body?140887%_
                                             _%body141007%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140885%_
                                                _%body141007%_))))
                                        (_%body141037%_
                                         (_%generate-values-post140893%_
                                          _%post141014%_
                                          _%body141035%_))
                                        (_%body141039%_
                                         (_%generate-values-check140894%_
                                          _%check141013%_
                                          _%body141037%_)))
                                   (cons 'let
                                         (cons (reverse _%bind141012%_)
                                               (cons _%body141039%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx145137145138%_))
                              (let ((_%e141021141047%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx145137145138%_))))
                                (let ((_%tl141023141052%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141021141047%_)))
                                      (_%hd141022141050%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141021141047%_))))
                                  (_%__kont145139145140%_
                                   _%tl141023141052%_
                                   _%hd141022141050%_)))
                              (_%__kont145141145142%_)))))))
                 (_%generate-values-post140893%_
                  (lambda (_%post140965%_ _%body140966%_)
                    (let _%lp140968%_ ((_%rest140970%_ _%post140965%_)
                                       (_%body140971%_ _%body140966%_))
                      (let* ((_%rest140972140980%_ _%rest140970%_)
                             (_%else140974140988%_ (lambda () _%body140971%_))
                             (_%K140976140994%_
                              (lambda (_%rest140991%_ _%bind140992%_)
                                (_%lp140968%_
                                 _%rest140991%_
                                 (cons 'let
                                       (cons _%bind140992%_
                                             (cons _%body140971%_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140972140980%_))
                            (let ((_%hd140977140997%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140972140980%_)))
                                  (_%tl140978140999%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140972140980%_))))
                              (let* ((_%bind141002%_ _%hd140977140997%_)
                                     (_%rest141004%_ _%tl140978140999%_))
                                (_%K140976140994%_
                                 _%rest141004%_
                                 _%bind141002%_)))
                            (_%else140974140988%_))))))
                 (_%generate-values-check140894%_
                  (lambda (_%check140962%_ _%body140963%_)
                    (cons 'begin
                          (let ((__tmp145985 (cons _%body140963%_ '()))
                                (__tmp145984 (reverse _%check140962%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145985 __tmp145984))))))
          (let* ((_%g140896140913%_
                  (lambda (_%g140897140910%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140897140910%_))))
                 (_%g140895140959%_
                  (lambda (_%g140897140916%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140897140916%_))
                        (let ((_%e140900140918%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140897140916%_))))
                          (let ((_%hd140901140921%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140900140918%_)))
                                (_%tl140902140923%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140900140918%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140902140923%_))
                                (let ((_%e140903140926%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140902140923%_))))
                                  (let ((_%hd140904140929%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140903140926%_)))
                                        (_%tl140905140931%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140903140926%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140905140931%_))
                                        (let ((_%e140906140934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140905140931%_))))
                                          (let ((_%hd140907140937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140906140934%_)))
                                                (_%tl140908140939%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140906140934%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140908140939%_))
                                                ((lambda (_%L140942%_
                                                          _%L140943%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L140943%_)
                                                       (_%generate-simple140889%_
                                                        _%L140943%_
                                                        _%L140942%_)
                                                       (_%generate-values140892%_
                                                        _%L140943%_
                                                        _%L140942%_)))
                                                 _%hd140907140937%_
                                                 _%hd140904140929%_)
                                                (_%g140896140913%_
                                                 _%g140897140916%_))))
                                        (_%g140896140913%_
                                         _%g140897140916%_))))
                                (_%g140896140913%_ _%g140897140916%_))))
                        (_%g140896140913%_ _%g140897140916%_)))))
            (_%g140895140959%_ _%stx140886%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self141639%_ _%stx141640%_)
        (let ((_%compiled-body?141642%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self141639%_
           _%stx141640%_
           _%compiled-body?141642%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g145987_
        (let ((_g145986_ (let () (declare (not safe)) (##length _g145987_))))
          (cond ((let () (declare (not safe)) (##fx= _g145986_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g145987_))
                ((let () (declare (not safe)) (##fx= _g145986_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g145987_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g145987_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals140779%_ _%hd140780%_)
        (let _%lp140782%_ ((_%rest140784%_ _%hd140780%_)
                           (_%k140785%_ '0)
                           (_%r140786%_ '()))
          (let* ((_%__stx145151145152%_ _%rest140784%_)
                 (_%g140791140808%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx145151145152%_)))))
            (let ((_%__kont145153145154%_
                   (lambda (_%L140871%_)
                     (_%lp140782%_
                      _%L140871%_
                      (let () (declare (not safe)) (##fx+ _%k140785%_ '1))
                      _%r140786%_)))
                  (_%__kont145155145156%_
                   (lambda (_%L140844%_ _%L140845%_)
                     (_%lp140782%_
                      _%L140844%_
                      (let () (declare (not safe)) (##fx+ _%k140785%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L140845%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals140779%_
                                         _%k140785%_
                                         _%L140844%_)
                                        '()))
                            _%r140786%_))))
                  (_%__kont145157145158%_
                   (lambda (_%L140820%_)
                     (let ((__tmp145988
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140820%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals140779%_
                                               _%k140785%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp145988 _%r140786%_))))
                  (_%__kont145159145160%_ (lambda () (reverse _%r140786%_))))
              (let ((_%g140789140831%_
                     (lambda ()
                       (let ((_%L140820%_ _%__stx145151145152%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L140820%_))
                             (_%__kont145157145158%_ _%L140820%_)
                             (_%__kont145159145160%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx145151145152%_))
                    (let ((_%e140794140860%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx145151145152%_))))
                      (let ((_%tl140796140865%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140794140860%_)))
                            (_%hd140795140863%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140794140860%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd140795140863%_))
                            (let ((_%e140797140868%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd140795140863%_))))
                              (if (equal? _%e140797140868%_ '#f)
                                  (_%__kont145153145154%_ _%tl140796140865%_)
                                  (_%__kont145155145156%_
                                   _%tl140796140865%_
                                   _%hd140795140863%_)))
                            (_%__kont145155145156%_
                             _%tl140796140865%_
                             _%hd140795140863%_))))
                    (let () (declare (not safe)) (_%g140789140831%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self140458%_ _%stx140459%_ _%compiled-body?140460%_)
        (letrec ((_%generate-simple140462%_
                  (lambda (_%hd140764%_ _%body140765%_)
                    (gxc#generate-runtime-simple-let
                     _%self140458%_
                     'letrec
                     _%hd140764%_
                     _%body140765%_
                     _%compiled-body?140460%_)))
                 (_%generate-values140463%_
                  (lambda (_%hd140543%_ _%body140544%_)
                    (let _%lp140546%_ ((_%rest140548%_ _%hd140543%_)
                                       (_%bind140549%_ '())
                                       (_%check140550%_ '())
                                       (_%post140551%_ '()))
                      (let* ((_%__stx145225145226%_ _%rest140548%_)
                             (_%g140554140565%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx145225145226%_)))))
                        (let ((_%__kont145227145228%_
                               (lambda (_%L140592%_ _%L140593%_)
                                 (let* ((_%__stx145181145182%_ _%L140593%_)
                                        (_%g140608140633%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx145181145182%_)))))
                                   (let ((_%__kont145183145184%_
                                          (lambda (_%L140740%_ _%L140741%_)
                                            (let ((_%eid140755%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140741%_)))
                                                  (_%expr140756%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140458%_
                                                      _%L140740%_))))
                                              (_%lp140546%_
                                               _%L140592%_
                                               (cons (cons _%eid140755%_
                                                           (cons _%expr140756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind140549%_)
                                               _%check140550%_
                                               _%post140551%_))))
                                         (_%__kont145185145186%_
                                          (lambda (_%L140654%_ _%L140655%_)
                                            (let* ((_%vals140668%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140670%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals140668%_
                                                     _%L140655%_
                                                     _%L140654%_))
                                                   (_%refs140672%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals140668%_
                                                     _%L140655%_))
                                                   (_%expr140674%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140458%_
                                                       _%L140654%_))))
                                              (_%lp140546%_
                                               _%L140592%_
                                               (let ((__tmp145990
                                                      (cons (cons _%vals140668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr140674%_ '()))
                    _%bind140549%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp145989
                                                      (map (lambda (_%e140676140678%_)
                                                             (let* ((_%g140680140689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e140676140678%_)
                            (_%E140682140693%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g140680140689%_
                                        '([eid _])))
                               '#!void))
                            (_%K140683140698%_
                             (lambda (_%eid140696%_)
                               (cons _%eid140696%_ (cons '#!void '())))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g140680140689%_))
                           (let ((_%hd140684140701%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g140680140689%_)))
                                 (_%tl140685140703%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g140680140689%_))))
                             (let ((_%eid140706%_ _%hd140684140701%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%tl140685140703%_))
                                   (let ((_%tl140687140708%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl140685140703%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _%tl140687140708%_))
                                         (_%K140683140698%_ _%eid140706%_)
                                         (_%E140682140693%_)))
                                   (_%E140682140693%_))))
                           (_%E140682140693%_))))
                   _%refs140672%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp145990
                                                  __tmp145989))
                                               (cons _%check-values140670%_
                                                     _%check140550%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs140672%_
                                                  _%post140551%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx145181145182%_))
                                         (let ((_%e140612140716%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx145181145182%_))))
                                           (let ((_%tl140614140721%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140612140716%_)))
                                                 (_%hd140613140719%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140612140716%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140613140719%_))
                                                 (let ((_%e140615140724%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140613140719%_))))
                                                   (let ((_%tl140617140729%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140615140724%_)))
                                                         (_%hd140616140727%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140615140724%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140617140729%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140614140721%_))
                     (let ((_%e140618140732%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140614140721%_))))
                       (let ((_%tl140620140737%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140618140732%_)))
                             (_%hd140619140735%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140618140732%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140620140737%_))
                             (_%__kont145183145184%_
                              _%hd140619140735%_
                              _%hd140616140727%_)
                             (let ()
                               (declare (not safe))
                               (_%g140608140633%_)))))
                     (let () (declare (not safe)) (_%g140608140633%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140614140721%_))
                     (let ((_%e140626140646%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140614140721%_))))
                       (let ((_%tl140628140651%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140626140646%_)))
                             (_%hd140627140649%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140626140646%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140628140651%_))
                             (_%__kont145185145186%_
                              _%hd140627140649%_
                              _%hd140613140719%_)
                             (let ()
                               (declare (not safe))
                               (_%g140608140633%_)))))
                     (let () (declare (not safe)) (_%g140608140633%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140614140721%_))
                                                     (let ((_%e140626140646%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140614140721%_))))
                                                       (let ((_%tl140628140651%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140626140646%_)))
                     (_%hd140627140649%_
                      (let () (declare (not safe)) (##car _%e140626140646%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140628140651%_))
                     (_%__kont145185145186%_
                      _%hd140627140649%_
                      _%hd140613140719%_)
                     (let () (declare (not safe)) (_%g140608140633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140608140633%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140608140633%_)))))))
                              (_%__kont145229145230%_
                               (lambda ()
                                 (let* ((_%body140572%_
                                         (if _%compiled-body?140460%_
                                             _%body140544%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140458%_
                                                _%body140544%_))))
                                        (_%body140574%_
                                         (_%generate-values-post140465%_
                                          _%post140551%_
                                          _%body140572%_))
                                        (_%body140576%_
                                         (_%generate-values-check140464%_
                                          _%check140550%_
                                          _%body140574%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind140549%_)
                                               (cons _%body140576%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx145225145226%_))
                              (let ((_%e140558140584%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx145225145226%_))))
                                (let ((_%tl140560140589%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140558140584%_)))
                                      (_%hd140559140587%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140558140584%_))))
                                  (_%__kont145227145228%_
                                   _%tl140560140589%_
                                   _%hd140559140587%_)))
                              (_%__kont145229145230%_)))))))
                 (_%generate-values-check140464%_
                  (lambda (_%check140540%_ _%body140541%_)
                    (cons 'begin
                          (let ((__tmp145992 (cons _%body140541%_ '()))
                                (__tmp145991 (reverse _%check140540%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145992 __tmp145991)))))
                 (_%generate-values-post140465%_
                  (lambda (_%post140533%_ _%body140534%_)
                    (cons 'begin
                          (let ((__tmp145996 (cons _%body140534%_ '()))
                                (__tmp145993
                                 (let ((__tmp145995
                                        (lambda (_%g140535140537%_)
                                          (cons 'set! _%g140535140537%_)))
                                       (__tmp145994 (reverse _%post140533%_)))
                                   (declare (not safe))
                                   (##map __tmp145995 __tmp145994))))
                            (declare (not safe))
                            (__foldr1 cons __tmp145996 __tmp145993))))))
          (let* ((_%g140467140484%_
                  (lambda (_%g140468140481%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140468140481%_))))
                 (_%g140466140530%_
                  (lambda (_%g140468140487%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140468140487%_))
                        (let ((_%e140471140489%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140468140487%_))))
                          (let ((_%hd140472140492%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140471140489%_)))
                                (_%tl140473140494%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140471140489%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140473140494%_))
                                (let ((_%e140474140497%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140473140494%_))))
                                  (let ((_%hd140475140500%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140474140497%_)))
                                        (_%tl140476140502%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140474140497%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140476140502%_))
                                        (let ((_%e140477140505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140476140502%_))))
                                          (let ((_%hd140478140508%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140477140505%_)))
                                                (_%tl140479140510%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140477140505%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140479140510%_))
                                                ((lambda (_%L140513%_
                                                          _%L140514%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L140514%_)
                                                       (_%generate-simple140462%_
                                                        _%L140514%_
                                                        _%L140513%_)
                                                       (_%generate-values140463%_
                                                        _%L140514%_
                                                        _%L140513%_)))
                                                 _%hd140478140508%_
                                                 _%hd140475140500%_)
                                                (_%g140467140484%_
                                                 _%g140468140487%_))))
                                        (_%g140467140484%_
                                         _%g140468140487%_))))
                                (_%g140467140484%_ _%g140468140487%_))))
                        (_%g140467140484%_ _%g140468140487%_)))))
            (_%g140466140530%_ _%stx140459%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self140770%_ _%stx140771%_)
        (let ((_%compiled-body?140773%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self140770%_
           _%stx140771%_
           _%compiled-body?140773%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g145998_
        (let ((_g145997_ (let () (declare (not safe)) (##length _g145998_))))
          (cond ((let () (declare (not safe)) (##fx= _g145997_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g145998_))
                ((let () (declare (not safe)) (##fx= _g145997_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g145998_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g145998_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self140039%_ _%stx140040%_)
        (letrec ((_%generate-values140042%_
                  (lambda (_%hd140285%_ _%body140286%_)
                    (let _%lp140288%_ ((_%rest140290%_ _%hd140285%_)
                                       (_%bind140291%_ '()))
                      (let* ((_%rest140292140300%_ _%rest140290%_)
                             (_%else140294140311%_
                              (lambda ()
                                (let ((_%bind140308%_ (reverse _%bind140291%_))
                                      (_%body140309%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self140039%_
                                          _%body140286%_))))
                                  (cons 'letrec*
                                        (cons _%bind140308%_
                                              (cons _%body140309%_ '()))))))
                             (_%K140296140445%_
                              (lambda (_%rest140314%_ _%hd-bind140315%_)
                                (let* ((_%__stx145239145240%_
                                        _%hd-bind140315%_)
                                       (_%g140318140343%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx145239145240%_)))))
                                  (let ((_%__kont145241145242%_
                                         (lambda (_%L140424%_ _%L140425%_)
                                           (let ((_%eid140439%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L140425%_)))
                                                 (_%expr140440%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self140039%_
                                                     _%L140424%_))))
                                             (_%lp140288%_
                                              _%rest140314%_
                                              (cons (cons _%eid140439%_
                                                          (cons _%expr140440%_
                                                                '()))
                                                    _%bind140291%_)))))
                                        (_%__kont145243145244%_
                                         (lambda (_%L140364%_ _%L140365%_)
                                           (let* ((_%vals140384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp140386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values140388%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp140386%_
                                                    _%L140365%_
                                                    _%L140364%_))
                                                  (_%refs140390%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals140384%_
                                                    _%L140365%_))
                                                  (_%expr140392%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140039%_
                                                      _%L140364%_))))
                                             (_%lp140288%_
                                              _%rest140314%_
                                              (let ((__tmp145999
                                                     (cons (cons _%vals140384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp140386%_
                                                       (cons _%expr140392%_
                                                             '()))
                                                 '())
                                           (cons _%check-values140388%_
                                                 (cons _%tmp140386%_ '()))))
                               '()))
                   _%bind140291%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp145999
                                                 _%refs140390%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx145239145240%_))
                                        (let ((_%e140322140400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx145239145240%_))))
                                          (let ((_%tl140324140405%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140322140400%_)))
                                                (_%hd140323140403%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140322140400%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140323140403%_))
                                                (let ((_%e140325140408%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140323140403%_))))
                                                  (let ((_%tl140327140413%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140325140408%_)))
                                                        (_%hd140326140411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140325140408%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140327140413%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl140324140405%_))
                                                            (let ((_%e140328140416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140324140405%_))))
                      (let ((_%tl140330140421%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140328140416%_)))
                            (_%hd140329140419%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140328140416%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140330140421%_))
                            (_%__kont145241145242%_
                             _%hd140329140419%_
                             _%hd140326140411%_)
                            (let ()
                              (declare (not safe))
                              (_%g140318140343%_)))))
                    (let () (declare (not safe)) (_%g140318140343%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl140324140405%_))
                    (let ((_%e140336140356%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140324140405%_))))
                      (let ((_%tl140338140361%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140336140356%_)))
                            (_%hd140337140359%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140336140356%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140338140361%_))
                            (_%__kont145243145244%_
                             _%hd140337140359%_
                             _%hd140323140403%_)
                            (let ()
                              (declare (not safe))
                              (_%g140318140343%_)))))
                    (let () (declare (not safe)) (_%g140318140343%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl140324140405%_))
                                                    (let ((_%e140336140356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl140324140405%_))))
                                                      (let ((_%tl140338140361%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e140336140356%_)))
                    (_%hd140337140359%_
                     (let () (declare (not safe)) (##car _%e140336140356%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl140338140361%_))
                    (_%__kont145243145244%_
                     _%hd140337140359%_
                     _%hd140323140403%_)
                    (let () (declare (not safe)) (_%g140318140343%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g140318140343%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140318140343%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140292140300%_))
                            (let ((_%hd140297140448%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140292140300%_)))
                                  (_%tl140298140450%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140292140300%_))))
                              (let* ((_%hd-bind140453%_ _%hd140297140448%_)
                                     (_%rest140455%_ _%tl140298140450%_))
                                (_%K140296140445%_
                                 _%rest140455%_
                                 _%hd-bind140453%_)))
                            (_%else140294140311%_))))))
                 (_%generate-letrec?140043%_
                  (lambda (_%hd140175%_)
                    (let _%lp140177%_ ((_%rest140179%_ _%hd140175%_))
                      (let* ((_%rest140180140188%_ _%rest140179%_)
                             (_%else140182140196%_ (lambda () '#t))
                             (_%K140184140273%_
                              (lambda (_%rest140199%_ _%hd-bind140200%_)
                                (let* ((_%g140202140219%_
                                        (lambda (_%g140203140216%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g140203140216%_))))
                                       (_%g140201140270%_
                                        (lambda (_%g140203140222%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g140203140222%_))
                                              (let ((_%e140206140224%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g140203140222%_))))
                                                (let ((_%hd140207140227%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140206140224%_)))
                                                      (_%tl140208140229%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140206140224%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd140207140227%_))
                                                      (let ((_%e140209140232%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd140207140227%_))))
                (let ((_%hd140210140235%_
                       (let () (declare (not safe)) (##car _%e140209140232%_)))
                      (_%tl140211140237%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e140209140232%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl140211140237%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140208140229%_))
                          (let ((_%e140212140240%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140208140229%_))))
                            (let ((_%hd140213140243%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140212140240%_)))
                                  (_%tl140214140245%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140212140240%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl140214140245%_))
                                  ((lambda (_%L140248%_ _%L140249%_)
                                     (if (_%is-lambda-expr?140044%_
                                          _%L140248%_)
                                         (_%lp140177%_ _%rest140199%_)
                                         '#f))
                                   _%hd140213140243%_
                                   _%hd140210140235%_)
                                  (_%g140202140219%_ _%g140203140222%_))))
                          (_%g140202140219%_ _%g140203140222%_))
                      (_%g140202140219%_ _%g140203140222%_))))
              (_%g140202140219%_ _%g140203140222%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140202140219%_
                                               _%g140203140222%_)))))
                                  (_%g140201140270%_ _%hd-bind140200%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140180140188%_))
                            (let ((_%hd140185140276%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140180140188%_)))
                                  (_%tl140186140278%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140180140188%_))))
                              (let* ((_%hd-bind140281%_ _%hd140185140276%_)
                                     (_%rest140283%_ _%tl140186140278%_))
                                (_%K140184140273%_
                                 _%rest140283%_
                                 _%hd-bind140281%_)))
                            (_%else140182140196%_))))))
                 (_%is-lambda-expr?140044%_
                  (lambda (_%expr140112%_)
                    (let* ((_%__stx145283145284%_ _%expr140112%_)
                           (_%g140115140129%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx145283145284%_)))))
                      (let ((_%__kont145285145286%_
                             (lambda (_%L140157%_ _%L140158%_) '#t))
                            (_%__kont145287145288%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx145283145284%_))
                            (let ((_%e140119140141%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx145283145284%_))))
                              (let ((_%tl140121140146%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e140119140141%_)))
                                    (_%hd140120140144%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e140119140141%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd140120140144%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd140120140144%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl140121140146%_))
                                            (let ((_%e140122140149%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl140121140146%_))))
                                              (let ((_%tl140124140154%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e140122140149%_)))
                                                    (_%hd140123140152%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e140122140149%_))))
                                                (_%__kont145285145286%_
                                                 _%tl140124140154%_
                                                 _%hd140123140152%_)))
                                            (_%__kont145287145288%_))
                                        (_%__kont145287145288%_))
                                    (_%__kont145287145288%_))))
                            (_%__kont145287145288%_)))))))
          (let* ((_%g140046140063%_
                  (lambda (_%g140047140060%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140047140060%_))))
                 (_%g140045140109%_
                  (lambda (_%g140047140066%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140047140066%_))
                        (let ((_%e140050140068%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140047140066%_))))
                          (let ((_%hd140051140071%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140050140068%_)))
                                (_%tl140052140073%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140050140068%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140052140073%_))
                                (let ((_%e140053140076%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140052140073%_))))
                                  (let ((_%hd140054140079%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140053140076%_)))
                                        (_%tl140055140081%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140053140076%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140055140081%_))
                                        (let ((_%e140056140084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140055140081%_))))
                                          (let ((_%hd140057140087%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140056140084%_)))
                                                (_%tl140058140089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140056140084%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140058140089%_))
                                                ((lambda (_%L140092%_
                                                          _%L140093%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L140093%_)
                                                       (if (_%generate-letrec?140043%_
                                                            _%L140093%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self140039%_
                                                            'letrec
                                                            _%L140093%_
                                                            _%L140092%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self140039%_
                                                            'letrec*
                                                            _%L140093%_
                                                            _%L140092%_
                                                            '#f))
                                                       (_%generate-values140042%_
                                                        _%L140093%_
                                                        _%L140092%_)))
                                                 _%hd140057140087%_
                                                 _%hd140054140079%_)
                                                (_%g140046140063%_
                                                 _%g140047140066%_))))
                                        (_%g140046140063%_
                                         _%g140047140066%_))))
                                (_%g140046140063%_ _%g140047140066%_))))
                        (_%g140046140063%_ _%g140047140066%_)))))
            (_%g140045140109%_ _%stx140040%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd139976%_)
        (let _%lp139978%_ ((_%rest139980%_ _%hd139976%_))
          (let* ((_%rest139981139997%_ _%rest139980%_)
                 (_%else139984140005%_ (lambda () '#f)))
            (let ((_%K139987140018%_
                   (lambda (_%rest140016%_) (_%lp139978%_ _%rest140016%_)))
                  (_%K139986140010%_ (lambda () '#t)))
              (let ((_%try-match139983140013%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest139981139997%_))
                           (_%K139986140010%_)
                           (_%else139984140005%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139981139997%_))
                    (let ((_%tl139989140023%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139981139997%_)))
                          (_%hd139988140021%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139981139997%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd139988140021%_))
                          (let ((_%tl139991140028%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd139988140021%_)))
                                (_%hd139990140026%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd139988140021%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139990140026%_))
                                (let ((_%tl139995140031%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139990140026%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl139995140031%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl139991140028%_))
                                          (let ((_%tl139993140034%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl139991140028%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl139993140034%_))
                                                (let ((_%rest140037%_
                                                       _%tl139989140023%_))
                                                  (_%lp139978%_
                                                   _%rest140037%_))
                                                (_%else139984140005%_)))
                                          (_%else139984140005%_))
                                      (_%else139984140005%_)))
                                (_%else139984140005%_)))
                          (_%else139984140005%_)))
                    (_%try-match139983140013%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self139887%_
               _%form139888%_
               _%hd139889%_
               _%body139890%_
               _%compiled-body?139891%_)
        (letrec ((_%generate1139893%_
                  (lambda (_%bind139932%_)
                    (let* ((_%bind139933139944%_ _%bind139932%_)
                           (_%E139935139948%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind139933139944%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K139936139954%_
                            (lambda (_%expr139951%_ _%id139952%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id139952%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self139887%_
                                             _%expr139951%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind139933139944%_))
                          (let ((_%hd139937139957%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind139933139944%_)))
                                (_%tl139938139959%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind139933139944%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139937139957%_))
                                (let ((_%hd139941139962%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd139937139957%_)))
                                      (_%tl139942139964%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139937139957%_))))
                                  (let ((_%id139967%_ _%hd139941139962%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl139942139964%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl139938139959%_))
                                            (let ((_%hd139939139969%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl139938139959%_)))
                                                  (_%tl139940139971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl139938139959%_))))
                                              (let ((_%expr139974%_
                                                     _%hd139939139969%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl139940139971%_))
                                                    (_%K139936139954%_
                                                     _%expr139974%_
                                                     _%id139967%_)
                                                    (_%E139935139948%_))))
                                            (_%E139935139948%_))
                                        (_%E139935139948%_))))
                                (_%E139935139948%_)))
                          (_%E139935139948%_))))))
          (let* ((_%bind139895%_ (map _%generate1139893%_ _%hd139889%_))
                 (_%body139897%_
                  (if _%compiled-body?139891%_
                      _%body139890%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self139887%_ _%body139890%_))))
                 (_%body139929%_
                  (let* ((_%body139898139906%_ _%body139897%_)
                         (_%else139900139914%_
                          (lambda () (cons _%body139897%_ '())))
                         (_%K139902139919%_
                          (lambda (_%exprs139917%_) _%exprs139917%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body139898139906%_))
                        (let ((_%hd139903139922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body139898139906%_)))
                              (_%tl139904139924%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body139898139906%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd139903139922%_ 'begin))
                              (let ((_%exprs139927%_ _%tl139904139924%_))
                                (_%K139902139919%_ _%exprs139927%_))
                              (_%else139900139914%_)))
                        (_%else139900139914%_)))))
            (cons _%form139888%_ (cons _%bind139895%_ _%body139929%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self139787%_ _%stx139788%_)
        (letrec ((_%generate1139790%_
                  (lambda (_%datum139842%_)
                    (if (or (null? _%datum139842%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum139842%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum139842%_))
                            (eof-object? _%datum139842%_))
                        _%datum139842%_
                        (if (uninterned-symbol? _%datum139842%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum139842%_
                               '#t))
                            (if (pair? _%datum139842%_)
                                (cons (_%generate1139790%_
                                       (car _%datum139842%_))
                                      (_%generate1139790%_
                                       (cdr _%datum139842%_)))
                                (if (box? _%datum139842%_)
                                    (box (_%generate1139790%_
                                          (unbox _%datum139842%_)))
                                    (if (vector? _%datum139842%_)
                                        (vector-map
                                         _%generate1139790%_
                                         _%datum139842%_)
                                        (if (or (s8vector? _%datum139842%_)
                                                (u8vector? _%datum139842%_)
                                                (s16vector? _%datum139842%_)
                                                (u16vector? _%datum139842%_)
                                                (s32vector? _%datum139842%_)
                                                (u32vector? _%datum139842%_)
                                                (s64vector? _%datum139842%_)
                                                (u64vector? _%datum139842%_)
                                                (f32vector? _%datum139842%_)
                                                (f64vector? _%datum139842%_))
                                            _%datum139842%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx139788%_)))))))))))
          (let* ((_%g139792139805%_
                  (lambda (_%g139793139802%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139793139802%_))))
                 (_%g139791139839%_
                  (lambda (_%g139793139808%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139793139808%_))
                        (let ((_%e139795139810%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139793139808%_))))
                          (let ((_%hd139796139813%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139795139810%_)))
                                (_%tl139797139815%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139795139810%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139797139815%_))
                                (let ((_%e139798139818%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139797139815%_))))
                                  (let ((_%hd139799139821%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139798139818%_)))
                                        (_%tl139800139823%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139798139818%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl139800139823%_))
                                        ((lambda (_%L139826%_)
                                           (cons 'quote
                                                 (cons (_%generate1139790%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L139826%_)))
                                                       '())))
                                         _%hd139799139821%_)
                                        (_%g139792139805%_
                                         _%g139793139808%_))))
                                (_%g139792139805%_ _%g139793139808%_))))
                        (_%g139792139805%_ _%g139793139808%_)))))
            (_%g139791139839%_ _%stx139788%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self139228%_ _%stx139229%_)
        (letrec ((_%compile-call139231%_
                  (lambda (_%rator139520%_ _%rands139521%_)
                    (let ((_%rator139527%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self139228%_
                              _%rator139520%_)))
                          (_%rands139528%_
                           (map (lambda (_%g139522139524%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self139228%_
                                     _%g139522139524%_)))
                                _%rands139521%_)))
                      (let* ((_%__stx145330145331%_ _%rator139527%_)
                             (_%g139531139583%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx145330145331%_)))))
                        (let ((_%__kont145332145333%_
                               (lambda (_%L139707%_
                                        _%L139708%_
                                        _%L139709%_
                                        _%L139710%_)
                                 (if (let ((__tmp146002
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands139528%_)))
                                           (__tmp146000
                                            (length (let ((__tmp146001
                                                           (lambda (_%g139746139749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g139747139751%_)
                     (cons _%g139746139749%_ _%g139747139751%_))))
              (declare (not safe))
              (__foldr1 __tmp146001 '() _%L139709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp146002 __tmp146000))
                                     (let* ((_%id139754%_ _%L139710%_)
                                            (_%args139763%_
                                             (let ((__tmp146003
                                                    (lambda (_%g139755139758%_
                                                             _%g139756139760%_)
                                                      (cons _%g139755139758%_
                                                            _%g139756139760%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp146003
                                                '()
                                                _%L139709%_)))
                                            (_%body139772%_
                                             (let ((__tmp146004
                                                    (lambda (_%g139764139767%_
                                                             _%g139765139769%_)
                                                      (cons _%g139764139767%_
                                                            _%g139765139769%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp146004
                                                '()
                                                _%L139708%_)))
                                            (_%init139774%_
                                             (map list
                                                  _%args139763%_
                                                  _%rands139528%_)))
                                       (cons 'let
                                             (cons _%id139754%_
                                                   (cons _%init139774%_
                                                         _%body139772%_))))
                                     (let ((__tmp146005
                                            (let ((__tmp146006
                                                   (lambda (_%g139776139779%_
                                                            _%g139777139781%_)
                                                     (cons _%g139776139779%_
                                                           _%g139777139781%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp146006
                                               '()
                                               _%L139709%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx139229%_
                                        __tmp146005
                                        _%rands139528%_)))))
                              (_%__kont145338145339%_
                               (lambda ()
                                 (cons _%rator139527%_ _%rands139528%_))))
                          (let ((_%__match145397145398%_
                                 (lambda (_%e139537139595%_
                                          _%hd139538139598%_
                                          _%tl139539139600%_
                                          _%e139540139603%_
                                          _%hd139541139606%_
                                          _%tl139542139608%_
                                          _%e139543139611%_
                                          _%hd139544139614%_
                                          _%tl139545139616%_
                                          _%e139546139619%_
                                          _%hd139547139622%_
                                          _%tl139548139624%_
                                          _%e139549139627%_
                                          _%hd139550139630%_
                                          _%tl139551139632%_
                                          _%e139552139635%_
                                          _%hd139553139638%_
                                          _%tl139554139640%_
                                          _%e139555139643%_
                                          _%hd139556139646%_
                                          _%tl139557139648%_
                                          _%__splice145334145335%_
                                          _%target139558139651%_
                                          _%tl139560139653%_)
                                   (letrec ((_%loop139561139656%_
                                             (lambda (_%hd139559139659%_
                                                      _%arg139565139661%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd139559139659%_))
                                                   (let ((_%e139562139664%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd139559139659%_))))
                                                     (let ((_%lp-tl139564139669%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e139562139664%_)))
                                                           (_%lp-hd139563139667%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e139562139664%_))))
                                                       (_%loop139561139656%_
                                                        _%lp-tl139564139669%_
                                                        (cons _%lp-hd139563139667%_
                                                              _%arg139565139661%_))))
                                                   (let ((_%arg139566139672%_
                                                          (reverse _%arg139565139661%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl139557139648%_))
                                                         (let ((_%__splice145336145337%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl139557139648%_ '0))))
                   (let ((_%tl139569139677%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice145336145337%_ '1)))
                         (_%target139567139675%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice145336145337%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl139569139677%_))
                         (letrec ((_%loop139570139680%_
                                   (lambda (_%hd139568139683%_
                                            _%body139574139685%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd139568139683%_))
                                         (let ((_%e139571139688%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd139568139683%_))))
                                           (let ((_%lp-tl139573139693%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139571139688%_)))
                                                 (_%lp-hd139572139691%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139571139688%_))))
                                             (_%loop139570139680%_
                                              _%lp-tl139573139693%_
                                              (cons _%lp-hd139572139691%_
                                                    _%body139574139685%_))))
                                         (let ((_%body139575139696%_
                                                (reverse _%body139574139685%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl139551139632%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl139545139616%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl139542139608%_))
                                                       (let ((_%e139576139699%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl139542139608%_))))
                 (let ((_%tl139578139704%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e139576139699%_)))
                       (_%hd139577139702%_
                        (let ()
                          (declare (not safe))
                          (##car _%e139576139699%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl139578139704%_))
                       (let ((_%L139707%_ _%hd139577139702%_)
                             (_%L139708%_ _%body139575139696%_)
                             (_%L139709%_ _%arg139566139672%_)
                             (_%L139710%_ _%hd139547139622%_))
                         (if (eq? _%L139710%_ _%L139707%_)
                             (_%__kont145332145333%_
                              _%L139707%_
                              _%L139708%_
                              _%L139709%_
                              _%L139710%_)
                             (_%__kont145338145339%_)))
                       (_%__kont145338145339%_))))
               (_%__kont145338145339%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont145338145339%_))
                                               (_%__kont145338145339%_)))))))
                           (_%loop139570139680%_ _%target139567139675%_ '()))
                         (_%__kont145338145339%_))))
                 (_%__kont145338145339%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop139561139656%_
                                      _%target139558139651%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx145330145331%_))
                                (let ((_%e139537139595%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx145330145331%_))))
                                  (let ((_%tl139539139600%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139537139595%_)))
                                        (_%hd139538139598%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139537139595%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd139538139598%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd139538139598%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139539139600%_))
                                                (let ((_%e139540139603%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139539139600%_))))
                                                  (let ((_%tl139542139608%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139540139603%_)))
                                                        (_%hd139541139606%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139540139603%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd139541139606%_))
                                                        (let ((_%e139543139611%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd139541139606%_))))
                  (let ((_%tl139545139616%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139543139611%_)))
                        (_%hd139544139614%_
                         (let ()
                           (declare (not safe))
                           (##car _%e139543139611%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd139544139614%_))
                        (let ((_%e139546139619%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd139544139614%_))))
                          (let ((_%tl139548139624%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139546139619%_)))
                                (_%hd139547139622%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139546139619%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139548139624%_))
                                (let ((_%e139549139627%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139548139624%_))))
                                  (let ((_%tl139551139632%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139549139627%_)))
                                        (_%hd139550139630%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139549139627%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd139550139630%_))
                                        (let ((_%e139552139635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd139550139630%_))))
                                          (let ((_%tl139554139640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139552139635%_)))
                                                (_%hd139553139638%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139552139635%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd139553139638%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd139553139638%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl139554139640%_))
                                                        (let ((_%e139555139643%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl139554139640%_))))
                  (let ((_%tl139557139648%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139555139643%_)))
                        (_%hd139556139646%_
                         (let ()
                           (declare (not safe))
                           (##car _%e139555139643%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd139556139646%_))
                        (let ((_%__splice145334145335%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd139556139646%_
                                  '0))))
                          (let ((_%tl139560139653%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice145334145335%_ '1)))
                                (_%target139558139651%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice145334145335%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl139560139653%_))
                                (_%__match145397145398%_
                                 _%e139537139595%_
                                 _%hd139538139598%_
                                 _%tl139539139600%_
                                 _%e139540139603%_
                                 _%hd139541139606%_
                                 _%tl139542139608%_
                                 _%e139543139611%_
                                 _%hd139544139614%_
                                 _%tl139545139616%_
                                 _%e139546139619%_
                                 _%hd139547139622%_
                                 _%tl139548139624%_
                                 _%e139549139627%_
                                 _%hd139550139630%_
                                 _%tl139551139632%_
                                 _%e139552139635%_
                                 _%hd139553139638%_
                                 _%tl139554139640%_
                                 _%e139555139643%_
                                 _%hd139556139646%_
                                 _%tl139557139648%_
                                 _%__splice145334145335%_
                                 _%target139558139651%_
                                 _%tl139560139653%_)
                                (_%__kont145338145339%_))))
                        (_%__kont145338145339%_))))
                (_%__kont145338145339%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145338145339%_))
                                                (_%__kont145338145339%_))))
                                        (_%__kont145338145339%_))))
                                (_%__kont145338145339%_))))
                        (_%__kont145338145339%_))))
                (_%__kont145338145339%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont145338145339%_))
                                            (_%__kont145338145339%_))
                                        (_%__kont145338145339%_))))
                                (_%__kont145338145339%_)))))))))
          (let* ((_%g139233139256%_
                  (lambda (_%g139234139253%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139234139253%_))))
                 (_%g139232139517%_
                  (lambda (_%g139234139259%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139234139259%_))
                        (let ((_%e139237139261%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139234139259%_))))
                          (let ((_%hd139238139264%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139237139261%_)))
                                (_%tl139239139266%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139237139261%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139239139266%_))
                                (let ((_%e139240139269%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139239139266%_))))
                                  (let ((_%hd139241139272%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139240139269%_)))
                                        (_%tl139242139274%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139240139269%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl139242139274%_))
                                        (let ((_g146007_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl139242139274%_
                                                  '0))))
                                          (begin
                                            (let ((_g146008_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g146007_)
                                                         (##vector-length
                                                          _g146007_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g146008_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g146008_)))
                                            (let ((_%target139243139277%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g146007_
                                                      0)))
                                                  (_%tl139245139279%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g146007_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl139245139279%_))
                                                  (letrec ((_%loop139246139282%_
                                                            (lambda (_%hd139244139285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand139250139287%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd139244139285%_))
                          (let ((_%e139247139290%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd139244139285%_))))
                            (let ((_%lp-hd139248139293%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139247139290%_)))
                                  (_%lp-tl139249139295%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139247139290%_))))
                              (_%loop139246139282%_
                               _%lp-tl139249139295%_
                               (cons _%lp-hd139248139293%_
                                     _%rand139250139287%_))))
                          (let ((_%rand139251139298%_
                                 (reverse _%rand139250139287%_)))
                            ((lambda (_%L139301%_ _%L139302%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call139231%_
                                    _%L139302%_
                                    (let ((__tmp146009
                                           (lambda (_%g139319139322%_
                                                    _%g139320139324%_)
                                             (cons _%g139319139322%_
                                                   _%g139320139324%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp146009 '() _%L139301%_)))
                                   (let* ((_%__stx145446145447%_ _%L139302%_)
                                          (_%g139328139340%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx145446145447%_)))))
                                     (let ((_%__kont145448145449%_
                                            (lambda ()
                                              (let ((_%f139377%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self139228%_
                                                        _%L139302%_))))
                                                (if (and (let ((__tmp146010
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f139377%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp146010))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f139377%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp139379%_ ((_%rest139382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp146012
                                                (lambda (_%g139499139502%_
                                                         _%g139500139504%_)
                                                  (cons _%g139499139502%_
                                                        _%g139500139504%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp146012
                                            '()
                                            _%L139301%_))))
                               (_%bind139384%_ '())
                               (_%args139385%_ '()))
              (let* ((_%rest139386139394%_ _%rest139382%_)
                     (_%else139388139402%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind139384%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f139377%_
                                                      _%args139385%_)
                                                '()))))))
                     (_%K139390139488%_
                      (lambda (_%rest139405%_ _%e139406%_)
                        (let* ((_%__stx145400145401%_ _%e139406%_)
                               (_%g139411139429%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx145400145401%_)))))
                          (let ((_%__kont145402145403%_
                                 (lambda ()
                                   (_%lp139379%_
                                    _%rest139405%_
                                    _%bind139384%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e139406%_))
                                          _%args139385%_))))
                                (_%__kont145404145405%_
                                 (lambda ()
                                   (_%lp139379%_
                                    _%rest139405%_
                                    _%bind139384%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e139406%_))
                                          _%args139385%_))))
                                (_%__kont145406145407%_
                                 (lambda ()
                                   (let ((_%tmp139436%_
                                          (let ((__tmp146011
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp146011))))
                                     (_%lp139379%_
                                      _%rest139405%_
                                      (cons (cons _%tmp139436%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e139406%_))
                                                        '()))
                                            _%bind139384%_)
                                      (cons _%tmp139436%_ _%args139385%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx145400145401%_))
                                (let ((_%e139413139467%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx145400145401%_))))
                                  (let ((_%tl139415139472%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139413139467%_)))
                                        (_%hd139414139470%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139413139467%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd139414139470%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd139414139470%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139415139472%_))
                                                (let ((_%e139416139475%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139415139472%_))))
                                                  (let ((_%tl139418139480%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139416139475%_)))
                                                        (_%hd139417139478%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139416139475%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139418139480%_))
                                                        (_%__kont145402145403%_)
                                                        (_%__kont145406145407%_))))
                                                (_%__kont145406145407%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd139414139470%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139415139472%_))
                                                    (let ((_%e139422139452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139415139472%_))))
                                                      (let ((_%tl139424139457%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139422139452%_)))
                    (_%hd139423139455%_
                     (let () (declare (not safe)) (##car _%e139422139452%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139424139457%_))
                    (_%__kont145404145405%_)
                    (_%__kont145406145407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145406145407%_))
                                                (_%__kont145406145407%_)))
                                        (_%__kont145406145407%_))))
                                (_%__kont145406145407%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139386139394%_))
                    (let ((_%hd139391139491%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139386139394%_)))
                          (_%tl139392139493%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139386139394%_))))
                      (let* ((_%e139496%_ _%hd139391139491%_)
                             (_%rest139498%_ _%tl139392139493%_))
                        (_%K139390139488%_ _%rest139498%_ _%e139496%_)))
                    (_%else139388139402%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call139231%_
                                                     _%L139302%_
                                                     (let ((__tmp146013
                                                            (lambda (_%g139506139509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g139507139511%_)
                      (cons _%g139506139509%_ _%g139507139511%_))))
               (declare (not safe))
               (__foldr1 __tmp146013 '() _%L139301%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont145450145451%_
                                            (lambda ()
                                              (_%compile-call139231%_
                                               _%L139302%_
                                               (let ((__tmp146014
                                                      (lambda (_%g139346139349%_
                                                               _%g139347139351%_)
                                                        (cons _%g139346139349%_
                                                              _%g139347139351%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp146014
                                                  '()
                                                  _%L139301%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx145446145447%_))
                                           (let ((_%e139330139359%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx145446145447%_))))
                                             (let ((_%tl139332139364%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e139330139359%_)))
                                                   (_%hd139331139362%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e139330139359%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd139331139362%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd139331139362%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl139332139364%_))
                                                           (let ((_%e139333139367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl139332139364%_))))
                     (let ((_%tl139335139372%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e139333139367%_)))
                           (_%hd139334139370%_
                            (let ()
                              (declare (not safe))
                              (##car _%e139333139367%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl139335139372%_))
                           (_%__kont145448145449%_)
                           (_%__kont145450145451%_))))
                   (_%__kont145450145451%_))
               (_%__kont145450145451%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont145450145451%_))))
                                           (_%__kont145450145451%_))))))
                             _%rand139251139298%_
                             _%hd139241139272%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop139246139282%_
                                                     _%target139243139277%_
                                                     '()))
                                                  (_%g139233139256%_
                                                   _%g139234139259%_)))))
                                        (_%g139233139256%_
                                         _%g139234139259%_))))
                                (_%g139233139256%_ _%g139234139259%_))))
                        (_%g139233139256%_ _%g139234139259%_)))))
            (_%g139232139517%_ _%stx139229%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self138971%_ _%stx138972%_)
        (let* ((_%__stx145518145519%_ _%stx138972%_)
               (_%g138975139004%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145518145519%_)))))
          (let ((_%__kont145520145521%_
                 (lambda (_%L139072%_ _%L139073%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self138971%_
                        _%stx138972%_)
                       (let ((_%f139095%_
                              (let ((__tmp146015
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L139073%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self138971%_
                                 __tmp146015))))
                         (let _%lp139097%_ ((_%rest139100%_
                                             (reverse (let ((__tmp146017
                                                             (lambda (_%g139217139220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g139218139222%_)
                       (cons _%g139217139220%_ _%g139218139222%_))))
                (declare (not safe))
                (__foldr1 __tmp146017 '() _%L139072%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind139102%_ '())
                                            (_%args139103%_ '()))
                           (let* ((_%rest139104139112%_ _%rest139100%_)
                                  (_%else139106139120%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind139102%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f139095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args139103%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K139108139206%_
                                   (lambda (_%rest139123%_ _%e139124%_)
                                     (let* ((_%__stx145472145473%_ _%e139124%_)
                                            (_%g139129139147%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx145472145473%_)))))
                                       (let ((_%__kont145474145475%_
                                              (lambda ()
                                                (_%lp139097%_
                                                 _%rest139123%_
                                                 _%bind139102%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e139124%_))
                                                       _%args139103%_))))
                                             (_%__kont145476145477%_
                                              (lambda ()
                                                (_%lp139097%_
                                                 _%rest139123%_
                                                 _%bind139102%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e139124%_))
                                                       _%args139103%_))))
                                             (_%__kont145478145479%_
                                              (lambda ()
                                                (let ((_%tmp139154%_
                                                       (let ((__tmp146016
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp146016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp139097%_
                                                   _%rest139123%_
                                                   (cons (cons _%tmp139154%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e139124%_))
                             '()))
                 _%bind139102%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp139154%_
                                                         _%args139103%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx145472145473%_))
                                             (let ((_%e139131139185%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx145472145473%_))))
                                               (let ((_%tl139133139190%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e139131139185%_)))
                                                     (_%hd139132139188%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e139131139185%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd139132139188%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd139132139188%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl139133139190%_))
                     (let ((_%e139134139193%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139133139190%_))))
                       (let ((_%tl139136139198%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139134139193%_)))
                             (_%hd139135139196%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139134139193%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139136139198%_))
                             (_%__kont145474145475%_)
                             (_%__kont145478145479%_))))
                     (_%__kont145478145479%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd139132139188%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl139133139190%_))
                         (let ((_%e139140139170%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl139133139190%_))))
                           (let ((_%tl139142139175%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e139140139170%_)))
                                 (_%hd139141139173%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e139140139170%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl139142139175%_))
                                 (_%__kont145476145477%_)
                                 (_%__kont145478145479%_))))
                         (_%__kont145478145479%_))
                     (_%__kont145478145479%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145478145479%_))))
                                             (_%__kont145478145479%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest139104139112%_))
                                 (let ((_%hd139109139209%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest139104139112%_)))
                                       (_%tl139110139211%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest139104139112%_))))
                                   (let* ((_%e139214%_ _%hd139109139209%_)
                                          (_%rest139216%_ _%tl139110139211%_))
                                     (_%K139108139206%_
                                      _%rest139216%_
                                      _%e139214%_)))
                                 (_%else139106139120%_))))))))
                (_%__kont145524145525%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self138971%_ _%stx138972%_))))
            (let ((_%__match145563145564%_
                   (lambda (_%e138979139016%_
                            _%hd138980139019%_
                            _%tl138981139021%_
                            _%e138982139024%_
                            _%hd138983139027%_
                            _%tl138984139029%_
                            _%e138985139032%_
                            _%hd138986139035%_
                            _%tl138987139037%_
                            _%e138988139040%_
                            _%hd138989139043%_
                            _%tl138990139045%_
                            _%__splice145522145523%_
                            _%target138991139048%_
                            _%tl138993139050%_)
                     (letrec ((_%loop138994139053%_
                               (lambda (_%hd138992139056%_
                                        _%rand138998139058%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138992139056%_))
                                     (let ((_%e138995139061%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138992139056%_))))
                                       (let ((_%lp-tl138997139066%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138995139061%_)))
                                             (_%lp-hd138996139064%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138995139061%_))))
                                         (_%loop138994139053%_
                                          _%lp-tl138997139066%_
                                          (cons _%lp-hd138996139064%_
                                                _%rand138998139058%_))))
                                     (let ((_%rand138999139069%_
                                            (reverse _%rand138998139058%_)))
                                       (_%__kont145520145521%_
                                        _%rand138999139069%_
                                        _%hd138989139043%_))))))
                       (_%loop138994139053%_ _%target138991139048%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145518145519%_))
                  (let ((_%e138979139016%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145518145519%_))))
                    (let ((_%tl138981139021%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138979139016%_)))
                          (_%hd138980139019%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138979139016%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138981139021%_))
                          (let ((_%e138982139024%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138981139021%_))))
                            (let ((_%tl138984139029%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138982139024%_)))
                                  (_%hd138983139027%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138982139024%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138983139027%_))
                                  (let ((_%e138985139032%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138983139027%_))))
                                    (let ((_%tl138987139037%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138985139032%_)))
                                          (_%hd138986139035%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138985139032%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138986139035%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138986139035%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138987139037%_))
                                                  (let ((_%e138988139040%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138987139037%_))))
                                                    (let ((_%tl138990139045%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138988139040%_)))
                                                          (_%hd138989139043%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138988139040%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138990139045%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138984139029%_))
                      (let ((_%__splice145522145523%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138984139029%_
                                '0))))
                        (let ((_%tl138993139050%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145522145523%_ '1)))
                              (_%target138991139048%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145522145523%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138993139050%_))
                              (_%__match145563145564%_
                               _%e138979139016%_
                               _%hd138980139019%_
                               _%tl138981139021%_
                               _%e138982139024%_
                               _%hd138983139027%_
                               _%tl138984139029%_
                               _%e138985139032%_
                               _%hd138986139035%_
                               _%tl138987139037%_
                               _%e138988139040%_
                               _%hd138989139043%_
                               _%tl138990139045%_
                               _%__splice145522145523%_
                               _%target138991139048%_
                               _%tl138993139050%_)
                              (_%__kont145524145525%_))))
                      (_%__kont145524145525%_))
                  (_%__kont145524145525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145524145525%_))
                                              (_%__kont145524145525%_))
                                          (_%__kont145524145525%_))))
                                  (_%__kont145524145525%_))))
                          (_%__kont145524145525%_))))
                  (_%__kont145524145525%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self138783%_ _%stx138784%_)
        (letrec ((_%simplify138786%_
                  (lambda (_%code138871%_)
                    (let* ((_%code138872138890%_ _%code138871%_)
                           (_%else138874138898%_ (lambda () _%code138871%_))
                           (_%K138876138934%_
                            (lambda (_%expr138901%_ _%test138902%_)
                              (let* ((_%expr138903138911%_ _%expr138901%_)
                                     (_%else138905138919%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test138902%_
                                                    (cons _%expr138901%_
                                                          '())))))
                                     (_%K138907138924%_
                                      (lambda (_%exprs138922%_)
                                        (cons 'and
                                              (cons _%test138902%_
                                                    _%exprs138922%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr138903138911%_))
                                    (let ((_%hd138908138927%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr138903138911%_)))
                                          (_%tl138909138929%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr138903138911%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd138908138927%_ 'and))
                                          (let ((_%exprs138932%_
                                                 _%tl138909138929%_))
                                            (_%K138907138924%_
                                             _%exprs138932%_))
                                          (_%else138905138919%_)))
                                    (_%else138905138919%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code138872138890%_))
                          (let ((_%hd138877138937%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code138872138890%_)))
                                (_%tl138878138939%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code138872138890%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd138877138937%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl138878138939%_))
                                    (let ((_%hd138879138942%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl138878138939%_)))
                                          (_%tl138880138944%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl138878138939%_))))
                                      (let ((_%test138947%_
                                             _%hd138879138942%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl138880138944%_))
                                            (let ((_%hd138881138949%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl138880138944%_)))
                                                  (_%tl138882138951%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl138880138944%_))))
                                              (let ((_%expr138954%_
                                                     _%hd138881138949%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl138882138951%_))
                                                    (let ((_%hd138883138956%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl138882138951%_)))
                                                          (_%tl138884138958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl138882138951%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd138883138956%_))
                                                          (let ((_%hd138885138961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd138883138956%_)))
                        (_%tl138886138963%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd138883138956%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd138885138961%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl138886138963%_))
                            (let ((_%hd138887138966%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl138886138963%_)))
                                  (_%tl138888138968%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl138886138963%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd138887138966%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl138888138968%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl138884138958%_))
                                          (_%K138876138934%_
                                           _%expr138954%_
                                           _%test138947%_)
                                          (_%else138874138898%_))
                                      (_%else138874138898%_))
                                  (_%else138874138898%_)))
                            (_%else138874138898%_))
                        (_%else138874138898%_)))
                  (_%else138874138898%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else138874138898%_))))
                                            (_%else138874138898%_))))
                                    (_%else138874138898%_))
                                (_%else138874138898%_)))
                          (_%else138874138898%_))))))
          (let* ((_%g138788138809%_
                  (lambda (_%g138789138806%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138789138806%_))))
                 (_%g138787138868%_
                  (lambda (_%g138789138812%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138789138812%_))
                        (let ((_%e138793138814%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138789138812%_))))
                          (let ((_%hd138794138817%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138793138814%_)))
                                (_%tl138795138819%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138793138814%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138795138819%_))
                                (let ((_%e138796138822%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138795138819%_))))
                                  (let ((_%hd138797138825%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138796138822%_)))
                                        (_%tl138798138827%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138796138822%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl138798138827%_))
                                        (let ((_%e138799138830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl138798138827%_))))
                                          (let ((_%hd138800138833%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138799138830%_)))
                                                (_%tl138801138835%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138799138830%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138801138835%_))
                                                (let ((_%e138802138838%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138801138835%_))))
                                                  (let ((_%hd138803138841%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138802138838%_)))
                                                        (_%tl138804138843%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138802138838%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138804138843%_))
                                                        ((lambda (_%L138846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L138847%_
                          _%L138848%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify138786%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self138783%_
                                       _%L138848%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self138783%_
                                             _%L138847%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self138783%_
                                                   _%L138846%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp146018
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self138783%_
                                               _%L138848%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp146018
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138783%_
                                            _%L138847%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self138783%_
                                                  _%L138846%_))
                                               '()))))))
                 _%hd138803138841%_
                 _%hd138800138833%_
                 _%hd138797138825%_)
                (_%g138788138809%_ _%g138789138812%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g138788138809%_
                                                 _%g138789138812%_))))
                                        (_%g138788138809%_
                                         _%g138789138812%_))))
                                (_%g138788138809%_ _%g138789138812%_))))
                        (_%g138788138809%_ _%g138789138812%_)))))
            (_%g138787138868%_ _%stx138784%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self138731%_ _%stx138732%_)
        (let* ((_%g138734138747%_
                (lambda (_%g138735138744%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138735138744%_))))
               (_%g138733138780%_
                (lambda (_%g138735138750%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138735138750%_))
                      (let ((_%e138737138752%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138735138750%_))))
                        (let ((_%hd138738138755%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138737138752%_)))
                              (_%tl138739138757%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138737138752%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138739138757%_))
                              (let ((_%e138740138760%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138739138757%_))))
                                (let ((_%hd138741138763%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138740138760%_)))
                                      (_%tl138742138765%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138740138760%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138742138765%_))
                                      ((lambda (_%L138768%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L138768%_)))
                                       _%hd138741138763%_)
                                      (_%g138734138747%_ _%g138735138750%_))))
                              (_%g138734138747%_ _%g138735138750%_))))
                      (_%g138734138747%_ _%g138735138750%_)))))
          (_%g138733138780%_ _%stx138732%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self138663%_ _%stx138664%_)
        (let* ((_%g138666138683%_
                (lambda (_%g138667138680%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138667138680%_))))
               (_%g138665138728%_
                (lambda (_%g138667138686%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138667138686%_))
                      (let ((_%e138670138688%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138667138686%_))))
                        (let ((_%hd138671138691%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138670138688%_)))
                              (_%tl138672138693%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138670138688%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138672138693%_))
                              (let ((_%e138673138696%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138672138693%_))))
                                (let ((_%hd138674138699%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138673138696%_)))
                                      (_%tl138675138701%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138673138696%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138675138701%_))
                                      (let ((_%e138676138704%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138675138701%_))))
                                        (let ((_%hd138677138707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138676138704%_)))
                                              (_%tl138678138709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138676138704%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138678138709%_))
                                              ((lambda (_%L138712%_
                                                        _%L138713%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L138713%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self138663%_ _%L138712%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138677138707%_
                                               _%hd138674138699%_)
                                              (_%g138666138683%_
                                               _%g138667138686%_))))
                                      (_%g138666138683%_ _%g138667138686%_))))
                              (_%g138666138683%_ _%g138667138686%_))))
                      (_%g138666138683%_ _%g138667138686%_)))))
          (_%g138665138728%_ _%stx138664%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self138474%_ _%stx138475%_)
        (let* ((_%g138477138494%_
                (lambda (_%g138478138491%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138478138491%_))))
               (_%g138476138660%_
                (lambda (_%g138478138497%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138478138497%_))
                      (let ((_%e138481138499%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138478138497%_))))
                        (let ((_%hd138482138502%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138481138499%_)))
                              (_%tl138483138504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138481138499%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138483138504%_))
                              (let ((_%e138484138507%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138483138504%_))))
                                (let ((_%hd138485138510%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138484138507%_)))
                                      (_%tl138486138512%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138484138507%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138486138512%_))
                                      (let ((_%e138487138515%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138486138512%_))))
                                        (let ((_%hd138488138518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138487138515%_)))
                                              (_%tl138489138520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138487138515%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138489138520%_))
                                              ((lambda (_%L138523%_
                                                        _%L138524%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self138474%_ _%L138523%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self138474%_ _%L138524%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp138539%_ ((_%rest138542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L138524%_ (cons _%L138523%_ '())))
                                (_%bind138544%_ '())
                                (_%args138545%_ '()))
               (let* ((_%rest138546138554%_ _%rest138542%_)
                      (_%else138548138562%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind138544%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args138545%_)
                                                 '()))))))
                      (_%K138550138648%_
                       (lambda (_%rest138565%_ _%e138566%_)
                         (let* ((_%__stx145566145567%_ _%e138566%_)
                                (_%g138571138589%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx145566145567%_)))))
                           (let ((_%__kont145568145569%_
                                  (lambda ()
                                    (_%lp138539%_
                                     _%rest138565%_
                                     _%bind138544%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e138566%_))
                                           _%args138545%_))))
                                 (_%__kont145570145571%_
                                  (lambda ()
                                    (_%lp138539%_
                                     _%rest138565%_
                                     _%bind138544%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e138566%_))
                                           _%args138545%_))))
                                 (_%__kont145572145573%_
                                  (lambda ()
                                    (let ((_%tmp138596%_
                                           (let ((__tmp146019
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp146019))))
                                      (_%lp138539%_
                                       _%rest138565%_
                                       (cons (cons _%tmp138596%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e138566%_))
                                                         '()))
                                             _%bind138544%_)
                                       (cons _%tmp138596%_ _%args138545%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx145566145567%_))
                                 (let ((_%e138573138627%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx145566145567%_))))
                                   (let ((_%tl138575138632%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e138573138627%_)))
                                         (_%hd138574138630%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e138573138627%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd138574138630%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd138574138630%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl138575138632%_))
                                                 (let ((_%e138576138635%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl138575138632%_))))
                                                   (let ((_%tl138578138640%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138576138635%_)))
                                                         (_%hd138577138638%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138576138635%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl138578138640%_))
                                                         (_%__kont145568145569%_)
                                                         (_%__kont145572145573%_))))
                                                 (_%__kont145572145573%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd138574138630%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl138575138632%_))
                                                     (let ((_%e138582138612%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl138575138632%_))))
                                                       (let ((_%tl138584138617%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e138582138612%_)))
                     (_%hd138583138615%_
                      (let () (declare (not safe)) (##car _%e138582138612%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl138584138617%_))
                     (_%__kont145570145571%_)
                     (_%__kont145572145573%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145572145573%_))
                                                 (_%__kont145572145573%_)))
                                         (_%__kont145572145573%_))))
                                 (_%__kont145572145573%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest138546138554%_))
                     (let ((_%hd138551138651%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest138546138554%_)))
                           (_%tl138552138653%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest138546138554%_))))
                       (let* ((_%e138656%_ _%hd138551138651%_)
                              (_%rest138658%_ _%tl138552138653%_))
                         (_%K138550138648%_ _%rest138658%_ _%e138656%_)))
                     (_%else138548138562%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138488138518%_
                                               _%hd138485138510%_)
                                              (_%g138477138494%_
                                               _%g138478138497%_))))
                                      (_%g138477138494%_ _%g138478138497%_))))
                              (_%g138477138494%_ _%g138478138497%_))))
                      (_%g138477138494%_ _%g138478138497%_)))))
          (_%g138476138660%_ _%stx138475%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self138285%_ _%stx138286%_)
        (let* ((_%g138288138305%_
                (lambda (_%g138289138302%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138289138302%_))))
               (_%g138287138471%_
                (lambda (_%g138289138308%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138289138308%_))
                      (let ((_%e138292138310%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138289138308%_))))
                        (let ((_%hd138293138313%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138292138310%_)))
                              (_%tl138294138315%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138292138310%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138294138315%_))
                              (let ((_%e138295138318%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138294138315%_))))
                                (let ((_%hd138296138321%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138295138318%_)))
                                      (_%tl138297138323%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138295138318%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138297138323%_))
                                      (let ((_%e138298138326%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138297138323%_))))
                                        (let ((_%hd138299138329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138298138326%_)))
                                              (_%tl138300138331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138298138326%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138300138331%_))
                                              ((lambda (_%L138334%_
                                                        _%L138335%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self138285%_ _%L138334%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self138285%_ _%L138335%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp138350%_ ((_%rest138353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L138335%_ (cons _%L138334%_ '())))
                                (_%bind138355%_ '())
                                (_%args138356%_ '()))
               (let* ((_%rest138357138365%_ _%rest138353%_)
                      (_%else138359138373%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind138355%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args138356%_)
                                                 '()))))))
                      (_%K138361138459%_
                       (lambda (_%rest138376%_ _%e138377%_)
                         (let* ((_%__stx145612145613%_ _%e138377%_)
                                (_%g138382138400%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx145612145613%_)))))
                           (let ((_%__kont145614145615%_
                                  (lambda ()
                                    (_%lp138350%_
                                     _%rest138376%_
                                     _%bind138355%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e138377%_))
                                           _%args138356%_))))
                                 (_%__kont145616145617%_
                                  (lambda ()
                                    (_%lp138350%_
                                     _%rest138376%_
                                     _%bind138355%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e138377%_))
                                           _%args138356%_))))
                                 (_%__kont145618145619%_
                                  (lambda ()
                                    (let ((_%tmp138407%_
                                           (let ((__tmp146020
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp146020))))
                                      (_%lp138350%_
                                       _%rest138376%_
                                       (cons (cons _%tmp138407%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e138377%_))
                                                         '()))
                                             _%bind138355%_)
                                       (cons _%tmp138407%_ _%args138356%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx145612145613%_))
                                 (let ((_%e138384138438%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx145612145613%_))))
                                   (let ((_%tl138386138443%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e138384138438%_)))
                                         (_%hd138385138441%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e138384138438%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd138385138441%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd138385138441%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl138386138443%_))
                                                 (let ((_%e138387138446%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl138386138443%_))))
                                                   (let ((_%tl138389138451%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138387138446%_)))
                                                         (_%hd138388138449%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138387138446%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl138389138451%_))
                                                         (_%__kont145614145615%_)
                                                         (_%__kont145618145619%_))))
                                                 (_%__kont145618145619%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd138385138441%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl138386138443%_))
                                                     (let ((_%e138393138423%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl138386138443%_))))
                                                       (let ((_%tl138395138428%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e138393138423%_)))
                     (_%hd138394138426%_
                      (let () (declare (not safe)) (##car _%e138393138423%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl138395138428%_))
                     (_%__kont145616145617%_)
                     (_%__kont145618145619%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145618145619%_))
                                                 (_%__kont145618145619%_)))
                                         (_%__kont145618145619%_))))
                                 (_%__kont145618145619%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest138357138365%_))
                     (let ((_%hd138362138462%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest138357138365%_)))
                           (_%tl138363138464%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest138357138365%_))))
                       (let* ((_%e138467%_ _%hd138362138462%_)
                              (_%rest138469%_ _%tl138363138464%_))
                         (_%K138361138459%_ _%rest138469%_ _%e138467%_)))
                     (_%else138359138373%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138299138329%_
                                               _%hd138296138321%_)
                                              (_%g138288138305%_
                                               _%g138289138308%_))))
                                      (_%g138288138305%_ _%g138289138308%_))))
                              (_%g138288138305%_ _%g138289138308%_))))
                      (_%g138288138305%_ _%g138289138308%_)))))
          (_%g138287138471%_ _%stx138286%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self138201%_ _%stx138202%_)
        (let* ((_%g138204138225%_
                (lambda (_%g138205138222%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138205138222%_))))
               (_%g138203138282%_
                (lambda (_%g138205138228%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138205138228%_))
                      (let ((_%e138209138230%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138205138228%_))))
                        (let ((_%hd138210138233%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138209138230%_)))
                              (_%tl138211138235%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138209138230%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138211138235%_))
                              (let ((_%e138212138238%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138211138235%_))))
                                (let ((_%hd138213138241%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138212138238%_)))
                                      (_%tl138214138243%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138212138238%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138214138243%_))
                                      (let ((_%e138215138246%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138214138243%_))))
                                        (let ((_%hd138216138249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138215138246%_)))
                                              (_%tl138217138251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138215138246%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138217138251%_))
                                              (let ((_%e138218138254%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138217138251%_))))
                                                (let ((_%hd138219138257%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138218138254%_)))
                                                      (_%tl138220138259%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138218138254%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl138220138259%_))
                                                      ((lambda (_%L138262%_
                                                                _%L138263%_
                                                                _%L138264%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self138201%_ _%L138262%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self138201%_
                                      _%L138263%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138201%_
                                            _%L138264%_))
                                         (cons ''#f '()))))))
               _%hd138219138257%_
               _%hd138216138249%_
               _%hd138213138241%_)
              (_%g138204138225%_ _%g138205138228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138204138225%_
                                               _%g138205138228%_))))
                                      (_%g138204138225%_ _%g138205138228%_))))
                              (_%g138204138225%_ _%g138205138228%_))))
                      (_%g138204138225%_ _%g138205138228%_)))))
          (_%g138203138282%_ _%stx138202%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self138101%_ _%stx138102%_)
        (let* ((_%g138104138129%_
                (lambda (_%g138105138126%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138105138126%_))))
               (_%g138103138198%_
                (lambda (_%g138105138132%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138105138132%_))
                      (let ((_%e138110138134%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138105138132%_))))
                        (let ((_%hd138111138137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138110138134%_)))
                              (_%tl138112138139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138110138134%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138112138139%_))
                              (let ((_%e138113138142%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138112138139%_))))
                                (let ((_%hd138114138145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138113138142%_)))
                                      (_%tl138115138147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138113138142%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138115138147%_))
                                      (let ((_%e138116138150%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138115138147%_))))
                                        (let ((_%hd138117138153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138116138150%_)))
                                              (_%tl138118138155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138116138150%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138118138155%_))
                                              (let ((_%e138119138158%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138118138155%_))))
                                                (let ((_%hd138120138161%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138119138158%_)))
                                                      (_%tl138121138163%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138119138158%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl138121138163%_))
                                                      (let ((_%e138122138166%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl138121138163%_))))
                (let ((_%hd138123138169%_
                       (let () (declare (not safe)) (##car _%e138122138166%_)))
                      (_%tl138124138171%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e138122138166%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl138124138171%_))
                      ((lambda (_%L138174%_
                                _%L138175%_
                                _%L138176%_
                                _%L138177%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self138101%_
                                        _%L138175%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self138101%_
                                              _%L138174%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self138101%_
                                                    _%L138176%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self138101%_
                                                          _%L138177%_))
                                                       (cons ''#f '())))))))
                       _%hd138123138169%_
                       _%hd138120138161%_
                       _%hd138117138153%_
                       _%hd138114138145%_)
                      (_%g138104138129%_ _%g138105138132%_))))
              (_%g138104138129%_ _%g138105138132%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138104138129%_
                                               _%g138105138132%_))))
                                      (_%g138104138129%_ _%g138105138132%_))))
                              (_%g138104138129%_ _%g138105138132%_))))
                      (_%g138104138129%_ _%g138105138132%_)))))
          (_%g138103138198%_ _%stx138102%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self138017%_ _%stx138018%_)
        (let* ((_%g138020138041%_
                (lambda (_%g138021138038%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138021138038%_))))
               (_%g138019138098%_
                (lambda (_%g138021138044%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138021138044%_))
                      (let ((_%e138025138046%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138021138044%_))))
                        (let ((_%hd138026138049%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138025138046%_)))
                              (_%tl138027138051%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138025138046%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138027138051%_))
                              (let ((_%e138028138054%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138027138051%_))))
                                (let ((_%hd138029138057%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138028138054%_)))
                                      (_%tl138030138059%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138028138054%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138030138059%_))
                                      (let ((_%e138031138062%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138030138059%_))))
                                        (let ((_%hd138032138065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138031138062%_)))
                                              (_%tl138033138067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138031138062%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138033138067%_))
                                              (let ((_%e138034138070%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138033138067%_))))
                                                (let ((_%hd138035138073%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138034138070%_)))
                                                      (_%tl138036138075%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138034138070%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl138036138075%_))
                                                      ((lambda (_%L138078%_
                                                                _%L138079%_
                                                                _%L138080%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self138017%_ _%L138078%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self138017%_
                                      _%L138079%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138017%_
                                            _%L138080%_))
                                         (cons ''#f '()))))))
               _%hd138035138073%_
               _%hd138032138065%_
               _%hd138029138057%_)
              (_%g138020138041%_ _%g138021138044%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138020138041%_
                                               _%g138021138044%_))))
                                      (_%g138020138041%_ _%g138021138044%_))))
                              (_%g138020138041%_ _%g138021138044%_))))
                      (_%g138020138041%_ _%g138021138044%_)))))
          (_%g138019138098%_ _%stx138018%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self137917%_ _%stx137918%_)
        (let* ((_%g137920137945%_
                (lambda (_%g137921137942%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137921137942%_))))
               (_%g137919138014%_
                (lambda (_%g137921137948%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137921137948%_))
                      (let ((_%e137926137950%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137921137948%_))))
                        (let ((_%hd137927137953%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137926137950%_)))
                              (_%tl137928137955%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137926137950%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137928137955%_))
                              (let ((_%e137929137958%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137928137955%_))))
                                (let ((_%hd137930137961%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137929137958%_)))
                                      (_%tl137931137963%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137929137958%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137931137963%_))
                                      (let ((_%e137932137966%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137931137963%_))))
                                        (let ((_%hd137933137969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137932137966%_)))
                                              (_%tl137934137971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137932137966%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137934137971%_))
                                              (let ((_%e137935137974%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137934137971%_))))
                                                (let ((_%hd137936137977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137935137974%_)))
                                                      (_%tl137937137979%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137935137974%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137937137979%_))
                                                      (let ((_%e137938137982%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137937137979%_))))
                (let ((_%hd137939137985%_
                       (let () (declare (not safe)) (##car _%e137938137982%_)))
                      (_%tl137940137987%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137938137982%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137940137987%_))
                      ((lambda (_%L137990%_
                                _%L137991%_
                                _%L137992%_
                                _%L137993%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137917%_
                                        _%L137991%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137917%_
                                              _%L137990%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137917%_
                                                    _%L137992%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137917%_
                                                          _%L137993%_))
                                                       (cons ''#f '())))))))
                       _%hd137939137985%_
                       _%hd137936137977%_
                       _%hd137933137969%_
                       _%hd137930137961%_)
                      (_%g137920137945%_ _%g137921137948%_))))
              (_%g137920137945%_ _%g137921137948%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137920137945%_
                                               _%g137921137948%_))))
                                      (_%g137920137945%_ _%g137921137948%_))))
                              (_%g137920137945%_ _%g137921137948%_))))
                      (_%g137920137945%_ _%g137921137948%_)))))
          (_%g137919138014%_ _%stx137918%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self137712%_ _%stx137713%_)
        (let* ((_%g137715137736%_
                (lambda (_%g137716137733%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137716137733%_))))
               (_%g137714137914%_
                (lambda (_%g137716137739%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137716137739%_))
                      (let ((_%e137720137741%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137716137739%_))))
                        (let ((_%hd137721137744%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137720137741%_)))
                              (_%tl137722137746%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137720137741%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137722137746%_))
                              (let ((_%e137723137749%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137722137746%_))))
                                (let ((_%hd137724137752%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137723137749%_)))
                                      (_%tl137725137754%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137723137749%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137725137754%_))
                                      (let ((_%e137726137757%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137725137754%_))))
                                        (let ((_%hd137727137760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137726137757%_)))
                                              (_%tl137728137762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137726137757%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137728137762%_))
                                              (let ((_%e137729137765%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137728137762%_))))
                                                (let ((_%hd137730137768%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137729137765%_)))
                                                      (_%tl137731137770%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137729137765%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137731137770%_))
                                                      ((lambda (_%L137773%_
                                                                _%L137774%_
                                                                _%L137775%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self137712%_
                                    _%L137773%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self137712%_
                                          _%L137774%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp137793%_ ((_%rest137796%_
                                         (cons _%L137774%_
                                               (cons _%L137773%_ '())))
                                        (_%bind137798%_ '())
                                        (_%args137799%_ '()))
                       (let* ((_%rest137800137808%_ _%rest137796%_)
                              (_%else137802137816%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind137798%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp146021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp146021 _%args137799%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K137804137902%_
                               (lambda (_%rest137819%_ _%e137820%_)
                                 (let* ((_%__stx145658145659%_ _%e137820%_)
                                        (_%g137825137843%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx145658145659%_)))))
                                   (let ((_%__kont145660145661%_
                                          (lambda ()
                                            (_%lp137793%_
                                             _%rest137819%_
                                             _%bind137798%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e137820%_))
                                                   _%args137799%_))))
                                         (_%__kont145662145663%_
                                          (lambda ()
                                            (_%lp137793%_
                                             _%rest137819%_
                                             _%bind137798%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e137820%_))
                                                   _%args137799%_))))
                                         (_%__kont145664145665%_
                                          (lambda ()
                                            (let ((_%tmp137850%_
                                                   (let ((__tmp146022
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp146022))))
                                              (_%lp137793%_
                                               _%rest137819%_
                                               (cons (cons _%tmp137850%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e137820%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind137798%_)
                                               (cons _%tmp137850%_
                                                     _%args137799%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx145658145659%_))
                                         (let ((_%e137827137881%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx145658145659%_))))
                                           (let ((_%tl137829137886%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e137827137881%_)))
                                                 (_%hd137828137884%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e137827137881%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd137828137884%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd137828137884%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl137829137886%_))
                                                         (let ((_%e137830137889%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl137829137886%_))))
                   (let ((_%tl137832137894%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e137830137889%_)))
                         (_%hd137831137892%_
                          (let ()
                            (declare (not safe))
                            (##car _%e137830137889%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl137832137894%_))
                         (_%__kont145660145661%_)
                         (_%__kont145664145665%_))))
                 (_%__kont145664145665%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd137828137884%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl137829137886%_))
                     (let ((_%e137836137866%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl137829137886%_))))
                       (let ((_%tl137838137871%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e137836137866%_)))
                             (_%hd137837137869%_
                              (let ()
                                (declare (not safe))
                                (##car _%e137836137866%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl137838137871%_))
                             (_%__kont145662145663%_)
                             (_%__kont145664145665%_))))
                     (_%__kont145664145665%_))
                 (_%__kont145664145665%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145664145665%_))))
                                         (_%__kont145664145665%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest137800137808%_))
                             (let ((_%hd137805137905%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest137800137808%_)))
                                   (_%tl137806137907%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest137800137808%_))))
                               (let* ((_%e137910%_ _%hd137805137905%_)
                                      (_%rest137912%_ _%tl137806137907%_))
                                 (_%K137804137902%_
                                  _%rest137912%_
                                  _%e137910%_)))
                             (_%else137802137816%_))))))
               _%hd137730137768%_
               _%hd137727137760%_
               _%hd137724137752%_)
              (_%g137715137736%_ _%g137716137739%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137715137736%_
                                               _%g137716137739%_))))
                                      (_%g137715137736%_ _%g137716137739%_))))
                              (_%g137715137736%_ _%g137716137739%_))))
                      (_%g137715137736%_ _%g137716137739%_)))))
          (_%g137714137914%_ _%stx137713%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self137491%_ _%stx137492%_)
        (let* ((_%g137494137519%_
                (lambda (_%g137495137516%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137495137516%_))))
               (_%g137493137709%_
                (lambda (_%g137495137522%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137495137522%_))
                      (let ((_%e137500137524%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137495137522%_))))
                        (let ((_%hd137501137527%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137500137524%_)))
                              (_%tl137502137529%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137500137524%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137502137529%_))
                              (let ((_%e137503137532%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137502137529%_))))
                                (let ((_%hd137504137535%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137503137532%_)))
                                      (_%tl137505137537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137503137532%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137505137537%_))
                                      (let ((_%e137506137540%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137505137537%_))))
                                        (let ((_%hd137507137543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137506137540%_)))
                                              (_%tl137508137545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137506137540%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137508137545%_))
                                              (let ((_%e137509137548%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137508137545%_))))
                                                (let ((_%hd137510137551%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137509137548%_)))
                                                      (_%tl137511137553%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137509137548%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137511137553%_))
                                                      (let ((_%e137512137556%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137511137553%_))))
                (let ((_%hd137513137559%_
                       (let () (declare (not safe)) (##car _%e137512137556%_)))
                      (_%tl137514137561%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137512137556%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137514137561%_))
                      ((lambda (_%L137564%_
                                _%L137565%_
                                _%L137566%_
                                _%L137567%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137491%_
                                            _%L137565%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self137491%_
                                                  _%L137564%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self137491%_
                                                        _%L137566%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp137588%_ ((_%rest137591%_
                                                 (cons _%L137566%_
                                                       (cons _%L137564%_
                                                             (cons _%L137565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind137593%_ '())
                                                (_%args137594%_ '()))
                               (let* ((_%rest137595137603%_ _%rest137591%_)
                                      (_%else137597137611%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind137593%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp146023 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp146023 _%args137594%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K137599137697%_
                                       (lambda (_%rest137614%_ _%e137615%_)
                                         (let* ((_%__stx145704145705%_
                                                 _%e137615%_)
                                                (_%g137620137638%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx145704145705%_)))))
                                           (let ((_%__kont145706145707%_
                                                  (lambda ()
                                                    (_%lp137588%_
                                                     _%rest137614%_
                                                     _%bind137593%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e137615%_))
                                                           _%args137594%_))))
                                                 (_%__kont145708145709%_
                                                  (lambda ()
                                                    (_%lp137588%_
                                                     _%rest137614%_
                                                     _%bind137593%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e137615%_))
                                                           _%args137594%_))))
                                                 (_%__kont145710145711%_
                                                  (lambda ()
                                                    (let ((_%tmp137645%_
                                                           (let ((__tmp146024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp146024))))
              (_%lp137588%_
               _%rest137614%_
               (cons (cons _%tmp137645%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e137615%_))
                                 '()))
                     _%bind137593%_)
               (cons _%tmp137645%_ _%args137594%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx145704145705%_))
                                                 (let ((_%e137622137676%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx145704145705%_))))
                                                   (let ((_%tl137624137681%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137622137676%_)))
                                                         (_%hd137623137679%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137622137676%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd137623137679%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd137623137679%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl137624137681%_))
                         (let ((_%e137625137684%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl137624137681%_))))
                           (let ((_%tl137627137689%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e137625137684%_)))
                                 (_%hd137626137687%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e137625137684%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl137627137689%_))
                                 (_%__kont145706145707%_)
                                 (_%__kont145710145711%_))))
                         (_%__kont145710145711%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd137623137679%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl137624137681%_))
                             (let ((_%e137631137661%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl137624137681%_))))
                               (let ((_%tl137633137666%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e137631137661%_)))
                                     (_%hd137632137664%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e137631137661%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl137633137666%_))
                                     (_%__kont145708145709%_)
                                     (_%__kont145710145711%_))))
                             (_%__kont145710145711%_))
                         (_%__kont145710145711%_)))
                 (_%__kont145710145711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont145710145711%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest137595137603%_))
                                     (let ((_%hd137600137700%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest137595137603%_)))
                                           (_%tl137601137702%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest137595137603%_))))
                                       (let* ((_%e137705%_ _%hd137600137700%_)
                                              (_%rest137707%_
                                               _%tl137601137702%_))
                                         (_%K137599137697%_
                                          _%rest137707%_
                                          _%e137705%_)))
                                     (_%else137597137611%_))))))
                       _%hd137513137559%_
                       _%hd137510137551%_
                       _%hd137507137543%_
                       _%hd137504137535%_)
                      (_%g137494137519%_ _%g137495137522%_))))
              (_%g137494137519%_ _%g137495137522%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137494137519%_
                                               _%g137495137522%_))))
                                      (_%g137494137519%_ _%g137495137522%_))))
                              (_%g137494137519%_ _%g137495137522%_))))
                      (_%g137494137519%_ _%g137495137522%_)))))
          (_%g137493137709%_ _%stx137492%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self137330%_ _%stx137331%_)
        (letrec ((_%import-set-template137333%_
                  (lambda (_%in137436%_ _%phi137437%_)
                    (let ((_%iphi137439%_
                           (fx+ _%phi137437%_
                                (##direct-structure-ref
                                 _%in137436%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports137440%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in137436%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp137442%_ ((_%rest137444%_ _%imports137440%_)
                                         (_%r137445%_ '()))
                        (let* ((_%rest137446137454%_ _%rest137444%_)
                               (_%else137448137462%_ (lambda () _%r137445%_))
                               (_%K137450137479%_
                                (lambda (_%rest137465%_ _%in137466%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in137466%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi137439%_))
                                          (_%lp137442%_
                                           _%rest137465%_
                                           (cons _%in137466%_ _%r137445%_))
                                          (_%lp137442%_
                                           _%rest137465%_
                                           _%r137445%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in137466%_
                                             'gx#module-import::t))
                                          (let ((_%iphi137470%_
                                                 (fx+ _%phi137437%_
                                                      (##direct-structure-ref
                                                       _%in137466%_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi137470%_))
                                                (_%lp137442%_
                                                 _%rest137465%_
                                                 (cons (##direct-structure-ref
                                                        (##direct-structure-ref
                                                         _%in137466%_
                                                         '1
                                                         gx#module-import::t
                                                         '#f)
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r137445%_))
                                                (_%lp137442%_
                                                 _%rest137465%_
                                                 _%r137445%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in137466%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi137473%_
                                                     (fx+ _%iphi137439%_
                                                          (##direct-structure-ref
                                                           _%in137466%_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi137473%_))
                                                    (_%lp137442%_
                                                     _%rest137465%_
                                                     (cons (##direct-structure-ref
                                                            _%in137466%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f)
                                                           _%r137445%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi137473%_))
                                                        (_%lp137442%_
                                                         _%rest137465%_
                                                         (let ((__tmp146025
                                                                (_%import-set-template137333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in137466%_
                         _%iphi137439%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r137445%_ __tmp146025)))
                (_%lp137442%_ _%rest137465%_ _%r137445%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp137442%_
                                               _%rest137465%_
                                               _%r137445%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest137446137454%_))
                              (let ((_%hd137451137482%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest137446137454%_)))
                                    (_%tl137452137484%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest137446137454%_))))
                                (let* ((_%in137487%_ _%hd137451137482%_)
                                       (_%rest137489%_ _%tl137452137484%_))
                                  (_%K137450137479%_
                                   _%rest137489%_
                                   _%in137487%_)))
                              (_%else137448137462%_))))))))
          (let* ((_%g137335137345%_
                  (lambda (_%g137336137342%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137336137342%_))))
                 (_%g137334137433%_
                  (lambda (_%g137336137348%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137336137348%_))
                        (let ((_%e137338137350%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137336137348%_))))
                          (let ((_%hd137339137353%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137338137350%_)))
                                (_%tl137340137355%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137338137350%_))))
                            ((lambda (_%L137358%_)
                               (let ((_%ht137369%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp137371%_ ((_%rest137373%_
                                                     _%L137358%_)
                                                    (_%loads137374%_ '()))
                                   (letrec ((_%K137376%_
                                             (lambda (_%ctx137426%_
                                                      _%rest137427%_)
                                               (let ((_%id137429%_
                                                      (##structure-ref
                                                       _%ctx137426%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht137369%_
                                                        _%id137429%_))
                                                     (_%lp137371%_
                                                      _%rest137427%_
                                                      _%loads137374%_)
                                                     (let ((_%rt137431%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id137429%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht137369%_
                                                          _%id137429%_
                                                          _%rt137431%_))
                                                       (_%lp137371%_
                                                        _%rest137427%_
                                                        (cons _%rt137431%_
                                                              _%loads137374%_))))))))
                                     (let* ((_%rest137377137385%_
                                             _%rest137373%_)
                                            (_%else137379137397%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp146027
                                                            (lambda (_%g137392137394%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g137392137394%_)))
                   (__tmp146026 (reverse _%loads137374%_)))
               (declare (not safe))
               (##map __tmp146027 __tmp146026)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K137381137414%_
                                             (lambda (_%rest137400%_
                                                      _%in137401%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in137401%_
                                                      'gx#module-context::t))
                                                   (_%K137376%_
                                                    _%in137401%_
                                                    _%rest137400%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in137401%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in137401%_
                             '3
                             gx#module-import::t
                             '#f))
                   (_%K137376%_
                    (##direct-structure-ref
                     (##direct-structure-ref
                      _%in137401%_
                      '1
                      gx#module-import::t
                      '#f)
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest137400%_)
                   (_%lp137371%_ _%rest137400%_ _%loads137374%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in137401%_
                      'gx#import-set::t))
                   (let ((_%phi137406%_
                          (##direct-structure-ref
                           _%in137401%_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _%phi137406%_)
                         (_%K137376%_
                          (##direct-structure-ref
                           _%in137401%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%rest137400%_)
                         (if (fxpositive? _%phi137406%_)
                             (let ((_%deps137410%_
                                    (_%import-set-template137333%_
                                     _%in137401%_
                                     '0)))
                               (_%lp137371%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest137400%_
                                   _%deps137410%_))
                                _%loads137374%_))
                             (_%lp137371%_ _%rest137400%_ _%loads137374%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx137331%_
                      _%in137401%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest137377137385%_))
                                           (let ((_%hd137382137417%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest137377137385%_)))
                                                 (_%tl137383137419%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest137377137385%_))))
                                             (let* ((_%in137422%_
                                                     _%hd137382137417%_)
                                                    (_%rest137424%_
                                                     _%tl137383137419%_))
                                               (_%K137381137414%_
                                                _%rest137424%_
                                                _%in137422%_)))
                                           (_%else137379137397%_)))))))
                             _%tl137340137355%_)))
                        (_%g137335137345%_ _%g137336137348%_)))))
            (_%g137334137433%_ _%stx137331%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self137143%_ _%stx137144%_)
        (letrec ((_%add-lift!137146%_
                  (lambda (_%expr137328%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr137328%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote137147%_
                  (lambda (_%id137325%_ _%marks137326%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id137325%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks137326%_
                                                        '()))))))))
                 (_%generate-simple137148%_
                  (lambda (_%stxq137320%_)
                    (let ((_%gid137322%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid137323%_
                           (gxc#generate-runtime-identifier _%stxq137320%_)))
                      (_%add-lift!137146%_
                       (cons 'define
                             (cons _%gid137322%_
                                   (cons (_%generate-syntax-quote137147%_
                                          _%qid137323%_
                                          ''())
                                         '()))))
                      (let ((__tmp146028
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp146028 _%stxq137320%_ _%gid137322%_))
                      _%gid137322%_)))
                 (_%generate-serialized137149%_
                  (lambda (_%stxq137310%_ _%marks137311%_)
                    (let* ((_%mark-refs137313%_
                            (map _%generate-mark137150%_ _%marks137311%_))
                           (_%gid137315%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid137317%_
                            (gxc#generate-runtime-identifier _%stxq137310%_)))
                      (_%add-lift!137146%_
                       (cons 'define
                             (cons _%gid137315%_
                                   (cons (_%generate-syntax-quote137147%_
                                          _%qid137317%_
                                          (cons 'list _%mark-refs137313%_))
                                         '()))))
                      (let ((__tmp146029
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp146029 _%stxq137310%_ _%gid137315%_))
                      _%gid137315%_)))
                 (_%generate-mark137150%_
                  (lambda (_%mark137295%_)
                    (let ((_%$e137297%_
                           (let ((__tmp146030
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp146030 _%mark137295%_))))
                      (if _%$e137297%_
                          (values _%$e137297%_)
                          (let* ((_%gid137301%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr137303%_
                                  (_%serialize-mark137151%_ _%mark137295%_))
                                 (_%ctx137305%_
                                  (let ((__tmp146031
                                         (##structure-ref
                                          _%mark137295%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp146031)))
                                 (_%ctx-ref137307%_
                                  (if (eq? _%ctx137305%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref137152%_
                                                               _%ctx137305%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp146032
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp146032
                               _%mark137295%_
                               _%gid137301%_))
                            (_%add-lift!137146%_
                             (cons 'define
                                   (cons _%gid137301%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr137303%_ '()))
                   (cons _%ctx-ref137307%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid137301%_)))))
                 (_%serialize-mark137151%_
                  (lambda (_%mark137242%_)
                    (letrec ((_%quote-e137244%_
                              (lambda (_%sym137293%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym137293%_))
                                    _%sym137293%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym137293%_))))))
                      (let* ((_%mark137245137254%_ _%mark137242%_)
                             (_%E137247137258%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark137245137254%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K137248137270%_
                              (lambda (_%trace137261%_
                                       _%phi137262%_
                                       _%ctx137263%_
                                       _%subst137264%_)
                                (let ((_%subs137266%_
                                       (if _%subst137264%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst137264%_))
                                           '())))
                                  (cons _%phi137262%_
                                        (map (lambda (_%pair137268%_)
                                               (cons (_%quote-e137244%_
                                                      (car _%pair137268%_))
                                                     (_%quote-e137244%_
                                                      (cdr _%pair137268%_))))
                                             _%subs137266%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark137245137254%_
                               'gx#expander-mark::t))
                            (let* ((_%e137249137273%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137245137254%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst137276%_ _%e137249137273%_)
                                   (_%e137250137278%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137245137254%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx137281%_ _%e137250137278%_)
                                   (_%e137251137283%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137245137254%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi137286%_ _%e137251137283%_)
                                   (_%e137252137288%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137245137254%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace137291%_ _%e137252137288%_))
                              (_%K137248137270%_
                               _%trace137291%_
                               _%phi137286%_
                               _%ctx137281%_
                               _%subst137276%_))
                            (_%E137247137258%_))))))
                 (_%context-ref137152%_
                  (lambda (_%ctx137229%_)
                    (if (let ((__tmp146033
                               (##structure-ref
                                _%ctx137229%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp146033
                           'gx#module-context::t))
                        (let ((_%ctx-ref137231%_
                               (_%context-ref-nested137154%_ _%ctx137229%_))
                              (_%ctx-origin137232%_
                               (_%context-ref-origin137153%_ _%ctx137229%_))
                              (_%origin137233%_
                               (_%context-ref-origin137153%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin137233%_ _%ctx-origin137232%_)
                              (let ((_%ref137235%_
                                     (_%context-ref-nested137154%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp137237%_ ((_%ref137239%_
                                                    (cdr _%ref137235%_))
                                                   (_%ctx-ref137240%_
                                                    (cdr _%ctx-ref137231%_)))
                                  (if (and (pair? _%ref137239%_)
                                           (eq? (car _%ref137239%_)
                                                (car _%ctx-ref137240%_)))
                                      (_%lp137237%_
                                       (cdr _%ref137239%_)
                                       (cdr _%ctx-ref137240%_))
                                      (cons '#f _%ctx-ref137240%_))))
                              _%ctx-ref137231%_))
                        (let ((__tmp146034
                               (##structure-ref
                                _%ctx137229%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp146034)))))
                 (_%context-ref-origin137153%_
                  (lambda (_%ctx137221%_)
                    (let _%lp137223%_ ((_%ctx137225%_ _%ctx137221%_))
                      (let ((_%super137227%_
                             (##structure-ref
                              _%ctx137225%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super137227%_
                               'gx#module-context::t))
                            (_%lp137223%_ _%super137227%_)
                            _%ctx137225%_)))))
                 (_%context-ref-nested137154%_
                  (lambda (_%ctx137212%_)
                    (let _%lp137214%_ ((_%ctx137216%_ _%ctx137212%_)
                                       (_%r137217%_ '()))
                      (let ((_%super137219%_
                             (##structure-ref
                              _%ctx137216%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super137219%_
                               'gx#module-context::t))
                            (_%lp137214%_
                             _%super137219%_
                             (cons (car (##structure-ref
                                         _%ctx137216%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r137217%_))
                            (cons (let ((__tmp146035
                                         (##structure-ref
                                          _%ctx137216%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp146035))
                                  _%r137217%_)))))))
          (let* ((_%g137156137169%_
                  (lambda (_%g137157137166%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137157137166%_))))
                 (_%g137155137209%_
                  (lambda (_%g137157137172%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137157137172%_))
                        (let ((_%e137159137174%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137157137172%_))))
                          (let ((_%hd137160137177%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137159137174%_)))
                                (_%tl137161137179%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137159137174%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137161137179%_))
                                (let ((_%e137162137182%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137161137179%_))))
                                  (let ((_%hd137163137185%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137162137182%_)))
                                        (_%tl137164137187%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137162137182%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl137164137187%_))
                                        ((lambda (_%L137190%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L137190%_))
                                               (let ((_%$e137203%_
                                                      (let ((__tmp146036
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp146036 _%L137190%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e137203%_
                                                     (values _%$e137203%_)
                                                     (let ((_%marks137207%_
                                                            (##direct-structure-ref
                                                             _%L137190%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks137207%_)
                                                           (_%generate-simple137148%_
                                                            _%L137190%_)
                                                           (_%generate-serialized137149%_
                                                            _%L137190%_
                                                            _%marks137207%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L137190%_))))
                                         _%hd137163137185%_)
                                        (_%g137156137169%_
                                         _%g137157137172%_))))
                                (_%g137156137169%_ _%g137157137172%_))))
                        (_%g137156137169%_ _%g137157137172%_)))))
            (_%g137155137209%_ _%stx137144%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self137075%_ _%stx137076%_)
        (let* ((_%g137078137095%_
                (lambda (_%g137079137092%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137079137092%_))))
               (_%g137077137140%_
                (lambda (_%g137079137098%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137079137098%_))
                      (let ((_%e137082137100%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137079137098%_))))
                        (let ((_%hd137083137103%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137082137100%_)))
                              (_%tl137084137105%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137082137100%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137084137105%_))
                              (let ((_%e137085137108%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137084137105%_))))
                                (let ((_%hd137086137111%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137085137108%_)))
                                      (_%tl137087137113%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137085137108%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137087137113%_))
                                      (let ((_%e137088137116%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137087137113%_))))
                                        (let ((_%hd137089137119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137088137116%_)))
                                              (_%tl137090137121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137088137116%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137090137121%_))
                                              ((lambda (_%L137124%_
                                                        _%L137125%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L137125%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self137075%_ _%L137124%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137089137119%_
                                               _%hd137086137111%_)
                                              (_%g137078137095%_
                                               _%g137079137098%_))))
                                      (_%g137078137095%_ _%g137079137098%_))))
                              (_%g137078137095%_ _%g137079137098%_))))
                      (_%g137078137095%_ _%g137079137098%_)))))
          (_%g137077137140%_ _%stx137076%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self137024%_ _%stx137025%_)
        (let* ((_%g137027137037%_
                (lambda (_%g137028137034%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137028137034%_))))
               (_%g137026137072%_
                (lambda (_%g137028137040%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137028137040%_))
                      (let ((_%e137030137042%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137028137040%_))))
                        (let ((_%hd137031137045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137030137042%_)))
                              (_%tl137032137047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137030137042%_))))
                          ((lambda (_%L137050%_)
                             (let* ((_%c-body137064%_
                                     (map (lambda (_%g137059137061%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self137024%_
                                               _%g137059137061%_)))
                                          _%L137050%_))
                                    (_%c-body137069%_
                                     (let ((__tmp146037
                                            (lambda (_%$obj137066%_)
                                              (not (eq? _%$obj137066%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp146037
                                        _%c-body137064%_))))
                               (cons '%#begin _%c-body137069%_)))
                           _%tl137032137047%_)))
                      (_%g137027137037%_ _%g137028137040%_)))))
          (_%g137026137072%_ _%stx137025%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self136929%_ _%stx136930%_)
        (let* ((_%g136932136942%_
                (lambda (_%g136933136939%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136933136939%_))))
               (_%g136931137021%_
                (lambda (_%g136933136945%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136933136945%_))
                      (let ((_%e136935136947%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136933136945%_))))
                        (let ((_%hd136936136950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136935136947%_)))
                              (_%tl136937136952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136935136947%_))))
                          ((lambda (_%L136955%_)
                             (let* ((_%phi136965%_
                                     (let ((__tmp146038
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp146038 '1)))
                                    (_%block136967%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self136929%_ 'state))
                                      _%phi136965%_))
                                    (_%compiled136970%_
                                     (let ((__tmp146039
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self136929%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L136955%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp146039
                                        gx#current-expander-phi
                                        _%phi136965%_)))
                                    (_%g136973136983%_
                                     (lambda (_%g136974136980%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g136974136980%_))))
                                    (_%g136972137018%_
                                     (lambda (_%g136974136986%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g136974136986%_))
                                           (let ((_%e136976136988%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g136974136986%_))))
                                             (let ((_%hd136977136991%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e136976136988%_)))
                                                   (_%tl136978136993%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e136976136988%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd136977136991%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd136977136991%_))
                                                       ((lambda (_%L136996%_)
                                                          (let ((_%c-body137013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj137010%_)
                                   (not (eq? _%$obj137010%_ '#!void)))
                                 _%L136996%_)))
                    (if _%block136967%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block136967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body137013%_))
                        (if (null? _%c-body137013%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body137013%_)))))
                _%tl136978136993%_)
               (_%g136973136983%_ _%g136974136986%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g136973136983%_
                                                    _%g136974136986%_))))
                                           (_%g136973136983%_
                                            _%g136974136986%_)))))
                               (_%g136972137018%_ _%compiled136970%_)))
                           _%tl136937136952%_)))
                      (_%g136932136942%_ _%g136933136945%_)))))
          (_%g136931137021%_ _%stx136930%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self136860%_ _%stx136861%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self136860%_ 'state)))
        (let* ((_%g136863136877%_
                (lambda (_%g136864136874%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136864136874%_))))
               (_%g136862136926%_
                (lambda (_%g136864136880%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136864136880%_))
                      (let ((_%e136867136882%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136864136880%_))))
                        (let ((_%hd136868136885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136867136882%_)))
                              (_%tl136869136887%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136867136882%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136869136887%_))
                              (let ((_%e136870136890%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136869136887%_))))
                                (let ((_%hd136871136893%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136870136890%_)))
                                      (_%tl136872136895%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136870136890%_))))
                                  ((lambda (_%L136898%_ _%L136899%_)
                                     (let ((_%key136912%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L136899%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key136912%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx136861%_
                                              _%L136899%_
                                              _%key136912%_)))
                                       (let* ((_%ctx136914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L136899%_)))
                                              (_%code136917%_
                                               (let ((__tmp146040
                                                      (lambda ()
                                                        (let ((__tmp146041
                                                               (##structure-ref
                                                                _%ctx136914%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self136860%_
                                                           __tmp146041)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp146040
                                                  gx#current-expander-context
                                                  _%ctx136914%_)))
                                              (_%rt136919%_
                                               (let ((__tmp146042
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp146042
                                                  _%ctx136914%_)))
                                              (_%loader136921%_
                                               (if _%rt136919%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt136919%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid136923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L136899%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self136860%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid136923%_
                                                     (cons _%code136917%_
                                                           _%loader136921%_))))))
                                   _%tl136872136895%_
                                   _%hd136871136893%_)))
                              (_%g136863136877%_ _%g136864136880%_))))
                      (_%g136863136877%_ _%g136864136880%_)))))
          (_%g136862136926%_ _%stx136861%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx136847%_ _%context-chain136848%_)
        (let _%lp136850%_ ((_%ctx136852%_ _%ctx136847%_) (_%path136853%_ '()))
          (let ((_%super136855%_
                 (##structure-ref _%ctx136852%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super136855%_ _%context-chain136848%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx136852%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path136853%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super136855%_
                       'gx#module-context::t))
                    (_%lp136850%_
                     _%super136855%_
                     (cons (car (##structure-ref
                                 _%ctx136852%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path136853%_))
                    (cons (let ((__tmp146043
                                 (##structure-ref
                                  _%ctx136852%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp146043))
                          _%path136853%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp136840%_ ((_%ctx136842%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r136843%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx136842%_ 'gx#module-context::t))
              (_%lp136840%_
               (##structure-ref _%ctx136842%_ '3 gx#phi-context::t '#f)
               (cons _%ctx136842%_ _%r136843%_))
              _%r136843%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self136603%_ _%stx136604%_)
        (letrec* ((_%context-chain136606%_ (gxc#current-context-chain))
                  (_%make-import-spec136607%_
                   (lambda (_%in136776%_)
                     (let* ((_%in136777136789%_ _%in136776%_)
                            (_%E136779136793%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in136777136789%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K136780136803%_
                             (lambda (_%phi136796%_
                                      _%name136797%_
                                      _%src-name136798%_
                                      _%src-phi136799%_
                                      _%src-key136800%_
                                      _%src-ctx136801%_)
                               (cons _%phi136796%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name136797%_)
                                           (cons _%src-phi136799%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name136798%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in136777136789%_
                              'gx#module-import::t))
                           (let ((_%e136781136806%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in136777136789%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e136781136806%_
                                    'gx#module-export::t))
                                 (let* ((_%e136784136809%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136781136806%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx136812%_ _%e136784136809%_)
                                        (_%e136785136814%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136781136806%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key136817%_ _%e136785136814%_)
                                        (_%e136786136819%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136781136806%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi136822%_ _%e136786136819%_)
                                        (_%e136787136824%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e136781136806%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name136827%_ _%e136787136824%_)
                                        (_%e136782136829%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136777136789%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name136832%_ _%e136782136829%_)
                                        (_%e136783136834%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in136777136789%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi136837%_ _%e136783136834%_))
                                   (_%K136780136803%_
                                    _%phi136837%_
                                    _%name136832%_
                                    _%src-name136827%_
                                    _%src-phi136822%_
                                    _%src-key136817%_
                                    _%src-ctx136812%_))
                                 (_%E136779136793%_)))
                           (_%E136779136793%_)))))
                  (_%make-import-path136608%_
                   (lambda (_%ctx136774%_)
                     (gxc#generate-meta-import-path
                      _%ctx136774%_
                      _%context-chain136606%_)))
                  (_%make-import-spec-in136609%_
                   (lambda (_%ctx136771%_ _%in136772%_)
                     (cons 'spec:
                           (cons (_%make-import-path136608%_ _%ctx136771%_)
                                 (reverse _%in136772%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self136603%_ 'state)))
          (let* ((_%g136611136621%_
                  (lambda (_%g136612136618%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136612136618%_))))
                 (_%g136610136768%_
                  (lambda (_%g136612136624%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136612136624%_))
                        (let ((_%e136614136626%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136612136624%_))))
                          (let ((_%hd136615136629%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136614136626%_)))
                                (_%tl136616136631%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136614136626%_))))
                            ((lambda (_%L136634%_)
                               (let _%lp136645%_ ((_%rest136647%_ _%L136634%_)
                                                  (_%current-src136648%_ '#f)
                                                  (_%current-in136649%_ '())
                                                  (_%r136650%_ '()))
                                 (let* ((_%rest136651136659%_ _%rest136647%_)
                                        (_%else136653136669%_
                                         (lambda ()
                                           (let ((_%r136667%_
                                                  (if _%current-src136648%_
                                                      (cons (_%make-import-spec-in136609%_
                                                             _%current-src136648%_
                                                             _%current-in136649%_)
                                                            _%r136650%_)
                                                      _%r136650%_)))
                                             (cons '%#import
                                                   (reverse _%r136667%_)))))
                                        (_%K136655136756%_
                                         (lambda (_%rest136672%_ _%in136673%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in136673%_
                                                  'gx#module-import::t))
                                               (let* ((_%in136675136682%_
                                                       _%in136673%_)
                                                      (_%E136677136686%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in136675136682%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K136678136694%_
               (lambda (_%src-ctx136689%_)
                 (if (eq? _%current-src136648%_ _%src-ctx136689%_)
                     (_%lp136645%_
                      _%rest136672%_
                      _%current-src136648%_
                      (cons (_%make-import-spec136607%_ _%in136673%_)
                            _%current-in136649%_)
                      _%r136650%_)
                     (if _%current-src136648%_
                         (_%lp136645%_
                          _%rest136672%_
                          _%src-ctx136689%_
                          (cons (_%make-import-spec136607%_ _%in136673%_) '())
                          (cons (_%make-import-spec-in136609%_
                                 _%current-src136648%_
                                 _%current-in136649%_)
                                _%r136650%_))
                         (_%lp136645%_
                          _%rest136672%_
                          _%src-ctx136689%_
                          (cons (_%make-import-spec136607%_ _%in136673%_) '())
                          _%r136650%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%in136675136682%_
                                                        'gx#module-import::t))
                                                     (let ((_%e136679136697%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in136675136682%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _%e136679136697%_
                                                              'gx#module-export::t))
                                                           (let* ((_%e136680136700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%e136679136697%_
                              '1
                              '#f
                              '#f)))
                          (_%src-ctx136703%_ _%e136680136700%_))
                     (_%K136678136694%_ _%src-ctx136703%_))
                   (_%E136677136686%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E136677136686%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in136673%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi136706%_
                                                           (##direct-structure-ref
                                                            _%in136673%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src136708%_
                                                           (##direct-structure-ref
                                                            _%in136673%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src-in136748%_
                                                           (let* ((_%g136709136718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path136608%_ _%src136708%_))
                          (_%E136712136722%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g136709136718%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K136714136738%_
                            (lambda (_%path136736%_) _%path136736%_))
                           (_%K136713136728%_
                            (lambda (_%path136726%_)
                              (cons 'in: _%path136726%_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g136709136718%_))
                           (let ((_%tl136716136743%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g136709136718%_)))
                                 (_%hd136715136741%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g136709136718%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tl136716136743%_))
                                 (let ((_%path136746%_ _%hd136715136741%_))
                                   (_%K136714136738%_ _%path136746%_))
                                 (let ((_%path136731%_ _%g136709136718%_))
                                   (_%K136713136728%_ _%path136731%_))))
                           (let ((_%path136731%_ _%g136709136718%_))
                             (_%K136713136728%_ _%path136731%_))))))
                  (_%r136750%_
                   (if _%current-src136648%_
                       (cons (_%make-import-spec-in136609%_
                              _%current-src136648%_
                              _%current-in136649%_)
                             _%r136650%_)
                       _%r136650%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp136645%_
                                                      _%rest136672%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi136706%_)
                                                                _%src-in136748%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi136706%_
                                    (cons _%src-in136748%_ '()))))
                    _%r136750%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in136673%_
                                                          'gx#module-context::t))
                                                       (let ((_%r136754%_
                                                              (if _%current-src136648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in136609%_
                                 _%current-src136648%_
                                 _%current-in136649%_)
                                _%r136650%_)
                          _%r136650%_)))
                 (_%lp136645%_
                  _%rest136672%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path136608%_ _%in136673%_))
                        _%r136754%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest136651136659%_))
                                       (let ((_%hd136656136759%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest136651136659%_)))
                                             (_%tl136657136761%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest136651136659%_))))
                                         (let* ((_%in136764%_
                                                 _%hd136656136759%_)
                                                (_%rest136766%_
                                                 _%tl136657136761%_))
                                           (_%K136655136756%_
                                            _%rest136766%_
                                            _%in136764%_)))
                                       (_%else136653136669%_)))))
                             _%tl136616136631%_)))
                        (_%g136611136621%_ _%g136612136624%_)))))
            (_%g136610136768%_ _%stx136604%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self136413%_ _%stx136414%_)
        (letrec* ((_%context-chain136416%_ (gxc#current-context-chain))
                  (_%make-import-path136417%_
                   (lambda (_%ctx136601%_)
                     (gxc#generate-meta-import-path
                      _%ctx136601%_
                      _%context-chain136416%_))))
          (let* ((_%g136419136429%_
                  (lambda (_%g136420136426%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136420136426%_))))
                 (_%g136418136598%_
                  (lambda (_%g136420136432%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136420136432%_))
                        (let ((_%e136422136434%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136420136432%_))))
                          (let ((_%hd136423136437%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136422136434%_)))
                                (_%tl136424136439%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136422136434%_))))
                            ((lambda (_%L136442%_)
                               (let _%lp136453%_ ((_%rest136455%_ _%L136442%_)
                                                  (_%r136456%_ '()))
                                 (let* ((_%rest136457136465%_ _%rest136455%_)
                                        (_%else136459136473%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r136456%_))))
                                        (_%K136461136586%_
                                         (lambda (_%rest136476%_ _%out136477%_)
                                           (let* ((_%out136478136491%_
                                                   _%out136477%_)
                                                  (_%E136481136495%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out136478136491%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K136485136565%_
                                                    (lambda (_%name136561%_
                                                             _%phi136562%_
                                                             _%key136563%_)
                                                      (_%lp136453%_
                                                       _%rest136476%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi136562%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key136563%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name136561%_)
                                             '()))))
                     _%r136456%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K136482136545%_
                                                    (lambda (_%phi136499%_
                                                             _%src136500%_)
                                                      (let* ((_%out136540%_
                                                              (if _%src136500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g136501136510%_
                                              (_%make-import-path136417%_
                                               _%src136500%_))
                                             (_%E136504136514%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g136501136510%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K136506136530%_
                                               (lambda (_%path136528%_)
                                                 _%path136528%_))
                                              (_%K136505136520%_
                                               (lambda (_%path136518%_)
                                                 (cons 'in: _%path136518%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g136501136510%_))
                                              (let ((_%tl136508136535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g136501136510%_)))
                                                    (_%hd136507136533%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g136501136510%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl136508136535%_))
                                                    (let ((_%path136538%_
                                                           _%hd136507136533%_))
                                                      (_%K136506136530%_
                                                       _%path136538%_))
                                                    (let ((_%path136523%_
                                                           _%g136501136510%_))
                                                      (_%K136505136520%_
                                                       _%path136523%_))))
                                              (let ((_%path136523%_
                                                     _%g136501136510%_))
                                                (_%K136505136520%_
                                                 _%path136523%_)))))
                                      '()))
                          '#t))
                     (_%out136542%_
                      (if (fxzero? _%phi136499%_)
                          _%out136540%_
                          (cons 'phi:
                                (cons _%phi136499%_
                                      (cons _%out136540%_ '()))))))
                (_%lp136453%_
                 _%rest136476%_
                 (cons _%out136542%_ _%r136456%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match136480136558%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out136478136491%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e136483136548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out136478136491%_
                               '1
                               '#f
                               '#f)))
                           (_%e136484136553%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out136478136491%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src136551%_ _%e136483136548%_)
                            (_%phi136556%_ _%e136484136553%_))
                        (_%K136482136545%_ _%phi136556%_ _%src136551%_)))
                    (_%E136481136495%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out136478136491%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e136486136568%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out136478136491%_
                        '1
                        '#f
                        '#f)))
                    (_%e136487136571%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136478136491%_
                        '2
                        '#f
                        '#f)))
                    (_%e136488136576%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136478136491%_
                        '3
                        '#f
                        '#f)))
                    (_%e136489136581%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136478136491%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key136574%_ _%e136487136571%_)
                     (_%phi136579%_ _%e136488136576%_)
                     (_%name136584%_ _%e136489136581%_))
                 (_%K136485136565%_
                  _%name136584%_
                  _%phi136579%_
                  _%key136574%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match136480136558%_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest136457136465%_))
                                       (let ((_%hd136462136589%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest136457136465%_)))
                                             (_%tl136463136591%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest136457136465%_))))
                                         (let* ((_%out136594%_
                                                 _%hd136462136589%_)
                                                (_%rest136596%_
                                                 _%tl136463136591%_))
                                           (_%K136461136586%_
                                            _%rest136596%_
                                            _%out136594%_)))
                                       (_%else136459136473%_)))))
                             _%tl136424136439%_)))
                        (_%g136419136429%_ _%g136420136432%_)))))
            (_%g136418136598%_ _%stx136414%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self136374%_ _%stx136375%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self136374%_ 'state)))
        (let* ((_%g136377136387%_
                (lambda (_%g136378136384%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136378136384%_))))
               (_%g136376136410%_
                (lambda (_%g136378136390%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136378136390%_))
                      (let ((_%e136380136392%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136378136390%_))))
                        (let ((_%hd136381136395%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136380136392%_)))
                              (_%tl136382136397%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136380136392%_))))
                          ((lambda (_%L136400%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L136400%_)))
                           _%tl136382136397%_)))
                      (_%g136377136387%_ _%g136378136390%_)))))
          (_%g136376136410%_ _%stx136375%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self136245%_ _%stx136246%_)
        (letrec ((_%generate1136248%_
                  (lambda (_%id136369%_ _%eid136370%_)
                    (let ((_%eid136372%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid136370%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid136372%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx136246%_
                             _%eid136372%_)))
                      (cons (gxc#generate-runtime-identifier _%id136369%_)
                            (cons _%eid136372%_ '()))))))
          (let* ((_%g136250136278%_
                  (lambda (_%g136251136275%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136251136275%_))))
                 (_%g136249136366%_
                  (lambda (_%g136251136281%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136251136281%_))
                        (let ((_%e136254136283%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136251136281%_))))
                          (let ((_%hd136255136286%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136254136283%_)))
                                (_%tl136256136288%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136254136283%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl136256136288%_))
                                (let ((_g146044_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl136256136288%_
                                          '0))))
                                  (begin
                                    (let ((_g146045_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g146044_)
                                                 (##vector-length _g146044_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g146045_ 2)))
                                          (error "Context expects 2 values"
                                                 _g146045_)))
                                    (let ((_%target136257136291%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g146044_ 0)))
                                          (_%tl136259136293%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g146044_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl136259136293%_))
                                          (letrec ((_%loop136260136296%_
                                                    (lambda (_%hd136258136299%_
                                                             _%eid136264136301%_
                                                             _%id136265136303%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd136258136299%_))
                                                          (let ((_%e136261136306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd136258136299%_))))
                    (let ((_%lp-hd136262136309%_
                           (let ()
                             (declare (not safe))
                             (##car _%e136261136306%_)))
                          (_%lp-tl136263136311%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e136261136306%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd136262136309%_))
                          (let ((_%e136268136314%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd136262136309%_))))
                            (let ((_%hd136269136317%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e136268136314%_)))
                                  (_%tl136270136319%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e136268136314%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl136270136319%_))
                                  (let ((_%e136271136322%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl136270136319%_))))
                                    (let ((_%hd136272136325%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136271136322%_)))
                                          (_%tl136273136327%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136271136322%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl136273136327%_))
                                          (_%loop136260136296%_
                                           _%lp-tl136263136311%_
                                           (cons _%hd136272136325%_
                                                 _%eid136264136301%_)
                                           (cons _%hd136269136317%_
                                                 _%id136265136303%_))
                                          (_%g136250136278%_
                                           _%g136251136281%_))))
                                  (_%g136250136278%_ _%g136251136281%_))))
                          (_%g136250136278%_ _%g136251136281%_))))
                  (let ((_%eid136266136330%_ (reverse _%eid136264136301%_))
                        (_%id136267136332%_ (reverse _%id136265136303%_)))
                    ((lambda (_%L136335%_ _%L136336%_)
                       (cons '%#extern
                             (map _%generate1136248%_
                                  (let ((__tmp146046
                                         (lambda (_%g136351136354%_
                                                  _%g136352136356%_)
                                           (cons _%g136351136354%_
                                                 _%g136352136356%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp146046 '() _%L136336%_))
                                  (let ((__tmp146047
                                         (lambda (_%g136358136361%_
                                                  _%g136359136363%_)
                                           (cons _%g136358136361%_
                                                 _%g136359136363%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp146047 '() _%L136335%_)))))
                     _%eid136266136330%_
                     _%id136267136332%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop136260136296%_
                                             _%target136257136291%_
                                             '()
                                             '()))
                                          (_%g136250136278%_
                                           _%g136251136281%_)))))
                                (_%g136250136278%_ _%g136251136281%_))))
                        (_%g136250136278%_ _%g136251136281%_)))))
            (_%g136249136366%_ _%stx136246%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self136035%_ _%stx136036%_)
        (letrec ((_%generate1136038%_
                  (lambda (_%id136240%_)
                    (let ((_%eid136242%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id136240%_)))
                          (_%ident136243%_
                           (gxc#generate-runtime-identifier _%id136240%_)))
                      (cons '%#define-runtime
                            (cons _%ident136243%_ (cons _%eid136242%_ '()))))))
                 (_%generate*136039%_
                  (lambda (_%all136208%_)
                    (let* ((_%all136209136217%_ _%all136208%_)
                           (_%else136211136225%_
                            (lambda () (cons '%#begin _%all136208%_)))
                           (_%K136213136230%_
                            (lambda (_%one136228%_) _%one136228%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all136209136217%_))
                          (let ((_%hd136214136233%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all136209136217%_)))
                                (_%tl136215136235%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all136209136217%_))))
                            (let ((_%one136238%_ _%hd136214136233%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl136215136235%_))
                                  (_%K136213136230%_ _%one136238%_)
                                  (_%else136211136225%_))))
                          (_%else136211136225%_))))))
          (let* ((_%g136041136058%_
                  (lambda (_%g136042136055%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136042136055%_))))
                 (_%g136040136205%_
                  (lambda (_%g136042136061%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136042136061%_))
                        (let ((_%e136045136063%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136042136061%_))))
                          (let ((_%hd136046136066%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136045136063%_)))
                                (_%tl136047136068%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136045136063%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136047136068%_))
                                (let ((_%e136048136071%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136047136068%_))))
                                  (let ((_%hd136049136074%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136048136071%_)))
                                        (_%tl136050136076%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136048136071%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl136050136076%_))
                                        (let ((_%e136051136079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl136050136076%_))))
                                          (let ((_%hd136052136082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e136051136079%_)))
                                                (_%tl136053136084%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e136051136079%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136053136084%_))
                                                ((lambda (_%L136087%_
                                                          _%L136088%_)
                                                   (let _%lp136104%_ ((_%rest136106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L136088%_)
                              (_%r136107%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx145783145784%_
                                                             _%rest136106%_)
                                                            (_%g136112136129%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx145783145784%_)))))
               (let ((_%__kont145785145786%_
                      (lambda (_%L136192%_)
                        (_%lp136104%_ _%L136192%_ _%r136107%_)))
                     (_%__kont145787145788%_
                      (lambda (_%L136165%_ _%L136166%_)
                        (_%lp136104%_
                         _%L136165%_
                         (cons (_%generate1136038%_ _%L136166%_)
                               _%r136107%_))))
                     (_%__kont145789145790%_
                      (lambda (_%L136141%_)
                        (_%generate*136039%_
                         (let ((__tmp146048
                                (cons (_%generate1136038%_ _%L136141%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp146048 _%r136107%_)))))
                     (_%__kont145791145792%_
                      (lambda () (_%generate*136039%_ (reverse _%r136107%_)))))
                 (let ((_%g136110136152%_
                        (lambda ()
                          (let ((_%L136141%_ _%__stx145783145784%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L136141%_))
                                (_%__kont145789145790%_ _%L136141%_)
                                (_%__kont145791145792%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx145783145784%_))
                       (let ((_%e136115136181%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx145783145784%_))))
                         (let ((_%tl136117136186%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e136115136181%_)))
                               (_%hd136116136184%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e136115136181%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd136116136184%_))
                               (let ((_%e136118136189%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd136116136184%_))))
                                 (if (equal? _%e136118136189%_ '#f)
                                     (_%__kont145785145786%_
                                      _%tl136117136186%_)
                                     (_%__kont145787145788%_
                                      _%tl136117136186%_
                                      _%hd136116136184%_)))
                               (_%__kont145787145788%_
                                _%tl136117136186%_
                                _%hd136116136184%_))))
                       (let () (declare (not safe)) (_%g136110136152%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd136052136082%_
                                                 _%hd136049136074%_)
                                                (_%g136041136058%_
                                                 _%g136042136061%_))))
                                        (_%g136041136058%_
                                         _%g136042136061%_))))
                                (_%g136041136058%_ _%g136042136061%_))))
                        (_%g136041136058%_ _%g136042136061%_)))))
            (_%g136040136205%_ _%stx136036%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self135932%_ _%stx135933%_)
        (let* ((_%g135935135952%_
                (lambda (_%g135936135949%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135936135949%_))))
               (_%g135934136032%_
                (lambda (_%g135936135955%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135936135955%_))
                      (let ((_%e135939135957%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135936135955%_))))
                        (let ((_%hd135940135960%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135939135957%_)))
                              (_%tl135941135962%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135939135957%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135941135962%_))
                              (let ((_%e135942135965%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135941135962%_))))
                                (let ((_%hd135943135968%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135942135965%_)))
                                      (_%tl135944135970%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135942135965%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135944135970%_))
                                      (let ((_%e135945135973%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135944135970%_))))
                                        (let ((_%hd135946135976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135945135973%_)))
                                              (_%tl135947135978%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135945135973%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135947135978%_))
                                              ((lambda (_%L135981%_
                                                        _%L135982%_)
                                                 (let* ((_%eid135997%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L135982%_)))
                                                        (_%phi135999%_
                                                         (let ((__tmp146049
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp146049 '1)))
                (_%block136001%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self135932%_ 'state))
                  _%phi135999%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g136004136011%_
                                                           (lambda (_%g136005136008%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g136005136008%_))))
                  (_%g136003136029%_
                   (lambda (_%g136005136014%_)
                     ((lambda (_%L136016%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self135932%_ 'state))
                         _%phi135999%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L136016%_ (cons _%L135981%_ '())))))
                      _%g136005136014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g136003136029%_
                                                      _%eid135997%_))
                                                   (if _%block136001%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block136001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L135982%_)
                                             (cons _%eid135997%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L135982%_)
                           (cons _%eid135997%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135946135976%_
                                               _%hd135943135968%_)
                                              (_%g135935135952%_
                                               _%g135936135955%_))))
                                      (_%g135935135952%_ _%g135936135955%_))))
                              (_%g135935135952%_ _%g135936135955%_))))
                      (_%g135935135952%_ _%g135936135955%_)))))
          (_%g135934136032%_ _%stx135933%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self135864%_ _%stx135865%_)
        (let* ((_%g135867135884%_
                (lambda (_%g135868135881%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135868135881%_))))
               (_%g135866135929%_
                (lambda (_%g135868135887%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135868135887%_))
                      (let ((_%e135871135889%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135868135887%_))))
                        (let ((_%hd135872135892%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135871135889%_)))
                              (_%tl135873135894%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135871135889%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135873135894%_))
                              (let ((_%e135874135897%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135873135894%_))))
                                (let ((_%hd135875135900%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135874135897%_)))
                                      (_%tl135876135902%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135874135897%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135876135902%_))
                                      (let ((_%e135877135905%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135876135902%_))))
                                        (let ((_%hd135878135908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135877135905%_)))
                                              (_%tl135879135910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135877135905%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135879135910%_))
                                              ((lambda (_%L135913%_
                                                        _%L135914%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L135914%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L135913%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135878135908%_
                                               _%hd135875135900%_)
                                              (_%g135867135884%_
                                               _%g135868135887%_))))
                                      (_%g135867135884%_ _%g135868135887%_))))
                              (_%g135867135884%_ _%g135868135887%_))))
                      (_%g135867135884%_ _%g135868135887%_)))))
          (_%g135866135929%_ _%stx135865%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self135861%_ _%stx135862%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self135861%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx135862%_)
        (gxc#generate-meta-define-values% _%self135861%_ _%stx135862%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self135858%_ _%stx135859%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self135858%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx135859%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp146051 (list)) (__tmp146050 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp146051
         '(src n open blocks)
         __tmp146050
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args135855%_
        (apply make-instance gxc#meta-state::t _%$args135855%_)))
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
      (lambda (_%self135200135839%_ _%ctx135841%_)
        (let* ((_%self135843%_ _%self135200135839%_)
               (_%self135845%_ _%self135843%_))
          (if (let ((__tmp146052
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self135845%_))))
                (declare (not safe))
                (##fx< '4 __tmp146052))
              (begin
                (let ((__tmp146053
                       (let ((__tmp146054
                              (##structure-ref
                               _%ctx135841%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp146054))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135845%_
                   __tmp146053
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self135845%_ '1 '2 '#f '#f))
                (let ((__tmp146055
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135845%_
                   __tmp146055
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self135845%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp146056
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self135845%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self135845%_
                       '4
                       __tmp146056))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp146058 (list)) (__tmp146057 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp146058
         '(ctx phi n code)
         __tmp146057
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args135714%_
        (apply make-instance gxc#meta-state-block::t _%$args135714%_)))
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
      (lambda (_%state135673%_ _%phi135674%_)
        (let* ((_%state135675135683%_ _%state135673%_)
               (_%E135677135687%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state135675135683%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K135678135696%_
                (lambda (_%open135690%_ _%n135691%_ _%src135692%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open135690%_ _%phi135674%_))
                      '#f
                      (let ((_%block-ref135694%_
                             (let ((__tmp146059 (number->string _%n135691%_)))
                               (declare (not safe))
                               (##string-append
                                _%src135692%_
                                '"~"
                                __tmp146059))))
                        (##structure-set!
                         _%state135673%_
                         (let () (declare (not safe)) (##fx+ _%n135691%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp146060
                               (let ((__tmp146061
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp146061
                                  _%phi135674%_
                                  _%n135691%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open135690%_ _%phi135674%_ __tmp146060))
                        _%block-ref135694%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state135675135683%_
                 'gxc#meta-state::t))
              (let* ((_%e135679135699%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135675135683%_
                         '1
                         '#f
                         '#f)))
                     (_%src135702%_ _%e135679135699%_)
                     (_%e135680135704%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135675135683%_
                         '2
                         '#f
                         '#f)))
                     (_%n135707%_ _%e135680135704%_)
                     (_%e135681135709%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state135675135683%_
                         '3
                         '#f
                         '#f)))
                     (_%open135712%_ _%e135681135709%_))
                (_%K135678135696%_ _%open135712%_ _%n135707%_ _%src135702%_))
              (_%E135677135687%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state135667%_ _%phi135668%_ _%stx135669%_)
        (let ((_%block135671%_
               (let ((__tmp146062
                      (##structure-ref
                       _%state135667%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp146062 _%phi135668%_))))
          (##structure-set!
           _%block135671%_
           (cons _%stx135669%_
                 (##structure-ref
                  _%block135671%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state135661%_)
        (##structure-set!
         _%state135661%_
         (let ((__tmp146065
                (lambda (_%_135663%_ _%block135664%_ _%r135665%_)
                  (cons _%block135664%_ _%r135665%_)))
               (__tmp146064
                (##structure-ref _%state135661%_ '4 gxc#meta-state::t '#f))
               (__tmp146063
                (##structure-ref _%state135661%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp146065 __tmp146064 __tmp146063))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state135661%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state135613%_)
        (gxc#meta-state-end-phi! _%state135613%_)
        (let ((__tmp146067
               (lambda (_%block135615%_ _%r135616%_)
                 (let* ((_%block135617135626%_ _%block135615%_)
                        (_%E135619135630%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block135617135626%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K135620135638%_
                         (lambda (_%code135633%_
                                  _%n135634%_
                                  _%phi135635%_
                                  _%ctx135636%_)
                           (if (null? _%code135633%_)
                               _%r135616%_
                               (cons (cons _%ctx135636%_
                                           (cons _%phi135635%_
                                                 (cons _%n135634%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code135633%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r135616%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block135617135626%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e135621135641%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135617135626%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx135644%_ _%e135621135641%_)
                              (_%e135622135646%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135617135626%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi135649%_ _%e135622135646%_)
                              (_%e135623135651%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135617135626%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n135654%_ _%e135623135651%_)
                              (_%e135624135656%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block135617135626%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code135659%_ _%e135624135656%_))
                         (_%K135620135638%_
                          _%code135659%_
                          _%n135654%_
                          _%phi135649%_
                          _%ctx135644%_))
                       (_%E135619135630%_)))))
              (__tmp146066
               (##structure-ref _%state135613%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp146067 '() __tmp146066))))
    (define gxc#collect-expression-refs
      (lambda (_%stx135609%_)
        (let ((_%ht135611%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht135611%_ _%stx135609%_)
          _%ht135611%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self135552%_ _%stx135553%_)
        (let* ((_%g135555135568%_
                (lambda (_%g135556135565%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135556135565%_))))
               (_%g135554135606%_
                (lambda (_%g135556135571%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135556135571%_))
                      (let ((_%e135558135573%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135556135571%_))))
                        (let ((_%hd135559135576%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135558135573%_)))
                              (_%tl135560135578%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135558135573%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135560135578%_))
                              (let ((_%e135561135581%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135560135578%_))))
                                (let ((_%hd135562135584%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135561135581%_)))
                                      (_%tl135563135586%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135561135581%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl135563135586%_))
                                      ((lambda (_%L135589%_)
                                         (let* ((_%bind135601%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L135589%_)))
                                                (_%eid135603%_
                                                 (if _%bind135601%_
                                                     (##structure-ref
                                                      _%bind135601%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L135589%_))))
                                                (__tmp146068
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self135552%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp146068
                                            _%eid135603%_
                                            _%eid135603%_)))
                                       _%hd135562135584%_)
                                      (_%g135555135568%_ _%g135556135571%_))))
                              (_%g135555135568%_ _%g135556135571%_))))
                      (_%g135555135568%_ _%g135556135571%_)))))
          (_%g135554135606%_ _%stx135553%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self135479%_ _%stx135480%_)
        (let* ((_%g135482135499%_
                (lambda (_%g135483135496%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135483135496%_))))
               (_%g135481135549%_
                (lambda (_%g135483135502%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135483135502%_))
                      (let ((_%e135486135504%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135483135502%_))))
                        (let ((_%hd135487135507%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135486135504%_)))
                              (_%tl135488135509%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135486135504%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135488135509%_))
                              (let ((_%e135489135512%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135488135509%_))))
                                (let ((_%hd135490135515%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135489135512%_)))
                                      (_%tl135491135517%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135489135512%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135491135517%_))
                                      (let ((_%e135492135520%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135491135517%_))))
                                        (let ((_%hd135493135523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135492135520%_)))
                                              (_%tl135494135525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135492135520%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135494135525%_))
                                              ((lambda (_%L135528%_
                                                        _%L135529%_)
                                                 (let* ((_%bind135544%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L135529%_)))
                                                        (_%eid135546%_
                                                         (if _%bind135544%_
                                                             (##structure-ref
                                                              _%bind135544%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L135529%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp146069
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self135479%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp146069
                                                      _%eid135546%_
                                                      _%eid135546%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self135479%_
                                                      _%L135528%_))))
                                               _%hd135493135523%_
                                               _%hd135490135515%_)
                                              (_%g135482135499%_
                                               _%g135483135502%_))))
                                      (_%g135482135499%_ _%g135483135502%_))))
                              (_%g135482135499%_ _%g135483135502%_))))
                      (_%g135482135499%_ _%g135483135502%_)))))
          (_%g135481135549%_ _%stx135480%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self135436%_ _%stx135437%_)
        (let* ((_%g135439135449%_
                (lambda (_%g135440135446%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135440135446%_))))
               (_%g135438135476%_
                (lambda (_%g135440135452%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135440135452%_))
                      (let ((_%e135442135454%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135440135452%_))))
                        (let ((_%hd135443135457%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135442135454%_)))
                              (_%tl135444135459%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135442135454%_))))
                          ((lambda (_%L135462%_)
                             (let ((__tmp146070
                                    (lambda (_%g135471135473%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self135436%_
                                         _%g135471135473%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp146070 _%L135462%_)))
                           _%tl135444135459%_)))
                      (_%g135439135449%_ _%g135440135452%_)))))
          (_%g135438135476%_ _%stx135437%_))))
    (define gxc#count-values-single%
      (lambda (_%self135433%_ _%stx135434%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self135299%_ _%stx135300%_)
        (let* ((_%__stx145813145814%_ _%stx135300%_)
               (_%g135303135332%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145813145814%_)))))
          (let ((_%__kont145815145816%_
                 (lambda (_%L135400%_ _%L135401%_)
                   (length (let ((__tmp146071
                                  (lambda (_%g135422135425%_ _%g135423135427%_)
                                    (cons _%g135422135425%_
                                          _%g135423135427%_))))
                             (declare (not safe))
                             (__foldr1 __tmp146071 '() _%L135400%_)))))
                (_%__kont145819145820%_ (lambda () '#f)))
            (let ((_%__match145858145859%_
                   (lambda (_%e135307135344%_
                            _%hd135308135347%_
                            _%tl135309135349%_
                            _%e135310135352%_
                            _%hd135311135355%_
                            _%tl135312135357%_
                            _%e135313135360%_
                            _%hd135314135363%_
                            _%tl135315135365%_
                            _%e135316135368%_
                            _%hd135317135371%_
                            _%tl135318135373%_
                            _%__splice145817145818%_
                            _%target135319135376%_
                            _%tl135321135378%_)
                     (letrec ((_%loop135322135381%_
                               (lambda (_%hd135320135384%_
                                        _%rand135326135386%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd135320135384%_))
                                     (let ((_%e135323135389%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd135320135384%_))))
                                       (let ((_%lp-tl135325135394%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e135323135389%_)))
                                             (_%lp-hd135324135392%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e135323135389%_))))
                                         (_%loop135322135381%_
                                          _%lp-tl135325135394%_
                                          (cons _%lp-hd135324135392%_
                                                _%rand135326135386%_))))
                                     (let ((_%rand135327135397%_
                                            (reverse _%rand135326135386%_)))
                                       (let ((_%L135400%_ _%rand135327135397%_)
                                             (_%L135401%_ _%hd135317135371%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L135401%_
                                                'values))
                                             (_%__kont145815145816%_
                                              _%L135400%_
                                              _%L135401%_)
                                             (_%__kont145819145820%_))))))))
                       (_%loop135322135381%_ _%target135319135376%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145813145814%_))
                  (let ((_%e135307135344%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145813145814%_))))
                    (let ((_%tl135309135349%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135307135344%_)))
                          (_%hd135308135347%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135307135344%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl135309135349%_))
                          (let ((_%e135310135352%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl135309135349%_))))
                            (let ((_%tl135312135357%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e135310135352%_)))
                                  (_%hd135311135355%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e135310135352%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd135311135355%_))
                                  (let ((_%e135313135360%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd135311135355%_))))
                                    (let ((_%tl135315135365%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135313135360%_)))
                                          (_%hd135314135363%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135313135360%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd135314135363%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd135314135363%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl135315135365%_))
                                                  (let ((_%e135316135368%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl135315135365%_))))
                                                    (let ((_%tl135318135373%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e135316135368%_)))
                                                          (_%hd135317135371%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e135316135368%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl135318135373%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl135312135357%_))
                      (let ((_%__splice145817145818%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl135312135357%_
                                '0))))
                        (let ((_%tl135321135378%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145817145818%_ '1)))
                              (_%target135319135376%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145817145818%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl135321135378%_))
                              (_%__match145858145859%_
                               _%e135307135344%_
                               _%hd135308135347%_
                               _%tl135309135349%_
                               _%e135310135352%_
                               _%hd135311135355%_
                               _%tl135312135357%_
                               _%e135313135360%_
                               _%hd135314135363%_
                               _%tl135315135365%_
                               _%e135316135368%_
                               _%hd135317135371%_
                               _%tl135318135373%_
                               _%__splice145817145818%_
                               _%target135319135376%_
                               _%tl135321135378%_)
                              (_%__kont145819145820%_))))
                      (_%__kont145819145820%_))
                  (_%__kont145819145820%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145819145820%_))
                                              (_%__kont145819145820%_))
                                          (_%__kont145819145820%_))))
                                  (_%__kont145819145820%_))))
                          (_%__kont145819145820%_))))
                  (_%__kont145819145820%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self135202%_ _%stx135203%_)
        (let* ((_%g135205135226%_
                (lambda (_%g135206135223%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135206135223%_))))
               (_%g135204135296%_
                (lambda (_%g135206135229%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135206135229%_))
                      (let ((_%e135210135231%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135206135229%_))))
                        (let ((_%hd135211135234%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135210135231%_)))
                              (_%tl135212135236%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135210135231%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135212135236%_))
                              (let ((_%e135213135239%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135212135236%_))))
                                (let ((_%hd135214135242%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135213135239%_)))
                                      (_%tl135215135244%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135213135239%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135215135244%_))
                                      (let ((_%e135216135247%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135215135244%_))))
                                        (let ((_%hd135217135250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135216135247%_)))
                                              (_%tl135218135252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135216135247%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl135218135252%_))
                                              (let ((_%e135219135255%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl135218135252%_))))
                                                (let ((_%hd135220135258%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e135219135255%_)))
                                                      (_%tl135221135260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e135219135255%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl135221135260%_))
                                                      ((lambda (_%L135263%_
                                                                _%L135264%_
                                                                _%L135265%_)
                                                         (let ((_%c1135282135284%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self135202%_ _%L135264%_))))
                   (if _%c1135282135284%_
                       (let* ((_%c1135287%_ _%c1135282135284%_)
                              (_%c2135288135290%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self135202%_
                                  _%L135263%_))))
                         (if _%c2135288135290%_
                             (let ((_%c2135293%_ _%c2135288135290%_))
                               (if (fx= _%c1135287%_ _%c2135293%_)
                                   _%c1135287%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd135220135258%_
               _%hd135217135250%_
               _%hd135214135242%_)
              (_%g135205135226%_ _%g135206135229%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g135205135226%_
                                               _%g135206135229%_))))
                                      (_%g135205135226%_ _%g135206135229%_))))
                              (_%g135205135226%_ _%g135206135229%_))))
                      (_%g135205135226%_ _%g135206135229%_)))))
          (_%g135204135296%_ _%stx135203%_))))))
