(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1713631267)
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
        (letrec ((_%hash-e147469%_
                  (lambda (_%id147471%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id147471%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e147469%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp148856 (list gxc#::void::t))
            (__tmp148855 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp148856
         '()
         __tmp148855
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args147465%_
        (apply make-instance gxc#::collect-bindings::t _%$args147465%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp148857
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
        (__make-promise __tmp148857)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx147457%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self147460%_
                (let ((__obj148831
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj148831))
               (__tmp148858
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147460%_ _%stx147457%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp148858
           gxc#current-compile-method
           _%self147460%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp148860 (list gxc#::void::t))
            (__tmp148859 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp148860
         '(modules)
         __tmp148859
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args147454%_
        (apply make-instance gxc#::lift-modules::t _%$args147454%_)))
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
      (let ((__tmp148861
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
        (__make-promise __tmp148861)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords147428%_ _%modules147425147429%_ _%stx147431%_)
        (let ((_%modules147434%_
               (if (eq? _%modules147425147429%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules147425147429%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self147436%_
                  (let ((__obj148833
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj148833
                       _%modules147434%_
                       '1
                       '#f
                       '#f))
                    __obj148833))
                 (__tmp148862
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147436%_ _%stx147431%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp148862
             gxc#current-compile-method
             _%self147436%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords147443%_ . _%args147444%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords147443%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147443%_
                  'modules:
                  absent-value))
               _%args147444%_)))
    (define gxc#apply-lift-modules
      (lambda _%args147426147450%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args147426147450%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp148864 (list)) (__tmp148863 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp148864
         '()
         __tmp148863
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args147421%_
        (apply make-instance gxc#::find-runtime-code::t _%$args147421%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp148865
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
        (__make-promise __tmp148865)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx147413%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self147416%_
                (let ((__obj148835
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj148835))
               (__tmp148866
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147416%_ _%stx147413%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp148866
           gxc#current-compile-method
           _%self147416%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp148868 (list gxc#::false::t))
            (__tmp148867 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp148868
         '()
         __tmp148867
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args147410%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args147410%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp148869
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
        (__make-promise __tmp148869)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx147402%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self147405%_
                (let ((__obj148837
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj148837))
               (__tmp148870
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147405%_ _%stx147402%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp148870
           gxc#current-compile-method
           _%self147405%_))))
    (define gxc#::count-values::t
      (let ((__tmp148872 (list gxc#::false-expression::t))
            (__tmp148871 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp148872
         '()
         __tmp148871
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args147399%_
        (apply make-instance gxc#::count-values::t _%$args147399%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp148873
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
        (__make-promise __tmp148873)))
    (define gxc#apply-count-values
      (lambda (_%stx147391%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self147394%_
                (let ((__obj148839
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj148839))
               (__tmp148874
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147394%_ _%stx147391%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp148874
           gxc#current-compile-method
           _%self147394%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp148875 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp148875
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args147388%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args147388%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp148876
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
        (__make-promise __tmp148876)))
    (define gxc#::generate-loader::t
      (let ((__tmp148878 (list gxc#::generate-runtime-empty::t))
            (__tmp148877 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp148878
         '()
         __tmp148877
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args147384%_
        (apply make-instance gxc#::generate-loader::t _%$args147384%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp148879
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
        (__make-promise __tmp148879)))
    (define gxc#apply-generate-loader
      (lambda (_%stx147376%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self147379%_
                (let ((__obj148842
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj148842))
               (__tmp148880
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147379%_ _%stx147376%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp148880
           gxc#current-compile-method
           _%self147379%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp148881 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp148881
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args147373%_
        (apply make-instance gxc#::generate-runtime::t _%$args147373%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp148882
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
        (__make-promise __tmp148882)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx147365%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self147368%_
                (let ((__obj148844
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj148844))
               (__tmp148883
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147368%_ _%stx147365%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp148883
           gxc#current-compile-method
           _%self147368%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp148885 (list gxc#::generate-runtime::t))
            (__tmp148884 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp148885
         '()
         __tmp148884
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args147362%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args147362%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp148886
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
        (__make-promise __tmp148886)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx147354%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self147357%_
                (let ((__obj148846
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj148846))
               (__tmp148887
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147357%_ _%stx147354%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp148887
           gxc#current-compile-method
           _%self147357%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp148888 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp148888
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args147351%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args147351%_)))
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
      (let ((__tmp148889
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
        (__make-promise __tmp148889)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords147325%_ _%table147322147326%_ _%stx147328%_)
        (let ((_%table147331%_
               (if (eq? _%table147322147326%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table147322147326%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self147333%_
                  (let ((__obj148848
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj148848
                       _%table147331%_
                       '1
                       '#f
                       '#f))
                    __obj148848))
                 (__tmp148890
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147333%_ _%stx147328%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp148890
             gxc#current-compile-method
             _%self147333%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords147340%_ . _%args147341%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords147340%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147340%_
                  'table:
                  absent-value))
               _%args147341%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args147323147347%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args147323147347%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp148892 (list gxc#::void-expression::t))
            (__tmp148891 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp148892
         '(state)
         __tmp148891
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args147318%_
        (apply make-instance gxc#::generate-meta::t _%$args147318%_)))
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
      (let ((__tmp148893
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
        (__make-promise __tmp148893)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords147292%_ _%state147289147293%_ _%stx147295%_)
        (let ((_%state147298%_
               (if (eq? _%state147289147293%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state147289147293%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self147300%_
                  (let ((__obj148850
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj148850
                       _%state147298%_
                       '1
                       '#f
                       '#f))
                    __obj148850))
                 (__tmp148894
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147300%_ _%stx147295%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp148894
             gxc#current-compile-method
             _%self147300%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords147307%_ . _%args147308%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords147307%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147307%_
                  'state:
                  absent-value))
               _%args147308%_)))
    (define gxc#apply-generate-meta
      (lambda _%args147290147314%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args147290147314%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp148896 (list)) (__tmp148895 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp148896
         '(state)
         __tmp148895
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args147285%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args147285%_)))
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
      (let ((__tmp148897
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
        (__make-promise __tmp148897)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords147259%_ _%state147256147260%_ _%stx147262%_)
        (let ((_%state147265%_
               (if (eq? _%state147256147260%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state147256147260%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self147267%_
                  (let ((__obj148852
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj148852
                       _%state147265%_
                       '1
                       '#f
                       '#f))
                    __obj148852))
                 (__tmp148898
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147267%_ _%stx147262%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp148898
             gxc#current-compile-method
             _%self147267%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords147274%_ . _%args147275%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords147274%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147274%_
                  'state:
                  absent-value))
               _%args147275%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args147257147281%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args147257147281%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self147185%_ _%stx147186%_)
        (let* ((_%g147188147205%_
                (lambda (_%g147189147202%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147189147202%_))))
               (_%g147187147252%_
                (lambda (_%g147189147208%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147189147208%_))
                      (let ((_%e147192147210%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147189147208%_))))
                        (let ((_%hd147193147213%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147192147210%_)))
                              (_%tl147194147215%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147192147210%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147194147215%_))
                              (let ((_%e147195147218%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147194147215%_))))
                                (let ((_%hd147196147221%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147195147218%_)))
                                      (_%tl147197147223%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147195147218%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147197147223%_))
                                      (let ((_%e147198147226%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147197147223%_))))
                                        (let ((_%hd147199147229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147198147226%_)))
                                              (_%tl147200147231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147198147226%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147200147231%_))
                                              ((lambda (_%L147234%_
                                                        _%L147235%_)
                                                 (let ((__tmp148899
                                                        (lambda (_%bind147250%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind147250%_))
                      (gxc#add-module-binding! _%bind147250%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp148899
                                                    _%L147235%_)))
                                               _%hd147199147229%_
                                               _%hd147196147221%_)
                                              (_%g147188147205%_
                                               _%g147189147208%_))))
                                      (_%g147188147205%_ _%g147189147208%_))))
                              (_%g147188147205%_ _%g147189147208%_))))
                      (_%g147188147205%_ _%g147189147208%_)))))
          (_%g147187147252%_ _%stx147186%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self147117%_ _%stx147118%_)
        (let* ((_%g147120147137%_
                (lambda (_%g147121147134%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147121147134%_))))
               (_%g147119147182%_
                (lambda (_%g147121147140%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147121147140%_))
                      (let ((_%e147124147142%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147121147140%_))))
                        (let ((_%hd147125147145%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147124147142%_)))
                              (_%tl147126147147%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147124147142%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147126147147%_))
                              (let ((_%e147127147150%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147126147147%_))))
                                (let ((_%hd147128147153%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147127147150%_)))
                                      (_%tl147129147155%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147127147150%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147129147155%_))
                                      (let ((_%e147130147158%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147129147155%_))))
                                        (let ((_%hd147131147161%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147130147158%_)))
                                              (_%tl147132147163%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147130147158%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147132147163%_))
                                              ((lambda (_%L147166%_
                                                        _%L147167%_)
                                                 (gxc#add-module-binding!
                                                  _%L147167%_
                                                  '#t))
                                               _%hd147131147161%_
                                               _%hd147128147153%_)
                                              (_%g147120147137%_
                                               _%g147121147140%_))))
                                      (_%g147120147137%_ _%g147121147140%_))))
                              (_%g147120147137%_ _%g147121147140%_))))
                      (_%g147120147137%_ _%g147121147140%_)))))
          (_%g147119147182%_ _%stx147118%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self147059%_ _%stx147060%_)
        (let* ((_%g147062147076%_
                (lambda (_%g147063147073%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147063147073%_))))
               (_%g147061147114%_
                (lambda (_%g147063147079%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147063147079%_))
                      (let ((_%e147066147081%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147063147079%_))))
                        (let ((_%hd147067147084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147066147081%_)))
                              (_%tl147068147086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147066147081%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147068147086%_))
                              (let ((_%e147069147089%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147068147086%_))))
                                (let ((_%hd147070147092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147069147089%_)))
                                      (_%tl147071147094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147069147089%_))))
                                  ((lambda (_%L147097%_ _%L147098%_)
                                     (let ((_%ctx147111%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L147098%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self147059%_
                                           'modules))
                                        (cons _%ctx147111%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self147059%_
                                                        'modules)))))
                                       (let ((__tmp148900
                                              (lambda ()
                                                (let ((__tmp148901
                                                       (##structure-ref
                                                        _%ctx147111%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self147059%_
                                                   __tmp148901)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp148900
                                          gx#current-expander-context
                                          _%ctx147111%_))))
                                   _%tl147071147094%_
                                   _%hd147070147092%_)))
                              (_%g147062147076%_ _%g147063147079%_))))
                      (_%g147062147076%_ _%g147063147079%_)))))
          (_%g147061147114%_ _%stx147060%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls147012147014%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls147012147014%_
              (let ((_%decls147017%_ _%decls147012147014%_))
                (let _%lp147019%_ ((_%rest147021%_ _%decls147017%_))
                  (let* ((_%rest147022147030%_ _%rest147021%_)
                         (_%else147024147038%_ (lambda () '#f))
                         (_%K147026147047%_
                          (lambda (_%decls147041%_ _%decl147042%_)
                            (if (equal? _%decl147042%_ '(not safe))
                                '#t
                                (if (equal? _%decl147042%_ '(safe))
                                    '#f
                                    (_%lp147019%_ _%decls147041%_))))))
                    (if (pair? _%rest147022147030%_)
                        (let ((_%hd147027147050%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest147022147030%_)))
                              (_%tl147028147052%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest147022147030%_))))
                          (let* ((_%decl147055%_ _%hd147027147050%_)
                                 (_%decls147057%_ _%tl147028147052%_))
                            (_%K147026147047%_
                             _%decls147057%_
                             _%decl147055%_)))
                        (_%else147024147038%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id147006%_ _%syntax?147007%_)
        (let ((_%eid147009%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id147006%_))
                '1
                gx#binding::t
                '#f))
              (_%ht147010%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid147009%_))
              '#!void
              (let ((__tmp148902
                     (let ((__tmp148903
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid147009%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp148903 _%syntax?147007%_))))
                (declare (not safe))
                (hash-put! _%ht147010%_ _%eid147009%_ __tmp148902))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id147004%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id147004%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key146959%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key146959%_))
            _%key146959%_
            (if (uninterned-symbol? _%key146959%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key146959%_))
                (let* ((_%key146963146970%_ _%key146959%_)
                       (_%E146965146974%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key146963146970%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K146966146992%_
                        (lambda (_%mark146977%_ _%eid146978%_)
                          (let ((_%$e146980%_
                                 (##structure-ref
                                  _%mark146977%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e146980%_
                                ((lambda (_%ht146983%_)
                                   (let ((_%$e146985%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht146983%_
                                             _%eid146978%_))))
                                     (if _%$e146985%_
                                         ((lambda (_%id146988%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id146988%_))
                                                _%id146988%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id146988%_))))
                                          _%$e146985%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid146978%_))))
                                 _%$e146980%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid146978%_))))))
                  (if (pair? _%key146963146970%_)
                      (let ((_%hd146967146995%_
                             (let ()
                               (declare (not safe))
                               (##car _%key146963146970%_)))
                            (_%tl146968146997%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key146963146970%_))))
                        (let* ((_%eid147000%_ _%hd146967146995%_)
                               (_%mark147002%_ _%tl146968146997%_))
                          (_%K146966146992%_ _%mark147002%_ _%eid147000%_)))
                      (_%E146965146974%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self146956%_ _%stx146957%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self146803%_ _%stx146804%_)
        (letrec ((_%simplify146806%_
                  (lambda (_%body146854%_)
                    (let _%lp146856%_ ((_%rest146858%_ _%body146854%_)
                                       (_%r146859%_ '()))
                      (let* ((_%rest146860146868%_ _%rest146858%_)
                             (_%else146862146876%_
                              (lambda () (reverse _%r146859%_)))
                             (_%K146864146944%_
                              (lambda (_%rest146879%_ _%hd146880%_)
                                (let* ((_%hd146881146897%_ _%hd146880%_)
                                       (_%else146885146905%_
                                        (lambda ()
                                          (_%lp146856%_
                                           _%rest146879%_
                                           (cons _%hd146880%_ _%r146859%_)))))
                                  (let ((_%K146893146934%_
                                         (lambda (_%exprs146932%_)
                                           (_%lp146856%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest146879%_
                                               _%exprs146932%_))
                                            _%r146859%_)))
                                        (_%K146888146918%_
                                         (lambda ()
                                           (if (null? _%rest146879%_)
                                               (_%lp146856%_
                                                _%rest146879%_
                                                (cons _%hd146880%_
                                                      _%r146859%_))
                                               (_%lp146856%_
                                                _%rest146879%_
                                                _%r146859%_))))
                                        (_%K146887146910%_
                                         (lambda ()
                                           (if (null? _%rest146879%_)
                                               (_%lp146856%_
                                                _%rest146879%_
                                                (cons _%hd146880%_
                                                      _%r146859%_))
                                               (_%lp146856%_
                                                _%rest146879%_
                                                _%r146859%_)))))
                                    (let ((_%try-match146884146913%_
                                           (lambda ()
                                             (if (symbol? _%hd146881146897%_)
                                                 (_%K146887146910%_)
                                                 (_%else146885146905%_)))))
                                      (if (pair? _%hd146881146897%_)
                                          (let ((_%tl146895146939%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd146881146897%_)))
                                                (_%hd146894146937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd146881146897%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd146894146937%_
                                                         'begin))
                                                (let ((_%exprs146942%_
                                                       _%tl146895146939%_))
                                                  (_%K146893146934%_
                                                   _%exprs146942%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd146894146937%_
                                                             'quote))
                                                    (if (pair? _%tl146895146939%_)
                                                        (let ((_%tl146892146926%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl146895146939%_))))
                  (if (null? _%tl146892146926%_)
                      (_%K146888146918%_)
                      (_%try-match146884146913%_)))
                (_%try-match146884146913%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match146884146913%_))))
                                          (_%try-match146884146913%_))))))))
                        (if (pair? _%rest146860146868%_)
                            (let ((_%hd146865146947%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest146860146868%_)))
                                  (_%tl146866146949%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest146860146868%_))))
                              (let* ((_%hd146952%_ _%hd146865146947%_)
                                     (_%rest146954%_ _%tl146866146949%_))
                                (_%K146864146944%_
                                 _%rest146954%_
                                 _%hd146952%_)))
                            (_%else146862146876%_)))))))
          (let* ((_%g146808146818%_
                  (lambda (_%g146809146815%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g146809146815%_))))
                 (_%g146807146851%_
                  (lambda (_%g146809146821%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g146809146821%_))
                        (let ((_%e146811146823%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g146809146821%_))))
                          (let ((_%hd146812146826%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146811146823%_)))
                                (_%tl146813146828%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146811146823%_))))
                            ((lambda (_%L146831%_)
                               (let* ((_%body146846%_
                                       (map (lambda (_%g146841146843%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self146803%_
                                                 _%g146841146843%_)))
                                            _%L146831%_))
                                      (_%body146848%_
                                       (_%simplify146806%_ _%body146846%_)))
                                 (if (let ((__tmp148904
                                            (length _%body146848%_)))
                                       (declare (not safe))
                                       (##fx= __tmp148904 '1))
                                     (car _%body146848%_)
                                     (cons 'begin _%body146848%_))))
                             _%tl146813146828%_)))
                        (_%g146808146818%_ _%g146809146821%_)))))
            (_%g146807146851%_ _%stx146804%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self146764%_ _%stx146765%_)
        (let* ((_%g146767146777%_
                (lambda (_%g146768146774%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146768146774%_))))
               (_%g146766146800%_
                (lambda (_%g146768146780%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146768146780%_))
                      (let ((_%e146770146782%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146768146780%_))))
                        (let ((_%hd146771146785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146770146782%_)))
                              (_%tl146772146787%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146770146782%_))))
                          ((lambda (_%L146790%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L146790%_))))
                           _%tl146772146787%_)))
                      (_%g146767146777%_ _%g146768146780%_)))))
          (_%g146766146800%_ _%stx146765%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self146528%_ _%stx146529%_)
        (let* ((_%__stx147494147495%_ _%stx146529%_)
               (_%g146533146585%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx147494147495%_)))))
          (let ((_%__kont147496147497%_
                 (lambda (_%L146746%_ _%L146747%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self146528%_ _%L146746%_))))
                (_%__kont147498147499%_
                 (lambda (_%L146694%_ _%L146695%_ _%L146696%_)
                   (if (let ((__tmp148905
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L146696%_))))
                         (declare (not safe))
                         (##memq __tmp148905 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self146528%_ _%L146694%_)))))
                (_%__kont147502147503%_
                 (lambda (_%L146614%_ _%L146615%_)
                   (let ((_%decls146630%_ (map gx#syntax->datum _%L146615%_)))
                     (let ((__tmp148908
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls146630%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self146528%_
                                                   _%L146614%_))
                                                '())))))
                           (__tmp148906
                            (let ((__tmp148907
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp148907 _%decls146630%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp148908
                        gxc#current-compile-decls
                        __tmp148906))))))
            (let* ((_%__match147549147550%_
                    (lambda (_%e146549146638%_
                             _%hd146550146641%_
                             _%tl146551146643%_
                             _%e146552146646%_
                             _%hd146553146649%_
                             _%tl146554146651%_
                             _%e146555146654%_
                             _%hd146556146657%_
                             _%tl146557146659%_
                             _%__splice147500147501%_
                             _%target146558146662%_
                             _%tl146560146664%_)
                      (letrec ((_%loop146561146667%_
                                (lambda (_%hd146559146670%_
                                         _%param146565146672%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd146559146670%_))
                                      (let ((_%e146562146675%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd146559146670%_))))
                                        (let ((_%lp-tl146564146680%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146562146675%_)))
                                              (_%lp-hd146563146678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146562146675%_))))
                                          (_%loop146561146667%_
                                           _%lp-tl146564146680%_
                                           (cons _%lp-hd146563146678%_
                                                 _%param146565146672%_))))
                                      (let ((_%param146566146683%_
                                             (reverse _%param146565146672%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146554146651%_))
                                            (let ((_%e146567146686%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146554146651%_))))
                                              (let ((_%tl146569146691%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146567146686%_)))
                                                    (_%hd146568146689%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146567146686%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl146569146691%_))
                                                    (let ((_%L146694%_
                                                           _%hd146568146689%_)
                                                          (_%L146695%_
                                                           _%param146566146683%_)
                                                          (_%L146696%_
                                                           _%hd146556146657%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L146696%_))
                       (not (let ((__tmp148909
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L146696%_))))
                              (declare (not safe))
                              (##memq __tmp148909 gxc#gambit-annotations))))
                  (_%__kont147498147499%_ _%L146694%_ _%L146695%_ _%L146696%_)
                  (_%__kont147502147503%_
                   _%hd146568146689%_
                   _%hd146553146649%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g146533146585%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g146533146585%_))))))))
                        (_%loop146561146667%_ _%target146558146662%_ '()))))
                   (_%__match147523147524%_
                    (lambda (_%e146537146722%_
                             _%hd146538146725%_
                             _%tl146539146727%_
                             _%e146540146730%_
                             _%hd146541146733%_
                             _%tl146542146735%_
                             _%e146543146738%_
                             _%hd146544146741%_
                             _%tl146545146743%_)
                      (let ((_%L146746%_ _%hd146544146741%_)
                            (_%L146747%_ _%hd146541146733%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L146747%_))
                            (_%__kont147496147497%_ _%L146746%_ _%L146747%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd146541146733%_))
                                (let ((_%e146555146654%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd146541146733%_))))
                                  (let ((_%tl146557146659%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e146555146654%_)))
                                        (_%hd146556146657%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e146555146654%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl146557146659%_))
                                        (let ((_%__splice147500147501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl146557146659%_
                                                  '0))))
                                          (let ((_%tl146560146664%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice147500147501%_
                                                    '1)))
                                                (_%target146558146662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice147500147501%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl146560146664%_))
                                                (_%__match147549147550%_
                                                 _%e146537146722%_
                                                 _%hd146538146725%_
                                                 _%tl146539146727%_
                                                 _%e146540146730%_
                                                 _%hd146541146733%_
                                                 _%tl146542146735%_
                                                 _%e146555146654%_
                                                 _%hd146556146657%_
                                                 _%tl146557146659%_
                                                 _%__splice147500147501%_
                                                 _%target146558146662%_
                                                 _%tl146560146664%_)
                                                (_%__kont147502147503%_
                                                 _%hd146544146741%_
                                                 _%hd146541146733%_))))
                                        (_%__kont147502147503%_
                                         _%hd146544146741%_
                                         _%hd146541146733%_))))
                                (_%__kont147502147503%_
                                 _%hd146544146741%_
                                 _%hd146541146733%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx147494147495%_))
                  (let ((_%e146537146722%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx147494147495%_))))
                    (let ((_%tl146539146727%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146537146722%_)))
                          (_%hd146538146725%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146537146722%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146539146727%_))
                          (let ((_%e146540146730%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146539146727%_))))
                            (let ((_%tl146542146735%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146540146730%_)))
                                  (_%hd146541146733%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146540146730%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl146542146735%_))
                                  (let ((_%e146543146738%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl146542146735%_))))
                                    (let ((_%tl146545146743%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146543146738%_)))
                                          (_%hd146544146741%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146543146738%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl146545146743%_))
                                          (_%__match147523147524%_
                                           _%e146537146722%_
                                           _%hd146538146725%_
                                           _%tl146539146727%_
                                           _%e146540146730%_
                                           _%hd146541146733%_
                                           _%tl146542146735%_
                                           _%e146543146738%_
                                           _%hd146544146741%_
                                           _%tl146545146743%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd146541146733%_))
                                              (let ((_%e146555146654%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd146541146733%_))))
                                                (let ((_%tl146557146659%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146555146654%_)))
                                                      (_%hd146556146657%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146555146654%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl146557146659%_))
                                                      (let ((_%__splice147500147501%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl146557146659%_ '0))))
                (let ((_%tl146560146664%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice147500147501%_ '1)))
                      (_%target146558146662%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice147500147501%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl146560146664%_))
                      (_%__match147549147550%_
                       _%e146537146722%_
                       _%hd146538146725%_
                       _%tl146539146727%_
                       _%e146540146730%_
                       _%hd146541146733%_
                       _%tl146542146735%_
                       _%e146555146654%_
                       _%hd146556146657%_
                       _%tl146557146659%_
                       _%__splice147500147501%_
                       _%target146558146662%_
                       _%tl146560146664%_)
                      (let () (declare (not safe)) (_%g146533146585%_)))))
              (let () (declare (not safe)) (_%g146533146585%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g146533146585%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd146541146733%_))
                                      (let ((_%e146555146654%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd146541146733%_))))
                                        (let ((_%tl146557146659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146555146654%_)))
                                              (_%hd146556146657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146555146654%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl146557146659%_))
                                              (let ((_%__splice147500147501%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl146557146659%_
                                                        '0))))
                                                (let ((_%tl146560146664%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice147500147501%_
                                                          '1)))
                                                      (_%target146558146662%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice147500147501%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146560146664%_))
                                                      (_%__match147549147550%_
                                                       _%e146537146722%_
                                                       _%hd146538146725%_
                                                       _%tl146539146727%_
                                                       _%e146540146730%_
                                                       _%hd146541146733%_
                                                       _%tl146542146735%_
                                                       _%e146555146654%_
                                                       _%hd146556146657%_
                                                       _%tl146557146659%_
                                                       _%__splice147500147501%_
                                                       _%target146558146662%_
                                                       _%tl146560146664%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g146533146585%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g146533146585%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g146533146585%_))))))
                          (let () (declare (not safe)) (_%g146533146585%_)))))
                  (let () (declare (not safe)) (_%g146533146585%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self146487%_ _%stx146488%_)
        (let* ((_%g146490146500%_
                (lambda (_%g146491146497%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146491146497%_))))
               (_%g146489146525%_
                (lambda (_%g146491146503%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146491146503%_))
                      (let ((_%e146493146505%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146491146503%_))))
                        (let ((_%hd146494146508%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146493146505%_)))
                              (_%tl146495146510%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146493146505%_))))
                          ((lambda (_%L146513%_)
                             (let ((_%decls146523%_
                                    (map gx#syntax->datum _%L146513%_)))
                               (let ((__tmp148910
                                      (let ((__tmp148911
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp148911
                                         _%decls146523%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp148910))
                               (cons 'declare _%decls146523%_)))
                           _%tl146495146510%_)))
                      (_%g146490146500%_ _%g146491146503%_)))))
          (_%g146489146525%_ _%stx146488%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self146233%_ _%stx146234%_)
        (let* ((_%g146236146253%_
                (lambda (_%g146237146250%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146237146250%_))))
               (_%g146235146484%_
                (lambda (_%g146237146256%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146237146256%_))
                      (let ((_%e146240146258%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146237146256%_))))
                        (let ((_%hd146241146261%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146240146258%_)))
                              (_%tl146242146263%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146240146258%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146242146263%_))
                              (let ((_%e146243146266%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146242146263%_))))
                                (let ((_%hd146244146269%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146243146266%_)))
                                      (_%tl146245146271%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146243146266%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146245146271%_))
                                      (let ((_%e146246146274%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146245146271%_))))
                                        (let ((_%hd146247146277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146246146274%_)))
                                              (_%tl146248146279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146246146274%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146248146279%_))
                                              ((lambda (_%L146282%_
                                                        _%L146283%_)
                                                 (let* ((_%__stx147602147603%_
                                                         _%L146283%_)
                                                        (_%g146300146314%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx147602147603%_)))))
                                                   (let ((_%__kont147604147605%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self146233%_
                                                               _%L146282%_))))
                                                         (_%__kont147606147607%_
                                                          (lambda (_%L146446%_)
                                                            (let ((_%eid146455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L146446%_))))
                      (let ((_%lambda-expr146456146458%_
                             (gxc#apply-find-lambda-expression _%L146282%_)))
                        (if _%lambda-expr146456146458%_
                            (let* ((_%lambda-expr146461%_
                                    _%lambda-expr146456146458%_)
                                   (__tmp148912
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp148912
                               _%lambda-expr146461%_
                               _%eid146455%_))
                            '#f))
                      (cons 'define
                            (cons _%eid146455%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self146233%_
                                           _%L146282%_))
                                        '()))))))
                 (_%__kont147608147609%_
                  (lambda ()
                    (let* ((_%tmp146321%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body146430%_
                            (let _%lp146323%_ ((_%rest146325%_ _%L146283%_)
                                               (_%k146326%_ '0)
                                               (_%r146327%_ '()))
                              (let* ((_%__stx147572147573%_ _%rest146325%_)
                                     (_%g146332146349%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx147572147573%_)))))
                                (let ((_%__kont147574147575%_
                                       (lambda (_%L146417%_)
                                         (_%lp146323%_
                                          _%L146417%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k146326%_ '1))
                                          _%r146327%_)))
                                      (_%__kont147576147577%_
                                       (lambda (_%L146390%_ _%L146391%_)
                                         (_%lp146323%_
                                          _%L146390%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k146326%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L146391%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp146321%_
                           _%k146326%_
                           _%L146390%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r146327%_))))
                                      (_%__kont147578147579%_
                                       (lambda (_%L146361%_)
                                         (let ((__tmp148913
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L146361%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp146321%_
                                 _%k146326%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp148913
                                            _%r146327%_))))
                                      (_%__kont147580147581%_
                                       (lambda () (reverse _%r146327%_))))
                                  (let ((_%g146330146377%_
                                         (lambda ()
                                           (let ((_%L146361%_
                                                  _%__stx147572147573%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L146361%_))
                                                 (_%__kont147578147579%_
                                                  _%L146361%_)
                                                 (_%__kont147580147581%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx147572147573%_))
                                        (let ((_%e146335146406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx147572147573%_))))
                                          (let ((_%tl146337146411%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146335146406%_)))
                                                (_%hd146336146409%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146335146406%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd146336146409%_))
                                                (let ((_%e146338146414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146336146409%_))))
                                                  (if (equal? _%e146338146414%_
                                                              '#f)
                                                      (_%__kont147574147575%_
                                                       _%tl146337146411%_)
                                                      (_%__kont147576147577%_
                                                       _%tl146337146411%_
                                                       _%hd146336146409%_)))
                                                (_%__kont147576147577%_
                                                 _%tl146337146411%_
                                                 _%hd146336146409%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g146330146377%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp146321%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self146233%_
                                                       _%L146282%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp146321%_
                                         _%L146283%_
                                         _%L146282%_)
                                        _%body146430%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx147602147603%_))
                                                         (let ((_%e146302146468%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx147602147603%_))))
                   (let ((_%tl146304146473%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e146302146468%_)))
                         (_%hd146303146471%_
                          (let ()
                            (declare (not safe))
                            (##car _%e146302146468%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd146303146471%_))
                         (let ((_%e146305146476%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd146303146471%_))))
                           (if (equal? _%e146305146476%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl146304146473%_))
                                   (_%__kont147604147605%_)
                                   (_%__kont147608147609%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl146304146473%_))
                                   (_%__kont147606147607%_ _%hd146303146471%_)
                                   (_%__kont147608147609%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl146304146473%_))
                             (_%__kont147606147607%_ _%hd146303146471%_)
                             (_%__kont147608147609%_)))))
                 (_%__kont147608147609%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd146247146277%_
                                               _%hd146244146269%_)
                                              (_%g146236146253%_
                                               _%g146237146256%_))))
                                      (_%g146236146253%_ _%g146237146256%_))))
                              (_%g146236146253%_ _%g146237146256%_))))
                      (_%g146236146253%_ _%g146237146256%_)))))
          (_%g146235146484%_ _%stx146234%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals146208%_ _%hd146209%_ _%expr146210%_)
        (let ((_%$e146212%_ (gxc#apply-count-values _%expr146210%_)))
          (if _%$e146212%_
              ((lambda (_%count146215%_)
                 (let ((_%len146217%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd146209%_)))
                       (_%cmp146218%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd146209%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len146217%_ '0))
                           (_%cmp146218%_ _%count146215%_ _%len146217%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr146210%_
                          _%hd146209%_)))))
               _%$e146212%_)
              (let* ((_%len146224%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd146209%_)))
                     (_%cmp146226%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd146209%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg146228%_
                      (let ((__tmp148915
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd146209%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp148914 (number->string _%len146224%_)))
                        (declare (not safe))
                        (##string-append __tmp148915 __tmp148914 '" values")))
                     (_%count146230%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd146209%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len146224%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count146230%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals146208%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp146226%_
                                (cons _%count146230%_
                                      (cons _%len146224%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp146226%_
                                                        (cons _%count146230%_
                                                              (cons _%len146224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg146228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count146230%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var146203%_)
        (letrec ((_%generate-inline146205%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var146203%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var146203%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline146205%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline146205%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var146196%_ _%i146197%_ _%rest146198%_)
        (letrec ((_%generate-inline146200%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i146197%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest146198%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var146196%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var146196%_
                                                      (cons '0 '())))
                                          (cons _%var146196%_ '()))))
                        (cons '##vector-ref
                              (cons _%var146196%_ (cons _%i146197%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline146200%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline146200%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var146190%_ _%i146191%_)
        (if (let () (declare (not safe)) (##fx= _%i146191%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var146190%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var146190%_ '()))
                                  (cons (cons 'list (cons _%var146190%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var146190%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var146190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var146190%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i146191%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var146190%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var146190%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var146190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var146190%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var146190%_ '()))
                                (cons _%i146191%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var146190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i146191%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self146122%_ _%stx146123%_)
        (let* ((_%g146125146142%_
                (lambda (_%g146126146139%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146126146139%_))))
               (_%g146124146187%_
                (lambda (_%g146126146145%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146126146145%_))
                      (let ((_%e146129146147%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146126146145%_))))
                        (let ((_%hd146130146150%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146129146147%_)))
                              (_%tl146131146152%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146129146147%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146131146152%_))
                              (let ((_%e146132146155%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146131146152%_))))
                                (let ((_%hd146133146158%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146132146155%_)))
                                      (_%tl146134146160%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146132146155%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146134146160%_))
                                      (let ((_%e146135146163%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146134146160%_))))
                                        (let ((_%hd146136146166%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146135146163%_)))
                                              (_%tl146137146168%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146135146163%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146137146168%_))
                                              ((lambda (_%L146171%_
                                                        _%L146172%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self146122%_
                                                  _%L146172%_
                                                  _%L146171%_))
                                               _%hd146136146166%_
                                               _%hd146133146158%_)
                                              (_%g146125146142%_
                                               _%g146126146145%_))))
                                      (_%g146125146142%_ _%g146126146145%_))))
                              (_%g146125146142%_ _%g146126146145%_))))
                      (_%g146125146142%_ _%g146126146145%_)))))
          (_%g146124146187%_ _%stx146123%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self146081%_ _%hd146082%_ _%body146083%_)
        (let* ((_%hd146085%_ (gxc#generate-runtime-lambda-head _%hd146082%_))
               (_%body146087%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self146081%_ _%body146083%_)))
               (_%body146119%_
                (let* ((_%body146088146096%_ _%body146087%_)
                       (_%else146090146104%_
                        (lambda () (cons _%body146087%_ '())))
                       (_%K146092146109%_
                        (lambda (_%exprs146107%_) _%exprs146107%_)))
                  (if (pair? _%body146088146096%_)
                      (let ((_%hd146093146112%_
                             (let ()
                               (declare (not safe))
                               (##car _%body146088146096%_)))
                            (_%tl146094146114%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body146088146096%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd146093146112%_ 'begin))
                            (let ((_%exprs146117%_ _%tl146094146114%_))
                              (_%K146092146109%_ _%exprs146117%_))
                            (_%else146090146104%_)))
                      (_%else146090146104%_)))))
          (cons 'lambda (cons _%hd146085%_ _%body146119%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd146079%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd146079%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self144618%_ _%stx144619%_)
        (letrec ((_%dispatch-case?144621%_
                  (lambda (_%hd145309%_ _%body145310%_)
                    (let* ((_%form145312%_
                            (cons _%hd145309%_ (cons _%body145310%_ '())))
                           (_%__stx147634147635%_ _%form145312%_)
                           (_%g145317145474%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx147634147635%_)))))
                      (let ((_%__kont147636147637%_
                             (lambda (_%L145999%_ _%L146000%_ _%L146001%_)
                               '#t))
                            (_%__kont147642147643%_
                             (lambda (_%L145787%_
                                      _%L145788%_
                                      _%L145789%_
                                      _%L145790%_
                                      _%L145791%_
                                      _%L145792%_)
                               '#t))
                            (_%__kont147648147649%_
                             (lambda (_%L145582%_
                                      _%L145583%_
                                      _%L145584%_
                                      _%L145585%_)
                               '#t))
                            (_%__kont147650147651%_ (lambda () '#f)))
                        (let* ((_%__match147775147776%_
                                (lambda (_%e145434145486%_
                                         _%hd145435145489%_
                                         _%tl145436145491%_
                                         _%e145437145494%_
                                         _%hd145438145497%_
                                         _%tl145439145499%_
                                         _%e145440145502%_
                                         _%hd145441145505%_
                                         _%tl145442145507%_
                                         _%e145443145510%_
                                         _%hd145444145513%_
                                         _%tl145445145515%_
                                         _%e145446145518%_
                                         _%hd145447145521%_
                                         _%tl145448145523%_
                                         _%e145449145526%_
                                         _%hd145450145529%_
                                         _%tl145451145531%_
                                         _%e145452145534%_
                                         _%hd145453145537%_
                                         _%tl145454145539%_
                                         _%e145455145542%_
                                         _%hd145456145545%_
                                         _%tl145457145547%_
                                         _%e145458145550%_
                                         _%hd145459145553%_
                                         _%tl145460145555%_
                                         _%e145461145558%_
                                         _%hd145462145561%_
                                         _%tl145463145563%_
                                         _%e145464145566%_
                                         _%hd145465145569%_
                                         _%tl145466145571%_
                                         _%e145467145574%_
                                         _%hd145468145577%_
                                         _%tl145469145579%_)
                                  (let ((_%L145582%_ _%hd145468145577%_)
                                        (_%L145583%_ _%hd145459145553%_)
                                        (_%L145584%_ _%hd145450145529%_)
                                        (_%L145585%_ _%hd145435145489%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L145585%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L145584%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L145585%_
                                                _%L145582%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L145583%_
                                                     _%L145585%_))))
                                        (_%__kont147648147649%_
                                         _%L145582%_
                                         _%L145583%_
                                         _%L145584%_
                                         _%L145585%_)
                                        (_%__kont147650147651%_)))))
                               (_%__match147747147748%_
                                (lambda (_%e145434145486%_
                                         _%hd145435145489%_
                                         _%tl145436145491%_
                                         _%e145437145494%_
                                         _%hd145438145497%_
                                         _%tl145439145499%_
                                         _%e145440145502%_
                                         _%hd145441145505%_
                                         _%tl145442145507%_
                                         _%e145443145510%_
                                         _%hd145444145513%_
                                         _%tl145445145515%_
                                         _%e145446145518%_
                                         _%hd145447145521%_
                                         _%tl145448145523%_
                                         _%e145449145526%_
                                         _%hd145450145529%_
                                         _%tl145451145531%_
                                         _%e145452145534%_
                                         _%hd145453145537%_
                                         _%tl145454145539%_
                                         _%e145455145542%_
                                         _%hd145456145545%_
                                         _%tl145457145547%_
                                         _%e145458145550%_
                                         _%hd145459145553%_
                                         _%tl145460145555%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145454145539%_))
                                      (let ((_%e145461145558%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145454145539%_))))
                                        (let ((_%tl145463145563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145461145558%_)))
                                              (_%hd145462145561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145461145558%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd145462145561%_))
                                              (let ((_%e145464145566%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd145462145561%_))))
                                                (let ((_%tl145466145571%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145464145566%_)))
                                                      (_%hd145465145569%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145464145566%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd145465145569%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd145465145569%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl145466145571%_))
                      (let ((_%e145467145574%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl145466145571%_))))
                        (let ((_%tl145469145579%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145467145574%_)))
                              (_%hd145468145577%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145467145574%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl145469145579%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl145463145563%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145439145499%_))
                                      (_%__match147775147776%_
                                       _%e145434145486%_
                                       _%hd145435145489%_
                                       _%tl145436145491%_
                                       _%e145437145494%_
                                       _%hd145438145497%_
                                       _%tl145439145499%_
                                       _%e145440145502%_
                                       _%hd145441145505%_
                                       _%tl145442145507%_
                                       _%e145443145510%_
                                       _%hd145444145513%_
                                       _%tl145445145515%_
                                       _%e145446145518%_
                                       _%hd145447145521%_
                                       _%tl145448145523%_
                                       _%e145449145526%_
                                       _%hd145450145529%_
                                       _%tl145451145531%_
                                       _%e145452145534%_
                                       _%hd145453145537%_
                                       _%tl145454145539%_
                                       _%e145455145542%_
                                       _%hd145456145545%_
                                       _%tl145457145547%_
                                       _%e145458145550%_
                                       _%hd145459145553%_
                                       _%tl145460145555%_
                                       _%e145461145558%_
                                       _%hd145462145561%_
                                       _%tl145463145563%_
                                       _%e145464145566%_
                                       _%hd145465145569%_
                                       _%tl145466145571%_
                                       _%e145467145574%_
                                       _%hd145468145577%_
                                       _%tl145469145579%_)
                                      (_%__kont147650147651%_))
                                  (_%__kont147650147651%_))
                              (_%__kont147650147651%_))))
                      (_%__kont147650147651%_))
                  (_%__kont147650147651%_))
              (_%__kont147650147651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont147650147651%_))))
                                      (_%__kont147650147651%_))))
                               (_%__match147677147678%_
                                (lambda (_%e145370145627%_
                                         _%hd145371145630%_
                                         _%tl145372145632%_
                                         _%__splice147644147645%_
                                         _%target145373145635%_
                                         _%tl145375145637%_)
                                  (letrec ((_%loop145376145640%_
                                            (lambda (_%hd145374145643%_
                                                     _%arg145380145645%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145374145643%_))
                                                  (let ((_%e145377145648%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145374145643%_))))
                                                    (let ((_%lp-tl145379145653%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145377145648%_)))
                                                          (_%lp-hd145378145651%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145377145648%_))))
                                                      (_%loop145376145640%_
                                                       _%lp-tl145379145653%_
                                                       (cons _%lp-hd145378145651%_
                                                             _%arg145380145645%_))))
                                                  (let ((_%arg145381145656%_
                                                         (reverse _%arg145380145645%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl145372145632%_))
                                                        (let ((_%e145382145659%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl145372145632%_))))
                  (let ((_%tl145384145664%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145382145659%_)))
                        (_%hd145383145662%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145382145659%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145383145662%_))
                        (let ((_%e145385145667%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145383145662%_))))
                          (let ((_%tl145387145672%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145385145667%_)))
                                (_%hd145386145670%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145385145667%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145386145670%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd145386145670%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145387145672%_))
                                        (let ((_%e145388145675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145387145672%_))))
                                          (let ((_%tl145390145680%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145388145675%_)))
                                                (_%hd145389145678%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145388145675%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd145389145678%_))
                                                (let ((_%e145391145683%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145389145678%_))))
                                                  (let ((_%tl145393145688%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e145391145683%_)))
                                                        (_%hd145392145686%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e145391145683%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd145392145686%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd145392145686%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl145393145688%_))
                        (let ((_%e145394145691%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl145393145688%_))))
                          (let ((_%tl145396145696%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145394145691%_)))
                                (_%hd145395145694%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145394145691%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145396145696%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl145390145680%_))
                                    (let ((_%e145397145699%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl145390145680%_))))
                                      (let ((_%tl145399145704%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e145397145699%_)))
                                            (_%hd145398145702%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e145397145699%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd145398145702%_))
                                            (let ((_%e145400145707%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd145398145702%_))))
                                              (let ((_%tl145402145712%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145400145707%_)))
                                                    (_%hd145401145710%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145400145707%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd145401145710%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd145401145710%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl145402145712%_))
                                                            (let ((_%e145403145715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl145402145712%_))))
                      (let ((_%tl145405145720%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145403145715%_)))
                            (_%hd145404145718%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145403145715%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl145405145720%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl145399145704%_))
                                (if (let ((__tmp148916
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl145399145704%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp148916 '1))
                                    (let ((_%__splice147646147647%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl145399145704%_
                                              '1))))
                                      (let ((_%tl145408145725%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147646147647%_
                                                '1)))
                                            (_%target145406145723%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147646147647%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl145408145725%_))
                                            (let ((_%e145415145728%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl145408145725%_))))
                                              (let ((_%tl145417145733%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145415145728%_)))
                                                    (_%hd145416145731%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145415145728%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd145416145731%_))
                                                    (let ((_%e145418145736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd145416145731%_))))
                                                      (let ((_%tl145420145741%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e145418145736%_)))
                    (_%hd145419145739%_
                     (let () (declare (not safe)) (##car _%e145418145736%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd145419145739%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd145419145739%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl145420145741%_))
                            (let ((_%e145421145744%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl145420145741%_))))
                              (let ((_%tl145423145749%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e145421145744%_)))
                                    (_%hd145422145747%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e145421145744%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl145423145749%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl145417145733%_))
                                        (letrec ((_%loop145409145752%_
                                                  (lambda (_%hd145407145755%_
                                                           _%xarg145413145757%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd145407145755%_))
                                                        (let ((_%e145410145760%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd145407145755%_))))
                  (let ((_%lp-tl145412145765%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145410145760%_)))
                        (_%lp-hd145411145763%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145410145760%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd145411145763%_))
                        (let ((_%e145424145768%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd145411145763%_))))
                          (let ((_%tl145426145773%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145424145768%_)))
                                (_%hd145425145771%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145424145768%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145425145771%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd145425145771%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145426145773%_))
                                        (let ((_%e145427145776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145426145773%_))))
                                          (let ((_%tl145429145781%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145427145776%_)))
                                                (_%hd145428145779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145427145776%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145429145781%_))
                                                (_%loop145409145752%_
                                                 _%lp-tl145412145765%_
                                                 (cons _%hd145428145779%_
                                                       _%xarg145413145757%_))
                                                (_%__match147747147748%_
                                                 _%e145370145627%_
                                                 _%hd145371145630%_
                                                 _%tl145372145632%_
                                                 _%e145382145659%_
                                                 _%hd145383145662%_
                                                 _%tl145384145664%_
                                                 _%e145385145667%_
                                                 _%hd145386145670%_
                                                 _%tl145387145672%_
                                                 _%e145388145675%_
                                                 _%hd145389145678%_
                                                 _%tl145390145680%_
                                                 _%e145391145683%_
                                                 _%hd145392145686%_
                                                 _%tl145393145688%_
                                                 _%e145394145691%_
                                                 _%hd145395145694%_
                                                 _%tl145396145696%_
                                                 _%e145397145699%_
                                                 _%hd145398145702%_
                                                 _%tl145399145704%_
                                                 _%e145400145707%_
                                                 _%hd145401145710%_
                                                 _%tl145402145712%_
                                                 _%e145403145715%_
                                                 _%hd145404145718%_
                                                 _%tl145405145720%_))))
                                        (_%__match147747147748%_
                                         _%e145370145627%_
                                         _%hd145371145630%_
                                         _%tl145372145632%_
                                         _%e145382145659%_
                                         _%hd145383145662%_
                                         _%tl145384145664%_
                                         _%e145385145667%_
                                         _%hd145386145670%_
                                         _%tl145387145672%_
                                         _%e145388145675%_
                                         _%hd145389145678%_
                                         _%tl145390145680%_
                                         _%e145391145683%_
                                         _%hd145392145686%_
                                         _%tl145393145688%_
                                         _%e145394145691%_
                                         _%hd145395145694%_
                                         _%tl145396145696%_
                                         _%e145397145699%_
                                         _%hd145398145702%_
                                         _%tl145399145704%_
                                         _%e145400145707%_
                                         _%hd145401145710%_
                                         _%tl145402145712%_
                                         _%e145403145715%_
                                         _%hd145404145718%_
                                         _%tl145405145720%_))
                                    (_%__match147747147748%_
                                     _%e145370145627%_
                                     _%hd145371145630%_
                                     _%tl145372145632%_
                                     _%e145382145659%_
                                     _%hd145383145662%_
                                     _%tl145384145664%_
                                     _%e145385145667%_
                                     _%hd145386145670%_
                                     _%tl145387145672%_
                                     _%e145388145675%_
                                     _%hd145389145678%_
                                     _%tl145390145680%_
                                     _%e145391145683%_
                                     _%hd145392145686%_
                                     _%tl145393145688%_
                                     _%e145394145691%_
                                     _%hd145395145694%_
                                     _%tl145396145696%_
                                     _%e145397145699%_
                                     _%hd145398145702%_
                                     _%tl145399145704%_
                                     _%e145400145707%_
                                     _%hd145401145710%_
                                     _%tl145402145712%_
                                     _%e145403145715%_
                                     _%hd145404145718%_
                                     _%tl145405145720%_))
                                (_%__match147747147748%_
                                 _%e145370145627%_
                                 _%hd145371145630%_
                                 _%tl145372145632%_
                                 _%e145382145659%_
                                 _%hd145383145662%_
                                 _%tl145384145664%_
                                 _%e145385145667%_
                                 _%hd145386145670%_
                                 _%tl145387145672%_
                                 _%e145388145675%_
                                 _%hd145389145678%_
                                 _%tl145390145680%_
                                 _%e145391145683%_
                                 _%hd145392145686%_
                                 _%tl145393145688%_
                                 _%e145394145691%_
                                 _%hd145395145694%_
                                 _%tl145396145696%_
                                 _%e145397145699%_
                                 _%hd145398145702%_
                                 _%tl145399145704%_
                                 _%e145400145707%_
                                 _%hd145401145710%_
                                 _%tl145402145712%_
                                 _%e145403145715%_
                                 _%hd145404145718%_
                                 _%tl145405145720%_))))
                        (_%__match147747147748%_
                         _%e145370145627%_
                         _%hd145371145630%_
                         _%tl145372145632%_
                         _%e145382145659%_
                         _%hd145383145662%_
                         _%tl145384145664%_
                         _%e145385145667%_
                         _%hd145386145670%_
                         _%tl145387145672%_
                         _%e145388145675%_
                         _%hd145389145678%_
                         _%tl145390145680%_
                         _%e145391145683%_
                         _%hd145392145686%_
                         _%tl145393145688%_
                         _%e145394145691%_
                         _%hd145395145694%_
                         _%tl145396145696%_
                         _%e145397145699%_
                         _%hd145398145702%_
                         _%tl145399145704%_
                         _%e145400145707%_
                         _%hd145401145710%_
                         _%tl145402145712%_
                         _%e145403145715%_
                         _%hd145404145718%_
                         _%tl145405145720%_))))
                (let ((_%xarg145414145784%_ (reverse _%xarg145413145757%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl145384145664%_))
                      (let ((_%L145787%_ _%hd145422145747%_)
                            (_%L145788%_ _%xarg145414145784%_)
                            (_%L145789%_ _%hd145404145718%_)
                            (_%L145790%_ _%hd145395145694%_)
                            (_%L145791%_ _%tl145375145637%_)
                            (_%L145792%_ _%arg145381145656%_))
                        (if (and (let ((__tmp148917
                                        (let ((__tmp148918
                                               (lambda (_%g145835145838%_
                                                        _%g145836145840%_)
                                                 (cons _%g145835145838%_
                                                       _%g145836145840%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp148918
                                           '()
                                           _%L145792%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp148917))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L145791%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L145790%_
                                    'apply))
                                 (let ((__tmp148921
                                        (length (let ((__tmp148922
                                                       (lambda (_%g145842145845%_
                                                                _%g145843145847%_)
                                                         (cons _%g145842145845%_
                                                               _%g145843145847%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp148922
                                                   '()
                                                   _%L145792%_))))
                                       (__tmp148919
                                        (length (let ((__tmp148920
                                                       (lambda (_%g145849145852%_
                                                                _%g145850145854%_)
                                                         (cons _%g145849145852%_
                                                               _%g145850145854%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp148920
                                                   '()
                                                   _%L145788%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp148921 __tmp148919))
                                 (let ((__tmp148925
                                        (let ((__tmp148926
                                               (lambda (_%g145856145859%_
                                                        _%g145857145861%_)
                                                 (cons _%g145856145859%_
                                                       _%g145857145861%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp148926
                                           '()
                                           _%L145792%_)))
                                       (__tmp148923
                                        (let ((__tmp148924
                                               (lambda (_%g145863145866%_
                                                        _%g145864145868%_)
                                                 (cons _%g145863145866%_
                                                       _%g145864145868%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp148924
                                           '()
                                           _%L145788%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp148925
                                    __tmp148923))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L145791%_
                                    _%L145787%_))
                                 (not (let ((__tmp148930
                                             (lambda (_%g145870145872%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g145870145872%_
                                                  _%L145789%_))))
                                            (__tmp148927
                                             (let ((__tmp148929
                                                    (lambda (_%g145874145877%_
                                                             _%g145875145879%_)
                                                      (cons _%g145874145877%_
                                                            _%g145875145879%_)))
                                                   (__tmp148928
                                                    (cons _%L145791%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp148929
                                                __tmp148928
                                                _%L145792%_))))
                                        (declare (not safe))
                                        (__find __tmp148930 __tmp148927))))
                            (_%__kont147642147643%_
                             _%L145787%_
                             _%L145788%_
                             _%L145789%_
                             _%L145790%_
                             _%L145791%_
                             _%L145792%_)
                            (_%__match147747147748%_
                             _%e145370145627%_
                             _%hd145371145630%_
                             _%tl145372145632%_
                             _%e145382145659%_
                             _%hd145383145662%_
                             _%tl145384145664%_
                             _%e145385145667%_
                             _%hd145386145670%_
                             _%tl145387145672%_
                             _%e145388145675%_
                             _%hd145389145678%_
                             _%tl145390145680%_
                             _%e145391145683%_
                             _%hd145392145686%_
                             _%tl145393145688%_
                             _%e145394145691%_
                             _%hd145395145694%_
                             _%tl145396145696%_
                             _%e145397145699%_
                             _%hd145398145702%_
                             _%tl145399145704%_
                             _%e145400145707%_
                             _%hd145401145710%_
                             _%tl145402145712%_
                             _%e145403145715%_
                             _%hd145404145718%_
                             _%tl145405145720%_)))
                      (_%__match147747147748%_
                       _%e145370145627%_
                       _%hd145371145630%_
                       _%tl145372145632%_
                       _%e145382145659%_
                       _%hd145383145662%_
                       _%tl145384145664%_
                       _%e145385145667%_
                       _%hd145386145670%_
                       _%tl145387145672%_
                       _%e145388145675%_
                       _%hd145389145678%_
                       _%tl145390145680%_
                       _%e145391145683%_
                       _%hd145392145686%_
                       _%tl145393145688%_
                       _%e145394145691%_
                       _%hd145395145694%_
                       _%tl145396145696%_
                       _%e145397145699%_
                       _%hd145398145702%_
                       _%tl145399145704%_
                       _%e145400145707%_
                       _%hd145401145710%_
                       _%tl145402145712%_
                       _%e145403145715%_
                       _%hd145404145718%_
                       _%tl145405145720%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop145409145752%_
                                           _%target145406145723%_
                                           '()))
                                        (_%__match147747147748%_
                                         _%e145370145627%_
                                         _%hd145371145630%_
                                         _%tl145372145632%_
                                         _%e145382145659%_
                                         _%hd145383145662%_
                                         _%tl145384145664%_
                                         _%e145385145667%_
                                         _%hd145386145670%_
                                         _%tl145387145672%_
                                         _%e145388145675%_
                                         _%hd145389145678%_
                                         _%tl145390145680%_
                                         _%e145391145683%_
                                         _%hd145392145686%_
                                         _%tl145393145688%_
                                         _%e145394145691%_
                                         _%hd145395145694%_
                                         _%tl145396145696%_
                                         _%e145397145699%_
                                         _%hd145398145702%_
                                         _%tl145399145704%_
                                         _%e145400145707%_
                                         _%hd145401145710%_
                                         _%tl145402145712%_
                                         _%e145403145715%_
                                         _%hd145404145718%_
                                         _%tl145405145720%_))
                                    (_%__match147747147748%_
                                     _%e145370145627%_
                                     _%hd145371145630%_
                                     _%tl145372145632%_
                                     _%e145382145659%_
                                     _%hd145383145662%_
                                     _%tl145384145664%_
                                     _%e145385145667%_
                                     _%hd145386145670%_
                                     _%tl145387145672%_
                                     _%e145388145675%_
                                     _%hd145389145678%_
                                     _%tl145390145680%_
                                     _%e145391145683%_
                                     _%hd145392145686%_
                                     _%tl145393145688%_
                                     _%e145394145691%_
                                     _%hd145395145694%_
                                     _%tl145396145696%_
                                     _%e145397145699%_
                                     _%hd145398145702%_
                                     _%tl145399145704%_
                                     _%e145400145707%_
                                     _%hd145401145710%_
                                     _%tl145402145712%_
                                     _%e145403145715%_
                                     _%hd145404145718%_
                                     _%tl145405145720%_))))
                            (_%__match147747147748%_
                             _%e145370145627%_
                             _%hd145371145630%_
                             _%tl145372145632%_
                             _%e145382145659%_
                             _%hd145383145662%_
                             _%tl145384145664%_
                             _%e145385145667%_
                             _%hd145386145670%_
                             _%tl145387145672%_
                             _%e145388145675%_
                             _%hd145389145678%_
                             _%tl145390145680%_
                             _%e145391145683%_
                             _%hd145392145686%_
                             _%tl145393145688%_
                             _%e145394145691%_
                             _%hd145395145694%_
                             _%tl145396145696%_
                             _%e145397145699%_
                             _%hd145398145702%_
                             _%tl145399145704%_
                             _%e145400145707%_
                             _%hd145401145710%_
                             _%tl145402145712%_
                             _%e145403145715%_
                             _%hd145404145718%_
                             _%tl145405145720%_))
                        (_%__match147747147748%_
                         _%e145370145627%_
                         _%hd145371145630%_
                         _%tl145372145632%_
                         _%e145382145659%_
                         _%hd145383145662%_
                         _%tl145384145664%_
                         _%e145385145667%_
                         _%hd145386145670%_
                         _%tl145387145672%_
                         _%e145388145675%_
                         _%hd145389145678%_
                         _%tl145390145680%_
                         _%e145391145683%_
                         _%hd145392145686%_
                         _%tl145393145688%_
                         _%e145394145691%_
                         _%hd145395145694%_
                         _%tl145396145696%_
                         _%e145397145699%_
                         _%hd145398145702%_
                         _%tl145399145704%_
                         _%e145400145707%_
                         _%hd145401145710%_
                         _%tl145402145712%_
                         _%e145403145715%_
                         _%hd145404145718%_
                         _%tl145405145720%_))
                    (_%__match147747147748%_
                     _%e145370145627%_
                     _%hd145371145630%_
                     _%tl145372145632%_
                     _%e145382145659%_
                     _%hd145383145662%_
                     _%tl145384145664%_
                     _%e145385145667%_
                     _%hd145386145670%_
                     _%tl145387145672%_
                     _%e145388145675%_
                     _%hd145389145678%_
                     _%tl145390145680%_
                     _%e145391145683%_
                     _%hd145392145686%_
                     _%tl145393145688%_
                     _%e145394145691%_
                     _%hd145395145694%_
                     _%tl145396145696%_
                     _%e145397145699%_
                     _%hd145398145702%_
                     _%tl145399145704%_
                     _%e145400145707%_
                     _%hd145401145710%_
                     _%tl145402145712%_
                     _%e145403145715%_
                     _%hd145404145718%_
                     _%tl145405145720%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match147747147748%_
                                                     _%e145370145627%_
                                                     _%hd145371145630%_
                                                     _%tl145372145632%_
                                                     _%e145382145659%_
                                                     _%hd145383145662%_
                                                     _%tl145384145664%_
                                                     _%e145385145667%_
                                                     _%hd145386145670%_
                                                     _%tl145387145672%_
                                                     _%e145388145675%_
                                                     _%hd145389145678%_
                                                     _%tl145390145680%_
                                                     _%e145391145683%_
                                                     _%hd145392145686%_
                                                     _%tl145393145688%_
                                                     _%e145394145691%_
                                                     _%hd145395145694%_
                                                     _%tl145396145696%_
                                                     _%e145397145699%_
                                                     _%hd145398145702%_
                                                     _%tl145399145704%_
                                                     _%e145400145707%_
                                                     _%hd145401145710%_
                                                     _%tl145402145712%_
                                                     _%e145403145715%_
                                                     _%hd145404145718%_
                                                     _%tl145405145720%_))))
                                            (_%__match147747147748%_
                                             _%e145370145627%_
                                             _%hd145371145630%_
                                             _%tl145372145632%_
                                             _%e145382145659%_
                                             _%hd145383145662%_
                                             _%tl145384145664%_
                                             _%e145385145667%_
                                             _%hd145386145670%_
                                             _%tl145387145672%_
                                             _%e145388145675%_
                                             _%hd145389145678%_
                                             _%tl145390145680%_
                                             _%e145391145683%_
                                             _%hd145392145686%_
                                             _%tl145393145688%_
                                             _%e145394145691%_
                                             _%hd145395145694%_
                                             _%tl145396145696%_
                                             _%e145397145699%_
                                             _%hd145398145702%_
                                             _%tl145399145704%_
                                             _%e145400145707%_
                                             _%hd145401145710%_
                                             _%tl145402145712%_
                                             _%e145403145715%_
                                             _%hd145404145718%_
                                             _%tl145405145720%_))))
                                    (_%__match147747147748%_
                                     _%e145370145627%_
                                     _%hd145371145630%_
                                     _%tl145372145632%_
                                     _%e145382145659%_
                                     _%hd145383145662%_
                                     _%tl145384145664%_
                                     _%e145385145667%_
                                     _%hd145386145670%_
                                     _%tl145387145672%_
                                     _%e145388145675%_
                                     _%hd145389145678%_
                                     _%tl145390145680%_
                                     _%e145391145683%_
                                     _%hd145392145686%_
                                     _%tl145393145688%_
                                     _%e145394145691%_
                                     _%hd145395145694%_
                                     _%tl145396145696%_
                                     _%e145397145699%_
                                     _%hd145398145702%_
                                     _%tl145399145704%_
                                     _%e145400145707%_
                                     _%hd145401145710%_
                                     _%tl145402145712%_
                                     _%e145403145715%_
                                     _%hd145404145718%_
                                     _%tl145405145720%_))
                                (_%__match147747147748%_
                                 _%e145370145627%_
                                 _%hd145371145630%_
                                 _%tl145372145632%_
                                 _%e145382145659%_
                                 _%hd145383145662%_
                                 _%tl145384145664%_
                                 _%e145385145667%_
                                 _%hd145386145670%_
                                 _%tl145387145672%_
                                 _%e145388145675%_
                                 _%hd145389145678%_
                                 _%tl145390145680%_
                                 _%e145391145683%_
                                 _%hd145392145686%_
                                 _%tl145393145688%_
                                 _%e145394145691%_
                                 _%hd145395145694%_
                                 _%tl145396145696%_
                                 _%e145397145699%_
                                 _%hd145398145702%_
                                 _%tl145399145704%_
                                 _%e145400145707%_
                                 _%hd145401145710%_
                                 _%tl145402145712%_
                                 _%e145403145715%_
                                 _%hd145404145718%_
                                 _%tl145405145720%_))
                            (_%__kont147650147651%_))))
                    (_%__kont147650147651%_))
                (_%__kont147650147651%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont147650147651%_))))
                                            (_%__kont147650147651%_))))
                                    (_%__kont147650147651%_))
                                (_%__kont147650147651%_))))
                        (_%__kont147650147651%_))
                    (_%__kont147650147651%_))
                (_%__kont147650147651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont147650147651%_))))
                                        (_%__kont147650147651%_))
                                    (_%__kont147650147651%_))
                                (_%__kont147650147651%_))))
                        (_%__kont147650147651%_))))
                (_%__kont147650147651%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop145376145640%_
                                     _%target145373145635%_
                                     '()))))
                               (_%__match147665147666%_
                                (lambda (_%e145322145887%_
                                         _%hd145323145890%_
                                         _%tl145324145892%_
                                         _%__splice147638147639%_
                                         _%target145325145895%_
                                         _%tl145327145897%_)
                                  (letrec ((_%loop145328145900%_
                                            (lambda (_%hd145326145903%_
                                                     _%arg145332145905%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145326145903%_))
                                                  (let ((_%e145329145908%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145326145903%_))))
                                                    (let ((_%lp-tl145331145913%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145329145908%_)))
                                                          (_%lp-hd145330145911%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145329145908%_))))
                                                      (_%loop145328145900%_
                                                       _%lp-tl145331145913%_
                                                       (cons _%lp-hd145330145911%_
                                                             _%arg145332145905%_))))
                                                  (let ((_%arg145333145916%_
                                                         (reverse _%arg145332145905%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl145324145892%_))
                                                        (let ((_%e145334145919%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl145324145892%_))))
                  (let ((_%tl145336145924%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145334145919%_)))
                        (_%hd145335145922%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145334145919%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145335145922%_))
                        (let ((_%e145337145927%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145335145922%_))))
                          (let ((_%tl145339145932%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145337145927%_)))
                                (_%hd145338145930%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145337145927%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145338145930%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd145338145930%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145339145932%_))
                                        (let ((_%e145340145935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145339145932%_))))
                                          (let ((_%tl145342145940%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145340145935%_)))
                                                (_%hd145341145938%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145340145935%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd145341145938%_))
                                                (let ((_%e145343145943%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145341145938%_))))
                                                  (let ((_%tl145345145948%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e145343145943%_)))
                                                        (_%hd145344145946%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e145343145943%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd145344145946%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd145344145946%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl145345145948%_))
                        (let ((_%e145346145951%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl145345145948%_))))
                          (let ((_%tl145348145956%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145346145951%_)))
                                (_%hd145347145954%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145346145951%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145348145956%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl145342145940%_))
                                    (let ((_%__splice147640147641%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl145342145940%_
                                              '0))))
                                      (let ((_%tl145351145961%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147640147641%_
                                                '1)))
                                            (_%target145349145959%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147640147641%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl145351145961%_))
                                            (letrec ((_%loop145352145964%_
                                                      (lambda (_%hd145350145967%_
                                                               _%xarg145356145969%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd145350145967%_))
                                                            (let ((_%e145353145972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd145350145967%_))))
                      (let ((_%lp-tl145355145977%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145353145972%_)))
                            (_%lp-hd145354145975%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145353145972%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd145354145975%_))
                            (let ((_%e145358145980%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd145354145975%_))))
                              (let ((_%tl145360145985%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e145358145980%_)))
                                    (_%hd145359145983%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e145358145980%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd145359145983%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd145359145983%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl145360145985%_))
                                            (let ((_%e145361145988%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl145360145985%_))))
                                              (let ((_%tl145363145993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145361145988%_)))
                                                    (_%hd145362145991%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145361145988%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl145363145993%_))
                                                    (_%loop145352145964%_
                                                     _%lp-tl145355145977%_
                                                     (cons _%hd145362145991%_
                                                           _%xarg145356145969%_))
                                                    (_%__match147677147678%_
                                                     _%e145322145887%_
                                                     _%hd145323145890%_
                                                     _%tl145324145892%_
                                                     _%__splice147638147639%_
                                                     _%target145325145895%_
                                                     _%tl145327145897%_))))
                                            (_%__match147677147678%_
                                             _%e145322145887%_
                                             _%hd145323145890%_
                                             _%tl145324145892%_
                                             _%__splice147638147639%_
                                             _%target145325145895%_
                                             _%tl145327145897%_))
                                        (_%__match147677147678%_
                                         _%e145322145887%_
                                         _%hd145323145890%_
                                         _%tl145324145892%_
                                         _%__splice147638147639%_
                                         _%target145325145895%_
                                         _%tl145327145897%_))
                                    (_%__match147677147678%_
                                     _%e145322145887%_
                                     _%hd145323145890%_
                                     _%tl145324145892%_
                                     _%__splice147638147639%_
                                     _%target145325145895%_
                                     _%tl145327145897%_))))
                            (_%__match147677147678%_
                             _%e145322145887%_
                             _%hd145323145890%_
                             _%tl145324145892%_
                             _%__splice147638147639%_
                             _%target145325145895%_
                             _%tl145327145897%_))))
                    (let ((_%xarg145357145996%_
                           (reverse _%xarg145356145969%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl145336145924%_))
                          (let ((_%L145999%_ _%xarg145357145996%_)
                                (_%L146000%_ _%hd145347145954%_)
                                (_%L146001%_ _%arg145333145916%_))
                            (if (and (let ((__tmp148931
                                            (let ((__tmp148932
                                                   (lambda (_%g146029146032%_
                                                            _%g146030146034%_)
                                                     (cons _%g146029146032%_
                                                           _%g146030146034%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp148932
                                               '()
                                               _%L146001%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp148931))
                                     (let ((__tmp148935
                                            (length (let ((__tmp148936
                                                           (lambda (_%g146036146039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g146037146041%_)
                     (cons _%g146036146039%_ _%g146037146041%_))))
              (declare (not safe))
              (__foldr1 __tmp148936 '() _%L146001%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp148933
                                            (length (let ((__tmp148934
                                                           (lambda (_%g146043146046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g146044146048%_)
                     (cons _%g146043146046%_ _%g146044146048%_))))
              (declare (not safe))
              (__foldr1 __tmp148934 '() _%L145999%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp148935 __tmp148933))
                                     (let ((__tmp148939
                                            (let ((__tmp148940
                                                   (lambda (_%g146050146053%_
                                                            _%g146051146055%_)
                                                     (cons _%g146050146053%_
                                                           _%g146051146055%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp148940
                                               '()
                                               _%L146001%_)))
                                           (__tmp148937
                                            (let ((__tmp148938
                                                   (lambda (_%g146057146060%_
                                                            _%g146058146062%_)
                                                     (cons _%g146057146060%_
                                                           _%g146058146062%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp148938
                                               '()
                                               _%L145999%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp148939
                                        __tmp148937))
                                     (not (let ((__tmp148943
                                                 (lambda (_%g146064146066%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g146064146066%_
                                                      _%L146000%_))))
                                                (__tmp148941
                                                 (let ((__tmp148942
                                                        (lambda (_%g146068146071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g146069146073%_)
                  (cons _%g146068146071%_ _%g146069146073%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp148942
                                                    '()
                                                    _%L146001%_))))
                                            (declare (not safe))
                                            (__find __tmp148943 __tmp148941))))
                                (_%__kont147636147637%_
                                 _%L145999%_
                                 _%L146000%_
                                 _%L146001%_)
                                (_%__match147677147678%_
                                 _%e145322145887%_
                                 _%hd145323145890%_
                                 _%tl145324145892%_
                                 _%__splice147638147639%_
                                 _%target145325145895%_
                                 _%tl145327145897%_)))
                          (_%__match147677147678%_
                           _%e145322145887%_
                           _%hd145323145890%_
                           _%tl145324145892%_
                           _%__splice147638147639%_
                           _%target145325145895%_
                           _%tl145327145897%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop145352145964%_
                                               _%target145349145959%_
                                               '()))
                                            (_%__match147677147678%_
                                             _%e145322145887%_
                                             _%hd145323145890%_
                                             _%tl145324145892%_
                                             _%__splice147638147639%_
                                             _%target145325145895%_
                                             _%tl145327145897%_))))
                                    (_%__match147677147678%_
                                     _%e145322145887%_
                                     _%hd145323145890%_
                                     _%tl145324145892%_
                                     _%__splice147638147639%_
                                     _%target145325145895%_
                                     _%tl145327145897%_))
                                (_%__match147677147678%_
                                 _%e145322145887%_
                                 _%hd145323145890%_
                                 _%tl145324145892%_
                                 _%__splice147638147639%_
                                 _%target145325145895%_
                                 _%tl145327145897%_))))
                        (_%__match147677147678%_
                         _%e145322145887%_
                         _%hd145323145890%_
                         _%tl145324145892%_
                         _%__splice147638147639%_
                         _%target145325145895%_
                         _%tl145327145897%_))
                    (_%__match147677147678%_
                     _%e145322145887%_
                     _%hd145323145890%_
                     _%tl145324145892%_
                     _%__splice147638147639%_
                     _%target145325145895%_
                     _%tl145327145897%_))
                (_%__match147677147678%_
                 _%e145322145887%_
                 _%hd145323145890%_
                 _%tl145324145892%_
                 _%__splice147638147639%_
                 _%target145325145895%_
                 _%tl145327145897%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match147677147678%_
                                                 _%e145322145887%_
                                                 _%hd145323145890%_
                                                 _%tl145324145892%_
                                                 _%__splice147638147639%_
                                                 _%target145325145895%_
                                                 _%tl145327145897%_))))
                                        (_%__match147677147678%_
                                         _%e145322145887%_
                                         _%hd145323145890%_
                                         _%tl145324145892%_
                                         _%__splice147638147639%_
                                         _%target145325145895%_
                                         _%tl145327145897%_))
                                    (_%__match147677147678%_
                                     _%e145322145887%_
                                     _%hd145323145890%_
                                     _%tl145324145892%_
                                     _%__splice147638147639%_
                                     _%target145325145895%_
                                     _%tl145327145897%_))
                                (_%__match147677147678%_
                                 _%e145322145887%_
                                 _%hd145323145890%_
                                 _%tl145324145892%_
                                 _%__splice147638147639%_
                                 _%target145325145895%_
                                 _%tl145327145897%_))))
                        (_%__match147677147678%_
                         _%e145322145887%_
                         _%hd145323145890%_
                         _%tl145324145892%_
                         _%__splice147638147639%_
                         _%target145325145895%_
                         _%tl145327145897%_))))
                (_%__match147677147678%_
                 _%e145322145887%_
                 _%hd145323145890%_
                 _%tl145324145892%_
                 _%__splice147638147639%_
                 _%target145325145895%_
                 _%tl145327145897%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop145328145900%_
                                     _%target145325145895%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx147634147635%_))
                              (let ((_%e145322145887%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx147634147635%_))))
                                (let ((_%tl145324145892%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145322145887%_)))
                                      (_%hd145323145890%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145322145887%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd145323145890%_))
                                      (let ((_%__splice147638147639%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd145323145890%_
                                                '0))))
                                        (let ((_%tl145327145897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice147638147639%_
                                                  '1)))
                                              (_%target145325145895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice147638147639%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145327145897%_))
                                              (_%__match147665147666%_
                                               _%e145322145887%_
                                               _%hd145323145890%_
                                               _%tl145324145892%_
                                               _%__splice147638147639%_
                                               _%target145325145895%_
                                               _%tl145327145897%_)
                                              (_%__match147677147678%_
                                               _%e145322145887%_
                                               _%hd145323145890%_
                                               _%tl145324145892%_
                                               _%__splice147638147639%_
                                               _%target145325145895%_
                                               _%tl145327145897%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl145324145892%_))
                                          (let ((_%e145437145494%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl145324145892%_))))
                                            (let ((_%tl145439145499%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e145437145494%_)))
                                                  (_%hd145438145497%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e145437145494%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145438145497%_))
                                                  (let ((_%e145440145502%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145438145497%_))))
                                                    (let ((_%tl145442145507%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145440145502%_)))
                                                          (_%hd145441145505%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145440145502%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd145441145505%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd145441145505%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl145442145507%_))
                          (let ((_%e145443145510%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl145442145507%_))))
                            (let ((_%tl145445145515%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145443145510%_)))
                                  (_%hd145444145513%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145443145510%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd145444145513%_))
                                  (let ((_%e145446145518%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd145444145513%_))))
                                    (let ((_%tl145448145523%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145446145518%_)))
                                          (_%hd145447145521%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145446145518%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd145447145521%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd145447145521%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl145448145523%_))
                                                  (let ((_%e145449145526%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl145448145523%_))))
                                                    (let ((_%tl145451145531%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145449145526%_)))
                                                          (_%hd145450145529%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145449145526%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl145451145531%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl145445145515%_))
                      (let ((_%e145452145534%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl145445145515%_))))
                        (let ((_%tl145454145539%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145452145534%_)))
                              (_%hd145453145537%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145452145534%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd145453145537%_))
                              (let ((_%e145455145542%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd145453145537%_))))
                                (let ((_%tl145457145547%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145455145542%_)))
                                      (_%hd145456145545%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145455145542%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd145456145545%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd145456145545%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl145457145547%_))
                                              (let ((_%e145458145550%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl145457145547%_))))
                                                (let ((_%tl145460145555%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145458145550%_)))
                                                      (_%hd145459145553%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145458145550%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145460145555%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl145454145539%_))
                                                          (let ((_%e145461145558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl145454145539%_))))
                    (let ((_%tl145463145563%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145461145558%_)))
                          (_%hd145462145561%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145461145558%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd145462145561%_))
                          (let ((_%e145464145566%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd145462145561%_))))
                            (let ((_%tl145466145571%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145464145566%_)))
                                  (_%hd145465145569%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145464145566%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd145465145569%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd145465145569%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl145466145571%_))
                                          (let ((_%e145467145574%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl145466145571%_))))
                                            (let ((_%tl145469145579%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e145467145574%_)))
                                                  (_%hd145468145577%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e145467145574%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl145469145579%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145463145563%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl145439145499%_))
                                                          (_%__match147775147776%_
                                                           _%e145322145887%_
                                                           _%hd145323145890%_
                                                           _%tl145324145892%_
                                                           _%e145437145494%_
                                                           _%hd145438145497%_
                                                           _%tl145439145499%_
                                                           _%e145440145502%_
                                                           _%hd145441145505%_
                                                           _%tl145442145507%_
                                                           _%e145443145510%_
                                                           _%hd145444145513%_
                                                           _%tl145445145515%_
                                                           _%e145446145518%_
                                                           _%hd145447145521%_
                                                           _%tl145448145523%_
                                                           _%e145449145526%_
                                                           _%hd145450145529%_
                                                           _%tl145451145531%_
                                                           _%e145452145534%_
                                                           _%hd145453145537%_
                                                           _%tl145454145539%_
                                                           _%e145455145542%_
                                                           _%hd145456145545%_
                                                           _%tl145457145547%_
                                                           _%e145458145550%_
                                                           _%hd145459145553%_
                                                           _%tl145460145555%_
                                                           _%e145461145558%_
                                                           _%hd145462145561%_
                                                           _%tl145463145563%_
                                                           _%e145464145566%_
                                                           _%hd145465145569%_
                                                           _%tl145466145571%_
                                                           _%e145467145574%_
                                                           _%hd145468145577%_
                                                           _%tl145469145579%_)
                                                          (_%__kont147650147651%_))
                                                      (_%__kont147650147651%_))
                                                  (_%__kont147650147651%_))))
                                          (_%__kont147650147651%_))
                                      (_%__kont147650147651%_))
                                  (_%__kont147650147651%_))))
                          (_%__kont147650147651%_))))
                  (_%__kont147650147651%_))
              (_%__kont147650147651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont147650147651%_))
                                          (_%__kont147650147651%_))
                                      (_%__kont147650147651%_))))
                              (_%__kont147650147651%_))))
                      (_%__kont147650147651%_))
                  (_%__kont147650147651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont147650147651%_))
                                              (_%__kont147650147651%_))
                                          (_%__kont147650147651%_))))
                                  (_%__kont147650147651%_))))
                          (_%__kont147650147651%_))
                      (_%__kont147650147651%_))
                  (_%__kont147650147651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont147650147651%_))))
                                          (_%__kont147650147651%_)))))
                              (_%__kont147650147651%_)))))))
                 (_%dispatch-case-e144622%_
                  (lambda (_%hd144773%_ _%body144774%_)
                    (let* ((_%form144776%_
                            (cons _%hd144773%_ (cons _%body144774%_ '())))
                           (_%__stx147778147779%_ _%form144776%_)
                           (_%g144780144904%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx147778147779%_)))))
                      (let ((_%__kont147780147781%_
                             (lambda (_%L145275%_ _%L145276%_ _%L145277%_)
                               (let ((__tmp148944
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L145276%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self144618%_
                                  __tmp148944))))
                            (_%__kont147786147787%_
                             (lambda (_%L145123%_
                                      _%L145124%_
                                      _%L145125%_
                                      _%L145126%_)
                               (let ((__tmp148945
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L145123%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self144618%_
                                  __tmp148945))))
                            (_%__kont147790147791%_
                             (lambda (_%L144989%_ _%L144990%_ _%L144991%_)
                               (let ((__tmp148946
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L144989%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self144618%_
                                  __tmp148946)))))
                        (let* ((_%__match147887147888%_
                                (lambda (_%e144870144909%_
                                         _%hd144871144912%_
                                         _%tl144872144914%_
                                         _%e144873144917%_
                                         _%hd144874144920%_
                                         _%tl144875144922%_
                                         _%e144876144925%_
                                         _%hd144877144928%_
                                         _%tl144878144930%_
                                         _%e144879144933%_
                                         _%hd144880144936%_
                                         _%tl144881144938%_
                                         _%e144882144941%_
                                         _%hd144883144944%_
                                         _%tl144884144946%_
                                         _%e144885144949%_
                                         _%hd144886144952%_
                                         _%tl144887144954%_
                                         _%e144888144957%_
                                         _%hd144889144960%_
                                         _%tl144890144962%_
                                         _%e144891144965%_
                                         _%hd144892144968%_
                                         _%tl144893144970%_
                                         _%e144894144973%_
                                         _%hd144895144976%_
                                         _%tl144896144978%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144890144962%_))
                                      (let ((_%e144897144981%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144890144962%_))))
                                        (let ((_%tl144899144986%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144897144981%_)))
                                              (_%hd144898144984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144897144981%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144899144986%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl144875144922%_))
                                                  (_%__kont147790147791%_
                                                   _%hd144895144976%_
                                                   _%hd144886144952%_
                                                   _%hd144871144912%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g144780144904%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g144780144904%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g144780144904%_)))))
                               (_%__match147817147818%_
                                (lambda (_%e144831145027%_
                                         _%hd144832145030%_
                                         _%tl144833145032%_
                                         _%__splice147788147789%_
                                         _%target144834145035%_
                                         _%tl144836145037%_)
                                  (letrec ((_%loop144837145040%_
                                            (lambda (_%hd144835145043%_
                                                     _%arg144841145045%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd144835145043%_))
                                                  (let ((_%e144838145048%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd144835145043%_))))
                                                    (let ((_%lp-tl144840145053%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144838145048%_)))
                                                          (_%lp-hd144839145051%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144838145048%_))))
                                                      (_%loop144837145040%_
                                                       _%lp-tl144840145053%_
                                                       (cons _%lp-hd144839145051%_
                                                             _%arg144841145045%_))))
                                                  (let ((_%arg144842145056%_
                                                         (reverse _%arg144841145045%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl144833145032%_))
                                                        (let ((_%e144843145059%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl144833145032%_))))
                  (let ((_%tl144845145064%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144843145059%_)))
                        (_%hd144844145062%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144843145059%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144844145062%_))
                        (let ((_%e144846145067%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144844145062%_))))
                          (let ((_%tl144848145072%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144846145067%_)))
                                (_%hd144847145070%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144846145067%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd144847145070%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd144847145070%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144848145072%_))
                                        (let ((_%e144849145075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144848145072%_))))
                                          (let ((_%tl144851145080%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144849145075%_)))
                                                (_%hd144850145078%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144849145075%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd144850145078%_))
                                                (let ((_%e144852145083%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144850145078%_))))
                                                  (let ((_%tl144854145088%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144852145083%_)))
                                                        (_%hd144853145086%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144852145083%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd144853145086%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd144853145086%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl144854145088%_))
                        (let ((_%e144855145091%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl144854145088%_))))
                          (let ((_%tl144857145096%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144855145091%_)))
                                (_%hd144856145094%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144855145091%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl144857145096%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl144851145080%_))
                                    (let ((_%e144858145099%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl144851145080%_))))
                                      (let ((_%tl144860145104%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e144858145099%_)))
                                            (_%hd144859145102%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e144858145099%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd144859145102%_))
                                            (let ((_%e144861145107%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd144859145102%_))))
                                              (let ((_%tl144863145112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144861145107%_)))
                                                    (_%hd144862145110%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144861145107%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd144862145110%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd144862145110%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl144863145112%_))
                                                            (let ((_%e144864145115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl144863145112%_))))
                      (let ((_%tl144866145120%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144864145115%_)))
                            (_%hd144865145118%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144864145115%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl144866145120%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl144845145064%_))
                                (_%__kont147786147787%_
                                 _%hd144865145118%_
                                 _%hd144856145094%_
                                 _%tl144836145037%_
                                 _%arg144842145056%_)
                                (_%__match147887147888%_
                                 _%e144831145027%_
                                 _%hd144832145030%_
                                 _%tl144833145032%_
                                 _%e144843145059%_
                                 _%hd144844145062%_
                                 _%tl144845145064%_
                                 _%e144846145067%_
                                 _%hd144847145070%_
                                 _%tl144848145072%_
                                 _%e144849145075%_
                                 _%hd144850145078%_
                                 _%tl144851145080%_
                                 _%e144852145083%_
                                 _%hd144853145086%_
                                 _%tl144854145088%_
                                 _%e144855145091%_
                                 _%hd144856145094%_
                                 _%tl144857145096%_
                                 _%e144858145099%_
                                 _%hd144859145102%_
                                 _%tl144860145104%_
                                 _%e144861145107%_
                                 _%hd144862145110%_
                                 _%tl144863145112%_
                                 _%e144864145115%_
                                 _%hd144865145118%_
                                 _%tl144866145120%_))
                            (let ()
                              (declare (not safe))
                              (_%g144780144904%_)))))
                    (let () (declare (not safe)) (_%g144780144904%_)))
                (let () (declare (not safe)) (_%g144780144904%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g144780144904%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g144780144904%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g144780144904%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g144780144904%_)))))
                        (let () (declare (not safe)) (_%g144780144904%_)))
                    (let () (declare (not safe)) (_%g144780144904%_)))
                (let () (declare (not safe)) (_%g144780144904%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g144780144904%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g144780144904%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g144780144904%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g144780144904%_)))))
                        (let () (declare (not safe)) (_%g144780144904%_)))))
                (let () (declare (not safe)) (_%g144780144904%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop144837145040%_
                                     _%target144834145035%_
                                     '()))))
                               (_%__match147805147806%_
                                (lambda (_%e144785145163%_
                                         _%hd144786145166%_
                                         _%tl144787145168%_
                                         _%__splice147782147783%_
                                         _%target144788145171%_
                                         _%tl144790145173%_)
                                  (letrec ((_%loop144791145176%_
                                            (lambda (_%hd144789145179%_
                                                     _%arg144795145181%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd144789145179%_))
                                                  (let ((_%e144792145184%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd144789145179%_))))
                                                    (let ((_%lp-tl144794145189%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144792145184%_)))
                                                          (_%lp-hd144793145187%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144792145184%_))))
                                                      (_%loop144791145176%_
                                                       _%lp-tl144794145189%_
                                                       (cons _%lp-hd144793145187%_
                                                             _%arg144795145181%_))))
                                                  (let ((_%arg144796145192%_
                                                         (reverse _%arg144795145181%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl144787145168%_))
                                                        (let ((_%e144797145195%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl144787145168%_))))
                  (let ((_%tl144799145200%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144797145195%_)))
                        (_%hd144798145198%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144797145195%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144798145198%_))
                        (let ((_%e144800145203%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144798145198%_))))
                          (let ((_%tl144802145208%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144800145203%_)))
                                (_%hd144801145206%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144800145203%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd144801145206%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd144801145206%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144802145208%_))
                                        (let ((_%e144803145211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144802145208%_))))
                                          (let ((_%tl144805145216%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144803145211%_)))
                                                (_%hd144804145214%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144803145211%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd144804145214%_))
                                                (let ((_%e144806145219%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144804145214%_))))
                                                  (let ((_%tl144808145224%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144806145219%_)))
                                                        (_%hd144807145222%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144806145219%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd144807145222%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd144807145222%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl144808145224%_))
                        (let ((_%e144809145227%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl144808145224%_))))
                          (let ((_%tl144811145232%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144809145227%_)))
                                (_%hd144810145230%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144809145227%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl144811145232%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl144805145216%_))
                                    (let ((_%__splice147784147785%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl144805145216%_
                                              '0))))
                                      (let ((_%tl144814145237%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147784147785%_
                                                '1)))
                                            (_%target144812145235%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147784147785%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl144814145237%_))
                                            (letrec ((_%loop144815145240%_
                                                      (lambda (_%hd144813145243%_
                                                               _%xarg144819145245%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd144813145243%_))
                                                            (let ((_%e144816145248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd144813145243%_))))
                      (let ((_%lp-tl144818145253%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144816145248%_)))
                            (_%lp-hd144817145251%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144816145248%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd144817145251%_))
                            (let ((_%e144821145256%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd144817145251%_))))
                              (let ((_%tl144823145261%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144821145256%_)))
                                    (_%hd144822145259%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144821145256%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd144822145259%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd144822145259%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144823145261%_))
                                            (let ((_%e144824145264%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144823145261%_))))
                                              (let ((_%tl144826145269%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144824145264%_)))
                                                    (_%hd144825145267%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144824145264%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl144826145269%_))
                                                    (_%loop144815145240%_
                                                     _%lp-tl144818145253%_
                                                     (cons _%hd144825145267%_
                                                           _%xarg144819145245%_))
                                                    (_%__match147817147818%_
                                                     _%e144785145163%_
                                                     _%hd144786145166%_
                                                     _%tl144787145168%_
                                                     _%__splice147782147783%_
                                                     _%target144788145171%_
                                                     _%tl144790145173%_))))
                                            (_%__match147817147818%_
                                             _%e144785145163%_
                                             _%hd144786145166%_
                                             _%tl144787145168%_
                                             _%__splice147782147783%_
                                             _%target144788145171%_
                                             _%tl144790145173%_))
                                        (_%__match147817147818%_
                                         _%e144785145163%_
                                         _%hd144786145166%_
                                         _%tl144787145168%_
                                         _%__splice147782147783%_
                                         _%target144788145171%_
                                         _%tl144790145173%_))
                                    (_%__match147817147818%_
                                     _%e144785145163%_
                                     _%hd144786145166%_
                                     _%tl144787145168%_
                                     _%__splice147782147783%_
                                     _%target144788145171%_
                                     _%tl144790145173%_))))
                            (_%__match147817147818%_
                             _%e144785145163%_
                             _%hd144786145166%_
                             _%tl144787145168%_
                             _%__splice147782147783%_
                             _%target144788145171%_
                             _%tl144790145173%_))))
                    (let ((_%xarg144820145272%_
                           (reverse _%xarg144819145245%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl144799145200%_))
                          (_%__kont147780147781%_
                           _%xarg144820145272%_
                           _%hd144810145230%_
                           _%arg144796145192%_)
                          (_%__match147817147818%_
                           _%e144785145163%_
                           _%hd144786145166%_
                           _%tl144787145168%_
                           _%__splice147782147783%_
                           _%target144788145171%_
                           _%tl144790145173%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop144815145240%_
                                               _%target144812145235%_
                                               '()))
                                            (_%__match147817147818%_
                                             _%e144785145163%_
                                             _%hd144786145166%_
                                             _%tl144787145168%_
                                             _%__splice147782147783%_
                                             _%target144788145171%_
                                             _%tl144790145173%_))))
                                    (_%__match147817147818%_
                                     _%e144785145163%_
                                     _%hd144786145166%_
                                     _%tl144787145168%_
                                     _%__splice147782147783%_
                                     _%target144788145171%_
                                     _%tl144790145173%_))
                                (_%__match147817147818%_
                                 _%e144785145163%_
                                 _%hd144786145166%_
                                 _%tl144787145168%_
                                 _%__splice147782147783%_
                                 _%target144788145171%_
                                 _%tl144790145173%_))))
                        (_%__match147817147818%_
                         _%e144785145163%_
                         _%hd144786145166%_
                         _%tl144787145168%_
                         _%__splice147782147783%_
                         _%target144788145171%_
                         _%tl144790145173%_))
                    (_%__match147817147818%_
                     _%e144785145163%_
                     _%hd144786145166%_
                     _%tl144787145168%_
                     _%__splice147782147783%_
                     _%target144788145171%_
                     _%tl144790145173%_))
                (_%__match147817147818%_
                 _%e144785145163%_
                 _%hd144786145166%_
                 _%tl144787145168%_
                 _%__splice147782147783%_
                 _%target144788145171%_
                 _%tl144790145173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match147817147818%_
                                                 _%e144785145163%_
                                                 _%hd144786145166%_
                                                 _%tl144787145168%_
                                                 _%__splice147782147783%_
                                                 _%target144788145171%_
                                                 _%tl144790145173%_))))
                                        (_%__match147817147818%_
                                         _%e144785145163%_
                                         _%hd144786145166%_
                                         _%tl144787145168%_
                                         _%__splice147782147783%_
                                         _%target144788145171%_
                                         _%tl144790145173%_))
                                    (_%__match147817147818%_
                                     _%e144785145163%_
                                     _%hd144786145166%_
                                     _%tl144787145168%_
                                     _%__splice147782147783%_
                                     _%target144788145171%_
                                     _%tl144790145173%_))
                                (_%__match147817147818%_
                                 _%e144785145163%_
                                 _%hd144786145166%_
                                 _%tl144787145168%_
                                 _%__splice147782147783%_
                                 _%target144788145171%_
                                 _%tl144790145173%_))))
                        (_%__match147817147818%_
                         _%e144785145163%_
                         _%hd144786145166%_
                         _%tl144787145168%_
                         _%__splice147782147783%_
                         _%target144788145171%_
                         _%tl144790145173%_))))
                (_%__match147817147818%_
                 _%e144785145163%_
                 _%hd144786145166%_
                 _%tl144787145168%_
                 _%__splice147782147783%_
                 _%target144788145171%_
                 _%tl144790145173%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop144791145176%_
                                     _%target144788145171%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx147778147779%_))
                              (let ((_%e144785145163%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx147778147779%_))))
                                (let ((_%tl144787145168%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144785145163%_)))
                                      (_%hd144786145166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144785145163%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd144786145166%_))
                                      (let ((_%__splice147782147783%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd144786145166%_
                                                '0))))
                                        (let ((_%tl144790145173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice147782147783%_
                                                  '1)))
                                              (_%target144788145171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice147782147783%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144790145173%_))
                                              (_%__match147805147806%_
                                               _%e144785145163%_
                                               _%hd144786145166%_
                                               _%tl144787145168%_
                                               _%__splice147782147783%_
                                               _%target144788145171%_
                                               _%tl144790145173%_)
                                              (_%__match147817147818%_
                                               _%e144785145163%_
                                               _%hd144786145166%_
                                               _%tl144787145168%_
                                               _%__splice147782147783%_
                                               _%target144788145171%_
                                               _%tl144790145173%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl144787145168%_))
                                          (let ((_%e144873144917%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl144787145168%_))))
                                            (let ((_%tl144875144922%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e144873144917%_)))
                                                  (_%hd144874144920%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e144873144917%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd144874144920%_))
                                                  (let ((_%e144876144925%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd144874144920%_))))
                                                    (let ((_%tl144878144930%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144876144925%_)))
                                                          (_%hd144877144928%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144876144925%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd144877144928%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd144877144928%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl144878144930%_))
                          (let ((_%e144879144933%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl144878144930%_))))
                            (let ((_%tl144881144938%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144879144933%_)))
                                  (_%hd144880144936%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144879144933%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd144880144936%_))
                                  (let ((_%e144882144941%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd144880144936%_))))
                                    (let ((_%tl144884144946%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e144882144941%_)))
                                          (_%hd144883144944%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e144882144941%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd144883144944%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd144883144944%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl144884144946%_))
                                                  (let ((_%e144885144949%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl144884144946%_))))
                                                    (let ((_%tl144887144954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144885144949%_)))
                                                          (_%hd144886144952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144885144949%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl144887144954%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl144881144938%_))
                      (let ((_%e144888144957%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl144881144938%_))))
                        (let ((_%tl144890144962%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144888144957%_)))
                              (_%hd144889144960%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144888144957%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd144889144960%_))
                              (let ((_%e144891144965%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd144889144960%_))))
                                (let ((_%tl144893144970%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144891144965%_)))
                                      (_%hd144892144968%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144891144965%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd144892144968%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd144892144968%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl144893144970%_))
                                              (let ((_%e144894144973%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl144893144970%_))))
                                                (let ((_%tl144896144978%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144894144973%_)))
                                                      (_%hd144895144976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144894144973%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl144896144978%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl144890144962%_))
                                                          (let ((_%e144897144981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl144890144962%_))))
                    (let ((_%tl144899144986%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e144897144981%_)))
                          (_%hd144898144984%_
                           (let ()
                             (declare (not safe))
                             (##car _%e144897144981%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl144899144986%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl144875144922%_))
                              (_%__kont147790147791%_
                               _%hd144895144976%_
                               _%hd144886144952%_
                               _%hd144786145166%_)
                              (let ()
                                (declare (not safe))
                                (_%g144780144904%_)))
                          (let () (declare (not safe)) (_%g144780144904%_)))))
                  (let () (declare (not safe)) (_%g144780144904%_)))
              (let () (declare (not safe)) (_%g144780144904%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g144780144904%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g144780144904%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g144780144904%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g144780144904%_)))))
                      (let () (declare (not safe)) (_%g144780144904%_)))
                  (let () (declare (not safe)) (_%g144780144904%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g144780144904%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g144780144904%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g144780144904%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g144780144904%_)))))
                          (let () (declare (not safe)) (_%g144780144904%_)))
                      (let () (declare (not safe)) (_%g144780144904%_)))
                  (let () (declare (not safe)) (_%g144780144904%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g144780144904%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g144780144904%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g144780144904%_))))))))
                 (_%generate1144623%_
                  (lambda (_%args144758%_
                           _%arglen144759%_
                           _%hd144760%_
                           _%body144761%_)
                    (let* ((_%len144763%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd144760%_)))
                           (_%condition144768%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd144760%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen144759%_
                                                (cons _%len144763%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen144759%_ (cons _%len144763%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len144763%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen144759%_
                                                    (cons _%len144763%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen144759%_ (cons _%len144763%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch144770%_
                            (if (_%dispatch-case?144621%_
                                 _%hd144760%_
                                 _%body144761%_)
                                (_%dispatch-case-e144622%_
                                 _%hd144760%_
                                 _%body144761%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self144618%_
                                 _%hd144760%_
                                 _%body144761%_))))
                      (cons _%condition144768%_
                            (cons (cons 'apply
                                        (cons _%dispatch144770%_
                                              (cons _%args144758%_ '())))
                                  '()))))))
          (let* ((_%g144625144653%_
                  (lambda (_%g144626144650%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144626144650%_))))
                 (_%g144624144755%_
                  (lambda (_%g144626144656%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144626144656%_))
                        (let ((_%e144629144658%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144626144656%_))))
                          (let ((_%hd144630144661%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144629144658%_)))
                                (_%tl144631144663%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144629144658%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl144631144663%_))
                                (let ((_g148947_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl144631144663%_
                                          '0))))
                                  (begin
                                    (let ((_g148948_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g148947_)
                                                 (##vector-length _g148947_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g148948_ 2)))
                                          (error "Context expects 2 values"
                                                 _g148948_)))
                                    (let ((_%target144632144666%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g148947_ 0)))
                                          (_%tl144634144668%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g148947_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144634144668%_))
                                          (letrec ((_%loop144635144671%_
                                                    (lambda (_%hd144633144674%_
                                                             _%body144639144676%_
                                                             _%hd144640144678%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd144633144674%_))
                                                          (let ((_%e144636144681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd144633144674%_))))
                    (let ((_%lp-hd144637144684%_
                           (let ()
                             (declare (not safe))
                             (##car _%e144636144681%_)))
                          (_%lp-tl144638144686%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e144636144681%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd144637144684%_))
                          (let ((_%e144643144689%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd144637144684%_))))
                            (let ((_%hd144644144692%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144643144689%_)))
                                  (_%tl144645144694%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144643144689%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl144645144694%_))
                                  (let ((_%e144646144697%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl144645144694%_))))
                                    (let ((_%hd144647144700%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e144646144697%_)))
                                          (_%tl144648144702%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e144646144697%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144648144702%_))
                                          (_%loop144635144671%_
                                           _%lp-tl144638144686%_
                                           (cons _%hd144647144700%_
                                                 _%body144639144676%_)
                                           (cons _%hd144644144692%_
                                                 _%hd144640144678%_))
                                          (_%g144625144653%_
                                           _%g144626144656%_))))
                                  (_%g144625144653%_ _%g144626144656%_))))
                          (_%g144625144653%_ _%g144626144656%_))))
                  (let ((_%body144641144705%_ (reverse _%body144639144676%_))
                        (_%hd144642144707%_ (reverse _%hd144640144678%_)))
                    ((lambda (_%L144710%_ _%L144711%_)
                       (let ((_%args144730%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen144731%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name144732%_
                              (let ((_%$e144727%_
                                     (let ((__tmp148949
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp148949 _%stx144619%_))))
                                (if _%$e144727%_
                                    _%$e144727%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args144730%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen144731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args144730%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args144730%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp148953
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name144732%_
                                                                (cons _%args144730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp148950
                                  (map (lambda (_%g144733144736%_
                                                _%g144734144738%_)
                                         (_%generate1144623%_
                                          _%args144730%_
                                          _%arglen144731%_
                                          _%g144733144736%_
                                          _%g144734144738%_))
                                       (let ((__tmp148951
                                              (lambda (_%g144740144743%_
                                                       _%g144741144745%_)
                                                (cons _%g144740144743%_
                                                      _%g144741144745%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp148951
                                          '()
                                          _%L144711%_))
                                       (let ((__tmp148952
                                              (lambda (_%g144747144750%_
                                                       _%g144748144752%_)
                                                (cons _%g144747144750%_
                                                      _%g144748144752%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp148952
                                          '()
                                          _%L144710%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp148953 __tmp148950)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body144641144705%_
                     _%hd144642144707%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop144635144671%_
                                             _%target144632144666%_
                                             '()
                                             '()))
                                          (_%g144625144653%_
                                           _%g144626144656%_)))))
                                (_%g144625144653%_ _%g144626144656%_))))
                        (_%g144625144653%_ _%g144626144656%_)))))
            (_%g144624144755%_ _%stx144619%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self143855%_ _%stx143856%_ _%compiled-body?143857%_)
        (letrec ((_%generate-simple143859%_
                  (lambda (_%hd144603%_ _%body144604%_)
                    (_%coalesce-boolean143860%_
                     (_%simplify-let143861%_
                      (gxc#generate-runtime-simple-let
                       _%self143855%_
                       'let
                       _%hd144603%_
                       _%body144604%_
                       _%compiled-body?143857%_)))))
                 (_%coalesce-boolean143860%_
                  (lambda (_%code144464%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code144465144491%_ _%code144464%_)
                               (_%else144467144499%_
                                (lambda () _%code144464%_))
                               (_%K144469144536%_
                                (lambda (_%expr2144502%_
                                         _%expr1144503%_
                                         _%id144504%_)
                                  (let* ((_%expr2144505144513%_
                                          _%expr2144502%_)
                                         (_%else144507144521%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1144503%_
                                                        (cons _%expr2144502%_
                                                              '())))))
                                         (_%K144509144526%_
                                          (lambda (_%exprs144524%_)
                                            (cons 'or
                                                  (cons _%expr1144503%_
                                                        _%exprs144524%_)))))
                                    (if (pair? _%expr2144505144513%_)
                                        (let ((_%hd144510144529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2144505144513%_)))
                                              (_%tl144511144531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2144505144513%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd144510144529%_ 'or))
                                              (let ((_%exprs144534%_
                                                     _%tl144511144531%_))
                                                (_%K144509144526%_
                                                 _%exprs144534%_))
                                              (_%else144507144521%_)))
                                        (_%else144507144521%_))))))
                          (if (pair? _%code144465144491%_)
                              (let ((_%hd144470144539%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code144465144491%_)))
                                    (_%tl144471144541%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code144465144491%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd144470144539%_ 'let))
                                    (if (pair? _%tl144471144541%_)
                                        (let ((_%hd144472144544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl144471144541%_)))
                                              (_%tl144473144546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl144471144541%_))))
                                          (if (pair? _%hd144472144544%_)
                                              (let ((_%hd144484144549%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd144472144544%_)))
                                                    (_%tl144485144551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd144472144544%_))))
                                                (if (pair? _%hd144484144549%_)
                                                    (let ((_%hd144486144554%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd144484144549%_)))
                                                          (_%tl144487144556%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd144484144549%_))))
                                                      (let ((_%id144559%_
                                                             _%hd144486144554%_))
                                                        (if (pair? _%tl144487144556%_)
                                                            (let ((_%hd144488144561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl144487144556%_)))
                          (_%tl144489144563%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl144487144556%_))))
                      (let ((_%expr1144566%_ _%hd144488144561%_))
                        (if (null? _%tl144489144563%_)
                            (if (null? _%tl144485144551%_)
                                (if (pair? _%tl144473144546%_)
                                    (let ((_%hd144474144568%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl144473144546%_)))
                                          (_%tl144475144570%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl144473144546%_))))
                                      (if (pair? _%hd144474144568%_)
                                          (let ((_%hd144476144573%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd144474144568%_)))
                                                (_%tl144477144575%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd144474144568%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd144476144573%_
                                                         'if))
                                                (if (pair? _%tl144477144575%_)
                                                    (let ((_%hd144478144578%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl144477144575%_)))
                                                          (_%tl144479144580%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl144477144575%_))))
                                                      (if ((lambda (_%g144582144584%_)
                                                             (eq? _%g144582144584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id144559%_))
                   _%hd144478144578%_)
                  (if (pair? _%tl144479144580%_)
                      (let ((_%hd144480144587%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl144479144580%_)))
                            (_%tl144481144589%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl144479144580%_))))
                        (if ((lambda (_%g144591144593%_)
                               (eq? _%g144591144593%_ _%id144559%_))
                             _%hd144480144587%_)
                            (if (pair? _%tl144481144589%_)
                                (let ((_%hd144482144596%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl144481144589%_)))
                                      (_%tl144483144598%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl144481144589%_))))
                                  (let ((_%expr2144601%_ _%hd144482144596%_))
                                    (if (null? _%tl144483144598%_)
                                        (if (null? _%tl144475144570%_)
                                            (_%K144469144536%_
                                             _%expr2144601%_
                                             _%expr1144566%_
                                             _%id144559%_)
                                            (_%else144467144499%_))
                                        (_%else144467144499%_))))
                                (_%else144467144499%_))
                            (_%else144467144499%_)))
                      (_%else144467144499%_))
                  (_%else144467144499%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else144467144499%_))
                                                (_%else144467144499%_)))
                                          (_%else144467144499%_)))
                                    (_%else144467144499%_))
                                (_%else144467144499%_))
                            (_%else144467144499%_))))
                    (_%else144467144499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else144467144499%_)))
                                              (_%else144467144499%_)))
                                        (_%else144467144499%_))
                                    (_%else144467144499%_)))
                              (_%else144467144499%_)))
                        _%code144464%_)))
                 (_%simplify-let143861%_
                  (lambda (_%code144163%_)
                    (let* ((_%code144164144236%_ _%code144163%_)
                           (_%else144169144244%_ (lambda () _%code144163%_)))
                      (let ((_%K144228144444%_
                             (lambda (_%expr144442%_) _%expr144442%_))
                            (_%K144211144390%_
                             (lambda (_%body144386%_
                                      _%expr144387%_
                                      _%id144388%_)
                               (cons 'let
                                     (cons (cons (cons _%id144388%_
                                                       (cons _%expr144387%_
                                                             '()))
                                                 '())
                                           _%body144386%_))))
                            (_%K144188144314%_
                             (lambda (_%body144308%_
                                      _%expr2144309%_
                                      _%id2144310%_
                                      _%expr1144311%_
                                      _%id1144312%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1144312%_
                                                       (cons _%expr1144311%_
                                                             '()))
                                                 (cons (cons _%id2144310%_
                                                             (cons _%expr2144309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body144308%_))))
                            (_%K144171144253%_
                             (lambda (_%body144248%_
                                      _%bind144249%_
                                      _%expr1144250%_
                                      _%id1144251%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1144251%_
                                                       (cons _%expr1144250%_
                                                             '()))
                                                 _%bind144249%_)
                                           _%body144248%_)))))
                        (if (pair? _%code144164144236%_)
                            (let ((_%tl144230144449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code144164144236%_)))
                                  (_%hd144229144447%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code144164144236%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd144229144447%_ 'let))
                                  (if (pair? _%tl144230144449%_)
                                      (let ((_%tl144232144454%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl144230144449%_)))
                                            (_%hd144231144452%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl144230144449%_))))
                                        (if (null? _%hd144231144452%_)
                                            (if (pair? _%tl144232144454%_)
                                                (let ((_%tl144234144459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl144232144454%_)))
                                                      (_%hd144233144457%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl144232144454%_))))
                                                  (if (null? _%tl144234144459%_)
                                                      (let ((_%expr144462%_
                                                             _%hd144233144457%_))
                                                        (_%K144228144444%_
                                                         _%expr144462%_))
                                                      (_%else144169144244%_)))
                                                (_%else144169144244%_))
                                            (if (pair? _%hd144231144452%_)
                                                (let ((_%tl144223144405%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd144231144452%_)))
                                                      (_%hd144222144403%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd144231144452%_))))
                                                  (if (pair? _%hd144222144403%_)
                                                      (let ((_%tl144225144410%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd144222144403%_)))
                    (_%hd144224144408%_
                     (let () (declare (not safe)) (##car _%hd144222144403%_))))
                (if (pair? _%tl144225144410%_)
                    (let ((_%tl144227144417%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl144225144410%_)))
                          (_%hd144226144415%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl144225144410%_))))
                      (if (null? _%tl144227144417%_)
                          (if (null? _%tl144223144405%_)
                              (if (pair? _%tl144232144454%_)
                                  (let ((_%tl144217144424%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl144232144454%_)))
                                        (_%hd144216144422%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl144232144454%_))))
                                    (if (pair? _%hd144216144422%_)
                                        (let ((_%tl144219144429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd144216144422%_)))
                                              (_%hd144218144427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd144216144422%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd144218144427%_
                                                       'let))
                                              (if (pair? _%tl144219144429%_)
                                                  (let ((_%tl144221144434%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl144219144429%_)))
                                                        (_%hd144220144432%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl144219144429%_))))
                                                    (if (null? _%hd144220144432%_)
                                                        (if (null? _%tl144217144424%_)
                                                            (let ((_%id144413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd144224144408%_)
                          (_%expr144420%_ _%hd144226144415%_)
                          (_%body144437%_ _%tl144221144434%_))
                      (_%K144211144390%_
                       _%body144437%_
                       _%expr144420%_
                       _%id144413%_))
                    (_%else144169144244%_))
                (if (pair? _%hd144220144432%_)
                    (let ((_%tl144200144363%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd144220144432%_)))
                          (_%hd144199144361%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd144220144432%_))))
                      (if (pair? _%hd144199144361%_)
                          (let ((_%tl144202144368%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd144199144361%_)))
                                (_%hd144201144366%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd144199144361%_))))
                            (if (pair? _%tl144202144368%_)
                                (let ((_%tl144204144375%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl144202144368%_)))
                                      (_%hd144203144373%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl144202144368%_))))
                                  (if (null? _%tl144204144375%_)
                                      (if (null? _%tl144200144363%_)
                                          (if (null? _%tl144217144424%_)
                                              (let ((_%id1144337%_
                                                     _%hd144224144408%_)
                                                    (_%expr1144344%_
                                                     _%hd144226144415%_)
                                                    (_%id2144371%_
                                                     _%hd144201144366%_)
                                                    (_%expr2144378%_
                                                     _%hd144203144373%_)
                                                    (_%body144380%_
                                                     _%tl144221144434%_))
                                                (_%K144188144314%_
                                                 _%body144380%_
                                                 _%expr2144378%_
                                                 _%id2144371%_
                                                 _%expr1144344%_
                                                 _%id1144337%_))
                                              (_%else144169144244%_))
                                          (_%else144169144244%_))
                                      (_%else144169144244%_)))
                                (_%else144169144244%_)))
                          (_%else144169144244%_)))
                    (_%else144169144244%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else144169144244%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd144218144427%_
                                                           'let*))
                                                  (if (pair? _%tl144219144429%_)
                                                      (let ((_%tl144181144297%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl144219144429%_)))
                    (_%hd144180144295%_
                     (let () (declare (not safe)) (##car _%tl144219144429%_))))
                (if (null? _%tl144217144424%_)
                    (let ((_%id1144276%_ _%hd144224144408%_)
                          (_%expr1144283%_ _%hd144226144415%_)
                          (_%bind144300%_ _%hd144180144295%_)
                          (_%body144302%_ _%tl144181144297%_))
                      (_%K144171144253%_
                       _%body144302%_
                       _%bind144300%_
                       _%expr1144283%_
                       _%id1144276%_))
                    (_%else144169144244%_)))
              (_%else144169144244%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else144169144244%_))))
                                        (_%else144169144244%_)))
                                  (_%else144169144244%_))
                              (_%else144169144244%_))
                          (_%else144169144244%_)))
                    (_%else144169144244%_)))
              (_%else144169144244%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else144169144244%_))))
                                      (_%else144169144244%_))
                                  (_%else144169144244%_)))
                            (_%else144169144244%_))))))
                 (_%generate-values143862%_
                  (lambda (_%hd143976%_ _%body143977%_)
                    (let _%lp143979%_ ((_%rest143981%_ _%hd143976%_)
                                       (_%bind143982%_ '())
                                       (_%check143983%_ '())
                                       (_%post143984%_ '()))
                      (let* ((_%__stx148107148108%_ _%rest143981%_)
                             (_%g143987143998%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx148107148108%_)))))
                        (let ((_%__kont148109148110%_
                               (lambda (_%L144025%_ _%L144026%_)
                                 (let* ((_%__stx148063148064%_ _%L144026%_)
                                        (_%g144041144066%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx148063148064%_)))))
                                   (let ((_%__kont148065148066%_
                                          (lambda (_%L144139%_ _%L144140%_)
                                            (let ((_%eid144154%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L144140%_)))
                                                  (_%expr144155%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self143855%_
                                                      _%L144139%_))))
                                              (_%lp143979%_
                                               _%L144025%_
                                               (cons (cons _%eid144154%_
                                                           (cons _%expr144155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind143982%_)
                                               _%check143983%_
                                               _%post143984%_))))
                                         (_%__kont148067148068%_
                                          (lambda (_%L144087%_ _%L144088%_)
                                            (let* ((_%vals144101%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values144103%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals144101%_
                                                     _%L144088%_
                                                     _%L144087%_))
                                                   (_%refs144105%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals144101%_
                                                     _%L144088%_))
                                                   (_%expr144107%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self143855%_
                                                       _%L144087%_))))
                                              (_%lp143979%_
                                               _%L144025%_
                                               (cons (cons _%vals144101%_
                                                           (cons _%expr144107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind143982%_)
                                               (cons _%check-values144103%_
                                                     _%check143983%_)
                                               (cons _%refs144105%_
                                                     _%post143984%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx148063148064%_))
                                         (let ((_%e144045144115%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx148063148064%_))))
                                           (let ((_%tl144047144120%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e144045144115%_)))
                                                 (_%hd144046144118%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e144045144115%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd144046144118%_))
                                                 (let ((_%e144048144123%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd144046144118%_))))
                                                   (let ((_%tl144050144128%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e144048144123%_)))
                                                         (_%hd144049144126%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e144048144123%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl144050144128%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl144047144120%_))
                     (let ((_%e144051144131%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144047144120%_))))
                       (let ((_%tl144053144136%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144051144131%_)))
                             (_%hd144052144134%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144051144131%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144053144136%_))
                             (_%__kont148065148066%_
                              _%hd144052144134%_
                              _%hd144049144126%_)
                             (let ()
                               (declare (not safe))
                               (_%g144041144066%_)))))
                     (let () (declare (not safe)) (_%g144041144066%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl144047144120%_))
                     (let ((_%e144059144079%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144047144120%_))))
                       (let ((_%tl144061144084%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144059144079%_)))
                             (_%hd144060144082%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144059144079%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144061144084%_))
                             (_%__kont148067148068%_
                              _%hd144060144082%_
                              _%hd144046144118%_)
                             (let ()
                               (declare (not safe))
                               (_%g144041144066%_)))))
                     (let () (declare (not safe)) (_%g144041144066%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl144047144120%_))
                                                     (let ((_%e144059144079%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl144047144120%_))))
                                                       (let ((_%tl144061144084%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e144059144079%_)))
                     (_%hd144060144082%_
                      (let () (declare (not safe)) (##car _%e144059144079%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl144061144084%_))
                     (_%__kont148067148068%_
                      _%hd144060144082%_
                      _%hd144046144118%_)
                     (let () (declare (not safe)) (_%g144041144066%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g144041144066%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g144041144066%_)))))))
                              (_%__kont148111148112%_
                               (lambda ()
                                 (let* ((_%body144005%_
                                         (if _%compiled-body?143857%_
                                             _%body143977%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self143855%_
                                                _%body143977%_))))
                                        (_%body144007%_
                                         (_%generate-values-post143863%_
                                          _%post143984%_
                                          _%body144005%_))
                                        (_%body144009%_
                                         (_%generate-values-check143864%_
                                          _%check143983%_
                                          _%body144007%_)))
                                   (cons 'let
                                         (cons (reverse _%bind143982%_)
                                               (cons _%body144009%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148107148108%_))
                              (let ((_%e143991144017%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148107148108%_))))
                                (let ((_%tl143993144022%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143991144017%_)))
                                      (_%hd143992144020%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143991144017%_))))
                                  (_%__kont148109148110%_
                                   _%tl143993144022%_
                                   _%hd143992144020%_)))
                              (_%__kont148111148112%_)))))))
                 (_%generate-values-post143863%_
                  (lambda (_%post143935%_ _%body143936%_)
                    (let _%lp143938%_ ((_%rest143940%_ _%post143935%_)
                                       (_%body143941%_ _%body143936%_))
                      (let* ((_%rest143942143950%_ _%rest143940%_)
                             (_%else143944143958%_ (lambda () _%body143941%_))
                             (_%K143946143964%_
                              (lambda (_%rest143961%_ _%bind143962%_)
                                (_%lp143938%_
                                 _%rest143961%_
                                 (cons 'let
                                       (cons _%bind143962%_
                                             (cons _%body143941%_ '())))))))
                        (if (pair? _%rest143942143950%_)
                            (let ((_%hd143947143967%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143942143950%_)))
                                  (_%tl143948143969%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143942143950%_))))
                              (let* ((_%bind143972%_ _%hd143947143967%_)
                                     (_%rest143974%_ _%tl143948143969%_))
                                (_%K143946143964%_
                                 _%rest143974%_
                                 _%bind143972%_)))
                            (_%else143944143958%_))))))
                 (_%generate-values-check143864%_
                  (lambda (_%check143932%_ _%body143933%_)
                    (cons 'begin
                          (let ((__tmp148955 (cons _%body143933%_ '()))
                                (__tmp148954 (reverse _%check143932%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp148955 __tmp148954))))))
          (let* ((_%g143866143883%_
                  (lambda (_%g143867143880%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143867143880%_))))
                 (_%g143865143929%_
                  (lambda (_%g143867143886%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143867143886%_))
                        (let ((_%e143870143888%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143867143886%_))))
                          (let ((_%hd143871143891%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143870143888%_)))
                                (_%tl143872143893%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143870143888%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143872143893%_))
                                (let ((_%e143873143896%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143872143893%_))))
                                  (let ((_%hd143874143899%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143873143896%_)))
                                        (_%tl143875143901%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143873143896%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143875143901%_))
                                        (let ((_%e143876143904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143875143901%_))))
                                          (let ((_%hd143877143907%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143876143904%_)))
                                                (_%tl143878143909%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143876143904%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143878143909%_))
                                                ((lambda (_%L143912%_
                                                          _%L143913%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L143913%_)
                                                       (_%generate-simple143859%_
                                                        _%L143913%_
                                                        _%L143912%_)
                                                       (_%generate-values143862%_
                                                        _%L143913%_
                                                        _%L143912%_)))
                                                 _%hd143877143907%_
                                                 _%hd143874143899%_)
                                                (_%g143866143883%_
                                                 _%g143867143886%_))))
                                        (_%g143866143883%_
                                         _%g143867143886%_))))
                                (_%g143866143883%_ _%g143867143886%_))))
                        (_%g143866143883%_ _%g143867143886%_)))))
            (_%g143865143929%_ _%stx143856%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self144609%_ _%stx144610%_)
        (let ((_%compiled-body?144612%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self144609%_
           _%stx144610%_
           _%compiled-body?144612%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g148957_
        (let ((_g148956_ (let () (declare (not safe)) (##length _g148957_))))
          (cond ((let () (declare (not safe)) (##fx= _g148956_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g148957_))
                ((let () (declare (not safe)) (##fx= _g148956_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g148957_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g148957_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals143749%_ _%hd143750%_)
        (let _%lp143752%_ ((_%rest143754%_ _%hd143750%_)
                           (_%k143755%_ '0)
                           (_%r143756%_ '()))
          (let* ((_%__stx148121148122%_ _%rest143754%_)
                 (_%g143761143778%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx148121148122%_)))))
            (let ((_%__kont148123148124%_
                   (lambda (_%L143841%_)
                     (_%lp143752%_
                      _%L143841%_
                      (let () (declare (not safe)) (##fx+ _%k143755%_ '1))
                      _%r143756%_)))
                  (_%__kont148125148126%_
                   (lambda (_%L143814%_ _%L143815%_)
                     (_%lp143752%_
                      _%L143814%_
                      (let () (declare (not safe)) (##fx+ _%k143755%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L143815%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals143749%_
                                         _%k143755%_
                                         _%L143814%_)
                                        '()))
                            _%r143756%_))))
                  (_%__kont148127148128%_
                   (lambda (_%L143790%_)
                     (let ((__tmp148958
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L143790%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals143749%_
                                               _%k143755%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp148958 _%r143756%_))))
                  (_%__kont148129148130%_ (lambda () (reverse _%r143756%_))))
              (let ((_%g143759143801%_
                     (lambda ()
                       (let ((_%L143790%_ _%__stx148121148122%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L143790%_))
                             (_%__kont148127148128%_ _%L143790%_)
                             (_%__kont148129148130%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx148121148122%_))
                    (let ((_%e143764143830%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx148121148122%_))))
                      (let ((_%tl143766143835%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143764143830%_)))
                            (_%hd143765143833%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143764143830%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd143765143833%_))
                            (let ((_%e143767143838%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd143765143833%_))))
                              (if (equal? _%e143767143838%_ '#f)
                                  (_%__kont148123148124%_ _%tl143766143835%_)
                                  (_%__kont148125148126%_
                                   _%tl143766143835%_
                                   _%hd143765143833%_)))
                            (_%__kont148125148126%_
                             _%tl143766143835%_
                             _%hd143765143833%_))))
                    (let () (declare (not safe)) (_%g143759143801%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self143428%_ _%stx143429%_ _%compiled-body?143430%_)
        (letrec ((_%generate-simple143432%_
                  (lambda (_%hd143734%_ _%body143735%_)
                    (gxc#generate-runtime-simple-let
                     _%self143428%_
                     'letrec
                     _%hd143734%_
                     _%body143735%_
                     _%compiled-body?143430%_)))
                 (_%generate-values143433%_
                  (lambda (_%hd143513%_ _%body143514%_)
                    (let _%lp143516%_ ((_%rest143518%_ _%hd143513%_)
                                       (_%bind143519%_ '())
                                       (_%check143520%_ '())
                                       (_%post143521%_ '()))
                      (let* ((_%__stx148195148196%_ _%rest143518%_)
                             (_%g143524143535%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx148195148196%_)))))
                        (let ((_%__kont148197148198%_
                               (lambda (_%L143562%_ _%L143563%_)
                                 (let* ((_%__stx148151148152%_ _%L143563%_)
                                        (_%g143578143603%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx148151148152%_)))))
                                   (let ((_%__kont148153148154%_
                                          (lambda (_%L143710%_ _%L143711%_)
                                            (let ((_%eid143725%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L143711%_)))
                                                  (_%expr143726%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self143428%_
                                                      _%L143710%_))))
                                              (_%lp143516%_
                                               _%L143562%_
                                               (cons (cons _%eid143725%_
                                                           (cons _%expr143726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind143519%_)
                                               _%check143520%_
                                               _%post143521%_))))
                                         (_%__kont148155148156%_
                                          (lambda (_%L143624%_ _%L143625%_)
                                            (let* ((_%vals143638%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values143640%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals143638%_
                                                     _%L143625%_
                                                     _%L143624%_))
                                                   (_%refs143642%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals143638%_
                                                     _%L143625%_))
                                                   (_%expr143644%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self143428%_
                                                       _%L143624%_))))
                                              (_%lp143516%_
                                               _%L143562%_
                                               (let ((__tmp148960
                                                      (cons (cons _%vals143638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr143644%_ '()))
                    _%bind143519%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp148959
                                                      (map (lambda (_%e143646143648%_)
                                                             (let* ((_%g143650143659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e143646143648%_)
                            (_%E143652143663%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g143650143659%_
                                        '([eid _])))
                               '#!void))
                            (_%K143653143668%_
                             (lambda (_%eid143666%_)
                               (cons _%eid143666%_ (cons '#!void '())))))
                       (if (pair? _%g143650143659%_)
                           (let ((_%hd143654143671%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g143650143659%_)))
                                 (_%tl143655143673%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g143650143659%_))))
                             (let ((_%eid143676%_ _%hd143654143671%_))
                               (if (pair? _%tl143655143673%_)
                                   (let ((_%tl143657143678%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl143655143673%_))))
                                     (if (null? _%tl143657143678%_)
                                         (_%K143653143668%_ _%eid143676%_)
                                         (_%E143652143663%_)))
                                   (_%E143652143663%_))))
                           (_%E143652143663%_))))
                   _%refs143642%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp148960
                                                  __tmp148959))
                                               (cons _%check-values143640%_
                                                     _%check143520%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs143642%_
                                                  _%post143521%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx148151148152%_))
                                         (let ((_%e143582143686%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx148151148152%_))))
                                           (let ((_%tl143584143691%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e143582143686%_)))
                                                 (_%hd143583143689%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e143582143686%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd143583143689%_))
                                                 (let ((_%e143585143694%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd143583143689%_))))
                                                   (let ((_%tl143587143699%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e143585143694%_)))
                                                         (_%hd143586143697%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e143585143694%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl143587143699%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl143584143691%_))
                     (let ((_%e143588143702%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143584143691%_))))
                       (let ((_%tl143590143707%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e143588143702%_)))
                             (_%hd143589143705%_
                              (let ()
                                (declare (not safe))
                                (##car _%e143588143702%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143590143707%_))
                             (_%__kont148153148154%_
                              _%hd143589143705%_
                              _%hd143586143697%_)
                             (let ()
                               (declare (not safe))
                               (_%g143578143603%_)))))
                     (let () (declare (not safe)) (_%g143578143603%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl143584143691%_))
                     (let ((_%e143596143616%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143584143691%_))))
                       (let ((_%tl143598143621%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e143596143616%_)))
                             (_%hd143597143619%_
                              (let ()
                                (declare (not safe))
                                (##car _%e143596143616%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143598143621%_))
                             (_%__kont148155148156%_
                              _%hd143597143619%_
                              _%hd143583143689%_)
                             (let ()
                               (declare (not safe))
                               (_%g143578143603%_)))))
                     (let () (declare (not safe)) (_%g143578143603%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl143584143691%_))
                                                     (let ((_%e143596143616%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl143584143691%_))))
                                                       (let ((_%tl143598143621%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e143596143616%_)))
                     (_%hd143597143619%_
                      (let () (declare (not safe)) (##car _%e143596143616%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl143598143621%_))
                     (_%__kont148155148156%_
                      _%hd143597143619%_
                      _%hd143583143689%_)
                     (let () (declare (not safe)) (_%g143578143603%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g143578143603%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g143578143603%_)))))))
                              (_%__kont148199148200%_
                               (lambda ()
                                 (let* ((_%body143542%_
                                         (if _%compiled-body?143430%_
                                             _%body143514%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self143428%_
                                                _%body143514%_))))
                                        (_%body143544%_
                                         (_%generate-values-post143435%_
                                          _%post143521%_
                                          _%body143542%_))
                                        (_%body143546%_
                                         (_%generate-values-check143434%_
                                          _%check143520%_
                                          _%body143544%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind143519%_)
                                               (cons _%body143546%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148195148196%_))
                              (let ((_%e143528143554%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148195148196%_))))
                                (let ((_%tl143530143559%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143528143554%_)))
                                      (_%hd143529143557%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143528143554%_))))
                                  (_%__kont148197148198%_
                                   _%tl143530143559%_
                                   _%hd143529143557%_)))
                              (_%__kont148199148200%_)))))))
                 (_%generate-values-check143434%_
                  (lambda (_%check143510%_ _%body143511%_)
                    (cons 'begin
                          (let ((__tmp148962 (cons _%body143511%_ '()))
                                (__tmp148961 (reverse _%check143510%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp148962 __tmp148961)))))
                 (_%generate-values-post143435%_
                  (lambda (_%post143503%_ _%body143504%_)
                    (cons 'begin
                          (let ((__tmp148966 (cons _%body143504%_ '()))
                                (__tmp148963
                                 (let ((__tmp148965
                                        (lambda (_%g143505143507%_)
                                          (cons 'set! _%g143505143507%_)))
                                       (__tmp148964 (reverse _%post143503%_)))
                                   (declare (not safe))
                                   (##map __tmp148965 __tmp148964))))
                            (declare (not safe))
                            (__foldr1 cons __tmp148966 __tmp148963))))))
          (let* ((_%g143437143454%_
                  (lambda (_%g143438143451%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143438143451%_))))
                 (_%g143436143500%_
                  (lambda (_%g143438143457%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143438143457%_))
                        (let ((_%e143441143459%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143438143457%_))))
                          (let ((_%hd143442143462%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143441143459%_)))
                                (_%tl143443143464%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143441143459%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143443143464%_))
                                (let ((_%e143444143467%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143443143464%_))))
                                  (let ((_%hd143445143470%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143444143467%_)))
                                        (_%tl143446143472%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143444143467%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143446143472%_))
                                        (let ((_%e143447143475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143446143472%_))))
                                          (let ((_%hd143448143478%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143447143475%_)))
                                                (_%tl143449143480%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143447143475%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143449143480%_))
                                                ((lambda (_%L143483%_
                                                          _%L143484%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L143484%_)
                                                       (_%generate-simple143432%_
                                                        _%L143484%_
                                                        _%L143483%_)
                                                       (_%generate-values143433%_
                                                        _%L143484%_
                                                        _%L143483%_)))
                                                 _%hd143448143478%_
                                                 _%hd143445143470%_)
                                                (_%g143437143454%_
                                                 _%g143438143457%_))))
                                        (_%g143437143454%_
                                         _%g143438143457%_))))
                                (_%g143437143454%_ _%g143438143457%_))))
                        (_%g143437143454%_ _%g143438143457%_)))))
            (_%g143436143500%_ _%stx143429%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self143740%_ _%stx143741%_)
        (let ((_%compiled-body?143743%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self143740%_
           _%stx143741%_
           _%compiled-body?143743%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g148968_
        (let ((_g148967_ (let () (declare (not safe)) (##length _g148968_))))
          (cond ((let () (declare (not safe)) (##fx= _g148967_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g148968_))
                ((let () (declare (not safe)) (##fx= _g148967_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g148968_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g148968_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self143009%_ _%stx143010%_)
        (letrec ((_%generate-values143012%_
                  (lambda (_%hd143255%_ _%body143256%_)
                    (let _%lp143258%_ ((_%rest143260%_ _%hd143255%_)
                                       (_%bind143261%_ '()))
                      (let* ((_%rest143262143270%_ _%rest143260%_)
                             (_%else143264143281%_
                              (lambda ()
                                (let ((_%bind143278%_ (reverse _%bind143261%_))
                                      (_%body143279%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self143009%_
                                          _%body143256%_))))
                                  (cons 'letrec*
                                        (cons _%bind143278%_
                                              (cons _%body143279%_ '()))))))
                             (_%K143266143415%_
                              (lambda (_%rest143284%_ _%hd-bind143285%_)
                                (let* ((_%__stx148209148210%_
                                        _%hd-bind143285%_)
                                       (_%g143288143313%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx148209148210%_)))))
                                  (let ((_%__kont148211148212%_
                                         (lambda (_%L143394%_ _%L143395%_)
                                           (let ((_%eid143409%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L143395%_)))
                                                 (_%expr143410%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self143009%_
                                                     _%L143394%_))))
                                             (_%lp143258%_
                                              _%rest143284%_
                                              (cons (cons _%eid143409%_
                                                          (cons _%expr143410%_
                                                                '()))
                                                    _%bind143261%_)))))
                                        (_%__kont148213148214%_
                                         (lambda (_%L143334%_ _%L143335%_)
                                           (let* ((_%vals143354%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp143356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values143358%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp143356%_
                                                    _%L143335%_
                                                    _%L143334%_))
                                                  (_%refs143360%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals143354%_
                                                    _%L143335%_))
                                                  (_%expr143362%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self143009%_
                                                      _%L143334%_))))
                                             (_%lp143258%_
                                              _%rest143284%_
                                              (let ((__tmp148969
                                                     (cons (cons _%vals143354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp143356%_
                                                       (cons _%expr143362%_
                                                             '()))
                                                 '())
                                           (cons _%check-values143358%_
                                                 (cons _%tmp143356%_ '()))))
                               '()))
                   _%bind143261%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp148969
                                                 _%refs143360%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx148209148210%_))
                                        (let ((_%e143292143370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx148209148210%_))))
                                          (let ((_%tl143294143375%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143292143370%_)))
                                                (_%hd143293143373%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143292143370%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143293143373%_))
                                                (let ((_%e143295143378%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143293143373%_))))
                                                  (let ((_%tl143297143383%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143295143378%_)))
                                                        (_%hd143296143381%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143295143378%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl143297143383%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl143294143375%_))
                                                            (let ((_%e143298143386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143294143375%_))))
                      (let ((_%tl143300143391%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143298143386%_)))
                            (_%hd143299143389%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143298143386%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143300143391%_))
                            (_%__kont148211148212%_
                             _%hd143299143389%_
                             _%hd143296143381%_)
                            (let ()
                              (declare (not safe))
                              (_%g143288143313%_)))))
                    (let () (declare (not safe)) (_%g143288143313%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl143294143375%_))
                    (let ((_%e143306143326%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143294143375%_))))
                      (let ((_%tl143308143331%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143306143326%_)))
                            (_%hd143307143329%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143306143326%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143308143331%_))
                            (_%__kont148213148214%_
                             _%hd143307143329%_
                             _%hd143293143373%_)
                            (let ()
                              (declare (not safe))
                              (_%g143288143313%_)))))
                    (let () (declare (not safe)) (_%g143288143313%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl143294143375%_))
                                                    (let ((_%e143306143326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl143294143375%_))))
                                                      (let ((_%tl143308143331%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e143306143326%_)))
                    (_%hd143307143329%_
                     (let () (declare (not safe)) (##car _%e143306143326%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl143308143331%_))
                    (_%__kont148213148214%_
                     _%hd143307143329%_
                     _%hd143293143373%_)
                    (let () (declare (not safe)) (_%g143288143313%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g143288143313%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g143288143313%_))))))))
                        (if (pair? _%rest143262143270%_)
                            (let ((_%hd143267143418%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143262143270%_)))
                                  (_%tl143268143420%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143262143270%_))))
                              (let* ((_%hd-bind143423%_ _%hd143267143418%_)
                                     (_%rest143425%_ _%tl143268143420%_))
                                (_%K143266143415%_
                                 _%rest143425%_
                                 _%hd-bind143423%_)))
                            (_%else143264143281%_))))))
                 (_%generate-letrec?143013%_
                  (lambda (_%hd143145%_)
                    (let _%lp143147%_ ((_%rest143149%_ _%hd143145%_))
                      (let* ((_%rest143150143158%_ _%rest143149%_)
                             (_%else143152143166%_ (lambda () '#t))
                             (_%K143154143243%_
                              (lambda (_%rest143169%_ _%hd-bind143170%_)
                                (let* ((_%g143172143189%_
                                        (lambda (_%g143173143186%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g143173143186%_))))
                                       (_%g143171143240%_
                                        (lambda (_%g143173143192%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g143173143192%_))
                                              (let ((_%e143176143194%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g143173143192%_))))
                                                (let ((_%hd143177143197%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143176143194%_)))
                                                      (_%tl143178143199%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143176143194%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd143177143197%_))
                                                      (let ((_%e143179143202%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd143177143197%_))))
                (let ((_%hd143180143205%_
                       (let () (declare (not safe)) (##car _%e143179143202%_)))
                      (_%tl143181143207%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e143179143202%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143181143207%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143178143199%_))
                          (let ((_%e143182143210%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143178143199%_))))
                            (let ((_%hd143183143213%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143182143210%_)))
                                  (_%tl143184143215%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143182143210%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl143184143215%_))
                                  ((lambda (_%L143218%_ _%L143219%_)
                                     (if (_%is-lambda-expr?143014%_
                                          _%L143218%_)
                                         (_%lp143147%_ _%rest143169%_)
                                         '#f))
                                   _%hd143183143213%_
                                   _%hd143180143205%_)
                                  (_%g143172143189%_ _%g143173143192%_))))
                          (_%g143172143189%_ _%g143173143192%_))
                      (_%g143172143189%_ _%g143173143192%_))))
              (_%g143172143189%_ _%g143173143192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g143172143189%_
                                               _%g143173143192%_)))))
                                  (_%g143171143240%_ _%hd-bind143170%_)))))
                        (if (pair? _%rest143150143158%_)
                            (let ((_%hd143155143246%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143150143158%_)))
                                  (_%tl143156143248%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143150143158%_))))
                              (let* ((_%hd-bind143251%_ _%hd143155143246%_)
                                     (_%rest143253%_ _%tl143156143248%_))
                                (_%K143154143243%_
                                 _%rest143253%_
                                 _%hd-bind143251%_)))
                            (_%else143152143166%_))))))
                 (_%is-lambda-expr?143014%_
                  (lambda (_%expr143082%_)
                    (let* ((_%__stx148253148254%_ _%expr143082%_)
                           (_%g143085143099%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx148253148254%_)))))
                      (let ((_%__kont148255148256%_
                             (lambda (_%L143127%_ _%L143128%_) '#t))
                            (_%__kont148257148258%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx148253148254%_))
                            (let ((_%e143089143111%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx148253148254%_))))
                              (let ((_%tl143091143116%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143089143111%_)))
                                    (_%hd143090143114%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143089143111%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd143090143114%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd143090143114%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143091143116%_))
                                            (let ((_%e143092143119%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143091143116%_))))
                                              (let ((_%tl143094143124%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143092143119%_)))
                                                    (_%hd143093143122%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143092143119%_))))
                                                (_%__kont148255148256%_
                                                 _%tl143094143124%_
                                                 _%hd143093143122%_)))
                                            (_%__kont148257148258%_))
                                        (_%__kont148257148258%_))
                                    (_%__kont148257148258%_))))
                            (_%__kont148257148258%_)))))))
          (let* ((_%g143016143033%_
                  (lambda (_%g143017143030%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143017143030%_))))
                 (_%g143015143079%_
                  (lambda (_%g143017143036%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143017143036%_))
                        (let ((_%e143020143038%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143017143036%_))))
                          (let ((_%hd143021143041%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143020143038%_)))
                                (_%tl143022143043%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143020143038%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143022143043%_))
                                (let ((_%e143023143046%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143022143043%_))))
                                  (let ((_%hd143024143049%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143023143046%_)))
                                        (_%tl143025143051%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143023143046%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143025143051%_))
                                        (let ((_%e143026143054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143025143051%_))))
                                          (let ((_%hd143027143057%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143026143054%_)))
                                                (_%tl143028143059%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143026143054%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143028143059%_))
                                                ((lambda (_%L143062%_
                                                          _%L143063%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L143063%_)
                                                       (if (_%generate-letrec?143013%_
                                                            _%L143063%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self143009%_
                                                            'letrec
                                                            _%L143063%_
                                                            _%L143062%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self143009%_
                                                            'letrec*
                                                            _%L143063%_
                                                            _%L143062%_
                                                            '#f))
                                                       (_%generate-values143012%_
                                                        _%L143063%_
                                                        _%L143062%_)))
                                                 _%hd143027143057%_
                                                 _%hd143024143049%_)
                                                (_%g143016143033%_
                                                 _%g143017143036%_))))
                                        (_%g143016143033%_
                                         _%g143017143036%_))))
                                (_%g143016143033%_ _%g143017143036%_))))
                        (_%g143016143033%_ _%g143017143036%_)))))
            (_%g143015143079%_ _%stx143010%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd142946%_)
        (let _%lp142948%_ ((_%rest142950%_ _%hd142946%_))
          (let* ((_%rest142951142967%_ _%rest142950%_)
                 (_%else142954142975%_ (lambda () '#f)))
            (let ((_%K142957142988%_
                   (lambda (_%rest142986%_) (_%lp142948%_ _%rest142986%_)))
                  (_%K142956142980%_ (lambda () '#t)))
              (let ((_%try-match142953142983%_
                     (lambda ()
                       (if (null? _%rest142951142967%_)
                           (_%K142956142980%_)
                           (_%else142954142975%_)))))
                (if (pair? _%rest142951142967%_)
                    (let ((_%tl142959142993%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest142951142967%_)))
                          (_%hd142958142991%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest142951142967%_))))
                      (if (pair? _%hd142958142991%_)
                          (let ((_%tl142961142998%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd142958142991%_)))
                                (_%hd142960142996%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd142958142991%_))))
                            (if (pair? _%hd142960142996%_)
                                (let ((_%tl142965143001%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd142960142996%_))))
                                  (if (null? _%tl142965143001%_)
                                      (if (pair? _%tl142961142998%_)
                                          (let ((_%tl142963143004%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl142961142998%_))))
                                            (if (null? _%tl142963143004%_)
                                                (let ((_%rest143007%_
                                                       _%tl142959142993%_))
                                                  (_%lp142948%_
                                                   _%rest143007%_))
                                                (_%else142954142975%_)))
                                          (_%else142954142975%_))
                                      (_%else142954142975%_)))
                                (_%else142954142975%_)))
                          (_%else142954142975%_)))
                    (_%try-match142953142983%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self142857%_
               _%form142858%_
               _%hd142859%_
               _%body142860%_
               _%compiled-body?142861%_)
        (letrec ((_%generate1142863%_
                  (lambda (_%bind142902%_)
                    (let* ((_%bind142903142914%_ _%bind142902%_)
                           (_%E142905142918%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind142903142914%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K142906142924%_
                            (lambda (_%expr142921%_ _%id142922%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id142922%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self142857%_
                                             _%expr142921%_))
                                          '())))))
                      (if (pair? _%bind142903142914%_)
                          (let ((_%hd142907142927%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind142903142914%_)))
                                (_%tl142908142929%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind142903142914%_))))
                            (if (pair? _%hd142907142927%_)
                                (let ((_%hd142911142932%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd142907142927%_)))
                                      (_%tl142912142934%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd142907142927%_))))
                                  (let ((_%id142937%_ _%hd142911142932%_))
                                    (if (null? _%tl142912142934%_)
                                        (if (pair? _%tl142908142929%_)
                                            (let ((_%hd142909142939%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl142908142929%_)))
                                                  (_%tl142910142941%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl142908142929%_))))
                                              (let ((_%expr142944%_
                                                     _%hd142909142939%_))
                                                (if (null? _%tl142910142941%_)
                                                    (_%K142906142924%_
                                                     _%expr142944%_
                                                     _%id142937%_)
                                                    (_%E142905142918%_))))
                                            (_%E142905142918%_))
                                        (_%E142905142918%_))))
                                (_%E142905142918%_)))
                          (_%E142905142918%_))))))
          (let* ((_%bind142865%_ (map _%generate1142863%_ _%hd142859%_))
                 (_%body142867%_
                  (if _%compiled-body?142861%_
                      _%body142860%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self142857%_ _%body142860%_))))
                 (_%body142899%_
                  (let* ((_%body142868142876%_ _%body142867%_)
                         (_%else142870142884%_
                          (lambda () (cons _%body142867%_ '())))
                         (_%K142872142889%_
                          (lambda (_%exprs142887%_) _%exprs142887%_)))
                    (if (pair? _%body142868142876%_)
                        (let ((_%hd142873142892%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body142868142876%_)))
                              (_%tl142874142894%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body142868142876%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd142873142892%_ 'begin))
                              (let ((_%exprs142897%_ _%tl142874142894%_))
                                (_%K142872142889%_ _%exprs142897%_))
                              (_%else142870142884%_)))
                        (_%else142870142884%_)))))
            (cons _%form142858%_ (cons _%bind142865%_ _%body142899%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self142757%_ _%stx142758%_)
        (letrec ((_%generate1142760%_
                  (lambda (_%datum142812%_)
                    (if (or (null? _%datum142812%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum142812%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum142812%_))
                            (eof-object? _%datum142812%_))
                        _%datum142812%_
                        (if (uninterned-symbol? _%datum142812%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum142812%_
                               '#t))
                            (if (pair? _%datum142812%_)
                                (cons (_%generate1142760%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum142812%_)))
                                      (_%generate1142760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum142812%_))))
                                (if (box? _%datum142812%_)
                                    (box (_%generate1142760%_
                                          (unbox _%datum142812%_)))
                                    (if (vector? _%datum142812%_)
                                        (vector-map
                                         _%generate1142760%_
                                         _%datum142812%_)
                                        (if (or (s8vector? _%datum142812%_)
                                                (u8vector? _%datum142812%_)
                                                (s16vector? _%datum142812%_)
                                                (u16vector? _%datum142812%_)
                                                (s32vector? _%datum142812%_)
                                                (u32vector? _%datum142812%_)
                                                (s64vector? _%datum142812%_)
                                                (u64vector? _%datum142812%_)
                                                (f32vector? _%datum142812%_)
                                                (f64vector? _%datum142812%_))
                                            _%datum142812%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx142758%_)))))))))))
          (let* ((_%g142762142775%_
                  (lambda (_%g142763142772%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142763142772%_))))
                 (_%g142761142809%_
                  (lambda (_%g142763142778%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142763142778%_))
                        (let ((_%e142765142780%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142763142778%_))))
                          (let ((_%hd142766142783%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142765142780%_)))
                                (_%tl142767142785%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142765142780%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142767142785%_))
                                (let ((_%e142768142788%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142767142785%_))))
                                  (let ((_%hd142769142791%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142768142788%_)))
                                        (_%tl142770142793%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142768142788%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl142770142793%_))
                                        ((lambda (_%L142796%_)
                                           (cons 'quote
                                                 (cons (_%generate1142760%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L142796%_)))
                                                       '())))
                                         _%hd142769142791%_)
                                        (_%g142762142775%_
                                         _%g142763142778%_))))
                                (_%g142762142775%_ _%g142763142778%_))))
                        (_%g142762142775%_ _%g142763142778%_)))))
            (_%g142761142809%_ _%stx142758%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self142198%_ _%stx142199%_)
        (letrec ((_%compile-call142201%_
                  (lambda (_%rator142490%_ _%rands142491%_)
                    (let ((_%rator142497%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self142198%_
                              _%rator142490%_)))
                          (_%rands142498%_
                           (map (lambda (_%g142492142494%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self142198%_
                                     _%g142492142494%_)))
                                _%rands142491%_)))
                      (let* ((_%__stx148300148301%_ _%rator142497%_)
                             (_%g142501142553%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx148300148301%_)))))
                        (let ((_%__kont148302148303%_
                               (lambda (_%L142677%_
                                        _%L142678%_
                                        _%L142679%_
                                        _%L142680%_)
                                 (if (let ((__tmp148972
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands142498%_)))
                                           (__tmp148970
                                            (length (let ((__tmp148971
                                                           (lambda (_%g142716142719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142717142721%_)
                     (cons _%g142716142719%_ _%g142717142721%_))))
              (declare (not safe))
              (__foldr1 __tmp148971 '() _%L142679%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp148972 __tmp148970))
                                     (let* ((_%id142724%_ _%L142680%_)
                                            (_%args142733%_
                                             (let ((__tmp148973
                                                    (lambda (_%g142725142728%_
                                                             _%g142726142730%_)
                                                      (cons _%g142725142728%_
                                                            _%g142726142730%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp148973
                                                '()
                                                _%L142679%_)))
                                            (_%body142742%_
                                             (let ((__tmp148974
                                                    (lambda (_%g142734142737%_
                                                             _%g142735142739%_)
                                                      (cons _%g142734142737%_
                                                            _%g142735142739%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp148974
                                                '()
                                                _%L142678%_)))
                                            (_%init142744%_
                                             (map list
                                                  _%args142733%_
                                                  _%rands142498%_)))
                                       (cons 'let
                                             (cons _%id142724%_
                                                   (cons _%init142744%_
                                                         _%body142742%_))))
                                     (let ((__tmp148975
                                            (let ((__tmp148976
                                                   (lambda (_%g142746142749%_
                                                            _%g142747142751%_)
                                                     (cons _%g142746142749%_
                                                           _%g142747142751%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp148976
                                               '()
                                               _%L142679%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx142199%_
                                        __tmp148975
                                        _%rands142498%_)))))
                              (_%__kont148308148309%_
                               (lambda ()
                                 (cons _%rator142497%_ _%rands142498%_))))
                          (let ((_%__match148367148368%_
                                 (lambda (_%e142507142565%_
                                          _%hd142508142568%_
                                          _%tl142509142570%_
                                          _%e142510142573%_
                                          _%hd142511142576%_
                                          _%tl142512142578%_
                                          _%e142513142581%_
                                          _%hd142514142584%_
                                          _%tl142515142586%_
                                          _%e142516142589%_
                                          _%hd142517142592%_
                                          _%tl142518142594%_
                                          _%e142519142597%_
                                          _%hd142520142600%_
                                          _%tl142521142602%_
                                          _%e142522142605%_
                                          _%hd142523142608%_
                                          _%tl142524142610%_
                                          _%e142525142613%_
                                          _%hd142526142616%_
                                          _%tl142527142618%_
                                          _%__splice148304148305%_
                                          _%target142528142621%_
                                          _%tl142530142623%_)
                                   (letrec ((_%loop142531142626%_
                                             (lambda (_%hd142529142629%_
                                                      _%arg142535142631%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd142529142629%_))
                                                   (let ((_%e142532142634%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd142529142629%_))))
                                                     (let ((_%lp-tl142534142639%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e142532142634%_)))
                                                           (_%lp-hd142533142637%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e142532142634%_))))
                                                       (_%loop142531142626%_
                                                        _%lp-tl142534142639%_
                                                        (cons _%lp-hd142533142637%_
                                                              _%arg142535142631%_))))
                                                   (let ((_%arg142536142642%_
                                                          (reverse _%arg142535142631%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl142527142618%_))
                                                         (let ((_%__splice148306148307%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl142527142618%_ '0))))
                   (let ((_%tl142539142647%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice148306148307%_ '1)))
                         (_%target142537142645%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice148306148307%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl142539142647%_))
                         (letrec ((_%loop142540142650%_
                                   (lambda (_%hd142538142653%_
                                            _%body142544142655%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd142538142653%_))
                                         (let ((_%e142541142658%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd142538142653%_))))
                                           (let ((_%lp-tl142543142663%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142541142658%_)))
                                                 (_%lp-hd142542142661%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142541142658%_))))
                                             (_%loop142540142650%_
                                              _%lp-tl142543142663%_
                                              (cons _%lp-hd142542142661%_
                                                    _%body142544142655%_))))
                                         (let ((_%body142545142666%_
                                                (reverse _%body142544142655%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl142521142602%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl142515142586%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl142512142578%_))
                                                       (let ((_%e142546142669%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl142512142578%_))))
                 (let ((_%tl142548142674%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e142546142669%_)))
                       (_%hd142547142672%_
                        (let ()
                          (declare (not safe))
                          (##car _%e142546142669%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl142548142674%_))
                       (let ((_%L142677%_ _%hd142547142672%_)
                             (_%L142678%_ _%body142545142666%_)
                             (_%L142679%_ _%arg142536142642%_)
                             (_%L142680%_ _%hd142517142592%_))
                         (if (eq? _%L142680%_ _%L142677%_)
                             (_%__kont148302148303%_
                              _%L142677%_
                              _%L142678%_
                              _%L142679%_
                              _%L142680%_)
                             (_%__kont148308148309%_)))
                       (_%__kont148308148309%_))))
               (_%__kont148308148309%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont148308148309%_))
                                               (_%__kont148308148309%_)))))))
                           (_%loop142540142650%_ _%target142537142645%_ '()))
                         (_%__kont148308148309%_))))
                 (_%__kont148308148309%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop142531142626%_
                                      _%target142528142621%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx148300148301%_))
                                (let ((_%e142507142565%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx148300148301%_))))
                                  (let ((_%tl142509142570%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142507142565%_)))
                                        (_%hd142508142568%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142507142565%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd142508142568%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd142508142568%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl142509142570%_))
                                                (let ((_%e142510142573%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl142509142570%_))))
                                                  (let ((_%tl142512142578%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142510142573%_)))
                                                        (_%hd142511142576%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142510142573%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd142511142576%_))
                                                        (let ((_%e142513142581%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd142511142576%_))))
                  (let ((_%tl142515142586%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142513142581%_)))
                        (_%hd142514142584%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142513142581%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142514142584%_))
                        (let ((_%e142516142589%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142514142584%_))))
                          (let ((_%tl142518142594%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142516142589%_)))
                                (_%hd142517142592%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142516142589%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142518142594%_))
                                (let ((_%e142519142597%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142518142594%_))))
                                  (let ((_%tl142521142602%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142519142597%_)))
                                        (_%hd142520142600%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142519142597%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd142520142600%_))
                                        (let ((_%e142522142605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd142520142600%_))))
                                          (let ((_%tl142524142610%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142522142605%_)))
                                                (_%hd142523142608%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142522142605%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd142523142608%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd142523142608%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142524142610%_))
                                                        (let ((_%e142525142613%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142524142610%_))))
                  (let ((_%tl142527142618%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142525142613%_)))
                        (_%hd142526142616%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142525142613%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd142526142616%_))
                        (let ((_%__splice148304148305%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd142526142616%_
                                  '0))))
                          (let ((_%tl142530142623%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice148304148305%_ '1)))
                                (_%target142528142621%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice148304148305%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142530142623%_))
                                (_%__match148367148368%_
                                 _%e142507142565%_
                                 _%hd142508142568%_
                                 _%tl142509142570%_
                                 _%e142510142573%_
                                 _%hd142511142576%_
                                 _%tl142512142578%_
                                 _%e142513142581%_
                                 _%hd142514142584%_
                                 _%tl142515142586%_
                                 _%e142516142589%_
                                 _%hd142517142592%_
                                 _%tl142518142594%_
                                 _%e142519142597%_
                                 _%hd142520142600%_
                                 _%tl142521142602%_
                                 _%e142522142605%_
                                 _%hd142523142608%_
                                 _%tl142524142610%_
                                 _%e142525142613%_
                                 _%hd142526142616%_
                                 _%tl142527142618%_
                                 _%__splice148304148305%_
                                 _%target142528142621%_
                                 _%tl142530142623%_)
                                (_%__kont148308148309%_))))
                        (_%__kont148308148309%_))))
                (_%__kont148308148309%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont148308148309%_))
                                                (_%__kont148308148309%_))))
                                        (_%__kont148308148309%_))))
                                (_%__kont148308148309%_))))
                        (_%__kont148308148309%_))))
                (_%__kont148308148309%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont148308148309%_))
                                            (_%__kont148308148309%_))
                                        (_%__kont148308148309%_))))
                                (_%__kont148308148309%_)))))))))
          (let* ((_%g142203142226%_
                  (lambda (_%g142204142223%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142204142223%_))))
                 (_%g142202142487%_
                  (lambda (_%g142204142229%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142204142229%_))
                        (let ((_%e142207142231%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142204142229%_))))
                          (let ((_%hd142208142234%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142207142231%_)))
                                (_%tl142209142236%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142207142231%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142209142236%_))
                                (let ((_%e142210142239%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142209142236%_))))
                                  (let ((_%hd142211142242%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142210142239%_)))
                                        (_%tl142212142244%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142210142239%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl142212142244%_))
                                        (let ((_g148977_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl142212142244%_
                                                  '0))))
                                          (begin
                                            (let ((_g148978_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g148977_)
                                                         (##vector-length
                                                          _g148977_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g148978_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g148978_)))
                                            (let ((_%target142213142247%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g148977_
                                                      0)))
                                                  (_%tl142215142249%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g148977_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl142215142249%_))
                                                  (letrec ((_%loop142216142252%_
                                                            (lambda (_%hd142214142255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand142220142257%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd142214142255%_))
                          (let ((_%e142217142260%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd142214142255%_))))
                            (let ((_%lp-hd142218142263%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142217142260%_)))
                                  (_%lp-tl142219142265%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142217142260%_))))
                              (_%loop142216142252%_
                               _%lp-tl142219142265%_
                               (cons _%lp-hd142218142263%_
                                     _%rand142220142257%_))))
                          (let ((_%rand142221142268%_
                                 (reverse _%rand142220142257%_)))
                            ((lambda (_%L142271%_ _%L142272%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call142201%_
                                    _%L142272%_
                                    (let ((__tmp148979
                                           (lambda (_%g142289142292%_
                                                    _%g142290142294%_)
                                             (cons _%g142289142292%_
                                                   _%g142290142294%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp148979 '() _%L142271%_)))
                                   (let* ((_%__stx148416148417%_ _%L142272%_)
                                          (_%g142298142310%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx148416148417%_)))))
                                     (let ((_%__kont148418148419%_
                                            (lambda ()
                                              (let ((_%f142347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self142198%_
                                                        _%L142272%_))))
                                                (if (and (let ((__tmp148980
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f142347%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp148980))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f142347%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp142349%_ ((_%rest142352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp148982
                                                (lambda (_%g142469142472%_
                                                         _%g142470142474%_)
                                                  (cons _%g142469142472%_
                                                        _%g142470142474%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp148982
                                            '()
                                            _%L142271%_))))
                               (_%bind142354%_ '())
                               (_%args142355%_ '()))
              (let* ((_%rest142356142364%_ _%rest142352%_)
                     (_%else142358142372%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind142354%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f142347%_
                                                      _%args142355%_)
                                                '()))))))
                     (_%K142360142458%_
                      (lambda (_%rest142375%_ _%e142376%_)
                        (let* ((_%__stx148370148371%_ _%e142376%_)
                               (_%g142381142399%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx148370148371%_)))))
                          (let ((_%__kont148372148373%_
                                 (lambda ()
                                   (_%lp142349%_
                                    _%rest142375%_
                                    _%bind142354%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e142376%_))
                                          _%args142355%_))))
                                (_%__kont148374148375%_
                                 (lambda ()
                                   (_%lp142349%_
                                    _%rest142375%_
                                    _%bind142354%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e142376%_))
                                          _%args142355%_))))
                                (_%__kont148376148377%_
                                 (lambda ()
                                   (let ((_%tmp142406%_
                                          (let ((__tmp148981
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp148981))))
                                     (_%lp142349%_
                                      _%rest142375%_
                                      (cons (cons _%tmp142406%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e142376%_))
                                                        '()))
                                            _%bind142354%_)
                                      (cons _%tmp142406%_ _%args142355%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx148370148371%_))
                                (let ((_%e142383142437%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx148370148371%_))))
                                  (let ((_%tl142385142442%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142383142437%_)))
                                        (_%hd142384142440%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142383142437%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd142384142440%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd142384142440%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl142385142442%_))
                                                (let ((_%e142386142445%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl142385142442%_))))
                                                  (let ((_%tl142388142450%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142386142445%_)))
                                                        (_%hd142387142448%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142386142445%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl142388142450%_))
                                                        (_%__kont148372148373%_)
                                                        (_%__kont148376148377%_))))
                                                (_%__kont148376148377%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd142384142440%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl142385142442%_))
                                                    (let ((_%e142392142422%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl142385142442%_))))
                                                      (let ((_%tl142394142427%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e142392142422%_)))
                    (_%hd142393142425%_
                     (let () (declare (not safe)) (##car _%e142392142422%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl142394142427%_))
                    (_%__kont148374148375%_)
                    (_%__kont148376148377%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont148376148377%_))
                                                (_%__kont148376148377%_)))
                                        (_%__kont148376148377%_))))
                                (_%__kont148376148377%_)))))))
                (if (pair? _%rest142356142364%_)
                    (let ((_%hd142361142461%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest142356142364%_)))
                          (_%tl142362142463%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest142356142364%_))))
                      (let* ((_%e142466%_ _%hd142361142461%_)
                             (_%rest142468%_ _%tl142362142463%_))
                        (_%K142360142458%_ _%rest142468%_ _%e142466%_)))
                    (_%else142358142372%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call142201%_
                                                     _%L142272%_
                                                     (let ((__tmp148983
                                                            (lambda (_%g142476142479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g142477142481%_)
                      (cons _%g142476142479%_ _%g142477142481%_))))
               (declare (not safe))
               (__foldr1 __tmp148983 '() _%L142271%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont148420148421%_
                                            (lambda ()
                                              (_%compile-call142201%_
                                               _%L142272%_
                                               (let ((__tmp148984
                                                      (lambda (_%g142316142319%_
                                                               _%g142317142321%_)
                                                        (cons _%g142316142319%_
                                                              _%g142317142321%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp148984
                                                  '()
                                                  _%L142271%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx148416148417%_))
                                           (let ((_%e142300142329%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx148416148417%_))))
                                             (let ((_%tl142302142334%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e142300142329%_)))
                                                   (_%hd142301142332%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e142300142329%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd142301142332%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd142301142332%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl142302142334%_))
                                                           (let ((_%e142303142337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl142302142334%_))))
                     (let ((_%tl142305142342%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e142303142337%_)))
                           (_%hd142304142340%_
                            (let ()
                              (declare (not safe))
                              (##car _%e142303142337%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl142305142342%_))
                           (_%__kont148418148419%_)
                           (_%__kont148420148421%_))))
                   (_%__kont148420148421%_))
               (_%__kont148420148421%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont148420148421%_))))
                                           (_%__kont148420148421%_))))))
                             _%rand142221142268%_
                             _%hd142211142242%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop142216142252%_
                                                     _%target142213142247%_
                                                     '()))
                                                  (_%g142203142226%_
                                                   _%g142204142229%_)))))
                                        (_%g142203142226%_
                                         _%g142204142229%_))))
                                (_%g142203142226%_ _%g142204142229%_))))
                        (_%g142203142226%_ _%g142204142229%_)))))
            (_%g142202142487%_ _%stx142199%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self141941%_ _%stx141942%_)
        (let* ((_%__stx148488148489%_ _%stx141942%_)
               (_%g141945141974%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx148488148489%_)))))
          (let ((_%__kont148490148491%_
                 (lambda (_%L142042%_ _%L142043%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self141941%_
                        _%stx141942%_)
                       (let ((_%f142065%_
                              (let ((__tmp148985
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L142043%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self141941%_
                                 __tmp148985))))
                         (let _%lp142067%_ ((_%rest142070%_
                                             (reverse (let ((__tmp148987
                                                             (lambda (_%g142187142190%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g142188142192%_)
                       (cons _%g142187142190%_ _%g142188142192%_))))
                (declare (not safe))
                (__foldr1 __tmp148987 '() _%L142042%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind142072%_ '())
                                            (_%args142073%_ '()))
                           (let* ((_%rest142074142082%_ _%rest142070%_)
                                  (_%else142076142090%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind142072%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f142065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args142073%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K142078142176%_
                                   (lambda (_%rest142093%_ _%e142094%_)
                                     (let* ((_%__stx148442148443%_ _%e142094%_)
                                            (_%g142099142117%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx148442148443%_)))))
                                       (let ((_%__kont148444148445%_
                                              (lambda ()
                                                (_%lp142067%_
                                                 _%rest142093%_
                                                 _%bind142072%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e142094%_))
                                                       _%args142073%_))))
                                             (_%__kont148446148447%_
                                              (lambda ()
                                                (_%lp142067%_
                                                 _%rest142093%_
                                                 _%bind142072%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e142094%_))
                                                       _%args142073%_))))
                                             (_%__kont148448148449%_
                                              (lambda ()
                                                (let ((_%tmp142124%_
                                                       (let ((__tmp148986
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp148986))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp142067%_
                                                   _%rest142093%_
                                                   (cons (cons _%tmp142124%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e142094%_))
                             '()))
                 _%bind142072%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp142124%_
                                                         _%args142073%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx148442148443%_))
                                             (let ((_%e142101142155%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx148442148443%_))))
                                               (let ((_%tl142103142160%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e142101142155%_)))
                                                     (_%hd142102142158%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e142101142155%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd142102142158%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd142102142158%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142103142160%_))
                     (let ((_%e142104142163%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142103142160%_))))
                       (let ((_%tl142106142168%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142104142163%_)))
                             (_%hd142105142166%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142104142163%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142106142168%_))
                             (_%__kont148444148445%_)
                             (_%__kont148448148449%_))))
                     (_%__kont148448148449%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd142102142158%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl142103142160%_))
                         (let ((_%e142110142140%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl142103142160%_))))
                           (let ((_%tl142112142145%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e142110142140%_)))
                                 (_%hd142111142143%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e142110142140%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl142112142145%_))
                                 (_%__kont148446148447%_)
                                 (_%__kont148448148449%_))))
                         (_%__kont148448148449%_))
                     (_%__kont148448148449%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont148448148449%_))))
                                             (_%__kont148448148449%_)))))))
                             (if (pair? _%rest142074142082%_)
                                 (let ((_%hd142079142179%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest142074142082%_)))
                                       (_%tl142080142181%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest142074142082%_))))
                                   (let* ((_%e142184%_ _%hd142079142179%_)
                                          (_%rest142186%_ _%tl142080142181%_))
                                     (_%K142078142176%_
                                      _%rest142186%_
                                      _%e142184%_)))
                                 (_%else142076142090%_))))))))
                (_%__kont148494148495%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self141941%_ _%stx141942%_))))
            (let ((_%__match148533148534%_
                   (lambda (_%e141949141986%_
                            _%hd141950141989%_
                            _%tl141951141991%_
                            _%e141952141994%_
                            _%hd141953141997%_
                            _%tl141954141999%_
                            _%e141955142002%_
                            _%hd141956142005%_
                            _%tl141957142007%_
                            _%e141958142010%_
                            _%hd141959142013%_
                            _%tl141960142015%_
                            _%__splice148492148493%_
                            _%target141961142018%_
                            _%tl141963142020%_)
                     (letrec ((_%loop141964142023%_
                               (lambda (_%hd141962142026%_
                                        _%rand141968142028%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd141962142026%_))
                                     (let ((_%e141965142031%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd141962142026%_))))
                                       (let ((_%lp-tl141967142036%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e141965142031%_)))
                                             (_%lp-hd141966142034%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e141965142031%_))))
                                         (_%loop141964142023%_
                                          _%lp-tl141967142036%_
                                          (cons _%lp-hd141966142034%_
                                                _%rand141968142028%_))))
                                     (let ((_%rand141969142039%_
                                            (reverse _%rand141968142028%_)))
                                       (_%__kont148490148491%_
                                        _%rand141969142039%_
                                        _%hd141959142013%_))))))
                       (_%loop141964142023%_ _%target141961142018%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx148488148489%_))
                  (let ((_%e141949141986%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx148488148489%_))))
                    (let ((_%tl141951141991%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141949141986%_)))
                          (_%hd141950141989%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141949141986%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141951141991%_))
                          (let ((_%e141952141994%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141951141991%_))))
                            (let ((_%tl141954141999%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141952141994%_)))
                                  (_%hd141953141997%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141952141994%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141953141997%_))
                                  (let ((_%e141955142002%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141953141997%_))))
                                    (let ((_%tl141957142007%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141955142002%_)))
                                          (_%hd141956142005%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141955142002%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141956142005%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141956142005%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141957142007%_))
                                                  (let ((_%e141958142010%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141957142007%_))))
                                                    (let ((_%tl141960142015%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141958142010%_)))
                                                          (_%hd141959142013%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141958142010%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141960142015%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl141954141999%_))
                      (let ((_%__splice148492148493%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl141954141999%_
                                '0))))
                        (let ((_%tl141963142020%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148492148493%_ '1)))
                              (_%target141961142018%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148492148493%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141963142020%_))
                              (_%__match148533148534%_
                               _%e141949141986%_
                               _%hd141950141989%_
                               _%tl141951141991%_
                               _%e141952141994%_
                               _%hd141953141997%_
                               _%tl141954141999%_
                               _%e141955142002%_
                               _%hd141956142005%_
                               _%tl141957142007%_
                               _%e141958142010%_
                               _%hd141959142013%_
                               _%tl141960142015%_
                               _%__splice148492148493%_
                               _%target141961142018%_
                               _%tl141963142020%_)
                              (_%__kont148494148495%_))))
                      (_%__kont148494148495%_))
                  (_%__kont148494148495%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148494148495%_))
                                              (_%__kont148494148495%_))
                                          (_%__kont148494148495%_))))
                                  (_%__kont148494148495%_))))
                          (_%__kont148494148495%_))))
                  (_%__kont148494148495%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self141753%_ _%stx141754%_)
        (letrec ((_%simplify141756%_
                  (lambda (_%code141841%_)
                    (let* ((_%code141842141860%_ _%code141841%_)
                           (_%else141844141868%_ (lambda () _%code141841%_))
                           (_%K141846141904%_
                            (lambda (_%expr141871%_ _%test141872%_)
                              (let* ((_%expr141873141881%_ _%expr141871%_)
                                     (_%else141875141889%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test141872%_
                                                    (cons _%expr141871%_
                                                          '())))))
                                     (_%K141877141894%_
                                      (lambda (_%exprs141892%_)
                                        (cons 'and
                                              (cons _%test141872%_
                                                    _%exprs141892%_)))))
                                (if (pair? _%expr141873141881%_)
                                    (let ((_%hd141878141897%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr141873141881%_)))
                                          (_%tl141879141899%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr141873141881%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd141878141897%_ 'and))
                                          (let ((_%exprs141902%_
                                                 _%tl141879141899%_))
                                            (_%K141877141894%_
                                             _%exprs141902%_))
                                          (_%else141875141889%_)))
                                    (_%else141875141889%_))))))
                      (if (pair? _%code141842141860%_)
                          (let ((_%hd141847141907%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code141842141860%_)))
                                (_%tl141848141909%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code141842141860%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd141847141907%_ 'if))
                                (if (pair? _%tl141848141909%_)
                                    (let ((_%hd141849141912%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl141848141909%_)))
                                          (_%tl141850141914%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl141848141909%_))))
                                      (let ((_%test141917%_
                                             _%hd141849141912%_))
                                        (if (pair? _%tl141850141914%_)
                                            (let ((_%hd141851141919%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl141850141914%_)))
                                                  (_%tl141852141921%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl141850141914%_))))
                                              (let ((_%expr141924%_
                                                     _%hd141851141919%_))
                                                (if (pair? _%tl141852141921%_)
                                                    (let ((_%hd141853141926%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl141852141921%_)))
                                                          (_%tl141854141928%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl141852141921%_))))
                                                      (if (pair? _%hd141853141926%_)
                                                          (let ((_%hd141855141931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd141853141926%_)))
                        (_%tl141856141933%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd141853141926%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd141855141931%_ 'quote))
                        (if (pair? _%tl141856141933%_)
                            (let ((_%hd141857141936%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl141856141933%_)))
                                  (_%tl141858141938%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl141856141933%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd141857141936%_ '#f))
                                  (if (null? _%tl141858141938%_)
                                      (if (null? _%tl141854141928%_)
                                          (_%K141846141904%_
                                           _%expr141924%_
                                           _%test141917%_)
                                          (_%else141844141868%_))
                                      (_%else141844141868%_))
                                  (_%else141844141868%_)))
                            (_%else141844141868%_))
                        (_%else141844141868%_)))
                  (_%else141844141868%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else141844141868%_))))
                                            (_%else141844141868%_))))
                                    (_%else141844141868%_))
                                (_%else141844141868%_)))
                          (_%else141844141868%_))))))
          (let* ((_%g141758141779%_
                  (lambda (_%g141759141776%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141759141776%_))))
                 (_%g141757141838%_
                  (lambda (_%g141759141782%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141759141782%_))
                        (let ((_%e141763141784%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141759141782%_))))
                          (let ((_%hd141764141787%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141763141784%_)))
                                (_%tl141765141789%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141763141784%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141765141789%_))
                                (let ((_%e141766141792%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141765141789%_))))
                                  (let ((_%hd141767141795%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141766141792%_)))
                                        (_%tl141768141797%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141766141792%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141768141797%_))
                                        (let ((_%e141769141800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141768141797%_))))
                                          (let ((_%hd141770141803%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141769141800%_)))
                                                (_%tl141771141805%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141769141800%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl141771141805%_))
                                                (let ((_%e141772141808%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl141771141805%_))))
                                                  (let ((_%hd141773141811%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141772141808%_)))
                                                        (_%tl141774141813%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141772141808%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl141774141813%_))
                                                        ((lambda (_%L141816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L141817%_
                          _%L141818%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify141756%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self141753%_
                                       _%L141818%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self141753%_
                                             _%L141817%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self141753%_
                                                   _%L141816%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp148988
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self141753%_
                                               _%L141818%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp148988
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self141753%_
                                            _%L141817%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self141753%_
                                                  _%L141816%_))
                                               '()))))))
                 _%hd141773141811%_
                 _%hd141770141803%_
                 _%hd141767141795%_)
                (_%g141758141779%_ _%g141759141782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g141758141779%_
                                                 _%g141759141782%_))))
                                        (_%g141758141779%_
                                         _%g141759141782%_))))
                                (_%g141758141779%_ _%g141759141782%_))))
                        (_%g141758141779%_ _%g141759141782%_)))))
            (_%g141757141838%_ _%stx141754%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self141701%_ _%stx141702%_)
        (let* ((_%g141704141717%_
                (lambda (_%g141705141714%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141705141714%_))))
               (_%g141703141750%_
                (lambda (_%g141705141720%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141705141720%_))
                      (let ((_%e141707141722%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141705141720%_))))
                        (let ((_%hd141708141725%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141707141722%_)))
                              (_%tl141709141727%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141707141722%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141709141727%_))
                              (let ((_%e141710141730%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141709141727%_))))
                                (let ((_%hd141711141733%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141710141730%_)))
                                      (_%tl141712141735%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141710141730%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl141712141735%_))
                                      ((lambda (_%L141738%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L141738%_)))
                                       _%hd141711141733%_)
                                      (_%g141704141717%_ _%g141705141720%_))))
                              (_%g141704141717%_ _%g141705141720%_))))
                      (_%g141704141717%_ _%g141705141720%_)))))
          (_%g141703141750%_ _%stx141702%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self141633%_ _%stx141634%_)
        (let* ((_%g141636141653%_
                (lambda (_%g141637141650%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141637141650%_))))
               (_%g141635141698%_
                (lambda (_%g141637141656%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141637141656%_))
                      (let ((_%e141640141658%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141637141656%_))))
                        (let ((_%hd141641141661%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141640141658%_)))
                              (_%tl141642141663%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141640141658%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141642141663%_))
                              (let ((_%e141643141666%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141642141663%_))))
                                (let ((_%hd141644141669%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141643141666%_)))
                                      (_%tl141645141671%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141643141666%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141645141671%_))
                                      (let ((_%e141646141674%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141645141671%_))))
                                        (let ((_%hd141647141677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141646141674%_)))
                                              (_%tl141648141679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141646141674%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141648141679%_))
                                              ((lambda (_%L141682%_
                                                        _%L141683%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L141683%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self141633%_ _%L141682%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141647141677%_
                                               _%hd141644141669%_)
                                              (_%g141636141653%_
                                               _%g141637141656%_))))
                                      (_%g141636141653%_ _%g141637141656%_))))
                              (_%g141636141653%_ _%g141637141656%_))))
                      (_%g141636141653%_ _%g141637141656%_)))))
          (_%g141635141698%_ _%stx141634%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self141444%_ _%stx141445%_)
        (let* ((_%g141447141464%_
                (lambda (_%g141448141461%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141448141461%_))))
               (_%g141446141630%_
                (lambda (_%g141448141467%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141448141467%_))
                      (let ((_%e141451141469%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141448141467%_))))
                        (let ((_%hd141452141472%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141451141469%_)))
                              (_%tl141453141474%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141451141469%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141453141474%_))
                              (let ((_%e141454141477%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141453141474%_))))
                                (let ((_%hd141455141480%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141454141477%_)))
                                      (_%tl141456141482%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141454141477%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141456141482%_))
                                      (let ((_%e141457141485%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141456141482%_))))
                                        (let ((_%hd141458141488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141457141485%_)))
                                              (_%tl141459141490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141457141485%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141459141490%_))
                                              ((lambda (_%L141493%_
                                                        _%L141494%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self141444%_ _%L141493%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self141444%_ _%L141494%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp141509%_ ((_%rest141512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L141494%_ (cons _%L141493%_ '())))
                                (_%bind141514%_ '())
                                (_%args141515%_ '()))
               (let* ((_%rest141516141524%_ _%rest141512%_)
                      (_%else141518141532%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind141514%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args141515%_)
                                                 '()))))))
                      (_%K141520141618%_
                       (lambda (_%rest141535%_ _%e141536%_)
                         (let* ((_%__stx148536148537%_ _%e141536%_)
                                (_%g141541141559%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx148536148537%_)))))
                           (let ((_%__kont148538148539%_
                                  (lambda ()
                                    (_%lp141509%_
                                     _%rest141535%_
                                     _%bind141514%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141536%_))
                                           _%args141515%_))))
                                 (_%__kont148540148541%_
                                  (lambda ()
                                    (_%lp141509%_
                                     _%rest141535%_
                                     _%bind141514%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141536%_))
                                           _%args141515%_))))
                                 (_%__kont148542148543%_
                                  (lambda ()
                                    (let ((_%tmp141566%_
                                           (let ((__tmp148989
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp148989))))
                                      (_%lp141509%_
                                       _%rest141535%_
                                       (cons (cons _%tmp141566%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e141536%_))
                                                         '()))
                                             _%bind141514%_)
                                       (cons _%tmp141566%_ _%args141515%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx148536148537%_))
                                 (let ((_%e141543141597%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx148536148537%_))))
                                   (let ((_%tl141545141602%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e141543141597%_)))
                                         (_%hd141544141600%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e141543141597%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd141544141600%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd141544141600%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl141545141602%_))
                                                 (let ((_%e141546141605%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl141545141602%_))))
                                                   (let ((_%tl141548141610%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141546141605%_)))
                                                         (_%hd141547141608%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141546141605%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141548141610%_))
                                                         (_%__kont148538148539%_)
                                                         (_%__kont148542148543%_))))
                                                 (_%__kont148542148543%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd141544141600%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl141545141602%_))
                                                     (let ((_%e141552141582%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl141545141602%_))))
                                                       (let ((_%tl141554141587%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141552141582%_)))
                     (_%hd141553141585%_
                      (let () (declare (not safe)) (##car _%e141552141582%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl141554141587%_))
                     (_%__kont148540148541%_)
                     (_%__kont148542148543%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont148542148543%_))
                                                 (_%__kont148542148543%_)))
                                         (_%__kont148542148543%_))))
                                 (_%__kont148542148543%_)))))))
                 (if (pair? _%rest141516141524%_)
                     (let ((_%hd141521141621%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest141516141524%_)))
                           (_%tl141522141623%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest141516141524%_))))
                       (let* ((_%e141626%_ _%hd141521141621%_)
                              (_%rest141628%_ _%tl141522141623%_))
                         (_%K141520141618%_ _%rest141628%_ _%e141626%_)))
                     (_%else141518141532%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141458141488%_
                                               _%hd141455141480%_)
                                              (_%g141447141464%_
                                               _%g141448141467%_))))
                                      (_%g141447141464%_ _%g141448141467%_))))
                              (_%g141447141464%_ _%g141448141467%_))))
                      (_%g141447141464%_ _%g141448141467%_)))))
          (_%g141446141630%_ _%stx141445%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self141255%_ _%stx141256%_)
        (let* ((_%g141258141275%_
                (lambda (_%g141259141272%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141259141272%_))))
               (_%g141257141441%_
                (lambda (_%g141259141278%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141259141278%_))
                      (let ((_%e141262141280%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141259141278%_))))
                        (let ((_%hd141263141283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141262141280%_)))
                              (_%tl141264141285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141262141280%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141264141285%_))
                              (let ((_%e141265141288%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141264141285%_))))
                                (let ((_%hd141266141291%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141265141288%_)))
                                      (_%tl141267141293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141265141288%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141267141293%_))
                                      (let ((_%e141268141296%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141267141293%_))))
                                        (let ((_%hd141269141299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141268141296%_)))
                                              (_%tl141270141301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141268141296%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141270141301%_))
                                              ((lambda (_%L141304%_
                                                        _%L141305%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self141255%_ _%L141304%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self141255%_ _%L141305%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp141320%_ ((_%rest141323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L141305%_ (cons _%L141304%_ '())))
                                (_%bind141325%_ '())
                                (_%args141326%_ '()))
               (let* ((_%rest141327141335%_ _%rest141323%_)
                      (_%else141329141343%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind141325%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args141326%_)
                                                 '()))))))
                      (_%K141331141429%_
                       (lambda (_%rest141346%_ _%e141347%_)
                         (let* ((_%__stx148582148583%_ _%e141347%_)
                                (_%g141352141370%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx148582148583%_)))))
                           (let ((_%__kont148584148585%_
                                  (lambda ()
                                    (_%lp141320%_
                                     _%rest141346%_
                                     _%bind141325%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141347%_))
                                           _%args141326%_))))
                                 (_%__kont148586148587%_
                                  (lambda ()
                                    (_%lp141320%_
                                     _%rest141346%_
                                     _%bind141325%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141347%_))
                                           _%args141326%_))))
                                 (_%__kont148588148589%_
                                  (lambda ()
                                    (let ((_%tmp141377%_
                                           (let ((__tmp148990
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp148990))))
                                      (_%lp141320%_
                                       _%rest141346%_
                                       (cons (cons _%tmp141377%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e141347%_))
                                                         '()))
                                             _%bind141325%_)
                                       (cons _%tmp141377%_ _%args141326%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx148582148583%_))
                                 (let ((_%e141354141408%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx148582148583%_))))
                                   (let ((_%tl141356141413%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e141354141408%_)))
                                         (_%hd141355141411%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e141354141408%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd141355141411%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd141355141411%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl141356141413%_))
                                                 (let ((_%e141357141416%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl141356141413%_))))
                                                   (let ((_%tl141359141421%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141357141416%_)))
                                                         (_%hd141358141419%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141357141416%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141359141421%_))
                                                         (_%__kont148584148585%_)
                                                         (_%__kont148588148589%_))))
                                                 (_%__kont148588148589%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd141355141411%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl141356141413%_))
                                                     (let ((_%e141363141393%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl141356141413%_))))
                                                       (let ((_%tl141365141398%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141363141393%_)))
                     (_%hd141364141396%_
                      (let () (declare (not safe)) (##car _%e141363141393%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl141365141398%_))
                     (_%__kont148586148587%_)
                     (_%__kont148588148589%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont148588148589%_))
                                                 (_%__kont148588148589%_)))
                                         (_%__kont148588148589%_))))
                                 (_%__kont148588148589%_)))))))
                 (if (pair? _%rest141327141335%_)
                     (let ((_%hd141332141432%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest141327141335%_)))
                           (_%tl141333141434%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest141327141335%_))))
                       (let* ((_%e141437%_ _%hd141332141432%_)
                              (_%rest141439%_ _%tl141333141434%_))
                         (_%K141331141429%_ _%rest141439%_ _%e141437%_)))
                     (_%else141329141343%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141269141299%_
                                               _%hd141266141291%_)
                                              (_%g141258141275%_
                                               _%g141259141278%_))))
                                      (_%g141258141275%_ _%g141259141278%_))))
                              (_%g141258141275%_ _%g141259141278%_))))
                      (_%g141258141275%_ _%g141259141278%_)))))
          (_%g141257141441%_ _%stx141256%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self141171%_ _%stx141172%_)
        (let* ((_%g141174141195%_
                (lambda (_%g141175141192%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141175141192%_))))
               (_%g141173141252%_
                (lambda (_%g141175141198%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141175141198%_))
                      (let ((_%e141179141200%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141175141198%_))))
                        (let ((_%hd141180141203%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141179141200%_)))
                              (_%tl141181141205%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141179141200%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141181141205%_))
                              (let ((_%e141182141208%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141181141205%_))))
                                (let ((_%hd141183141211%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141182141208%_)))
                                      (_%tl141184141213%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141182141208%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141184141213%_))
                                      (let ((_%e141185141216%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141184141213%_))))
                                        (let ((_%hd141186141219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141185141216%_)))
                                              (_%tl141187141221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141185141216%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141187141221%_))
                                              (let ((_%e141188141224%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141187141221%_))))
                                                (let ((_%hd141189141227%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141188141224%_)))
                                                      (_%tl141190141229%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141188141224%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141190141229%_))
                                                      ((lambda (_%L141232%_
                                                                _%L141233%_
                                                                _%L141234%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self141171%_ _%L141232%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self141171%_
                                      _%L141233%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self141171%_
                                            _%L141234%_))
                                         (cons ''#f '()))))))
               _%hd141189141227%_
               _%hd141186141219%_
               _%hd141183141211%_)
              (_%g141174141195%_ _%g141175141198%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141174141195%_
                                               _%g141175141198%_))))
                                      (_%g141174141195%_ _%g141175141198%_))))
                              (_%g141174141195%_ _%g141175141198%_))))
                      (_%g141174141195%_ _%g141175141198%_)))))
          (_%g141173141252%_ _%stx141172%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self141071%_ _%stx141072%_)
        (let* ((_%g141074141099%_
                (lambda (_%g141075141096%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141075141096%_))))
               (_%g141073141168%_
                (lambda (_%g141075141102%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141075141102%_))
                      (let ((_%e141080141104%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141075141102%_))))
                        (let ((_%hd141081141107%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141080141104%_)))
                              (_%tl141082141109%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141080141104%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141082141109%_))
                              (let ((_%e141083141112%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141082141109%_))))
                                (let ((_%hd141084141115%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141083141112%_)))
                                      (_%tl141085141117%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141083141112%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141085141117%_))
                                      (let ((_%e141086141120%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141085141117%_))))
                                        (let ((_%hd141087141123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141086141120%_)))
                                              (_%tl141088141125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141086141120%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141088141125%_))
                                              (let ((_%e141089141128%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141088141125%_))))
                                                (let ((_%hd141090141131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141089141128%_)))
                                                      (_%tl141091141133%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141089141128%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl141091141133%_))
                                                      (let ((_%e141092141136%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl141091141133%_))))
                (let ((_%hd141093141139%_
                       (let () (declare (not safe)) (##car _%e141092141136%_)))
                      (_%tl141094141141%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141092141136%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141094141141%_))
                      ((lambda (_%L141144%_
                                _%L141145%_
                                _%L141146%_
                                _%L141147%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self141071%_
                                        _%L141145%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self141071%_
                                              _%L141144%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self141071%_
                                                    _%L141146%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self141071%_
                                                          _%L141147%_))
                                                       (cons ''#f '())))))))
                       _%hd141093141139%_
                       _%hd141090141131%_
                       _%hd141087141123%_
                       _%hd141084141115%_)
                      (_%g141074141099%_ _%g141075141102%_))))
              (_%g141074141099%_ _%g141075141102%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141074141099%_
                                               _%g141075141102%_))))
                                      (_%g141074141099%_ _%g141075141102%_))))
                              (_%g141074141099%_ _%g141075141102%_))))
                      (_%g141074141099%_ _%g141075141102%_)))))
          (_%g141073141168%_ _%stx141072%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self140987%_ _%stx140988%_)
        (let* ((_%g140990141011%_
                (lambda (_%g140991141008%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140991141008%_))))
               (_%g140989141068%_
                (lambda (_%g140991141014%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140991141014%_))
                      (let ((_%e140995141016%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140991141014%_))))
                        (let ((_%hd140996141019%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140995141016%_)))
                              (_%tl140997141021%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140995141016%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140997141021%_))
                              (let ((_%e140998141024%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140997141021%_))))
                                (let ((_%hd140999141027%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140998141024%_)))
                                      (_%tl141000141029%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140998141024%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141000141029%_))
                                      (let ((_%e141001141032%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141000141029%_))))
                                        (let ((_%hd141002141035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141001141032%_)))
                                              (_%tl141003141037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141001141032%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141003141037%_))
                                              (let ((_%e141004141040%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141003141037%_))))
                                                (let ((_%hd141005141043%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141004141040%_)))
                                                      (_%tl141006141045%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141004141040%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141006141045%_))
                                                      ((lambda (_%L141048%_
                                                                _%L141049%_
                                                                _%L141050%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self140987%_ _%L141048%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self140987%_
                                      _%L141049%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self140987%_
                                            _%L141050%_))
                                         (cons ''#f '()))))))
               _%hd141005141043%_
               _%hd141002141035%_
               _%hd140999141027%_)
              (_%g140990141011%_ _%g140991141014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140990141011%_
                                               _%g140991141014%_))))
                                      (_%g140990141011%_ _%g140991141014%_))))
                              (_%g140990141011%_ _%g140991141014%_))))
                      (_%g140990141011%_ _%g140991141014%_)))))
          (_%g140989141068%_ _%stx140988%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self140887%_ _%stx140888%_)
        (let* ((_%g140890140915%_
                (lambda (_%g140891140912%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140891140912%_))))
               (_%g140889140984%_
                (lambda (_%g140891140918%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140891140918%_))
                      (let ((_%e140896140920%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140891140918%_))))
                        (let ((_%hd140897140923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140896140920%_)))
                              (_%tl140898140925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140896140920%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140898140925%_))
                              (let ((_%e140899140928%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140898140925%_))))
                                (let ((_%hd140900140931%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140899140928%_)))
                                      (_%tl140901140933%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140899140928%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140901140933%_))
                                      (let ((_%e140902140936%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140901140933%_))))
                                        (let ((_%hd140903140939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140902140936%_)))
                                              (_%tl140904140941%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140902140936%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140904140941%_))
                                              (let ((_%e140905140944%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140904140941%_))))
                                                (let ((_%hd140906140947%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140905140944%_)))
                                                      (_%tl140907140949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140905140944%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl140907140949%_))
                                                      (let ((_%e140908140952%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl140907140949%_))))
                (let ((_%hd140909140955%_
                       (let () (declare (not safe)) (##car _%e140908140952%_)))
                      (_%tl140910140957%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e140908140952%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl140910140957%_))
                      ((lambda (_%L140960%_
                                _%L140961%_
                                _%L140962%_
                                _%L140963%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self140887%_
                                        _%L140961%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self140887%_
                                              _%L140960%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self140887%_
                                                    _%L140962%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self140887%_
                                                          _%L140963%_))
                                                       (cons ''#f '())))))))
                       _%hd140909140955%_
                       _%hd140906140947%_
                       _%hd140903140939%_
                       _%hd140900140931%_)
                      (_%g140890140915%_ _%g140891140918%_))))
              (_%g140890140915%_ _%g140891140918%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140890140915%_
                                               _%g140891140918%_))))
                                      (_%g140890140915%_ _%g140891140918%_))))
                              (_%g140890140915%_ _%g140891140918%_))))
                      (_%g140890140915%_ _%g140891140918%_)))))
          (_%g140889140984%_ _%stx140888%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self140682%_ _%stx140683%_)
        (let* ((_%g140685140706%_
                (lambda (_%g140686140703%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140686140703%_))))
               (_%g140684140884%_
                (lambda (_%g140686140709%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140686140709%_))
                      (let ((_%e140690140711%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140686140709%_))))
                        (let ((_%hd140691140714%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140690140711%_)))
                              (_%tl140692140716%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140690140711%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140692140716%_))
                              (let ((_%e140693140719%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140692140716%_))))
                                (let ((_%hd140694140722%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140693140719%_)))
                                      (_%tl140695140724%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140693140719%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140695140724%_))
                                      (let ((_%e140696140727%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140695140724%_))))
                                        (let ((_%hd140697140730%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140696140727%_)))
                                              (_%tl140698140732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140696140727%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140698140732%_))
                                              (let ((_%e140699140735%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140698140732%_))))
                                                (let ((_%hd140700140738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140699140735%_)))
                                                      (_%tl140701140740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140699140735%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl140701140740%_))
                                                      ((lambda (_%L140743%_
                                                                _%L140744%_
                                                                _%L140745%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self140682%_
                                    _%L140743%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self140682%_
                                          _%L140744%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp140763%_ ((_%rest140766%_
                                         (cons _%L140744%_
                                               (cons _%L140743%_ '())))
                                        (_%bind140768%_ '())
                                        (_%args140769%_ '()))
                       (let* ((_%rest140770140778%_ _%rest140766%_)
                              (_%else140772140786%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind140768%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp148991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp148991 _%args140769%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K140774140872%_
                               (lambda (_%rest140789%_ _%e140790%_)
                                 (let* ((_%__stx148628148629%_ _%e140790%_)
                                        (_%g140795140813%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx148628148629%_)))))
                                   (let ((_%__kont148630148631%_
                                          (lambda ()
                                            (_%lp140763%_
                                             _%rest140789%_
                                             _%bind140768%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e140790%_))
                                                   _%args140769%_))))
                                         (_%__kont148632148633%_
                                          (lambda ()
                                            (_%lp140763%_
                                             _%rest140789%_
                                             _%bind140768%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e140790%_))
                                                   _%args140769%_))))
                                         (_%__kont148634148635%_
                                          (lambda ()
                                            (let ((_%tmp140820%_
                                                   (let ((__tmp148992
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp148992))))
                                              (_%lp140763%_
                                               _%rest140789%_
                                               (cons (cons _%tmp140820%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e140790%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind140768%_)
                                               (cons _%tmp140820%_
                                                     _%args140769%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx148628148629%_))
                                         (let ((_%e140797140851%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx148628148629%_))))
                                           (let ((_%tl140799140856%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140797140851%_)))
                                                 (_%hd140798140854%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140797140851%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd140798140854%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd140798140854%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl140799140856%_))
                                                         (let ((_%e140800140859%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl140799140856%_))))
                   (let ((_%tl140802140864%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e140800140859%_)))
                         (_%hd140801140862%_
                          (let ()
                            (declare (not safe))
                            (##car _%e140800140859%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl140802140864%_))
                         (_%__kont148630148631%_)
                         (_%__kont148634148635%_))))
                 (_%__kont148634148635%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd140798140854%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140799140856%_))
                     (let ((_%e140806140836%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140799140856%_))))
                       (let ((_%tl140808140841%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140806140836%_)))
                             (_%hd140807140839%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140806140836%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140808140841%_))
                             (_%__kont148632148633%_)
                             (_%__kont148634148635%_))))
                     (_%__kont148634148635%_))
                 (_%__kont148634148635%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont148634148635%_))))
                                         (_%__kont148634148635%_)))))))
                         (if (pair? _%rest140770140778%_)
                             (let ((_%hd140775140875%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest140770140778%_)))
                                   (_%tl140776140877%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest140770140778%_))))
                               (let* ((_%e140880%_ _%hd140775140875%_)
                                      (_%rest140882%_ _%tl140776140877%_))
                                 (_%K140774140872%_
                                  _%rest140882%_
                                  _%e140880%_)))
                             (_%else140772140786%_))))))
               _%hd140700140738%_
               _%hd140697140730%_
               _%hd140694140722%_)
              (_%g140685140706%_ _%g140686140709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140685140706%_
                                               _%g140686140709%_))))
                                      (_%g140685140706%_ _%g140686140709%_))))
                              (_%g140685140706%_ _%g140686140709%_))))
                      (_%g140685140706%_ _%g140686140709%_)))))
          (_%g140684140884%_ _%stx140683%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self140461%_ _%stx140462%_)
        (let* ((_%g140464140489%_
                (lambda (_%g140465140486%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140465140486%_))))
               (_%g140463140679%_
                (lambda (_%g140465140492%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140465140492%_))
                      (let ((_%e140470140494%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140465140492%_))))
                        (let ((_%hd140471140497%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140470140494%_)))
                              (_%tl140472140499%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140470140494%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140472140499%_))
                              (let ((_%e140473140502%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140472140499%_))))
                                (let ((_%hd140474140505%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140473140502%_)))
                                      (_%tl140475140507%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140473140502%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140475140507%_))
                                      (let ((_%e140476140510%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140475140507%_))))
                                        (let ((_%hd140477140513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140476140510%_)))
                                              (_%tl140478140515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140476140510%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140478140515%_))
                                              (let ((_%e140479140518%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140478140515%_))))
                                                (let ((_%hd140480140521%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140479140518%_)))
                                                      (_%tl140481140523%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140479140518%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl140481140523%_))
                                                      (let ((_%e140482140526%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl140481140523%_))))
                (let ((_%hd140483140529%_
                       (let () (declare (not safe)) (##car _%e140482140526%_)))
                      (_%tl140484140531%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e140482140526%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl140484140531%_))
                      ((lambda (_%L140534%_
                                _%L140535%_
                                _%L140536%_
                                _%L140537%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self140461%_
                                            _%L140535%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self140461%_
                                                  _%L140534%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self140461%_
                                                        _%L140536%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp140558%_ ((_%rest140561%_
                                                 (cons _%L140536%_
                                                       (cons _%L140534%_
                                                             (cons _%L140535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind140563%_ '())
                                                (_%args140564%_ '()))
                               (let* ((_%rest140565140573%_ _%rest140561%_)
                                      (_%else140567140581%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind140563%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp148993 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp148993 _%args140564%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K140569140667%_
                                       (lambda (_%rest140584%_ _%e140585%_)
                                         (let* ((_%__stx148674148675%_
                                                 _%e140585%_)
                                                (_%g140590140608%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx148674148675%_)))))
                                           (let ((_%__kont148676148677%_
                                                  (lambda ()
                                                    (_%lp140558%_
                                                     _%rest140584%_
                                                     _%bind140563%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e140585%_))
                                                           _%args140564%_))))
                                                 (_%__kont148678148679%_
                                                  (lambda ()
                                                    (_%lp140558%_
                                                     _%rest140584%_
                                                     _%bind140563%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e140585%_))
                                                           _%args140564%_))))
                                                 (_%__kont148680148681%_
                                                  (lambda ()
                                                    (let ((_%tmp140615%_
                                                           (let ((__tmp148994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp148994))))
              (_%lp140558%_
               _%rest140584%_
               (cons (cons _%tmp140615%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e140585%_))
                                 '()))
                     _%bind140563%_)
               (cons _%tmp140615%_ _%args140564%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx148674148675%_))
                                                 (let ((_%e140592140646%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx148674148675%_))))
                                                   (let ((_%tl140594140651%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140592140646%_)))
                                                         (_%hd140593140649%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140592140646%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd140593140649%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd140593140649%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl140594140651%_))
                         (let ((_%e140595140654%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl140594140651%_))))
                           (let ((_%tl140597140659%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e140595140654%_)))
                                 (_%hd140596140657%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e140595140654%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl140597140659%_))
                                 (_%__kont148676148677%_)
                                 (_%__kont148680148681%_))))
                         (_%__kont148680148681%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd140593140649%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl140594140651%_))
                             (let ((_%e140601140631%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl140594140651%_))))
                               (let ((_%tl140603140636%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e140601140631%_)))
                                     (_%hd140602140634%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e140601140631%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl140603140636%_))
                                     (_%__kont148678148679%_)
                                     (_%__kont148680148681%_))))
                             (_%__kont148680148681%_))
                         (_%__kont148680148681%_)))
                 (_%__kont148680148681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont148680148681%_)))))))
                                 (if (pair? _%rest140565140573%_)
                                     (let ((_%hd140570140670%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest140565140573%_)))
                                           (_%tl140571140672%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest140565140573%_))))
                                       (let* ((_%e140675%_ _%hd140570140670%_)
                                              (_%rest140677%_
                                               _%tl140571140672%_))
                                         (_%K140569140667%_
                                          _%rest140677%_
                                          _%e140675%_)))
                                     (_%else140567140581%_))))))
                       _%hd140483140529%_
                       _%hd140480140521%_
                       _%hd140477140513%_
                       _%hd140474140505%_)
                      (_%g140464140489%_ _%g140465140492%_))))
              (_%g140464140489%_ _%g140465140492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140464140489%_
                                               _%g140465140492%_))))
                                      (_%g140464140489%_ _%g140465140492%_))))
                              (_%g140464140489%_ _%g140465140492%_))))
                      (_%g140464140489%_ _%g140465140492%_)))))
          (_%g140463140679%_ _%stx140462%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self140300%_ _%stx140301%_)
        (letrec ((_%import-set-template140303%_
                  (lambda (_%in140406%_ _%phi140407%_)
                    (let ((_%iphi140409%_
                           (fx+ _%phi140407%_
                                (##direct-structure-ref
                                 _%in140406%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports140410%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in140406%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp140412%_ ((_%rest140414%_ _%imports140410%_)
                                         (_%r140415%_ '()))
                        (let* ((_%rest140416140424%_ _%rest140414%_)
                               (_%else140418140432%_ (lambda () _%r140415%_))
                               (_%K140420140449%_
                                (lambda (_%rest140435%_ _%in140436%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in140436%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi140409%_))
                                          (_%lp140412%_
                                           _%rest140435%_
                                           (cons _%in140436%_ _%r140415%_))
                                          (_%lp140412%_
                                           _%rest140435%_
                                           _%r140415%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in140436%_
                                             'gx#module-import::t))
                                          (let ((_%iphi140440%_
                                                 (fx+ _%phi140407%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in140436%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi140440%_))
                                                (_%lp140412%_
                                                 _%rest140435%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in140436%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r140415%_))
                                                (_%lp140412%_
                                                 _%rest140435%_
                                                 _%r140415%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in140436%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi140443%_
                                                     (fx+ _%iphi140409%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in140436%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi140443%_))
                                                    (_%lp140412%_
                                                     _%rest140435%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in140436%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r140415%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi140443%_))
                                                        (_%lp140412%_
                                                         _%rest140435%_
                                                         (let ((__tmp148995
                                                                (_%import-set-template140303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in140436%_
                         _%iphi140409%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r140415%_ __tmp148995)))
                (_%lp140412%_ _%rest140435%_ _%r140415%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp140412%_
                                               _%rest140435%_
                                               _%r140415%_)))))))
                          (if (pair? _%rest140416140424%_)
                              (let ((_%hd140421140452%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest140416140424%_)))
                                    (_%tl140422140454%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest140416140424%_))))
                                (let* ((_%in140457%_ _%hd140421140452%_)
                                       (_%rest140459%_ _%tl140422140454%_))
                                  (_%K140420140449%_
                                   _%rest140459%_
                                   _%in140457%_)))
                              (_%else140418140432%_))))))))
          (let* ((_%g140305140315%_
                  (lambda (_%g140306140312%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140306140312%_))))
                 (_%g140304140403%_
                  (lambda (_%g140306140318%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140306140318%_))
                        (let ((_%e140308140320%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140306140318%_))))
                          (let ((_%hd140309140323%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140308140320%_)))
                                (_%tl140310140325%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140308140320%_))))
                            ((lambda (_%L140328%_)
                               (let ((_%ht140339%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp140341%_ ((_%rest140343%_
                                                     _%L140328%_)
                                                    (_%loads140344%_ '()))
                                   (letrec ((_%K140346%_
                                             (lambda (_%ctx140396%_
                                                      _%rest140397%_)
                                               (let ((_%id140399%_
                                                      (##structure-ref
                                                       _%ctx140396%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht140339%_
                                                        _%id140399%_))
                                                     (_%lp140341%_
                                                      _%rest140397%_
                                                      _%loads140344%_)
                                                     (let ((_%rt140401%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id140399%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht140339%_
                                                          _%id140399%_
                                                          _%rt140401%_))
                                                       (_%lp140341%_
                                                        _%rest140397%_
                                                        (cons _%rt140401%_
                                                              _%loads140344%_))))))))
                                     (let* ((_%rest140347140355%_
                                             _%rest140343%_)
                                            (_%else140349140367%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp148997
                                                            (lambda (_%g140362140364%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g140362140364%_)))
                   (__tmp148996 (reverse _%loads140344%_)))
               (declare (not safe))
               (##map __tmp148997 __tmp148996)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K140351140384%_
                                             (lambda (_%rest140370%_
                                                      _%in140371%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in140371%_
                                                      'gx#module-context::t))
                                                   (_%K140346%_
                                                    _%in140371%_
                                                    _%rest140370%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in140371%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in140371%_
                               '3
                               '#f
                               '#f)))
                   (_%K140346%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in140371%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest140370%_)
                   (_%lp140341%_ _%rest140370%_ _%loads140344%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in140371%_
                      'gx#import-set::t))
                   (let ((_%phi140376%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in140371%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi140376%_)
                         (_%K140346%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in140371%_
                             '1
                             '#f
                             '#f))
                          _%rest140370%_)
                         (if (fxpositive? _%phi140376%_)
                             (let ((_%deps140380%_
                                    (_%import-set-template140303%_
                                     _%in140371%_
                                     '0)))
                               (_%lp140341%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest140370%_
                                   _%deps140380%_))
                                _%loads140344%_))
                             (_%lp140341%_ _%rest140370%_ _%loads140344%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx140301%_
                      _%in140371%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest140347140355%_)
                                           (let ((_%hd140352140387%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest140347140355%_)))
                                                 (_%tl140353140389%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest140347140355%_))))
                                             (let* ((_%in140392%_
                                                     _%hd140352140387%_)
                                                    (_%rest140394%_
                                                     _%tl140353140389%_))
                                               (_%K140351140384%_
                                                _%rest140394%_
                                                _%in140392%_)))
                                           (_%else140349140367%_)))))))
                             _%tl140310140325%_)))
                        (_%g140305140315%_ _%g140306140318%_)))))
            (_%g140304140403%_ _%stx140301%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self140113%_ _%stx140114%_)
        (letrec ((_%add-lift!140116%_
                  (lambda (_%expr140298%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr140298%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote140117%_
                  (lambda (_%id140295%_ _%marks140296%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id140295%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks140296%_
                                                        '()))))))))
                 (_%generate-simple140118%_
                  (lambda (_%stxq140290%_)
                    (let ((_%gid140292%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid140293%_
                           (gxc#generate-runtime-identifier _%stxq140290%_)))
                      (_%add-lift!140116%_
                       (cons 'define
                             (cons _%gid140292%_
                                   (cons (_%generate-syntax-quote140117%_
                                          _%qid140293%_
                                          ''())
                                         '()))))
                      (let ((__tmp148998
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp148998 _%stxq140290%_ _%gid140292%_))
                      _%gid140292%_)))
                 (_%generate-serialized140119%_
                  (lambda (_%stxq140280%_ _%marks140281%_)
                    (let* ((_%mark-refs140283%_
                            (map _%generate-mark140120%_ _%marks140281%_))
                           (_%gid140285%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid140287%_
                            (gxc#generate-runtime-identifier _%stxq140280%_)))
                      (_%add-lift!140116%_
                       (cons 'define
                             (cons _%gid140285%_
                                   (cons (_%generate-syntax-quote140117%_
                                          _%qid140287%_
                                          (cons 'list _%mark-refs140283%_))
                                         '()))))
                      (let ((__tmp148999
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp148999 _%stxq140280%_ _%gid140285%_))
                      _%gid140285%_)))
                 (_%generate-mark140120%_
                  (lambda (_%mark140265%_)
                    (let ((_%$e140267%_
                           (let ((__tmp149000
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp149000 _%mark140265%_))))
                      (if _%$e140267%_
                          _%$e140267%_
                          (let* ((_%gid140271%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr140273%_
                                  (_%serialize-mark140121%_ _%mark140265%_))
                                 (_%ctx140275%_
                                  (let ((__tmp149001
                                         (##structure-ref
                                          _%mark140265%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp149001)))
                                 (_%ctx-ref140277%_
                                  (if (eq? _%ctx140275%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref140122%_
                                                               _%ctx140275%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp149002
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp149002
                               _%mark140265%_
                               _%gid140271%_))
                            (_%add-lift!140116%_
                             (cons 'define
                                   (cons _%gid140271%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr140273%_ '()))
                   (cons _%ctx-ref140277%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid140271%_)))))
                 (_%serialize-mark140121%_
                  (lambda (_%mark140212%_)
                    (letrec ((_%quote-e140214%_
                              (lambda (_%sym140263%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym140263%_))
                                    _%sym140263%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym140263%_))))))
                      (let* ((_%mark140215140224%_ _%mark140212%_)
                             (_%E140217140228%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark140215140224%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K140218140240%_
                              (lambda (_%trace140231%_
                                       _%phi140232%_
                                       _%ctx140233%_
                                       _%subst140234%_)
                                (let ((_%subs140236%_
                                       (if _%subst140234%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst140234%_))
                                           '())))
                                  (cons _%phi140232%_
                                        (map (lambda (_%pair140238%_)
                                               (cons (_%quote-e140214%_
                                                      (car _%pair140238%_))
                                                     (_%quote-e140214%_
                                                      (cdr _%pair140238%_))))
                                             _%subs140236%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark140215140224%_
                               'gx#expander-mark::t))
                            (let* ((_%e140219140243%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140215140224%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst140246%_ _%e140219140243%_)
                                   (_%e140220140248%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140215140224%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx140251%_ _%e140220140248%_)
                                   (_%e140221140253%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140215140224%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi140256%_ _%e140221140253%_)
                                   (_%e140222140258%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140215140224%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace140261%_ _%e140222140258%_))
                              (_%K140218140240%_
                               _%trace140261%_
                               _%phi140256%_
                               _%ctx140251%_
                               _%subst140246%_))
                            (_%E140217140228%_))))))
                 (_%context-ref140122%_
                  (lambda (_%ctx140199%_)
                    (if (let ((__tmp149003
                               (##structure-ref
                                _%ctx140199%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp149003
                           'gx#module-context::t))
                        (let ((_%ctx-ref140201%_
                               (_%context-ref-nested140124%_ _%ctx140199%_))
                              (_%ctx-origin140202%_
                               (_%context-ref-origin140123%_ _%ctx140199%_))
                              (_%origin140203%_
                               (_%context-ref-origin140123%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin140203%_ _%ctx-origin140202%_)
                              (let ((_%ref140205%_
                                     (_%context-ref-nested140124%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp140207%_ ((_%ref140209%_
                                                    (cdr _%ref140205%_))
                                                   (_%ctx-ref140210%_
                                                    (cdr _%ctx-ref140201%_)))
                                  (if (and (pair? _%ref140209%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref140209%_))
                                                (car _%ctx-ref140210%_)))
                                      (_%lp140207%_
                                       (cdr _%ref140209%_)
                                       (cdr _%ctx-ref140210%_))
                                      (cons '#f _%ctx-ref140210%_))))
                              _%ctx-ref140201%_))
                        (let ((__tmp149004
                               (##structure-ref
                                _%ctx140199%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp149004)))))
                 (_%context-ref-origin140123%_
                  (lambda (_%ctx140191%_)
                    (let _%lp140193%_ ((_%ctx140195%_ _%ctx140191%_))
                      (let ((_%super140197%_
                             (##structure-ref
                              _%ctx140195%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super140197%_
                               'gx#module-context::t))
                            (_%lp140193%_ _%super140197%_)
                            _%ctx140195%_)))))
                 (_%context-ref-nested140124%_
                  (lambda (_%ctx140182%_)
                    (let _%lp140184%_ ((_%ctx140186%_ _%ctx140182%_)
                                       (_%r140187%_ '()))
                      (let ((_%super140189%_
                             (##structure-ref
                              _%ctx140186%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super140189%_
                               'gx#module-context::t))
                            (_%lp140184%_
                             _%super140189%_
                             (cons (car (##structure-ref
                                         _%ctx140186%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r140187%_))
                            (cons (let ((__tmp149005
                                         (##structure-ref
                                          _%ctx140186%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp149005))
                                  _%r140187%_)))))))
          (let* ((_%g140126140139%_
                  (lambda (_%g140127140136%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140127140136%_))))
                 (_%g140125140179%_
                  (lambda (_%g140127140142%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140127140142%_))
                        (let ((_%e140129140144%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140127140142%_))))
                          (let ((_%hd140130140147%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140129140144%_)))
                                (_%tl140131140149%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140129140144%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140131140149%_))
                                (let ((_%e140132140152%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140131140149%_))))
                                  (let ((_%hd140133140155%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140132140152%_)))
                                        (_%tl140134140157%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140132140152%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl140134140157%_))
                                        ((lambda (_%L140160%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L140160%_))
                                               (let ((_%$e140173%_
                                                      (let ((__tmp149006
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp149006 _%L140160%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e140173%_
                                                     _%$e140173%_
                                                     (let ((_%marks140177%_
                                                            (##direct-structure-ref
                                                             _%L140160%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks140177%_)
                                                           (_%generate-simple140118%_
                                                            _%L140160%_)
                                                           (_%generate-serialized140119%_
                                                            _%L140160%_
                                                            _%marks140177%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L140160%_))))
                                         _%hd140133140155%_)
                                        (_%g140126140139%_
                                         _%g140127140142%_))))
                                (_%g140126140139%_ _%g140127140142%_))))
                        (_%g140126140139%_ _%g140127140142%_)))))
            (_%g140125140179%_ _%stx140114%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self140045%_ _%stx140046%_)
        (let* ((_%g140048140065%_
                (lambda (_%g140049140062%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140049140062%_))))
               (_%g140047140110%_
                (lambda (_%g140049140068%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140049140068%_))
                      (let ((_%e140052140070%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140049140068%_))))
                        (let ((_%hd140053140073%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140052140070%_)))
                              (_%tl140054140075%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140052140070%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140054140075%_))
                              (let ((_%e140055140078%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140054140075%_))))
                                (let ((_%hd140056140081%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140055140078%_)))
                                      (_%tl140057140083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140055140078%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140057140083%_))
                                      (let ((_%e140058140086%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140057140083%_))))
                                        (let ((_%hd140059140089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140058140086%_)))
                                              (_%tl140060140091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140058140086%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140060140091%_))
                                              ((lambda (_%L140094%_
                                                        _%L140095%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L140095%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self140045%_ _%L140094%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140059140089%_
                                               _%hd140056140081%_)
                                              (_%g140048140065%_
                                               _%g140049140068%_))))
                                      (_%g140048140065%_ _%g140049140068%_))))
                              (_%g140048140065%_ _%g140049140068%_))))
                      (_%g140048140065%_ _%g140049140068%_)))))
          (_%g140047140110%_ _%stx140046%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self139994%_ _%stx139995%_)
        (let* ((_%g139997140007%_
                (lambda (_%g139998140004%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139998140004%_))))
               (_%g139996140042%_
                (lambda (_%g139998140010%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139998140010%_))
                      (let ((_%e140000140012%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139998140010%_))))
                        (let ((_%hd140001140015%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140000140012%_)))
                              (_%tl140002140017%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140000140012%_))))
                          ((lambda (_%L140020%_)
                             (let* ((_%c-body140034%_
                                     (map (lambda (_%g140029140031%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self139994%_
                                               _%g140029140031%_)))
                                          _%L140020%_))
                                    (_%c-body140039%_
                                     (let ((__tmp149007
                                            (lambda (_%$obj140036%_)
                                              (not (eq? _%$obj140036%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp149007
                                        _%c-body140034%_))))
                               (cons '%#begin _%c-body140039%_)))
                           _%tl140002140017%_)))
                      (_%g139997140007%_ _%g139998140010%_)))))
          (_%g139996140042%_ _%stx139995%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self139899%_ _%stx139900%_)
        (let* ((_%g139902139912%_
                (lambda (_%g139903139909%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139903139909%_))))
               (_%g139901139991%_
                (lambda (_%g139903139915%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139903139915%_))
                      (let ((_%e139905139917%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139903139915%_))))
                        (let ((_%hd139906139920%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139905139917%_)))
                              (_%tl139907139922%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139905139917%_))))
                          ((lambda (_%L139925%_)
                             (let* ((_%phi139935%_
                                     (let ((__tmp149008
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp149008 '1)))
                                    (_%block139937%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self139899%_ 'state))
                                      _%phi139935%_))
                                    (_%compiled139940%_
                                     (let ((__tmp149009
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self139899%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L139925%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp149009
                                        gx#current-expander-phi
                                        _%phi139935%_)))
                                    (_%g139943139953%_
                                     (lambda (_%g139944139950%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g139944139950%_))))
                                    (_%g139942139988%_
                                     (lambda (_%g139944139956%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g139944139956%_))
                                           (let ((_%e139946139958%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g139944139956%_))))
                                             (let ((_%hd139947139961%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e139946139958%_)))
                                                   (_%tl139948139963%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e139946139958%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd139947139961%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd139947139961%_))
                                                       ((lambda (_%L139966%_)
                                                          (let ((_%c-body139983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj139980%_)
                                   (not (eq? _%$obj139980%_ '#!void)))
                                 _%L139966%_)))
                    (if _%block139937%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block139937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body139983%_))
                        (if (null? _%c-body139983%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body139983%_)))))
                _%tl139948139963%_)
               (_%g139943139953%_ _%g139944139956%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g139943139953%_
                                                    _%g139944139956%_))))
                                           (_%g139943139953%_
                                            _%g139944139956%_)))))
                               (_%g139942139988%_ _%compiled139940%_)))
                           _%tl139907139922%_)))
                      (_%g139902139912%_ _%g139903139915%_)))))
          (_%g139901139991%_ _%stx139900%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self139830%_ _%stx139831%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self139830%_ 'state)))
        (let* ((_%g139833139847%_
                (lambda (_%g139834139844%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139834139844%_))))
               (_%g139832139896%_
                (lambda (_%g139834139850%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139834139850%_))
                      (let ((_%e139837139852%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139834139850%_))))
                        (let ((_%hd139838139855%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139837139852%_)))
                              (_%tl139839139857%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139837139852%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139839139857%_))
                              (let ((_%e139840139860%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139839139857%_))))
                                (let ((_%hd139841139863%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139840139860%_)))
                                      (_%tl139842139865%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139840139860%_))))
                                  ((lambda (_%L139868%_ _%L139869%_)
                                     (let ((_%key139882%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L139869%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key139882%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx139831%_
                                              _%L139869%_
                                              _%key139882%_)))
                                       (let* ((_%ctx139884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L139869%_)))
                                              (_%code139887%_
                                               (let ((__tmp149010
                                                      (lambda ()
                                                        (let ((__tmp149011
                                                               (##structure-ref
                                                                _%ctx139884%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self139830%_
                                                           __tmp149011)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp149010
                                                  gx#current-expander-context
                                                  _%ctx139884%_)))
                                              (_%rt139889%_
                                               (let ((__tmp149012
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp149012
                                                  _%ctx139884%_)))
                                              (_%loader139891%_
                                               (if _%rt139889%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt139889%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid139893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L139869%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self139830%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid139893%_
                                                     (cons _%code139887%_
                                                           _%loader139891%_))))))
                                   _%tl139842139865%_
                                   _%hd139841139863%_)))
                              (_%g139833139847%_ _%g139834139850%_))))
                      (_%g139833139847%_ _%g139834139850%_)))))
          (_%g139832139896%_ _%stx139831%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx139817%_ _%context-chain139818%_)
        (let _%lp139820%_ ((_%ctx139822%_ _%ctx139817%_) (_%path139823%_ '()))
          (let ((_%super139825%_
                 (##structure-ref _%ctx139822%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super139825%_ _%context-chain139818%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx139822%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path139823%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super139825%_
                       'gx#module-context::t))
                    (_%lp139820%_
                     _%super139825%_
                     (cons (car (##structure-ref
                                 _%ctx139822%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path139823%_))
                    (cons (let ((__tmp149013
                                 (##structure-ref
                                  _%ctx139822%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp149013))
                          _%path139823%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp139810%_ ((_%ctx139812%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r139813%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx139812%_ 'gx#module-context::t))
              (_%lp139810%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx139812%_ '3 '#f '#f))
               (cons _%ctx139812%_ _%r139813%_))
              _%r139813%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self139573%_ _%stx139574%_)
        (letrec* ((_%context-chain139576%_ (gxc#current-context-chain))
                  (_%make-import-spec139577%_
                   (lambda (_%in139746%_)
                     (let* ((_%in139747139759%_ _%in139746%_)
                            (_%E139749139763%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in139747139759%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K139750139773%_
                             (lambda (_%phi139766%_
                                      _%name139767%_
                                      _%src-name139768%_
                                      _%src-phi139769%_
                                      _%src-key139770%_
                                      _%src-ctx139771%_)
                               (cons _%phi139766%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name139767%_)
                                           (cons _%src-phi139769%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name139768%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in139747139759%_
                              'gx#module-import::t))
                           (let ((_%e139751139776%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in139747139759%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e139751139776%_
                                    'gx#module-export::t))
                                 (let* ((_%e139754139779%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e139751139776%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx139782%_ _%e139754139779%_)
                                        (_%e139755139784%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e139751139776%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key139787%_ _%e139755139784%_)
                                        (_%e139756139789%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e139751139776%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi139792%_ _%e139756139789%_)
                                        (_%e139757139794%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e139751139776%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name139797%_ _%e139757139794%_)
                                        (_%e139752139799%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in139747139759%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name139802%_ _%e139752139799%_)
                                        (_%e139753139804%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in139747139759%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi139807%_ _%e139753139804%_))
                                   (_%K139750139773%_
                                    _%phi139807%_
                                    _%name139802%_
                                    _%src-name139797%_
                                    _%src-phi139792%_
                                    _%src-key139787%_
                                    _%src-ctx139782%_))
                                 (_%E139749139763%_)))
                           (_%E139749139763%_)))))
                  (_%make-import-path139578%_
                   (lambda (_%ctx139744%_)
                     (gxc#generate-meta-import-path
                      _%ctx139744%_
                      _%context-chain139576%_)))
                  (_%make-import-spec-in139579%_
                   (lambda (_%ctx139741%_ _%in139742%_)
                     (cons 'spec:
                           (cons (_%make-import-path139578%_ _%ctx139741%_)
                                 (reverse _%in139742%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self139573%_ 'state)))
          (let* ((_%g139581139591%_
                  (lambda (_%g139582139588%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139582139588%_))))
                 (_%g139580139738%_
                  (lambda (_%g139582139594%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139582139594%_))
                        (let ((_%e139584139596%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139582139594%_))))
                          (let ((_%hd139585139599%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139584139596%_)))
                                (_%tl139586139601%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139584139596%_))))
                            ((lambda (_%L139604%_)
                               (let _%lp139615%_ ((_%rest139617%_ _%L139604%_)
                                                  (_%current-src139618%_ '#f)
                                                  (_%current-in139619%_ '())
                                                  (_%r139620%_ '()))
                                 (let* ((_%rest139621139629%_ _%rest139617%_)
                                        (_%else139623139639%_
                                         (lambda ()
                                           (let ((_%r139637%_
                                                  (if _%current-src139618%_
                                                      (cons (_%make-import-spec-in139579%_
                                                             _%current-src139618%_
                                                             _%current-in139619%_)
                                                            _%r139620%_)
                                                      _%r139620%_)))
                                             (cons '%#import
                                                   (reverse _%r139637%_)))))
                                        (_%K139625139726%_
                                         (lambda (_%rest139642%_ _%in139643%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in139643%_
                                                  'gx#module-import::t))
                                               (let* ((_%in139645139652%_
                                                       _%in139643%_)
                                                      (_%E139647139656%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in139645139652%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K139648139664%_
               (lambda (_%src-ctx139659%_)
                 (if (eq? _%current-src139618%_ _%src-ctx139659%_)
                     (_%lp139615%_
                      _%rest139642%_
                      _%current-src139618%_
                      (cons (_%make-import-spec139577%_ _%in139643%_)
                            _%current-in139619%_)
                      _%r139620%_)
                     (if _%current-src139618%_
                         (_%lp139615%_
                          _%rest139642%_
                          _%src-ctx139659%_
                          (cons (_%make-import-spec139577%_ _%in139643%_) '())
                          (cons (_%make-import-spec-in139579%_
                                 _%current-src139618%_
                                 _%current-in139619%_)
                                _%r139620%_))
                         (_%lp139615%_
                          _%rest139642%_
                          _%src-ctx139659%_
                          (cons (_%make-import-spec139577%_ _%in139643%_) '())
                          _%r139620%_)))))
              (_%e139649139667%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in139645139652%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e139649139667%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e139650139670%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e139649139667%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx139673%_ _%e139650139670%_))
               (_%K139648139664%_ _%src-ctx139673%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E139647139656%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in139643%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi139676%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in139643%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src139678%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in139643%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in139718%_
                                                           (let* ((_%g139679139688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path139578%_ _%src139678%_))
                          (_%E139682139692%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g139679139688%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K139684139708%_
                            (lambda (_%path139706%_) _%path139706%_))
                           (_%K139683139698%_
                            (lambda (_%path139696%_)
                              (cons 'in: _%path139696%_))))
                       (if (pair? _%g139679139688%_)
                           (let ((_%tl139686139713%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g139679139688%_)))
                                 (_%hd139685139711%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g139679139688%_))))
                             (if (null? _%tl139686139713%_)
                                 (let ((_%path139716%_ _%hd139685139711%_))
                                   (_%K139684139708%_ _%path139716%_))
                                 (let ((_%path139701%_ _%g139679139688%_))
                                   (_%K139683139698%_ _%path139701%_))))
                           (let ((_%path139701%_ _%g139679139688%_))
                             (_%K139683139698%_ _%path139701%_))))))
                  (_%r139720%_
                   (if _%current-src139618%_
                       (cons (_%make-import-spec-in139579%_
                              _%current-src139618%_
                              _%current-in139619%_)
                             _%r139620%_)
                       _%r139620%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp139615%_
                                                      _%rest139642%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi139676%_)
                                                                _%src-in139718%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi139676%_
                                    (cons _%src-in139718%_ '()))))
                    _%r139720%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in139643%_
                                                          'gx#module-context::t))
                                                       (let ((_%r139724%_
                                                              (if _%current-src139618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in139579%_
                                 _%current-src139618%_
                                 _%current-in139619%_)
                                _%r139620%_)
                          _%r139620%_)))
                 (_%lp139615%_
                  _%rest139642%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path139578%_ _%in139643%_))
                        _%r139724%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest139621139629%_)
                                       (let ((_%hd139626139729%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest139621139629%_)))
                                             (_%tl139627139731%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest139621139629%_))))
                                         (let* ((_%in139734%_
                                                 _%hd139626139729%_)
                                                (_%rest139736%_
                                                 _%tl139627139731%_))
                                           (_%K139625139726%_
                                            _%rest139736%_
                                            _%in139734%_)))
                                       (_%else139623139639%_)))))
                             _%tl139586139601%_)))
                        (_%g139581139591%_ _%g139582139594%_)))))
            (_%g139580139738%_ _%stx139574%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self139383%_ _%stx139384%_)
        (letrec* ((_%context-chain139386%_ (gxc#current-context-chain))
                  (_%make-import-path139387%_
                   (lambda (_%ctx139571%_)
                     (gxc#generate-meta-import-path
                      _%ctx139571%_
                      _%context-chain139386%_))))
          (let* ((_%g139389139399%_
                  (lambda (_%g139390139396%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139390139396%_))))
                 (_%g139388139568%_
                  (lambda (_%g139390139402%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139390139402%_))
                        (let ((_%e139392139404%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139390139402%_))))
                          (let ((_%hd139393139407%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139392139404%_)))
                                (_%tl139394139409%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139392139404%_))))
                            ((lambda (_%L139412%_)
                               (let _%lp139423%_ ((_%rest139425%_ _%L139412%_)
                                                  (_%r139426%_ '()))
                                 (let* ((_%rest139427139435%_ _%rest139425%_)
                                        (_%else139429139443%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r139426%_))))
                                        (_%K139431139556%_
                                         (lambda (_%rest139446%_ _%out139447%_)
                                           (let* ((_%out139448139461%_
                                                   _%out139447%_)
                                                  (_%E139451139465%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out139448139461%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K139455139535%_
                                                    (lambda (_%name139531%_
                                                             _%phi139532%_
                                                             _%key139533%_)
                                                      (_%lp139423%_
                                                       _%rest139446%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi139532%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key139533%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name139531%_)
                                             '()))))
                     _%r139426%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K139452139515%_
                                                    (lambda (_%phi139469%_
                                                             _%src139470%_)
                                                      (let* ((_%out139510%_
                                                              (if _%src139470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g139471139480%_
                                              (_%make-import-path139387%_
                                               _%src139470%_))
                                             (_%E139474139484%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g139471139480%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K139476139500%_
                                               (lambda (_%path139498%_)
                                                 _%path139498%_))
                                              (_%K139475139490%_
                                               (lambda (_%path139488%_)
                                                 (cons 'in: _%path139488%_))))
                                          (if (pair? _%g139471139480%_)
                                              (let ((_%tl139478139505%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g139471139480%_)))
                                                    (_%hd139477139503%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g139471139480%_))))
                                                (if (null? _%tl139478139505%_)
                                                    (let ((_%path139508%_
                                                           _%hd139477139503%_))
                                                      (_%K139476139500%_
                                                       _%path139508%_))
                                                    (let ((_%path139493%_
                                                           _%g139471139480%_))
                                                      (_%K139475139490%_
                                                       _%path139493%_))))
                                              (let ((_%path139493%_
                                                     _%g139471139480%_))
                                                (_%K139475139490%_
                                                 _%path139493%_)))))
                                      '()))
                          '#t))
                     (_%out139512%_
                      (if (fxzero? _%phi139469%_)
                          _%out139510%_
                          (cons 'phi:
                                (cons _%phi139469%_
                                      (cons _%out139510%_ '()))))))
                (_%lp139423%_
                 _%rest139446%_
                 (cons _%out139512%_ _%r139426%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match139450139528%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out139448139461%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e139453139518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out139448139461%_
                               '1
                               '#f
                               '#f)))
                           (_%e139454139523%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out139448139461%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src139521%_ _%e139453139518%_)
                            (_%phi139526%_ _%e139454139523%_))
                        (_%K139452139515%_ _%phi139526%_ _%src139521%_)))
                    (_%E139451139465%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out139448139461%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e139456139538%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out139448139461%_
                        '1
                        '#f
                        '#f)))
                    (_%e139457139541%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out139448139461%_
                        '2
                        '#f
                        '#f)))
                    (_%e139458139546%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out139448139461%_
                        '3
                        '#f
                        '#f)))
                    (_%e139459139551%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out139448139461%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key139544%_ _%e139457139541%_)
                     (_%phi139549%_ _%e139458139546%_)
                     (_%name139554%_ _%e139459139551%_))
                 (_%K139455139535%_
                  _%name139554%_
                  _%phi139549%_
                  _%key139544%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match139450139528%_))))))))
                                   (if (pair? _%rest139427139435%_)
                                       (let ((_%hd139432139559%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest139427139435%_)))
                                             (_%tl139433139561%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest139427139435%_))))
                                         (let* ((_%out139564%_
                                                 _%hd139432139559%_)
                                                (_%rest139566%_
                                                 _%tl139433139561%_))
                                           (_%K139431139556%_
                                            _%rest139566%_
                                            _%out139564%_)))
                                       (_%else139429139443%_)))))
                             _%tl139394139409%_)))
                        (_%g139389139399%_ _%g139390139402%_)))))
            (_%g139388139568%_ _%stx139384%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self139344%_ _%stx139345%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self139344%_ 'state)))
        (let* ((_%g139347139357%_
                (lambda (_%g139348139354%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139348139354%_))))
               (_%g139346139380%_
                (lambda (_%g139348139360%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139348139360%_))
                      (let ((_%e139350139362%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139348139360%_))))
                        (let ((_%hd139351139365%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139350139362%_)))
                              (_%tl139352139367%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139350139362%_))))
                          ((lambda (_%L139370%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L139370%_)))
                           _%tl139352139367%_)))
                      (_%g139347139357%_ _%g139348139360%_)))))
          (_%g139346139380%_ _%stx139345%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self139215%_ _%stx139216%_)
        (letrec ((_%generate1139218%_
                  (lambda (_%id139339%_ _%eid139340%_)
                    (let ((_%eid139342%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid139340%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid139342%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx139216%_
                             _%eid139342%_)))
                      (cons (gxc#generate-runtime-identifier _%id139339%_)
                            (cons _%eid139342%_ '()))))))
          (let* ((_%g139220139248%_
                  (lambda (_%g139221139245%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139221139245%_))))
                 (_%g139219139336%_
                  (lambda (_%g139221139251%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139221139251%_))
                        (let ((_%e139224139253%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139221139251%_))))
                          (let ((_%hd139225139256%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139224139253%_)))
                                (_%tl139226139258%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139224139253%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl139226139258%_))
                                (let ((_g149014_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl139226139258%_
                                          '0))))
                                  (begin
                                    (let ((_g149015_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g149014_)
                                                 (##vector-length _g149014_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g149015_ 2)))
                                          (error "Context expects 2 values"
                                                 _g149015_)))
                                    (let ((_%target139227139261%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g149014_ 0)))
                                          (_%tl139229139263%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g149014_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl139229139263%_))
                                          (letrec ((_%loop139230139266%_
                                                    (lambda (_%hd139228139269%_
                                                             _%eid139234139271%_
                                                             _%id139235139273%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd139228139269%_))
                                                          (let ((_%e139231139276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd139228139269%_))))
                    (let ((_%lp-hd139232139279%_
                           (let ()
                             (declare (not safe))
                             (##car _%e139231139276%_)))
                          (_%lp-tl139233139281%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e139231139276%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd139232139279%_))
                          (let ((_%e139238139284%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd139232139279%_))))
                            (let ((_%hd139239139287%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139238139284%_)))
                                  (_%tl139240139289%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139238139284%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl139240139289%_))
                                  (let ((_%e139241139292%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl139240139289%_))))
                                    (let ((_%hd139242139295%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e139241139292%_)))
                                          (_%tl139243139297%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e139241139292%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl139243139297%_))
                                          (_%loop139230139266%_
                                           _%lp-tl139233139281%_
                                           (cons _%hd139242139295%_
                                                 _%eid139234139271%_)
                                           (cons _%hd139239139287%_
                                                 _%id139235139273%_))
                                          (_%g139220139248%_
                                           _%g139221139251%_))))
                                  (_%g139220139248%_ _%g139221139251%_))))
                          (_%g139220139248%_ _%g139221139251%_))))
                  (let ((_%eid139236139300%_ (reverse _%eid139234139271%_))
                        (_%id139237139302%_ (reverse _%id139235139273%_)))
                    ((lambda (_%L139305%_ _%L139306%_)
                       (cons '%#extern
                             (map _%generate1139218%_
                                  (let ((__tmp149016
                                         (lambda (_%g139321139324%_
                                                  _%g139322139326%_)
                                           (cons _%g139321139324%_
                                                 _%g139322139326%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp149016 '() _%L139306%_))
                                  (let ((__tmp149017
                                         (lambda (_%g139328139331%_
                                                  _%g139329139333%_)
                                           (cons _%g139328139331%_
                                                 _%g139329139333%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp149017 '() _%L139305%_)))))
                     _%eid139236139300%_
                     _%id139237139302%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop139230139266%_
                                             _%target139227139261%_
                                             '()
                                             '()))
                                          (_%g139220139248%_
                                           _%g139221139251%_)))))
                                (_%g139220139248%_ _%g139221139251%_))))
                        (_%g139220139248%_ _%g139221139251%_)))))
            (_%g139219139336%_ _%stx139216%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self139005%_ _%stx139006%_)
        (letrec ((_%generate1139008%_
                  (lambda (_%id139210%_)
                    (let ((_%eid139212%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id139210%_)))
                          (_%ident139213%_
                           (gxc#generate-runtime-identifier _%id139210%_)))
                      (cons '%#define-runtime
                            (cons _%ident139213%_ (cons _%eid139212%_ '()))))))
                 (_%generate*139009%_
                  (lambda (_%all139178%_)
                    (let* ((_%all139179139187%_ _%all139178%_)
                           (_%else139181139195%_
                            (lambda () (cons '%#begin _%all139178%_)))
                           (_%K139183139200%_
                            (lambda (_%one139198%_) _%one139198%_)))
                      (if (pair? _%all139179139187%_)
                          (let ((_%hd139184139203%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all139179139187%_)))
                                (_%tl139185139205%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all139179139187%_))))
                            (let ((_%one139208%_ _%hd139184139203%_))
                              (if (null? _%tl139185139205%_)
                                  (_%K139183139200%_ _%one139208%_)
                                  (_%else139181139195%_))))
                          (_%else139181139195%_))))))
          (let* ((_%g139011139028%_
                  (lambda (_%g139012139025%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139012139025%_))))
                 (_%g139010139175%_
                  (lambda (_%g139012139031%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139012139031%_))
                        (let ((_%e139015139033%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139012139031%_))))
                          (let ((_%hd139016139036%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139015139033%_)))
                                (_%tl139017139038%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139015139033%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139017139038%_))
                                (let ((_%e139018139041%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139017139038%_))))
                                  (let ((_%hd139019139044%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139018139041%_)))
                                        (_%tl139020139046%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139018139041%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139020139046%_))
                                        (let ((_%e139021139049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139020139046%_))))
                                          (let ((_%hd139022139052%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139021139049%_)))
                                                (_%tl139023139054%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139021139049%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139023139054%_))
                                                ((lambda (_%L139057%_
                                                          _%L139058%_)
                                                   (let _%lp139074%_ ((_%rest139076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L139058%_)
                              (_%r139077%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx148753148754%_
                                                             _%rest139076%_)
                                                            (_%g139082139099%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx148753148754%_)))))
               (let ((_%__kont148755148756%_
                      (lambda (_%L139162%_)
                        (_%lp139074%_ _%L139162%_ _%r139077%_)))
                     (_%__kont148757148758%_
                      (lambda (_%L139135%_ _%L139136%_)
                        (_%lp139074%_
                         _%L139135%_
                         (cons (_%generate1139008%_ _%L139136%_)
                               _%r139077%_))))
                     (_%__kont148759148760%_
                      (lambda (_%L139111%_)
                        (_%generate*139009%_
                         (let ((__tmp149018
                                (cons (_%generate1139008%_ _%L139111%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp149018 _%r139077%_)))))
                     (_%__kont148761148762%_
                      (lambda () (_%generate*139009%_ (reverse _%r139077%_)))))
                 (let ((_%g139080139122%_
                        (lambda ()
                          (let ((_%L139111%_ _%__stx148753148754%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L139111%_))
                                (_%__kont148759148760%_ _%L139111%_)
                                (_%__kont148761148762%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx148753148754%_))
                       (let ((_%e139085139151%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx148753148754%_))))
                         (let ((_%tl139087139156%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e139085139151%_)))
                               (_%hd139086139154%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e139085139151%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd139086139154%_))
                               (let ((_%e139088139159%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd139086139154%_))))
                                 (if (equal? _%e139088139159%_ '#f)
                                     (_%__kont148755148756%_
                                      _%tl139087139156%_)
                                     (_%__kont148757148758%_
                                      _%tl139087139156%_
                                      _%hd139086139154%_)))
                               (_%__kont148757148758%_
                                _%tl139087139156%_
                                _%hd139086139154%_))))
                       (let () (declare (not safe)) (_%g139080139122%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd139022139052%_
                                                 _%hd139019139044%_)
                                                (_%g139011139028%_
                                                 _%g139012139031%_))))
                                        (_%g139011139028%_
                                         _%g139012139031%_))))
                                (_%g139011139028%_ _%g139012139031%_))))
                        (_%g139011139028%_ _%g139012139031%_)))))
            (_%g139010139175%_ _%stx139006%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self138902%_ _%stx138903%_)
        (let* ((_%g138905138922%_
                (lambda (_%g138906138919%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138906138919%_))))
               (_%g138904139002%_
                (lambda (_%g138906138925%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138906138925%_))
                      (let ((_%e138909138927%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138906138925%_))))
                        (let ((_%hd138910138930%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138909138927%_)))
                              (_%tl138911138932%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138909138927%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138911138932%_))
                              (let ((_%e138912138935%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138911138932%_))))
                                (let ((_%hd138913138938%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138912138935%_)))
                                      (_%tl138914138940%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138912138935%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138914138940%_))
                                      (let ((_%e138915138943%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138914138940%_))))
                                        (let ((_%hd138916138946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138915138943%_)))
                                              (_%tl138917138948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138915138943%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138917138948%_))
                                              ((lambda (_%L138951%_
                                                        _%L138952%_)
                                                 (let* ((_%eid138967%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L138952%_)))
                                                        (_%phi138969%_
                                                         (let ((__tmp149019
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp149019 '1)))
                (_%block138971%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self138902%_ 'state))
                  _%phi138969%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g138974138981%_
                                                           (lambda (_%g138975138978%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g138975138978%_))))
                  (_%g138973138999%_
                   (lambda (_%g138975138984%_)
                     ((lambda (_%L138986%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self138902%_ 'state))
                         _%phi138969%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L138986%_ (cons _%L138951%_ '())))))
                      _%g138975138984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g138973138999%_
                                                      _%eid138967%_))
                                                   (if _%block138971%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block138971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L138952%_)
                                             (cons _%eid138967%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L138952%_)
                           (cons _%eid138967%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138916138946%_
                                               _%hd138913138938%_)
                                              (_%g138905138922%_
                                               _%g138906138925%_))))
                                      (_%g138905138922%_ _%g138906138925%_))))
                              (_%g138905138922%_ _%g138906138925%_))))
                      (_%g138905138922%_ _%g138906138925%_)))))
          (_%g138904139002%_ _%stx138903%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self138834%_ _%stx138835%_)
        (let* ((_%g138837138854%_
                (lambda (_%g138838138851%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138838138851%_))))
               (_%g138836138899%_
                (lambda (_%g138838138857%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138838138857%_))
                      (let ((_%e138841138859%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138838138857%_))))
                        (let ((_%hd138842138862%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138841138859%_)))
                              (_%tl138843138864%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138841138859%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138843138864%_))
                              (let ((_%e138844138867%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138843138864%_))))
                                (let ((_%hd138845138870%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138844138867%_)))
                                      (_%tl138846138872%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138844138867%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138846138872%_))
                                      (let ((_%e138847138875%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138846138872%_))))
                                        (let ((_%hd138848138878%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138847138875%_)))
                                              (_%tl138849138880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138847138875%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138849138880%_))
                                              ((lambda (_%L138883%_
                                                        _%L138884%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L138884%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L138883%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138848138878%_
                                               _%hd138845138870%_)
                                              (_%g138837138854%_
                                               _%g138838138857%_))))
                                      (_%g138837138854%_ _%g138838138857%_))))
                              (_%g138837138854%_ _%g138838138857%_))))
                      (_%g138837138854%_ _%g138838138857%_)))))
          (_%g138836138899%_ _%stx138835%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self138831%_ _%stx138832%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self138831%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx138832%_)
        (gxc#generate-meta-define-values% _%self138831%_ _%stx138832%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self138828%_ _%stx138829%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self138828%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx138829%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp149021 (list)) (__tmp149020 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp149021
         '(src n open blocks)
         __tmp149020
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args138825%_
        (apply make-instance gxc#meta-state::t _%$args138825%_)))
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
      (lambda (_%self138170138809%_ _%ctx138811%_)
        (let* ((_%self138813%_ _%self138170138809%_)
               (_%self138815%_ _%self138813%_))
          (if (let ((__tmp149022
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self138815%_))))
                (declare (not safe))
                (##fx< '4 __tmp149022))
              (begin
                (let ((__tmp149023
                       (let ((__tmp149024
                              (##structure-ref
                               _%ctx138811%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp149024))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self138815%_
                   __tmp149023
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self138815%_ '1 '2 '#f '#f))
                (let ((__tmp149025
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self138815%_
                   __tmp149025
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self138815%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp149026
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self138815%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self138815%_
                       '4
                       __tmp149026))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp149028 (list)) (__tmp149027 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp149028
         '(ctx phi n code)
         __tmp149027
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args138684%_
        (apply make-instance gxc#meta-state-block::t _%$args138684%_)))
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
      (lambda (_%state138643%_ _%phi138644%_)
        (let* ((_%state138645138653%_ _%state138643%_)
               (_%E138647138657%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state138645138653%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K138648138666%_
                (lambda (_%open138660%_ _%n138661%_ _%src138662%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open138660%_ _%phi138644%_))
                      '#f
                      (let ((_%block-ref138664%_
                             (let ((__tmp149029 (number->string _%n138661%_)))
                               (declare (not safe))
                               (##string-append
                                _%src138662%_
                                '"~"
                                __tmp149029))))
                        (##structure-set!
                         _%state138643%_
                         (let () (declare (not safe)) (##fx+ _%n138661%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp149030
                               (let ((__tmp149031
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp149031
                                  _%phi138644%_
                                  _%n138661%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open138660%_ _%phi138644%_ __tmp149030))
                        _%block-ref138664%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state138645138653%_
                 'gxc#meta-state::t))
              (let* ((_%e138649138669%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state138645138653%_
                         '1
                         '#f
                         '#f)))
                     (_%src138672%_ _%e138649138669%_)
                     (_%e138650138674%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state138645138653%_
                         '2
                         '#f
                         '#f)))
                     (_%n138677%_ _%e138650138674%_)
                     (_%e138651138679%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state138645138653%_
                         '3
                         '#f
                         '#f)))
                     (_%open138682%_ _%e138651138679%_))
                (_%K138648138666%_ _%open138682%_ _%n138677%_ _%src138672%_))
              (_%E138647138657%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state138637%_ _%phi138638%_ _%stx138639%_)
        (let ((_%block138641%_
               (let ((__tmp149032
                      (##structure-ref
                       _%state138637%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp149032 _%phi138638%_))))
          (##structure-set!
           _%block138641%_
           (cons _%stx138639%_
                 (##structure-ref
                  _%block138641%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state138631%_)
        (##structure-set!
         _%state138631%_
         (let ((__tmp149035
                (lambda (_%_138633%_ _%block138634%_ _%r138635%_)
                  (cons _%block138634%_ _%r138635%_)))
               (__tmp149034
                (##structure-ref _%state138631%_ '4 gxc#meta-state::t '#f))
               (__tmp149033
                (##structure-ref _%state138631%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp149035 __tmp149034 __tmp149033))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state138631%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state138583%_)
        (gxc#meta-state-end-phi! _%state138583%_)
        (let ((__tmp149037
               (lambda (_%block138585%_ _%r138586%_)
                 (let* ((_%block138587138596%_ _%block138585%_)
                        (_%E138589138600%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block138587138596%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K138590138608%_
                         (lambda (_%code138603%_
                                  _%n138604%_
                                  _%phi138605%_
                                  _%ctx138606%_)
                           (if (null? _%code138603%_)
                               _%r138586%_
                               (cons (cons _%ctx138606%_
                                           (cons _%phi138605%_
                                                 (cons _%n138604%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code138603%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r138586%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block138587138596%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e138591138611%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138587138596%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx138614%_ _%e138591138611%_)
                              (_%e138592138616%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138587138596%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi138619%_ _%e138592138616%_)
                              (_%e138593138621%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138587138596%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n138624%_ _%e138593138621%_)
                              (_%e138594138626%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138587138596%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code138629%_ _%e138594138626%_))
                         (_%K138590138608%_
                          _%code138629%_
                          _%n138624%_
                          _%phi138619%_
                          _%ctx138614%_))
                       (_%E138589138600%_)))))
              (__tmp149036
               (##structure-ref _%state138583%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp149037 '() __tmp149036))))
    (define gxc#collect-expression-refs
      (lambda (_%stx138579%_)
        (let ((_%ht138581%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht138581%_ _%stx138579%_)
          _%ht138581%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self138522%_ _%stx138523%_)
        (let* ((_%g138525138538%_
                (lambda (_%g138526138535%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138526138535%_))))
               (_%g138524138576%_
                (lambda (_%g138526138541%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138526138541%_))
                      (let ((_%e138528138543%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138526138541%_))))
                        (let ((_%hd138529138546%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138528138543%_)))
                              (_%tl138530138548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138528138543%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138530138548%_))
                              (let ((_%e138531138551%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138530138548%_))))
                                (let ((_%hd138532138554%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138531138551%_)))
                                      (_%tl138533138556%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138531138551%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138533138556%_))
                                      ((lambda (_%L138559%_)
                                         (let* ((_%bind138571%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L138559%_)))
                                                (_%eid138573%_
                                                 (if _%bind138571%_
                                                     (##structure-ref
                                                      _%bind138571%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L138559%_))))
                                                (__tmp149038
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self138522%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp149038
                                            _%eid138573%_
                                            _%eid138573%_)))
                                       _%hd138532138554%_)
                                      (_%g138525138538%_ _%g138526138541%_))))
                              (_%g138525138538%_ _%g138526138541%_))))
                      (_%g138525138538%_ _%g138526138541%_)))))
          (_%g138524138576%_ _%stx138523%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self138449%_ _%stx138450%_)
        (let* ((_%g138452138469%_
                (lambda (_%g138453138466%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138453138466%_))))
               (_%g138451138519%_
                (lambda (_%g138453138472%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138453138472%_))
                      (let ((_%e138456138474%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138453138472%_))))
                        (let ((_%hd138457138477%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138456138474%_)))
                              (_%tl138458138479%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138456138474%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138458138479%_))
                              (let ((_%e138459138482%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138458138479%_))))
                                (let ((_%hd138460138485%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138459138482%_)))
                                      (_%tl138461138487%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138459138482%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138461138487%_))
                                      (let ((_%e138462138490%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138461138487%_))))
                                        (let ((_%hd138463138493%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138462138490%_)))
                                              (_%tl138464138495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138462138490%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138464138495%_))
                                              ((lambda (_%L138498%_
                                                        _%L138499%_)
                                                 (let* ((_%bind138514%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L138499%_)))
                                                        (_%eid138516%_
                                                         (if _%bind138514%_
                                                             (##structure-ref
                                                              _%bind138514%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L138499%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp149039
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self138449%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp149039
                                                      _%eid138516%_
                                                      _%eid138516%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self138449%_
                                                      _%L138498%_))))
                                               _%hd138463138493%_
                                               _%hd138460138485%_)
                                              (_%g138452138469%_
                                               _%g138453138472%_))))
                                      (_%g138452138469%_ _%g138453138472%_))))
                              (_%g138452138469%_ _%g138453138472%_))))
                      (_%g138452138469%_ _%g138453138472%_)))))
          (_%g138451138519%_ _%stx138450%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self138406%_ _%stx138407%_)
        (let* ((_%g138409138419%_
                (lambda (_%g138410138416%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138410138416%_))))
               (_%g138408138446%_
                (lambda (_%g138410138422%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138410138422%_))
                      (let ((_%e138412138424%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138410138422%_))))
                        (let ((_%hd138413138427%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138412138424%_)))
                              (_%tl138414138429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138412138424%_))))
                          ((lambda (_%L138432%_)
                             (let ((__tmp149040
                                    (lambda (_%g138441138443%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self138406%_
                                         _%g138441138443%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp149040 _%L138432%_)))
                           _%tl138414138429%_)))
                      (_%g138409138419%_ _%g138410138422%_)))))
          (_%g138408138446%_ _%stx138407%_))))
    (define gxc#count-values-single%
      (lambda (_%self138403%_ _%stx138404%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self138269%_ _%stx138270%_)
        (let* ((_%__stx148783148784%_ _%stx138270%_)
               (_%g138273138302%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx148783148784%_)))))
          (let ((_%__kont148785148786%_
                 (lambda (_%L138370%_ _%L138371%_)
                   (length (let ((__tmp149041
                                  (lambda (_%g138392138395%_ _%g138393138397%_)
                                    (cons _%g138392138395%_
                                          _%g138393138397%_))))
                             (declare (not safe))
                             (__foldr1 __tmp149041 '() _%L138370%_)))))
                (_%__kont148789148790%_ (lambda () '#f)))
            (let ((_%__match148828148829%_
                   (lambda (_%e138277138314%_
                            _%hd138278138317%_
                            _%tl138279138319%_
                            _%e138280138322%_
                            _%hd138281138325%_
                            _%tl138282138327%_
                            _%e138283138330%_
                            _%hd138284138333%_
                            _%tl138285138335%_
                            _%e138286138338%_
                            _%hd138287138341%_
                            _%tl138288138343%_
                            _%__splice148787148788%_
                            _%target138289138346%_
                            _%tl138291138348%_)
                     (letrec ((_%loop138292138351%_
                               (lambda (_%hd138290138354%_
                                        _%rand138296138356%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138290138354%_))
                                     (let ((_%e138293138359%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138290138354%_))))
                                       (let ((_%lp-tl138295138364%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138293138359%_)))
                                             (_%lp-hd138294138362%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138293138359%_))))
                                         (_%loop138292138351%_
                                          _%lp-tl138295138364%_
                                          (cons _%lp-hd138294138362%_
                                                _%rand138296138356%_))))
                                     (let ((_%rand138297138367%_
                                            (reverse _%rand138296138356%_)))
                                       (let ((_%L138370%_ _%rand138297138367%_)
                                             (_%L138371%_ _%hd138287138341%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L138371%_
                                                'values))
                                             (_%__kont148785148786%_
                                              _%L138370%_
                                              _%L138371%_)
                                             (_%__kont148789148790%_))))))))
                       (_%loop138292138351%_ _%target138289138346%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx148783148784%_))
                  (let ((_%e138277138314%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx148783148784%_))))
                    (let ((_%tl138279138319%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138277138314%_)))
                          (_%hd138278138317%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138277138314%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138279138319%_))
                          (let ((_%e138280138322%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138279138319%_))))
                            (let ((_%tl138282138327%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138280138322%_)))
                                  (_%hd138281138325%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138280138322%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138281138325%_))
                                  (let ((_%e138283138330%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138281138325%_))))
                                    (let ((_%tl138285138335%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138283138330%_)))
                                          (_%hd138284138333%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138283138330%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138284138333%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138284138333%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138285138335%_))
                                                  (let ((_%e138286138338%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138285138335%_))))
                                                    (let ((_%tl138288138343%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138286138338%_)))
                                                          (_%hd138287138341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138286138338%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138288138343%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138282138327%_))
                      (let ((_%__splice148787148788%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138282138327%_
                                '0))))
                        (let ((_%tl138291138348%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148787148788%_ '1)))
                              (_%target138289138346%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148787148788%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138291138348%_))
                              (_%__match148828148829%_
                               _%e138277138314%_
                               _%hd138278138317%_
                               _%tl138279138319%_
                               _%e138280138322%_
                               _%hd138281138325%_
                               _%tl138282138327%_
                               _%e138283138330%_
                               _%hd138284138333%_
                               _%tl138285138335%_
                               _%e138286138338%_
                               _%hd138287138341%_
                               _%tl138288138343%_
                               _%__splice148787148788%_
                               _%target138289138346%_
                               _%tl138291138348%_)
                              (_%__kont148789148790%_))))
                      (_%__kont148789148790%_))
                  (_%__kont148789148790%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148789148790%_))
                                              (_%__kont148789148790%_))
                                          (_%__kont148789148790%_))))
                                  (_%__kont148789148790%_))))
                          (_%__kont148789148790%_))))
                  (_%__kont148789148790%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self138172%_ _%stx138173%_)
        (let* ((_%g138175138196%_
                (lambda (_%g138176138193%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138176138193%_))))
               (_%g138174138266%_
                (lambda (_%g138176138199%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138176138199%_))
                      (let ((_%e138180138201%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138176138199%_))))
                        (let ((_%hd138181138204%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138180138201%_)))
                              (_%tl138182138206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138180138201%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138182138206%_))
                              (let ((_%e138183138209%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138182138206%_))))
                                (let ((_%hd138184138212%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138183138209%_)))
                                      (_%tl138185138214%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138183138209%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138185138214%_))
                                      (let ((_%e138186138217%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138185138214%_))))
                                        (let ((_%hd138187138220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138186138217%_)))
                                              (_%tl138188138222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138186138217%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138188138222%_))
                                              (let ((_%e138189138225%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138188138222%_))))
                                                (let ((_%hd138190138228%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138189138225%_)))
                                                      (_%tl138191138230%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138189138225%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl138191138230%_))
                                                      ((lambda (_%L138233%_
                                                                _%L138234%_
                                                                _%L138235%_)
                                                         (let ((_%c1138252138254%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self138172%_ _%L138234%_))))
                   (if _%c1138252138254%_
                       (let* ((_%c1138257%_ _%c1138252138254%_)
                              (_%c2138258138260%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self138172%_
                                  _%L138233%_))))
                         (if _%c2138258138260%_
                             (let ((_%c2138263%_ _%c2138258138260%_))
                               (if (fx= _%c1138257%_ _%c2138263%_)
                                   _%c1138257%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd138190138228%_
               _%hd138187138220%_
               _%hd138184138212%_)
              (_%g138175138196%_ _%g138176138199%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138175138196%_
                                               _%g138176138199%_))))
                                      (_%g138175138196%_ _%g138176138199%_))))
                              (_%g138175138196%_ _%g138176138199%_))))
                      (_%g138175138196%_ _%g138176138199%_)))))
          (_%g138174138266%_ _%stx138173%_))))))
