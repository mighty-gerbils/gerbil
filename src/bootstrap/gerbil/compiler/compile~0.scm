(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712121899)
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
        (letrec ((_%hash-e143665%_
                  (lambda (_%id143667%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id143667%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table
             'test:
             gx#bound-identifier=?
             'hash:
             _%hash-e143665%_)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp145034 (list gxc#::void::t))
            (__tmp145033 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp145034
         '()
         __tmp145033
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args143661%_
        (apply make-instance gxc#::collect-bindings::t _%$args143661%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp145035
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
        (__make-promise __tmp145035)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx143653%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self143656%_
                (let ((__obj145009
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj145009))
               (__tmp145036
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143656%_ _%stx143653%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145036
           gxc#current-compile-method
           _%self143656%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp145038 (list gxc#::void::t))
            (__tmp145037 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp145038
         '(modules)
         __tmp145037
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args143650%_
        (apply make-instance gxc#::lift-modules::t _%$args143650%_)))
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
      (let ((__tmp145039
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
        (__make-promise __tmp145039)))
    (define gxc#apply-lift-modules__%
      (lambda (_%_143623%_ _%modules143620143625%_ _%stx143627%_)
        (let ((_%modules143630%_
               (if (eq? _%modules143620143625%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules143620143625%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self143632%_
                  (let ((__obj145011
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145011
                       _%modules143630%_
                       '1
                       '#f
                       '#f))
                    __obj145011))
                 (__tmp145040
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143632%_ _%stx143627%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145040
             gxc#current-compile-method
             _%self143632%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords143639%_ . _%args143640%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords143639%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143639%_
                  'modules:
                  absent-value))
               _%args143640%_)))
    (define gxc#apply-lift-modules
      (lambda _%args143621143646%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args143621143646%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp145042 (list)) (__tmp145041 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp145042
         '()
         __tmp145041
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args143616%_
        (apply make-instance gxc#::find-runtime-code::t _%$args143616%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp145043
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
        (__make-promise __tmp145043)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx143608%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self143611%_
                (let ((__obj145013
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj145013))
               (__tmp145044
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143611%_ _%stx143608%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145044
           gxc#current-compile-method
           _%self143611%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp145046 (list gxc#::false::t))
            (__tmp145045 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp145046
         '()
         __tmp145045
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args143605%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args143605%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp145047
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
        (__make-promise __tmp145047)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx143597%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self143600%_
                (let ((__obj145015
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj145015))
               (__tmp145048
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143600%_ _%stx143597%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145048
           gxc#current-compile-method
           _%self143600%_))))
    (define gxc#::count-values::t
      (let ((__tmp145050 (list gxc#::false-expression::t))
            (__tmp145049 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp145050
         '()
         __tmp145049
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args143594%_
        (apply make-instance gxc#::count-values::t _%$args143594%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp145051
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
        (__make-promise __tmp145051)))
    (define gxc#apply-count-values
      (lambda (_%stx143586%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self143589%_
                (let ((__obj145017
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj145017))
               (__tmp145052
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143589%_ _%stx143586%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145052
           gxc#current-compile-method
           _%self143589%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp145053 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp145053
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args143583%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args143583%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp145054
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
        (__make-promise __tmp145054)))
    (define gxc#::generate-loader::t
      (let ((__tmp145056 (list gxc#::generate-runtime-empty::t))
            (__tmp145055 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp145056
         '()
         __tmp145055
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args143579%_
        (apply make-instance gxc#::generate-loader::t _%$args143579%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp145057
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
        (__make-promise __tmp145057)))
    (define gxc#apply-generate-loader
      (lambda (_%stx143571%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self143574%_
                (let ((__obj145020
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj145020))
               (__tmp145058
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143574%_ _%stx143571%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145058
           gxc#current-compile-method
           _%self143574%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp145059 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp145059
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args143568%_
        (apply make-instance gxc#::generate-runtime::t _%$args143568%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp145060
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
        (__make-promise __tmp145060)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx143560%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self143563%_
                (let ((__obj145022
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj145022))
               (__tmp145061
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143563%_ _%stx143560%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145061
           gxc#current-compile-method
           _%self143563%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp145063 (list gxc#::generate-runtime::t))
            (__tmp145062 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp145063
         '()
         __tmp145062
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args143557%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args143557%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp145064
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
        (__make-promise __tmp145064)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx143549%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self143552%_
                (let ((__obj145024
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj145024))
               (__tmp145065
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143552%_ _%stx143549%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp145065
           gxc#current-compile-method
           _%self143552%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp145066 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp145066
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args143546%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args143546%_)))
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
      (let ((__tmp145067
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
        (__make-promise __tmp145067)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%_143519%_ _%table143516143521%_ _%stx143523%_)
        (let ((_%table143526%_
               (if (eq? _%table143516143521%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table143516143521%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self143528%_
                  (let ((__obj145026
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145026
                       _%table143526%_
                       '1
                       '#f
                       '#f))
                    __obj145026))
                 (__tmp145068
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143528%_ _%stx143523%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145068
             gxc#current-compile-method
             _%self143528%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords143535%_ . _%args143536%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords143535%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143535%_
                  'table:
                  absent-value))
               _%args143536%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args143517143542%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args143517143542%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp145070 (list gxc#::void-expression::t))
            (__tmp145069 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp145070
         '(state)
         __tmp145069
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args143512%_
        (apply make-instance gxc#::generate-meta::t _%$args143512%_)))
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
      (let ((__tmp145071
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
        (__make-promise __tmp145071)))
    (define gxc#apply-generate-meta__%
      (lambda (_%_143485%_ _%state143482143487%_ _%stx143489%_)
        (let ((_%state143492%_
               (if (eq? _%state143482143487%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143482143487%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self143494%_
                  (let ((__obj145028
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145028
                       _%state143492%_
                       '1
                       '#f
                       '#f))
                    __obj145028))
                 (__tmp145072
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143494%_ _%stx143489%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145072
             gxc#current-compile-method
             _%self143494%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords143501%_ . _%args143502%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords143501%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143501%_
                  'state:
                  absent-value))
               _%args143502%_)))
    (define gxc#apply-generate-meta
      (lambda _%args143483143508%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args143483143508%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp145074 (list)) (__tmp145073 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp145074
         '(state)
         __tmp145073
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args143478%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args143478%_)))
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
      (let ((__tmp145075
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
        (__make-promise __tmp145075)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%_143451%_ _%state143448143453%_ _%stx143455%_)
        (let ((_%state143458%_
               (if (eq? _%state143448143453%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143448143453%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self143460%_
                  (let ((__obj145030
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj145030
                       _%state143458%_
                       '1
                       '#f
                       '#f))
                    __obj145030))
                 (__tmp145076
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143460%_ _%stx143455%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp145076
             gxc#current-compile-method
             _%self143460%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords143467%_ . _%args143468%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords143467%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143467%_
                  'state:
                  absent-value))
               _%args143468%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args143449143474%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args143449143474%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self143377%_ _%stx143378%_)
        (let* ((_%g143380143397%_
                (lambda (_%g143381143394%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143381143394%_))))
               (_%g143379143444%_
                (lambda (_%g143381143400%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143381143400%_))
                      (let ((_%e143386143402%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143381143400%_))))
                        (let ((_%hd143385143405%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143386143402%_)))
                              (_%tl143384143407%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143386143402%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143384143407%_))
                              (let ((_%e143389143410%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143384143407%_))))
                                (let ((_%hd143388143413%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143389143410%_)))
                                      (_%tl143387143415%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143389143410%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143387143415%_))
                                      (let ((_%e143392143418%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143387143415%_))))
                                        (let ((_%hd143391143421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143392143418%_)))
                                              (_%tl143390143423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143392143418%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143390143423%_))
                                              ((lambda (_%L143426%_
                                                        _%L143427%_)
                                                 (let ((__tmp145077
                                                        (lambda (_%bind143442%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind143442%_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _%bind143442%_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp145077
                                                    _%L143427%_)))
                                               _%hd143391143421%_
                                               _%hd143388143413%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143380143397%_
                                                 _%g143381143400%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143380143397%_
                                         _%g143381143400%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143380143397%_ _%g143381143400%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143380143397%_ _%g143381143400%_))))))
          (declare (not safe))
          (_%g143379143444%_ _%stx143378%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self143309%_ _%stx143310%_)
        (let* ((_%g143312143329%_
                (lambda (_%g143313143326%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143313143326%_))))
               (_%g143311143374%_
                (lambda (_%g143313143332%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143313143332%_))
                      (let ((_%e143318143334%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143313143332%_))))
                        (let ((_%hd143317143337%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143318143334%_)))
                              (_%tl143316143339%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143318143334%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143316143339%_))
                              (let ((_%e143321143342%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143316143339%_))))
                                (let ((_%hd143320143345%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143321143342%_)))
                                      (_%tl143319143347%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143321143342%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143319143347%_))
                                      (let ((_%e143324143350%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143319143347%_))))
                                        (let ((_%hd143323143353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143324143350%_)))
                                              (_%tl143322143355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143324143350%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143322143355%_))
                                              ((lambda (_%L143358%_
                                                        _%L143359%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _%L143359%_
                                                    '#t)))
                                               _%hd143323143353%_
                                               _%hd143320143345%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143312143329%_
                                                 _%g143313143332%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143312143329%_
                                         _%g143313143332%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143312143329%_ _%g143313143332%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143312143329%_ _%g143313143332%_))))))
          (declare (not safe))
          (_%g143311143374%_ _%stx143310%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self143251%_ _%stx143252%_)
        (let* ((_%g143254143268%_
                (lambda (_%g143255143265%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143255143265%_))))
               (_%g143253143306%_
                (lambda (_%g143255143271%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143255143271%_))
                      (let ((_%e143260143273%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143255143271%_))))
                        (let ((_%hd143259143276%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143260143273%_)))
                              (_%tl143258143278%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143260143273%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143258143278%_))
                              (let ((_%e143263143281%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143258143278%_))))
                                (let ((_%hd143262143284%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143263143281%_)))
                                      (_%tl143261143286%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143263143281%_))))
                                  ((lambda (_%L143289%_ _%L143290%_)
                                     (let ((_%ctx143303%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L143290%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self143251%_
                                           'modules))
                                        (cons _%ctx143303%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self143251%_
                                                        'modules)))))
                                       (let ((__tmp145078
                                              (lambda ()
                                                (let ((__tmp145079
                                                       (##structure-ref
                                                        _%ctx143303%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143251%_
                                                   __tmp145079)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp145078
                                          gx#current-expander-context
                                          _%ctx143303%_))))
                                   _%tl143261143286%_
                                   _%hd143262143284%_)))
                              (let ()
                                (declare (not safe))
                                (_%g143254143268%_ _%g143255143271%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143254143268%_ _%g143255143271%_))))))
          (declare (not safe))
          (_%g143253143306%_ _%stx143252%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls143204143206%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls143204143206%_
              (let ((_%decls143209%_ _%decls143204143206%_))
                (let _%lp143211%_ ((_%rest143213%_ _%decls143209%_))
                  (let* ((_%rest143214143222%_ _%rest143213%_)
                         (_%else143216143230%_ (lambda () '#f))
                         (_%K143218143239%_
                          (lambda (_%decls143233%_ _%decl143234%_)
                            (if (equal? _%decl143234%_ '(not safe))
                                (let () '#t)
                                (if (equal? _%decl143234%_ '(safe))
                                    (let () '#f)
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (_%lp143211%_ _%decls143233%_))))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest143214143222%_))
                        (let ((_%hd143219143242%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest143214143222%_)))
                              (_%tl143220143244%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest143214143222%_))))
                          (let* ((_%decl143247%_ _%hd143219143242%_)
                                 (_%decls143249%_ _%tl143220143244%_))
                            (declare (not safe))
                            (_%K143218143239%_
                             _%decls143249%_
                             _%decl143247%_)))
                        (let ()
                          (declare (not safe))
                          (_%else143216143230%_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id143198%_ _%syntax?143199%_)
        (let ((_%eid143201%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id143198%_))
                '1
                gx#binding::t
                '#f))
              (_%ht143202%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid143201%_))
              '#!void
              (let ((__tmp145080
                     (let ((__tmp145081
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid143201%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp145081 _%syntax?143199%_))))
                (declare (not safe))
                (hash-put! _%ht143202%_ _%eid143201%_ __tmp145080))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id143196%_)
        (let ((__tmp145082
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _%id143196%_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp145082))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key143151%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key143151%_))
            (let () _%key143151%_)
            (if (uninterned-symbol? _%key143151%_)
                (let ()
                  (let ()
                    (declare (not safe))
                    (gxc#generate-runtime-gensym-reference__0 _%key143151%_)))
                (let ()
                  (let* ((_%key143155143162%_ _%key143151%_)
                         (_%E143157143166%_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _%key143155143162%_
                                     '([eid . mark])))
                            '#!void))
                         (_%K143158143184%_
                          (lambda (_%mark143169%_ _%eid143170%_)
                            (let ((_%$e143172%_
                                   (##structure-ref
                                    _%mark143169%_
                                    '1
                                    gx#expander-mark::t
                                    '#f)))
                              (if _%$e143172%_
                                  ((lambda (_%ht143175%_)
                                     (let ((_%$e143177%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-get
                                               _%ht143175%_
                                               _%eid143170%_))))
                                       (if _%$e143177%_
                                           ((lambda (_%id143180%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (interned-symbol?
                                                     _%id143180%_))
                                                  _%id143180%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _%id143180%_))))
                                            _%$e143177%_)
                                           (let ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%eid143170%_))))))
                                   _%$e143172%_)
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-identifier-key
                                       _%eid143170%_))))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%key143155143162%_))
                        (let ((_%hd143159143187%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%key143155143162%_)))
                              (_%tl143160143189%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%key143155143162%_))))
                          (let* ((_%eid143192%_ _%hd143159143187%_)
                                 (_%mark143194%_ _%tl143160143189%_))
                            (declare (not safe))
                            (_%K143158143184%_ _%mark143194%_ _%eid143192%_)))
                        (let ()
                          (declare (not safe))
                          (_%E143157143166%_)))))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self143148%_ _%stx143149%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self142995%_ _%stx142996%_)
        (letrec ((_%simplify142998%_
                  (lambda (_%body143046%_)
                    (let _%lp143048%_ ((_%rest143050%_ _%body143046%_)
                                       (_%r143051%_ '()))
                      (let* ((_%rest143052143060%_ _%rest143050%_)
                             (_%else143054143068%_
                              (lambda () (reverse _%r143051%_)))
                             (_%K143056143136%_
                              (lambda (_%rest143071%_ _%hd143072%_)
                                (let* ((_%hd143073143089%_ _%hd143072%_)
                                       (_%else143077143097%_
                                        (lambda ()
                                          (let ((__tmp145083
                                                 (cons _%hd143072%_
                                                       _%r143051%_)))
                                            (declare (not safe))
                                            (_%lp143048%_
                                             _%rest143071%_
                                             __tmp145083)))))
                                  (let ((_%K143085143126%_
                                         (lambda (_%exprs143124%_)
                                           (let ((__tmp145084
                                                  (let ()
                                                    (declare (not safe))
                                                    (__foldr1
                                                     cons
                                                     _%rest143071%_
                                                     _%exprs143124%_))))
                                             (declare (not safe))
                                             (_%lp143048%_
                                              __tmp145084
                                              _%r143051%_))))
                                        (_%K143080143110%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143071%_))
                                               (let ((__tmp145085
                                                      (cons _%hd143072%_
                                                            _%r143051%_)))
                                                 (declare (not safe))
                                                 (_%lp143048%_
                                                  _%rest143071%_
                                                  __tmp145085))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143048%_
                                                  _%rest143071%_
                                                  _%r143051%_)))))
                                        (_%K143079143102%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest143071%_))
                                               (let ((__tmp145086
                                                      (cons _%hd143072%_
                                                            _%r143051%_)))
                                                 (declare (not safe))
                                                 (_%lp143048%_
                                                  _%rest143071%_
                                                  __tmp145086))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp143048%_
                                                  _%rest143071%_
                                                  _%r143051%_))))))
                                    (let ((_%try-match143076143105%_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _%hd143073143089%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%K143079143102%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%else143077143097%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd143073143089%_))
                                          (let ((_%tl143087143131%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd143073143089%_)))
                                                (_%hd143086143129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd143073143089%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd143086143129%_
                                                         'begin))
                                                (let ((_%exprs143134%_
                                                       _%tl143087143131%_))
                                                  (declare (not safe))
                                                  (_%K143085143126%_
                                                   _%exprs143134%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd143086143129%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl143087143131%_))
                                                        (let ((_%tl143084143118%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl143087143131%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl143084143118%_))
                      (let () (declare (not safe)) (_%K143080143110%_))
                      (let ()
                        (declare (not safe))
                        (_%try-match143076143105%_))))
                (let () (declare (not safe)) (_%try-match143076143105%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%try-match143076143105%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%try-match143076143105%_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest143052143060%_))
                            (let ((_%hd143057143139%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143052143060%_)))
                                  (_%tl143058143141%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143052143060%_))))
                              (let* ((_%hd143144%_ _%hd143057143139%_)
                                     (_%rest143146%_ _%tl143058143141%_))
                                (declare (not safe))
                                (_%K143056143136%_
                                 _%rest143146%_
                                 _%hd143144%_)))
                            (let ()
                              (declare (not safe))
                              (_%else143054143068%_))))))))
          (let* ((_%g143000143010%_
                  (lambda (_%g143001143007%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143001143007%_))))
                 (_%g142999143043%_
                  (lambda (_%g143001143013%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143001143013%_))
                        (let ((_%e143005143015%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143001143013%_))))
                          (let ((_%hd143004143018%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143005143015%_)))
                                (_%tl143003143020%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143005143015%_))))
                            ((lambda (_%L143023%_)
                               (let* ((_%body143038%_
                                       (map (lambda (_%g143033143035%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self142995%_
                                                 _%g143033143035%_)))
                                            _%L143023%_))
                                      (_%body143040%_
                                       (let ()
                                         (declare (not safe))
                                         (_%simplify142998%_ _%body143038%_))))
                                 (if (let ((__tmp145087
                                            (length _%body143040%_)))
                                       (declare (not safe))
                                       (##fx= __tmp145087 '1))
                                     (car _%body143040%_)
                                     (cons 'begin _%body143040%_))))
                             _%tl143003143020%_)))
                        (let ()
                          (declare (not safe))
                          (_%g143000143010%_ _%g143001143013%_))))))
            (declare (not safe))
            (_%g142999143043%_ _%stx142996%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self142956%_ _%stx142957%_)
        (let* ((_%g142959142969%_
                (lambda (_%g142960142966%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142960142966%_))))
               (_%g142958142992%_
                (lambda (_%g142960142972%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142960142972%_))
                      (let ((_%e142964142974%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142960142972%_))))
                        (let ((_%hd142963142977%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142964142974%_)))
                              (_%tl142962142979%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142964142974%_))))
                          ((lambda (_%L142982%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L142982%_))))
                           _%tl142962142979%_)))
                      (let ()
                        (declare (not safe))
                        (_%g142959142969%_ _%g142960142972%_))))))
          (declare (not safe))
          (_%g142958142992%_ _%stx142957%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self142720%_ _%stx142721%_)
        (let* ((_%__stx143690143691%_ _%stx142721%_)
               (_%g142725142777%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx143690143691%_)))))
          (let ((_%__kont143692143693%_
                 (lambda (_%L142938%_ _%L142939%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self142720%_ _%L142938%_))))
                (_%__kont143694143695%_
                 (lambda (_%L142886%_ _%L142887%_ _%L142888%_)
                   (if (let ((__tmp145088
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L142888%_))))
                         (declare (not safe))
                         (##memq __tmp145088 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self142720%_ _%L142886%_)))))
                (_%__kont143698143699%_
                 (lambda (_%L142806%_ _%L142807%_)
                   (let ((_%decls142822%_ (map gx#syntax->datum _%L142807%_)))
                     (let ((__tmp145091
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls142822%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self142720%_
                                                   _%L142806%_))
                                                '())))))
                           (__tmp145089
                            (let ((__tmp145090
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp145090 _%decls142822%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp145091
                        gxc#current-compile-decls
                        __tmp145089))))))
            (let* ((_%__match143745143746%_
                    (lambda (_%e142743142830%_
                             _%hd142742142833%_
                             _%tl142741142835%_
                             _%e142746142838%_
                             _%hd142745142841%_
                             _%tl142744142843%_
                             _%e142749142846%_
                             _%hd142748142849%_
                             _%tl142747142851%_
                             _%__splice143696143697%_
                             _%target142750142854%_
                             _%tl142752142856%_)
                      (letrec ((_%loop142753142859%_
                                (lambda (_%hd142751142862%_
                                         _%param142757142864%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142751142862%_))
                                      (let ((_%e142754142867%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142751142862%_))))
                                        (let ((_%lp-tl142756142872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142754142867%_)))
                                              (_%lp-hd142755142870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142754142867%_))))
                                          (let ((__tmp145092
                                                 (cons _%lp-hd142755142870%_
                                                       _%param142757142864%_)))
                                            (declare (not safe))
                                            (_%loop142753142859%_
                                             _%lp-tl142756142872%_
                                             __tmp145092))))
                                      (let ((_%param142758142875%_
                                             (reverse _%param142757142864%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142744142843%_))
                                            (let ((_%e142761142878%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142744142843%_))))
                                              (let ((_%tl142759142883%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142761142878%_)))
                                                    (_%hd142760142881%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142761142878%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl142759142883%_))
                                                    (let ((_%L142886%_
                                                           _%hd142760142881%_)
                                                          (_%L142887%_
                                                           _%param142758142875%_)
                                                          (_%L142888%_
                                                           _%hd142748142849%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L142888%_))
                       (let ((__tmp145093
                              (let ((__tmp145094
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L142888%_))))
                                (declare (not safe))
                                (##memq __tmp145094 gxc#gambit-annotations))))
                         (declare (not safe))
                         (not __tmp145093)))
                  (_%__kont143694143695%_ _%L142886%_ _%L142887%_ _%L142888%_)
                  (_%__kont143698143699%_
                   _%hd142760142881%_
                   _%hd142745142841%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g142725142777%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g142725142777%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop142753142859%_ _%target142750142854%_ '())))))
                   (_%__match143719143720%_
                    (lambda (_%e142731142914%_
                             _%hd142730142917%_
                             _%tl142729142919%_
                             _%e142734142922%_
                             _%hd142733142925%_
                             _%tl142732142927%_
                             _%e142737142930%_
                             _%hd142736142933%_
                             _%tl142735142935%_)
                      (let ((_%L142938%_ _%hd142736142933%_)
                            (_%L142939%_ _%hd142733142925%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L142939%_))
                            (_%__kont143692143693%_ _%L142938%_ _%L142939%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd142733142925%_))
                                (let ((_%e142749142846%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd142733142925%_))))
                                  (let ((_%tl142747142851%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142749142846%_)))
                                        (_%hd142748142849%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142749142846%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl142747142851%_))
                                        (let ((_%__splice143696143697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl142747142851%_
                                                  '0))))
                                          (let ((_%tl142752142856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143696143697%_
                                                    '1)))
                                                (_%target142750142854%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143696143697%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142752142856%_))
                                                (_%__match143745143746%_
                                                 _%e142731142914%_
                                                 _%hd142730142917%_
                                                 _%tl142729142919%_
                                                 _%e142734142922%_
                                                 _%hd142733142925%_
                                                 _%tl142732142927%_
                                                 _%e142749142846%_
                                                 _%hd142748142849%_
                                                 _%tl142747142851%_
                                                 _%__splice143696143697%_
                                                 _%target142750142854%_
                                                 _%tl142752142856%_)
                                                (_%__kont143698143699%_
                                                 _%hd142736142933%_
                                                 _%hd142733142925%_))))
                                        (_%__kont143698143699%_
                                         _%hd142736142933%_
                                         _%hd142733142925%_))))
                                (_%__kont143698143699%_
                                 _%hd142736142933%_
                                 _%hd142733142925%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx143690143691%_))
                  (let ((_%e142731142914%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx143690143691%_))))
                    (let ((_%tl142729142919%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142731142914%_)))
                          (_%hd142730142917%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142731142914%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142729142919%_))
                          (let ((_%e142734142922%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142729142919%_))))
                            (let ((_%tl142732142927%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142734142922%_)))
                                  (_%hd142733142925%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142734142922%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl142732142927%_))
                                  (let ((_%e142737142930%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl142732142927%_))))
                                    (let ((_%tl142735142935%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142737142930%_)))
                                          (_%hd142736142933%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142737142930%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142735142935%_))
                                          (_%__match143719143720%_
                                           _%e142731142914%_
                                           _%hd142730142917%_
                                           _%tl142729142919%_
                                           _%e142734142922%_
                                           _%hd142733142925%_
                                           _%tl142732142927%_
                                           _%e142737142930%_
                                           _%hd142736142933%_
                                           _%tl142735142935%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd142733142925%_))
                                              (let ((_%e142749142846%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd142733142925%_))))
                                                (let ((_%tl142747142851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142749142846%_)))
                                                      (_%hd142748142849%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142749142846%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl142747142851%_))
                                                      (let ((_%__splice143696143697%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl142747142851%_ '0))))
                (let ((_%tl142752142856%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143696143697%_ '1)))
                      (_%target142750142854%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143696143697%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142752142856%_))
                      (_%__match143745143746%_
                       _%e142731142914%_
                       _%hd142730142917%_
                       _%tl142729142919%_
                       _%e142734142922%_
                       _%hd142733142925%_
                       _%tl142732142927%_
                       _%e142749142846%_
                       _%hd142748142849%_
                       _%tl142747142851%_
                       _%__splice143696143697%_
                       _%target142750142854%_
                       _%tl142752142856%_)
                      (let () (declare (not safe)) (_%g142725142777%_)))))
              (let () (declare (not safe)) (_%g142725142777%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g142725142777%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142733142925%_))
                                      (let ((_%e142749142846%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142733142925%_))))
                                        (let ((_%tl142747142851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142749142846%_)))
                                              (_%hd142748142849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142749142846%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl142747142851%_))
                                              (let ((_%__splice143696143697%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl142747142851%_
                                                        '0))))
                                                (let ((_%tl142752142856%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143696143697%_
                                                          '1)))
                                                      (_%target142750142854%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143696143697%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142752142856%_))
                                                      (_%__match143745143746%_
                                                       _%e142731142914%_
                                                       _%hd142730142917%_
                                                       _%tl142729142919%_
                                                       _%e142734142922%_
                                                       _%hd142733142925%_
                                                       _%tl142732142927%_
                                                       _%e142749142846%_
                                                       _%hd142748142849%_
                                                       _%tl142747142851%_
                                                       _%__splice143696143697%_
                                                       _%target142750142854%_
                                                       _%tl142752142856%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g142725142777%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g142725142777%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142725142777%_))))))
                          (let () (declare (not safe)) (_%g142725142777%_)))))
                  (let () (declare (not safe)) (_%g142725142777%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self142679%_ _%stx142680%_)
        (let* ((_%g142682142692%_
                (lambda (_%g142683142689%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142683142689%_))))
               (_%g142681142717%_
                (lambda (_%g142683142695%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142683142695%_))
                      (let ((_%e142687142697%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142683142695%_))))
                        (let ((_%hd142686142700%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142687142697%_)))
                              (_%tl142685142702%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142687142697%_))))
                          ((lambda (_%L142705%_)
                             (let ((_%decls142715%_
                                    (map gx#syntax->datum _%L142705%_)))
                               (let ((__tmp145095
                                      (let ((__tmp145096
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp145096
                                         _%decls142715%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp145095))
                               (cons 'declare _%decls142715%_)))
                           _%tl142685142702%_)))
                      (let ()
                        (declare (not safe))
                        (_%g142682142692%_ _%g142683142695%_))))))
          (declare (not safe))
          (_%g142681142717%_ _%stx142680%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self142425%_ _%stx142426%_)
        (let* ((_%g142428142445%_
                (lambda (_%g142429142442%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142429142442%_))))
               (_%g142427142676%_
                (lambda (_%g142429142448%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142429142448%_))
                      (let ((_%e142434142450%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142429142448%_))))
                        (let ((_%hd142433142453%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142434142450%_)))
                              (_%tl142432142455%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142434142450%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142432142455%_))
                              (let ((_%e142437142458%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142432142455%_))))
                                (let ((_%hd142436142461%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142437142458%_)))
                                      (_%tl142435142463%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142437142458%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142435142463%_))
                                      (let ((_%e142440142466%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142435142463%_))))
                                        (let ((_%hd142439142469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142440142466%_)))
                                              (_%tl142438142471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142440142466%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142438142471%_))
                                              ((lambda (_%L142474%_
                                                        _%L142475%_)
                                                 (let* ((_%__stx143798143799%_
                                                         _%L142475%_)
                                                        (_%g142492142506%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx143798143799%_)))))
                                                   (let ((_%__kont143800143801%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self142425%_
                                                               _%L142474%_))))
                                                         (_%__kont143802143803%_
                                                          (lambda (_%L142638%_)
                                                            (let ((_%eid142647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L142638%_))))
                      (let ((_%lambda-expr142648142650%_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression
                                _%L142474%_))))
                        (if _%lambda-expr142648142650%_
                            (let* ((_%lambda-expr142653%_
                                    _%lambda-expr142648142650%_)
                                   (__tmp145097
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp145097
                               _%lambda-expr142653%_
                               _%eid142647%_))
                            '#f))
                      (cons 'define
                            (cons _%eid142647%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self142425%_
                                           _%L142474%_))
                                        '()))))))
                 (_%__kont143804143805%_
                  (lambda ()
                    (let* ((_%tmp142513%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body142622%_
                            (let _%lp142515%_ ((_%rest142517%_ _%L142475%_)
                                               (_%k142518%_ '0)
                                               (_%r142519%_ '()))
                              (let* ((_%__stx143768143769%_ _%rest142517%_)
                                     (_%g142524142541%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx143768143769%_)))))
                                (let ((_%__kont143770143771%_
                                       (lambda (_%L142609%_)
                                         (let ((__tmp145098
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k142518%_ '1))))
                                           (declare (not safe))
                                           (_%lp142515%_
                                            _%L142609%_
                                            __tmp145098
                                            _%r142519%_))))
                                      (_%__kont143772143773%_
                                       (lambda (_%L142582%_ _%L142583%_)
                                         (let ((__tmp145100
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k142518%_ '1)))
                                               (__tmp145099
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L142583%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values-ref
                                   _%tmp142513%_
                                   _%k142518%_
                                   _%L142582%_))
                                '())))
              _%r142519%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp142515%_
                                            _%L142582%_
                                            __tmp145100
                                            __tmp145099))))
                                      (_%__kont143774143775%_
                                       (lambda (_%L142553%_)
                                         (let ((__tmp145101
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L142553%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values->list
                                   _%tmp142513%_
                                   _%k142518%_))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp145101
                                            _%r142519%_))))
                                      (_%__kont143776143777%_
                                       (lambda () (reverse _%r142519%_))))
                                  (let ((_%g142522142569%_
                                         (lambda ()
                                           (let ((_%L142553%_
                                                  _%__stx143768143769%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L142553%_))
                                                 (_%__kont143774143775%_
                                                  _%L142553%_)
                                                 (_%__kont143776143777%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx143768143769%_))
                                        (let ((_%e142529142598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx143768143769%_))))
                                          (let ((_%tl142527142603%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142529142598%_)))
                                                (_%hd142528142601%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142529142598%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd142528142601%_))
                                                (let ((_%e142530142606%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142528142601%_))))
                                                  (if (equal? _%e142530142606%_
                                                              '#f)
                                                      (_%__kont143770143771%_
                                                       _%tl142527142603%_)
                                                      (_%__kont143772143773%_
                                                       _%tl142527142603%_
                                                       _%hd142528142601%_)))
                                                (_%__kont143772143773%_
                                                 _%tl142527142603%_
                                                 _%hd142528142601%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g142522142569%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp142513%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142425%_
                                                       _%L142474%_))
                                                    '())))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-check-values
                                           _%tmp142513%_
                                           _%L142475%_
                                           _%L142474%_))
                                        _%body142622%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx143798143799%_))
                                                         (let ((_%e142496142660%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx143798143799%_))))
                   (let ((_%tl142494142665%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e142496142660%_)))
                         (_%hd142495142663%_
                          (let ()
                            (declare (not safe))
                            (##car _%e142496142660%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd142495142663%_))
                         (let ((_%e142497142668%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd142495142663%_))))
                           (if (equal? _%e142497142668%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142494142665%_))
                                   (_%__kont143800143801%_)
                                   (_%__kont143804143805%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142494142665%_))
                                   (_%__kont143802143803%_ _%hd142495142663%_)
                                   (_%__kont143804143805%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142494142665%_))
                             (_%__kont143802143803%_ _%hd142495142663%_)
                             (_%__kont143804143805%_)))))
                 (_%__kont143804143805%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142439142469%_
                                               _%hd142436142461%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g142428142445%_
                                                 _%g142429142448%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142428142445%_
                                         _%g142429142448%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g142428142445%_ _%g142429142448%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g142428142445%_ _%g142429142448%_))))))
          (declare (not safe))
          (_%g142427142676%_ _%stx142426%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals142400%_ _%hd142401%_ _%expr142402%_)
        (let ((_%$e142404%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _%expr142402%_))))
          (if _%$e142404%_
              ((lambda (_%count142407%_)
                 (let ((_%len142409%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142401%_)))
                       (_%cmp142410%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142401%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len142409%_ '0))
                           (_%cmp142410%_ _%count142407%_ _%len142409%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr142402%_
                          _%hd142401%_)))))
               _%$e142404%_)
              (let ()
                (let* ((_%len142416%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142401%_)))
                       (_%cmp142418%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142401%_))
                            '##fx=
                            '##fx>=))
                       (_%errmsg142420%_
                        (let ((__tmp145103
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-list? _%hd142401%_))
                                   '"Context expects "
                                   '"Context expects at least "))
                              (__tmp145102 (number->string _%len142416%_)))
                          (declare (not safe))
                          (##string-append
                           __tmp145103
                           __tmp145102
                           '" values")))
                       (_%count142422%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-temporary__0))))
                  (if (and (let ((__tmp145104
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-list? _%hd142401%_))))
                             (declare (not safe))
                             (not __tmp145104))
                           (let ()
                             (declare (not safe))
                             (##fx= _%len142416%_ '0)))
                      '#!void
                      (cons 'let
                            (cons (cons (cons _%count142422%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-values-count
                                                       _%vals142400%_))
                                                    '()))
                                        '())
                                  (cons (cons 'if
                                              (cons (cons 'not
                                                          (cons (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#current-compile-decls-unsafe?))
                            (cons _%cmp142418%_
                                  (cons _%count142422%_
                                        (cons _%len142416%_ '())))
                            (cons 'let
                                  (cons '()
                                        (cons '(declare (not safe))
                                              (cons (cons _%cmp142418%_
                                                          (cons _%count142422%_
                                                                (cons _%len142416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'error
                                                                (cons _%errmsg142420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%count142422%_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var142395%_)
        (letrec ((_%generate-inline142397%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var142395%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var142395%_ '()))
                                      (cons '1 '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline142397%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline142397%_))
                                      '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var142388%_ _%i142389%_ _%rest142390%_)
        (letrec ((_%generate-inline142392%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i142389%_ '0))
                             (let ((__tmp145105
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%rest142390%_))))
                               (declare (not safe))
                               (not __tmp145105)))
                        (cons 'if
                              (cons (cons '##values? (cons _%var142388%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var142388%_
                                                      (cons '0 '())))
                                          (cons _%var142388%_ '()))))
                        (cons '##vector-ref
                              (cons _%var142388%_ (cons _%i142389%_ '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline142392%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline142392%_))
                                      '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var142382%_ _%i142383%_)
        (if (let () (declare (not safe)) (##fx= _%i142383%_ '0))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (gxc#current-compile-decls-unsafe?))
                  (cons 'if
                        (cons (cons '##values? (cons _%var142382%_ '()))
                              (cons (cons '##vector->list
                                          (cons _%var142382%_ '()))
                                    (cons (cons 'list (cons _%var142382%_ '()))
                                          '()))))
                  (cons 'let
                        (cons '()
                              (cons '(declare (not safe))
                                    (cons (cons 'if
                                                (cons (cons '##values?
                                                            (cons _%var142382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '##vector->list (cons _%var142382%_ '()))
                    (cons (cons 'list (cons _%var142382%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
            (if (let () (declare (not safe)) (##fx= _%i142383%_ '1))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (gxc#current-compile-decls-unsafe?))
                      (cons 'if
                            (cons (cons '##values? (cons _%var142382%_ '()))
                                  (cons (cons '##cdr
                                              (cons (cons '##vector->list
                                                          (cons _%var142382%_
                                                                '()))
                                                    '()))
                                        (cons ''() '()))))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons 'if
                                                    (cons (cons '##values?
                                                                (cons _%var142382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '##cdr
                              (cons (cons '##vector->list
                                          (cons _%var142382%_ '()))
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
                                        (cons _%var142382%_ '()))
                                  (cons _%i142383%_ '())))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons '##list-tail
                                                    (cons (cons '##vector->list
                                                                (cons _%var142382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons _%i142383%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self142314%_ _%stx142315%_)
        (let* ((_%g142317142334%_
                (lambda (_%g142318142331%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142318142331%_))))
               (_%g142316142379%_
                (lambda (_%g142318142337%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142318142337%_))
                      (let ((_%e142323142339%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142318142337%_))))
                        (let ((_%hd142322142342%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142323142339%_)))
                              (_%tl142321142344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142323142339%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142321142344%_))
                              (let ((_%e142326142347%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142321142344%_))))
                                (let ((_%hd142325142350%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142326142347%_)))
                                      (_%tl142324142352%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142326142347%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142324142352%_))
                                      (let ((_%e142329142355%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142324142352%_))))
                                        (let ((_%hd142328142358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142329142355%_)))
                                              (_%tl142327142360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142329142355%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142327142360%_))
                                              ((lambda (_%L142363%_
                                                        _%L142364%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _%self142314%_
                                                    _%L142364%_
                                                    _%L142363%_)))
                                               _%hd142328142358%_
                                               _%hd142325142350%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g142317142334%_
                                                 _%g142318142337%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142317142334%_
                                         _%g142318142337%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g142317142334%_ _%g142318142337%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g142317142334%_ _%g142318142337%_))))))
          (declare (not safe))
          (_%g142316142379%_ _%stx142315%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self142273%_ _%hd142274%_ _%body142275%_)
        (let* ((_%hd142277%_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _%hd142274%_)))
               (_%body142279%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self142273%_ _%body142275%_)))
               (_%body142311%_
                (let* ((_%body142280142288%_ _%body142279%_)
                       (_%else142282142296%_
                        (lambda () (cons _%body142279%_ '())))
                       (_%K142284142301%_
                        (lambda (_%exprs142299%_) _%exprs142299%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body142280142288%_))
                      (let ((_%hd142285142304%_
                             (let ()
                               (declare (not safe))
                               (##car _%body142280142288%_)))
                            (_%tl142286142306%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body142280142288%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd142285142304%_ 'begin))
                            (let ((_%exprs142309%_ _%tl142286142306%_))
                              (declare (not safe))
                              (_%K142284142301%_ _%exprs142309%_))
                            (let ()
                              (declare (not safe))
                              (_%else142282142296%_))))
                      (let () (declare (not safe)) (_%else142282142296%_))))))
          (cons 'lambda (cons _%hd142277%_ _%body142311%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd142271%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd142271%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self140810%_ _%stx140811%_)
        (letrec ((_%dispatch-case?140813%_
                  (lambda (_%hd141501%_ _%body141502%_)
                    (let* ((_%form141504%_
                            (cons _%hd141501%_ (cons _%body141502%_ '())))
                           (_%__stx143830143831%_ _%form141504%_)
                           (_%g141509141666%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx143830143831%_)))))
                      (let ((_%__kont143832143833%_
                             (lambda (_%L142191%_ _%L142192%_ _%L142193%_)
                               '#t))
                            (_%__kont143838143839%_
                             (lambda (_%L141979%_
                                      _%L141980%_
                                      _%L141981%_
                                      _%L141982%_
                                      _%L141983%_
                                      _%L141984%_)
                               '#t))
                            (_%__kont143844143845%_
                             (lambda (_%L141774%_
                                      _%L141775%_
                                      _%L141776%_
                                      _%L141777%_)
                               '#t))
                            (_%__kont143846143847%_ (lambda () '#f)))
                        (let* ((_%__match143971143972%_
                                (lambda (_%e141628141678%_
                                         _%hd141627141681%_
                                         _%tl141626141683%_
                                         _%e141631141686%_
                                         _%hd141630141689%_
                                         _%tl141629141691%_
                                         _%e141634141694%_
                                         _%hd141633141697%_
                                         _%tl141632141699%_
                                         _%e141637141702%_
                                         _%hd141636141705%_
                                         _%tl141635141707%_
                                         _%e141640141710%_
                                         _%hd141639141713%_
                                         _%tl141638141715%_
                                         _%e141643141718%_
                                         _%hd141642141721%_
                                         _%tl141641141723%_
                                         _%e141646141726%_
                                         _%hd141645141729%_
                                         _%tl141644141731%_
                                         _%e141649141734%_
                                         _%hd141648141737%_
                                         _%tl141647141739%_
                                         _%e141652141742%_
                                         _%hd141651141745%_
                                         _%tl141650141747%_
                                         _%e141655141750%_
                                         _%hd141654141753%_
                                         _%tl141653141755%_
                                         _%e141658141758%_
                                         _%hd141657141761%_
                                         _%tl141656141763%_
                                         _%e141661141766%_
                                         _%hd141660141769%_
                                         _%tl141659141771%_)
                                  (let ((_%L141774%_ _%hd141660141769%_)
                                        (_%L141775%_ _%hd141651141745%_)
                                        (_%L141776%_ _%hd141642141721%_)
                                        (_%L141777%_ _%hd141627141681%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L141777%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L141776%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L141777%_
                                                _%L141774%_))
                                             (let ((__tmp145106
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _%L141775%_
                                                       _%L141777%_))))
                                               (declare (not safe))
                                               (not __tmp145106)))
                                        (_%__kont143844143845%_
                                         _%L141774%_
                                         _%L141775%_
                                         _%L141776%_
                                         _%L141777%_)
                                        (_%__kont143846143847%_)))))
                               (_%__match143943143944%_
                                (lambda (_%e141628141678%_
                                         _%hd141627141681%_
                                         _%tl141626141683%_
                                         _%e141631141686%_
                                         _%hd141630141689%_
                                         _%tl141629141691%_
                                         _%e141634141694%_
                                         _%hd141633141697%_
                                         _%tl141632141699%_
                                         _%e141637141702%_
                                         _%hd141636141705%_
                                         _%tl141635141707%_
                                         _%e141640141710%_
                                         _%hd141639141713%_
                                         _%tl141638141715%_
                                         _%e141643141718%_
                                         _%hd141642141721%_
                                         _%tl141641141723%_
                                         _%e141646141726%_
                                         _%hd141645141729%_
                                         _%tl141644141731%_
                                         _%e141649141734%_
                                         _%hd141648141737%_
                                         _%tl141647141739%_
                                         _%e141652141742%_
                                         _%hd141651141745%_
                                         _%tl141650141747%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141644141731%_))
                                      (let ((_%e141655141750%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141644141731%_))))
                                        (let ((_%tl141653141755%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141655141750%_)))
                                              (_%hd141654141753%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141655141750%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd141654141753%_))
                                              (let ((_%e141658141758%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd141654141753%_))))
                                                (let ((_%tl141656141763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141658141758%_)))
                                                      (_%hd141657141761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141658141758%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd141657141761%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd141657141761%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141656141763%_))
                      (let ((_%e141661141766%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141656141763%_))))
                        (let ((_%tl141659141771%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141661141766%_)))
                              (_%hd141660141769%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141661141766%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141659141771%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl141653141755%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl141629141691%_))
                                      (_%__match143971143972%_
                                       _%e141628141678%_
                                       _%hd141627141681%_
                                       _%tl141626141683%_
                                       _%e141631141686%_
                                       _%hd141630141689%_
                                       _%tl141629141691%_
                                       _%e141634141694%_
                                       _%hd141633141697%_
                                       _%tl141632141699%_
                                       _%e141637141702%_
                                       _%hd141636141705%_
                                       _%tl141635141707%_
                                       _%e141640141710%_
                                       _%hd141639141713%_
                                       _%tl141638141715%_
                                       _%e141643141718%_
                                       _%hd141642141721%_
                                       _%tl141641141723%_
                                       _%e141646141726%_
                                       _%hd141645141729%_
                                       _%tl141644141731%_
                                       _%e141649141734%_
                                       _%hd141648141737%_
                                       _%tl141647141739%_
                                       _%e141652141742%_
                                       _%hd141651141745%_
                                       _%tl141650141747%_
                                       _%e141655141750%_
                                       _%hd141654141753%_
                                       _%tl141653141755%_
                                       _%e141658141758%_
                                       _%hd141657141761%_
                                       _%tl141656141763%_
                                       _%e141661141766%_
                                       _%hd141660141769%_
                                       _%tl141659141771%_)
                                      (_%__kont143846143847%_))
                                  (_%__kont143846143847%_))
                              (_%__kont143846143847%_))))
                      (_%__kont143846143847%_))
                  (_%__kont143846143847%_))
              (_%__kont143846143847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143846143847%_))))
                                      (_%__kont143846143847%_))))
                               (_%__match143873143874%_
                                (lambda (_%e141564141819%_
                                         _%hd141563141822%_
                                         _%tl141562141824%_
                                         _%__splice143840143841%_
                                         _%target141565141827%_
                                         _%tl141567141829%_)
                                  (letrec ((_%loop141568141832%_
                                            (lambda (_%hd141566141835%_
                                                     _%arg141572141837%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141566141835%_))
                                                  (let ((_%e141569141840%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141566141835%_))))
                                                    (let ((_%lp-tl141571141845%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141569141840%_)))
                                                          (_%lp-hd141570141843%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141569141840%_))))
                                                      (let ((__tmp145107
                                                             (cons _%lp-hd141570141843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141572141837%_)))
                (declare (not safe))
                (_%loop141568141832%_ _%lp-tl141571141845%_ __tmp145107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141573141848%_
                                                         (reverse _%arg141572141837%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141562141824%_))
                                                        (let ((_%e141576141851%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141562141824%_))))
                  (let ((_%tl141574141856%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141576141851%_)))
                        (_%hd141575141854%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141576141851%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141575141854%_))
                        (let ((_%e141579141859%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141575141854%_))))
                          (let ((_%tl141577141864%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141579141859%_)))
                                (_%hd141578141862%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141579141859%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141578141862%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141578141862%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141577141864%_))
                                        (let ((_%e141582141867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141577141864%_))))
                                          (let ((_%tl141580141872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141582141867%_)))
                                                (_%hd141581141870%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141582141867%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141581141870%_))
                                                (let ((_%e141585141875%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141581141870%_))))
                                                  (let ((_%tl141583141880%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141585141875%_)))
                                                        (_%hd141584141878%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141585141875%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141584141878%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141584141878%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141583141880%_))
                        (let ((_%e141588141883%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141583141880%_))))
                          (let ((_%tl141586141888%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141588141883%_)))
                                (_%hd141587141886%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141588141883%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141586141888%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141580141872%_))
                                    (let ((_%e141591141891%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141580141872%_))))
                                      (let ((_%tl141589141896%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141591141891%_)))
                                            (_%hd141590141894%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141591141891%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141590141894%_))
                                            (let ((_%e141594141899%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141590141894%_))))
                                              (let ((_%tl141592141904%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141594141899%_)))
                                                    (_%hd141593141902%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141594141899%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141593141902%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141593141902%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141592141904%_))
                                                            (let ((_%e141597141907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141592141904%_))))
                      (let ((_%tl141595141912%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141597141907%_)))
                            (_%hd141596141910%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141597141907%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141595141912%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl141589141896%_))
                                (if (let ((__tmp145108
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl141589141896%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp145108 '1))
                                    (let ((_%__splice143842143843%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141589141896%_
                                              '1))))
                                      (let ((_%tl141600141917%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143842143843%_
                                                '1)))
                                            (_%target141598141915%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143842143843%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141600141917%_))
                                            (let ((_%e141609141920%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141600141917%_))))
                                              (let ((_%tl141607141925%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141609141920%_)))
                                                    (_%hd141608141923%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141609141920%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd141608141923%_))
                                                    (let ((_%e141612141928%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd141608141923%_))))
                                                      (let ((_%tl141610141933%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141612141928%_)))
                    (_%hd141611141931%_
                     (let () (declare (not safe)) (##car _%e141612141928%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd141611141931%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd141611141931%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl141610141933%_))
                            (let ((_%e141615141936%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl141610141933%_))))
                              (let ((_%tl141613141941%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141615141936%_)))
                                    (_%hd141614141939%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141615141936%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl141613141941%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141607141925%_))
                                        (letrec ((_%loop141601141944%_
                                                  (lambda (_%hd141599141947%_
                                                           _%xarg141605141949%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd141599141947%_))
                                                        (let ((_%e141602141952%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd141599141947%_))))
                  (let ((_%lp-tl141604141957%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141602141952%_)))
                        (_%lp-hd141603141955%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141602141952%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd141603141955%_))
                        (let ((_%e141618141960%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd141603141955%_))))
                          (let ((_%tl141616141965%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141618141960%_)))
                                (_%hd141617141963%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141618141960%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141617141963%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd141617141963%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141616141965%_))
                                        (let ((_%e141621141968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141616141965%_))))
                                          (let ((_%tl141619141973%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141621141968%_)))
                                                (_%hd141620141971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141621141968%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141619141973%_))
                                                (let ((__tmp145109
                                                       (cons _%hd141620141971%_
                                                             _%xarg141605141949%_)))
                                                  (declare (not safe))
                                                  (_%loop141601141944%_
                                                   _%lp-tl141604141957%_
                                                   __tmp145109))
                                                (_%__match143943143944%_
                                                 _%e141564141819%_
                                                 _%hd141563141822%_
                                                 _%tl141562141824%_
                                                 _%e141576141851%_
                                                 _%hd141575141854%_
                                                 _%tl141574141856%_
                                                 _%e141579141859%_
                                                 _%hd141578141862%_
                                                 _%tl141577141864%_
                                                 _%e141582141867%_
                                                 _%hd141581141870%_
                                                 _%tl141580141872%_
                                                 _%e141585141875%_
                                                 _%hd141584141878%_
                                                 _%tl141583141880%_
                                                 _%e141588141883%_
                                                 _%hd141587141886%_
                                                 _%tl141586141888%_
                                                 _%e141591141891%_
                                                 _%hd141590141894%_
                                                 _%tl141589141896%_
                                                 _%e141594141899%_
                                                 _%hd141593141902%_
                                                 _%tl141592141904%_
                                                 _%e141597141907%_
                                                 _%hd141596141910%_
                                                 _%tl141595141912%_))))
                                        (_%__match143943143944%_
                                         _%e141564141819%_
                                         _%hd141563141822%_
                                         _%tl141562141824%_
                                         _%e141576141851%_
                                         _%hd141575141854%_
                                         _%tl141574141856%_
                                         _%e141579141859%_
                                         _%hd141578141862%_
                                         _%tl141577141864%_
                                         _%e141582141867%_
                                         _%hd141581141870%_
                                         _%tl141580141872%_
                                         _%e141585141875%_
                                         _%hd141584141878%_
                                         _%tl141583141880%_
                                         _%e141588141883%_
                                         _%hd141587141886%_
                                         _%tl141586141888%_
                                         _%e141591141891%_
                                         _%hd141590141894%_
                                         _%tl141589141896%_
                                         _%e141594141899%_
                                         _%hd141593141902%_
                                         _%tl141592141904%_
                                         _%e141597141907%_
                                         _%hd141596141910%_
                                         _%tl141595141912%_))
                                    (_%__match143943143944%_
                                     _%e141564141819%_
                                     _%hd141563141822%_
                                     _%tl141562141824%_
                                     _%e141576141851%_
                                     _%hd141575141854%_
                                     _%tl141574141856%_
                                     _%e141579141859%_
                                     _%hd141578141862%_
                                     _%tl141577141864%_
                                     _%e141582141867%_
                                     _%hd141581141870%_
                                     _%tl141580141872%_
                                     _%e141585141875%_
                                     _%hd141584141878%_
                                     _%tl141583141880%_
                                     _%e141588141883%_
                                     _%hd141587141886%_
                                     _%tl141586141888%_
                                     _%e141591141891%_
                                     _%hd141590141894%_
                                     _%tl141589141896%_
                                     _%e141594141899%_
                                     _%hd141593141902%_
                                     _%tl141592141904%_
                                     _%e141597141907%_
                                     _%hd141596141910%_
                                     _%tl141595141912%_))
                                (_%__match143943143944%_
                                 _%e141564141819%_
                                 _%hd141563141822%_
                                 _%tl141562141824%_
                                 _%e141576141851%_
                                 _%hd141575141854%_
                                 _%tl141574141856%_
                                 _%e141579141859%_
                                 _%hd141578141862%_
                                 _%tl141577141864%_
                                 _%e141582141867%_
                                 _%hd141581141870%_
                                 _%tl141580141872%_
                                 _%e141585141875%_
                                 _%hd141584141878%_
                                 _%tl141583141880%_
                                 _%e141588141883%_
                                 _%hd141587141886%_
                                 _%tl141586141888%_
                                 _%e141591141891%_
                                 _%hd141590141894%_
                                 _%tl141589141896%_
                                 _%e141594141899%_
                                 _%hd141593141902%_
                                 _%tl141592141904%_
                                 _%e141597141907%_
                                 _%hd141596141910%_
                                 _%tl141595141912%_))))
                        (_%__match143943143944%_
                         _%e141564141819%_
                         _%hd141563141822%_
                         _%tl141562141824%_
                         _%e141576141851%_
                         _%hd141575141854%_
                         _%tl141574141856%_
                         _%e141579141859%_
                         _%hd141578141862%_
                         _%tl141577141864%_
                         _%e141582141867%_
                         _%hd141581141870%_
                         _%tl141580141872%_
                         _%e141585141875%_
                         _%hd141584141878%_
                         _%tl141583141880%_
                         _%e141588141883%_
                         _%hd141587141886%_
                         _%tl141586141888%_
                         _%e141591141891%_
                         _%hd141590141894%_
                         _%tl141589141896%_
                         _%e141594141899%_
                         _%hd141593141902%_
                         _%tl141592141904%_
                         _%e141597141907%_
                         _%hd141596141910%_
                         _%tl141595141912%_))))
                (let ((_%xarg141606141976%_ (reverse _%xarg141605141949%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141574141856%_))
                      (let ((_%L141979%_ _%hd141614141939%_)
                            (_%L141980%_ _%xarg141606141976%_)
                            (_%L141981%_ _%hd141596141910%_)
                            (_%L141982%_ _%hd141587141886%_)
                            (_%L141983%_ _%tl141567141829%_)
                            (_%L141984%_ _%arg141573141848%_))
                        (if (and (let ((__tmp145110
                                        (let ((__tmp145111
                                               (lambda (_%g142027142030%_
                                                        _%g142028142032%_)
                                                 (cons _%g142027142030%_
                                                       _%g142028142032%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145111
                                           '()
                                           _%L141984%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp145110))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L141983%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L141982%_
                                    'apply))
                                 (let ((__tmp145114
                                        (length (let ((__tmp145115
                                                       (lambda (_%g142034142037%_
                                                                _%g142035142039%_)
                                                         (cons _%g142034142037%_
                                                               _%g142035142039%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145115
                                                   '()
                                                   _%L141984%_))))
                                       (__tmp145112
                                        (length (let ((__tmp145113
                                                       (lambda (_%g142041142044%_
                                                                _%g142042142046%_)
                                                         (cons _%g142041142044%_
                                                               _%g142042142046%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145113
                                                   '()
                                                   _%L141980%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp145114 __tmp145112))
                                 (let ((__tmp145118
                                        (let ((__tmp145119
                                               (lambda (_%g142048142051%_
                                                        _%g142049142053%_)
                                                 (cons _%g142048142051%_
                                                       _%g142049142053%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145119
                                           '()
                                           _%L141984%_)))
                                       (__tmp145116
                                        (let ((__tmp145117
                                               (lambda (_%g142055142058%_
                                                        _%g142056142060%_)
                                                 (cons _%g142055142058%_
                                                       _%g142056142060%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145117
                                           '()
                                           _%L141980%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp145118
                                    __tmp145116))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L141983%_
                                    _%L141979%_))
                                 (let ((__tmp145120
                                        (let ((__tmp145124
                                               (lambda (_%g142062142064%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _%g142062142064%_
                                                    _%L141981%_))))
                                              (__tmp145121
                                               (let ((__tmp145123
                                                      (lambda (_%g142066142069%_
                                                               _%g142067142071%_)
                                                        (cons _%g142066142069%_
                                                              _%g142067142071%_)))
                                                     (__tmp145122
                                                      (cons _%L141983%_ '())))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp145123
                                                  __tmp145122
                                                  _%L141984%_))))
                                          (declare (not safe))
                                          (__find __tmp145124 __tmp145121))))
                                   (declare (not safe))
                                   (not __tmp145120)))
                            (_%__kont143838143839%_
                             _%L141979%_
                             _%L141980%_
                             _%L141981%_
                             _%L141982%_
                             _%L141983%_
                             _%L141984%_)
                            (_%__match143943143944%_
                             _%e141564141819%_
                             _%hd141563141822%_
                             _%tl141562141824%_
                             _%e141576141851%_
                             _%hd141575141854%_
                             _%tl141574141856%_
                             _%e141579141859%_
                             _%hd141578141862%_
                             _%tl141577141864%_
                             _%e141582141867%_
                             _%hd141581141870%_
                             _%tl141580141872%_
                             _%e141585141875%_
                             _%hd141584141878%_
                             _%tl141583141880%_
                             _%e141588141883%_
                             _%hd141587141886%_
                             _%tl141586141888%_
                             _%e141591141891%_
                             _%hd141590141894%_
                             _%tl141589141896%_
                             _%e141594141899%_
                             _%hd141593141902%_
                             _%tl141592141904%_
                             _%e141597141907%_
                             _%hd141596141910%_
                             _%tl141595141912%_)))
                      (_%__match143943143944%_
                       _%e141564141819%_
                       _%hd141563141822%_
                       _%tl141562141824%_
                       _%e141576141851%_
                       _%hd141575141854%_
                       _%tl141574141856%_
                       _%e141579141859%_
                       _%hd141578141862%_
                       _%tl141577141864%_
                       _%e141582141867%_
                       _%hd141581141870%_
                       _%tl141580141872%_
                       _%e141585141875%_
                       _%hd141584141878%_
                       _%tl141583141880%_
                       _%e141588141883%_
                       _%hd141587141886%_
                       _%tl141586141888%_
                       _%e141591141891%_
                       _%hd141590141894%_
                       _%tl141589141896%_
                       _%e141594141899%_
                       _%hd141593141902%_
                       _%tl141592141904%_
                       _%e141597141907%_
                       _%hd141596141910%_
                       _%tl141595141912%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop141601141944%_
                                             _%target141598141915%_
                                             '())))
                                        (_%__match143943143944%_
                                         _%e141564141819%_
                                         _%hd141563141822%_
                                         _%tl141562141824%_
                                         _%e141576141851%_
                                         _%hd141575141854%_
                                         _%tl141574141856%_
                                         _%e141579141859%_
                                         _%hd141578141862%_
                                         _%tl141577141864%_
                                         _%e141582141867%_
                                         _%hd141581141870%_
                                         _%tl141580141872%_
                                         _%e141585141875%_
                                         _%hd141584141878%_
                                         _%tl141583141880%_
                                         _%e141588141883%_
                                         _%hd141587141886%_
                                         _%tl141586141888%_
                                         _%e141591141891%_
                                         _%hd141590141894%_
                                         _%tl141589141896%_
                                         _%e141594141899%_
                                         _%hd141593141902%_
                                         _%tl141592141904%_
                                         _%e141597141907%_
                                         _%hd141596141910%_
                                         _%tl141595141912%_))
                                    (_%__match143943143944%_
                                     _%e141564141819%_
                                     _%hd141563141822%_
                                     _%tl141562141824%_
                                     _%e141576141851%_
                                     _%hd141575141854%_
                                     _%tl141574141856%_
                                     _%e141579141859%_
                                     _%hd141578141862%_
                                     _%tl141577141864%_
                                     _%e141582141867%_
                                     _%hd141581141870%_
                                     _%tl141580141872%_
                                     _%e141585141875%_
                                     _%hd141584141878%_
                                     _%tl141583141880%_
                                     _%e141588141883%_
                                     _%hd141587141886%_
                                     _%tl141586141888%_
                                     _%e141591141891%_
                                     _%hd141590141894%_
                                     _%tl141589141896%_
                                     _%e141594141899%_
                                     _%hd141593141902%_
                                     _%tl141592141904%_
                                     _%e141597141907%_
                                     _%hd141596141910%_
                                     _%tl141595141912%_))))
                            (_%__match143943143944%_
                             _%e141564141819%_
                             _%hd141563141822%_
                             _%tl141562141824%_
                             _%e141576141851%_
                             _%hd141575141854%_
                             _%tl141574141856%_
                             _%e141579141859%_
                             _%hd141578141862%_
                             _%tl141577141864%_
                             _%e141582141867%_
                             _%hd141581141870%_
                             _%tl141580141872%_
                             _%e141585141875%_
                             _%hd141584141878%_
                             _%tl141583141880%_
                             _%e141588141883%_
                             _%hd141587141886%_
                             _%tl141586141888%_
                             _%e141591141891%_
                             _%hd141590141894%_
                             _%tl141589141896%_
                             _%e141594141899%_
                             _%hd141593141902%_
                             _%tl141592141904%_
                             _%e141597141907%_
                             _%hd141596141910%_
                             _%tl141595141912%_))
                        (_%__match143943143944%_
                         _%e141564141819%_
                         _%hd141563141822%_
                         _%tl141562141824%_
                         _%e141576141851%_
                         _%hd141575141854%_
                         _%tl141574141856%_
                         _%e141579141859%_
                         _%hd141578141862%_
                         _%tl141577141864%_
                         _%e141582141867%_
                         _%hd141581141870%_
                         _%tl141580141872%_
                         _%e141585141875%_
                         _%hd141584141878%_
                         _%tl141583141880%_
                         _%e141588141883%_
                         _%hd141587141886%_
                         _%tl141586141888%_
                         _%e141591141891%_
                         _%hd141590141894%_
                         _%tl141589141896%_
                         _%e141594141899%_
                         _%hd141593141902%_
                         _%tl141592141904%_
                         _%e141597141907%_
                         _%hd141596141910%_
                         _%tl141595141912%_))
                    (_%__match143943143944%_
                     _%e141564141819%_
                     _%hd141563141822%_
                     _%tl141562141824%_
                     _%e141576141851%_
                     _%hd141575141854%_
                     _%tl141574141856%_
                     _%e141579141859%_
                     _%hd141578141862%_
                     _%tl141577141864%_
                     _%e141582141867%_
                     _%hd141581141870%_
                     _%tl141580141872%_
                     _%e141585141875%_
                     _%hd141584141878%_
                     _%tl141583141880%_
                     _%e141588141883%_
                     _%hd141587141886%_
                     _%tl141586141888%_
                     _%e141591141891%_
                     _%hd141590141894%_
                     _%tl141589141896%_
                     _%e141594141899%_
                     _%hd141593141902%_
                     _%tl141592141904%_
                     _%e141597141907%_
                     _%hd141596141910%_
                     _%tl141595141912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match143943143944%_
                                                     _%e141564141819%_
                                                     _%hd141563141822%_
                                                     _%tl141562141824%_
                                                     _%e141576141851%_
                                                     _%hd141575141854%_
                                                     _%tl141574141856%_
                                                     _%e141579141859%_
                                                     _%hd141578141862%_
                                                     _%tl141577141864%_
                                                     _%e141582141867%_
                                                     _%hd141581141870%_
                                                     _%tl141580141872%_
                                                     _%e141585141875%_
                                                     _%hd141584141878%_
                                                     _%tl141583141880%_
                                                     _%e141588141883%_
                                                     _%hd141587141886%_
                                                     _%tl141586141888%_
                                                     _%e141591141891%_
                                                     _%hd141590141894%_
                                                     _%tl141589141896%_
                                                     _%e141594141899%_
                                                     _%hd141593141902%_
                                                     _%tl141592141904%_
                                                     _%e141597141907%_
                                                     _%hd141596141910%_
                                                     _%tl141595141912%_))))
                                            (_%__match143943143944%_
                                             _%e141564141819%_
                                             _%hd141563141822%_
                                             _%tl141562141824%_
                                             _%e141576141851%_
                                             _%hd141575141854%_
                                             _%tl141574141856%_
                                             _%e141579141859%_
                                             _%hd141578141862%_
                                             _%tl141577141864%_
                                             _%e141582141867%_
                                             _%hd141581141870%_
                                             _%tl141580141872%_
                                             _%e141585141875%_
                                             _%hd141584141878%_
                                             _%tl141583141880%_
                                             _%e141588141883%_
                                             _%hd141587141886%_
                                             _%tl141586141888%_
                                             _%e141591141891%_
                                             _%hd141590141894%_
                                             _%tl141589141896%_
                                             _%e141594141899%_
                                             _%hd141593141902%_
                                             _%tl141592141904%_
                                             _%e141597141907%_
                                             _%hd141596141910%_
                                             _%tl141595141912%_))))
                                    (_%__match143943143944%_
                                     _%e141564141819%_
                                     _%hd141563141822%_
                                     _%tl141562141824%_
                                     _%e141576141851%_
                                     _%hd141575141854%_
                                     _%tl141574141856%_
                                     _%e141579141859%_
                                     _%hd141578141862%_
                                     _%tl141577141864%_
                                     _%e141582141867%_
                                     _%hd141581141870%_
                                     _%tl141580141872%_
                                     _%e141585141875%_
                                     _%hd141584141878%_
                                     _%tl141583141880%_
                                     _%e141588141883%_
                                     _%hd141587141886%_
                                     _%tl141586141888%_
                                     _%e141591141891%_
                                     _%hd141590141894%_
                                     _%tl141589141896%_
                                     _%e141594141899%_
                                     _%hd141593141902%_
                                     _%tl141592141904%_
                                     _%e141597141907%_
                                     _%hd141596141910%_
                                     _%tl141595141912%_))
                                (_%__match143943143944%_
                                 _%e141564141819%_
                                 _%hd141563141822%_
                                 _%tl141562141824%_
                                 _%e141576141851%_
                                 _%hd141575141854%_
                                 _%tl141574141856%_
                                 _%e141579141859%_
                                 _%hd141578141862%_
                                 _%tl141577141864%_
                                 _%e141582141867%_
                                 _%hd141581141870%_
                                 _%tl141580141872%_
                                 _%e141585141875%_
                                 _%hd141584141878%_
                                 _%tl141583141880%_
                                 _%e141588141883%_
                                 _%hd141587141886%_
                                 _%tl141586141888%_
                                 _%e141591141891%_
                                 _%hd141590141894%_
                                 _%tl141589141896%_
                                 _%e141594141899%_
                                 _%hd141593141902%_
                                 _%tl141592141904%_
                                 _%e141597141907%_
                                 _%hd141596141910%_
                                 _%tl141595141912%_))
                            (_%__kont143846143847%_))))
                    (_%__kont143846143847%_))
                (_%__kont143846143847%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont143846143847%_))))
                                            (_%__kont143846143847%_))))
                                    (_%__kont143846143847%_))
                                (_%__kont143846143847%_))))
                        (_%__kont143846143847%_))
                    (_%__kont143846143847%_))
                (_%__kont143846143847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont143846143847%_))))
                                        (_%__kont143846143847%_))
                                    (_%__kont143846143847%_))
                                (_%__kont143846143847%_))))
                        (_%__kont143846143847%_))))
                (_%__kont143846143847%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141568141832%_
                                       _%target141565141827%_
                                       '())))))
                               (_%__match143861143862%_
                                (lambda (_%e141516142079%_
                                         _%hd141515142082%_
                                         _%tl141514142084%_
                                         _%__splice143834143835%_
                                         _%target141517142087%_
                                         _%tl141519142089%_)
                                  (letrec ((_%loop141520142092%_
                                            (lambda (_%hd141518142095%_
                                                     _%arg141524142097%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141518142095%_))
                                                  (let ((_%e141521142100%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141518142095%_))))
                                                    (let ((_%lp-tl141523142105%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141521142100%_)))
                                                          (_%lp-hd141522142103%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141521142100%_))))
                                                      (let ((__tmp145125
                                                             (cons _%lp-hd141522142103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141524142097%_)))
                (declare (not safe))
                (_%loop141520142092%_ _%lp-tl141523142105%_ __tmp145125))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141525142108%_
                                                         (reverse _%arg141524142097%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141514142084%_))
                                                        (let ((_%e141528142111%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141514142084%_))))
                  (let ((_%tl141526142116%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141528142111%_)))
                        (_%hd141527142114%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141528142111%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141527142114%_))
                        (let ((_%e141531142119%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141527142114%_))))
                          (let ((_%tl141529142124%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141531142119%_)))
                                (_%hd141530142122%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141531142119%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141530142122%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141530142122%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141529142124%_))
                                        (let ((_%e141534142127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141529142124%_))))
                                          (let ((_%tl141532142132%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141534142127%_)))
                                                (_%hd141533142130%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141534142127%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141533142130%_))
                                                (let ((_%e141537142135%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141533142130%_))))
                                                  (let ((_%tl141535142140%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141537142135%_)))
                                                        (_%hd141536142138%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141537142135%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141536142138%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141536142138%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141535142140%_))
                        (let ((_%e141540142143%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141535142140%_))))
                          (let ((_%tl141538142148%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141540142143%_)))
                                (_%hd141539142146%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141540142143%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141538142148%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141532142132%_))
                                    (let ((_%__splice143836143837%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141532142132%_
                                              '0))))
                                      (let ((_%tl141543142153%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143836143837%_
                                                '1)))
                                            (_%target141541142151%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143836143837%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141543142153%_))
                                            (letrec ((_%loop141544142156%_
                                                      (lambda (_%hd141542142159%_
                                                               _%xarg141548142161%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141542142159%_))
                                                            (let ((_%e141545142164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141542142159%_))))
                      (let ((_%lp-tl141547142169%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141545142164%_)))
                            (_%lp-hd141546142167%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141545142164%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141546142167%_))
                            (let ((_%e141552142172%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141546142167%_))))
                              (let ((_%tl141550142177%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141552142172%_)))
                                    (_%hd141551142175%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141552142172%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141551142175%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141551142175%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141550142177%_))
                                            (let ((_%e141555142180%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141550142177%_))))
                                              (let ((_%tl141553142185%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141555142180%_)))
                                                    (_%hd141554142183%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141555142180%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141553142185%_))
                                                    (let ((__tmp145126
                                                           (cons _%hd141554142183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg141548142161%_)))
              (declare (not safe))
              (_%loop141544142156%_ _%lp-tl141547142169%_ __tmp145126))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match143873143874%_
                                                     _%e141516142079%_
                                                     _%hd141515142082%_
                                                     _%tl141514142084%_
                                                     _%__splice143834143835%_
                                                     _%target141517142087%_
                                                     _%tl141519142089%_))))
                                            (_%__match143873143874%_
                                             _%e141516142079%_
                                             _%hd141515142082%_
                                             _%tl141514142084%_
                                             _%__splice143834143835%_
                                             _%target141517142087%_
                                             _%tl141519142089%_))
                                        (_%__match143873143874%_
                                         _%e141516142079%_
                                         _%hd141515142082%_
                                         _%tl141514142084%_
                                         _%__splice143834143835%_
                                         _%target141517142087%_
                                         _%tl141519142089%_))
                                    (_%__match143873143874%_
                                     _%e141516142079%_
                                     _%hd141515142082%_
                                     _%tl141514142084%_
                                     _%__splice143834143835%_
                                     _%target141517142087%_
                                     _%tl141519142089%_))))
                            (_%__match143873143874%_
                             _%e141516142079%_
                             _%hd141515142082%_
                             _%tl141514142084%_
                             _%__splice143834143835%_
                             _%target141517142087%_
                             _%tl141519142089%_))))
                    (let ((_%xarg141549142188%_
                           (reverse _%xarg141548142161%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141526142116%_))
                          (let ((_%L142191%_ _%xarg141549142188%_)
                                (_%L142192%_ _%hd141539142146%_)
                                (_%L142193%_ _%arg141525142108%_))
                            (if (and (let ((__tmp145127
                                            (let ((__tmp145128
                                                   (lambda (_%g142221142224%_
                                                            _%g142222142226%_)
                                                     (cons _%g142221142224%_
                                                           _%g142222142226%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145128
                                               '()
                                               _%L142193%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp145127))
                                     (let ((__tmp145131
                                            (length (let ((__tmp145132
                                                           (lambda (_%g142228142231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142229142233%_)
                     (cons _%g142228142231%_ _%g142229142233%_))))
              (declare (not safe))
              (__foldr1 __tmp145132 '() _%L142193%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp145129
                                            (length (let ((__tmp145130
                                                           (lambda (_%g142235142238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142236142240%_)
                     (cons _%g142235142238%_ _%g142236142240%_))))
              (declare (not safe))
              (__foldr1 __tmp145130 '() _%L142191%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145131 __tmp145129))
                                     (let ((__tmp145135
                                            (let ((__tmp145136
                                                   (lambda (_%g142242142245%_
                                                            _%g142243142247%_)
                                                     (cons _%g142242142245%_
                                                           _%g142243142247%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145136
                                               '()
                                               _%L142193%_)))
                                           (__tmp145133
                                            (let ((__tmp145134
                                                   (lambda (_%g142249142252%_
                                                            _%g142250142254%_)
                                                     (cons _%g142249142252%_
                                                           _%g142250142254%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145134
                                               '()
                                               _%L142191%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp145135
                                        __tmp145133))
                                     (let ((__tmp145137
                                            (let ((__tmp145140
                                                   (lambda (_%g142256142258%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g142256142258%_
                                                        _%L142192%_))))
                                                  (__tmp145138
                                                   (let ((__tmp145139
                                                          (lambda (_%g142260142263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g142261142265%_)
                    (cons _%g142260142263%_ _%g142261142265%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp145139
                                                      '()
                                                      _%L142193%_))))
                                              (declare (not safe))
                                              (__find __tmp145140
                                                      __tmp145138))))
                                       (declare (not safe))
                                       (not __tmp145137)))
                                (_%__kont143832143833%_
                                 _%L142191%_
                                 _%L142192%_
                                 _%L142193%_)
                                (_%__match143873143874%_
                                 _%e141516142079%_
                                 _%hd141515142082%_
                                 _%tl141514142084%_
                                 _%__splice143834143835%_
                                 _%target141517142087%_
                                 _%tl141519142089%_)))
                          (_%__match143873143874%_
                           _%e141516142079%_
                           _%hd141515142082%_
                           _%tl141514142084%_
                           _%__splice143834143835%_
                           _%target141517142087%_
                           _%tl141519142089%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop141544142156%_
                                                 _%target141541142151%_
                                                 '())))
                                            (_%__match143873143874%_
                                             _%e141516142079%_
                                             _%hd141515142082%_
                                             _%tl141514142084%_
                                             _%__splice143834143835%_
                                             _%target141517142087%_
                                             _%tl141519142089%_))))
                                    (_%__match143873143874%_
                                     _%e141516142079%_
                                     _%hd141515142082%_
                                     _%tl141514142084%_
                                     _%__splice143834143835%_
                                     _%target141517142087%_
                                     _%tl141519142089%_))
                                (_%__match143873143874%_
                                 _%e141516142079%_
                                 _%hd141515142082%_
                                 _%tl141514142084%_
                                 _%__splice143834143835%_
                                 _%target141517142087%_
                                 _%tl141519142089%_))))
                        (_%__match143873143874%_
                         _%e141516142079%_
                         _%hd141515142082%_
                         _%tl141514142084%_
                         _%__splice143834143835%_
                         _%target141517142087%_
                         _%tl141519142089%_))
                    (_%__match143873143874%_
                     _%e141516142079%_
                     _%hd141515142082%_
                     _%tl141514142084%_
                     _%__splice143834143835%_
                     _%target141517142087%_
                     _%tl141519142089%_))
                (_%__match143873143874%_
                 _%e141516142079%_
                 _%hd141515142082%_
                 _%tl141514142084%_
                 _%__splice143834143835%_
                 _%target141517142087%_
                 _%tl141519142089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match143873143874%_
                                                 _%e141516142079%_
                                                 _%hd141515142082%_
                                                 _%tl141514142084%_
                                                 _%__splice143834143835%_
                                                 _%target141517142087%_
                                                 _%tl141519142089%_))))
                                        (_%__match143873143874%_
                                         _%e141516142079%_
                                         _%hd141515142082%_
                                         _%tl141514142084%_
                                         _%__splice143834143835%_
                                         _%target141517142087%_
                                         _%tl141519142089%_))
                                    (_%__match143873143874%_
                                     _%e141516142079%_
                                     _%hd141515142082%_
                                     _%tl141514142084%_
                                     _%__splice143834143835%_
                                     _%target141517142087%_
                                     _%tl141519142089%_))
                                (_%__match143873143874%_
                                 _%e141516142079%_
                                 _%hd141515142082%_
                                 _%tl141514142084%_
                                 _%__splice143834143835%_
                                 _%target141517142087%_
                                 _%tl141519142089%_))))
                        (_%__match143873143874%_
                         _%e141516142079%_
                         _%hd141515142082%_
                         _%tl141514142084%_
                         _%__splice143834143835%_
                         _%target141517142087%_
                         _%tl141519142089%_))))
                (_%__match143873143874%_
                 _%e141516142079%_
                 _%hd141515142082%_
                 _%tl141514142084%_
                 _%__splice143834143835%_
                 _%target141517142087%_
                 _%tl141519142089%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141520142092%_
                                       _%target141517142087%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx143830143831%_))
                              (let ((_%e141516142079%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx143830143831%_))))
                                (let ((_%tl141514142084%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141516142079%_)))
                                      (_%hd141515142082%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141516142079%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141515142082%_))
                                      (let ((_%__splice143834143835%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141515142082%_
                                                '0))))
                                        (let ((_%tl141519142089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143834143835%_
                                                  '1)))
                                              (_%target141517142087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143834143835%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141519142089%_))
                                              (_%__match143861143862%_
                                               _%e141516142079%_
                                               _%hd141515142082%_
                                               _%tl141514142084%_
                                               _%__splice143834143835%_
                                               _%target141517142087%_
                                               _%tl141519142089%_)
                                              (_%__match143873143874%_
                                               _%e141516142079%_
                                               _%hd141515142082%_
                                               _%tl141514142084%_
                                               _%__splice143834143835%_
                                               _%target141517142087%_
                                               _%tl141519142089%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141514142084%_))
                                          (let ((_%e141631141686%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141514142084%_))))
                                            (let ((_%tl141629141691%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141631141686%_)))
                                                  (_%hd141630141689%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141631141686%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141630141689%_))
                                                  (let ((_%e141634141694%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141630141689%_))))
                                                    (let ((_%tl141632141699%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141634141694%_)))
                                                          (_%hd141633141697%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141634141694%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141633141697%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141633141697%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141632141699%_))
                          (let ((_%e141637141702%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141632141699%_))))
                            (let ((_%tl141635141707%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141637141702%_)))
                                  (_%hd141636141705%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141637141702%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141636141705%_))
                                  (let ((_%e141640141710%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141636141705%_))))
                                    (let ((_%tl141638141715%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141640141710%_)))
                                          (_%hd141639141713%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141640141710%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141639141713%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141639141713%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141638141715%_))
                                                  (let ((_%e141643141718%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141638141715%_))))
                                                    (let ((_%tl141641141723%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141643141718%_)))
                                                          (_%hd141642141721%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141643141718%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141641141723%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141635141707%_))
                      (let ((_%e141646141726%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141635141707%_))))
                        (let ((_%tl141644141731%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141646141726%_)))
                              (_%hd141645141729%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141646141726%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141645141729%_))
                              (let ((_%e141649141734%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141645141729%_))))
                                (let ((_%tl141647141739%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141649141734%_)))
                                      (_%hd141648141737%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141649141734%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141648141737%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141648141737%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141647141739%_))
                                              (let ((_%e141652141742%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141647141739%_))))
                                                (let ((_%tl141650141747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141652141742%_)))
                                                      (_%hd141651141745%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141652141742%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141650141747%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141644141731%_))
                                                          (let ((_%e141655141750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141644141731%_))))
                    (let ((_%tl141653141755%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141655141750%_)))
                          (_%hd141654141753%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141655141750%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd141654141753%_))
                          (let ((_%e141658141758%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd141654141753%_))))
                            (let ((_%tl141656141763%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141658141758%_)))
                                  (_%hd141657141761%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141658141758%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd141657141761%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd141657141761%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141656141763%_))
                                          (let ((_%e141661141766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141656141763%_))))
                                            (let ((_%tl141659141771%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141661141766%_)))
                                                  (_%hd141660141769%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141661141766%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141659141771%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141653141755%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141629141691%_))
                                                          (_%__match143971143972%_
                                                           _%e141516142079%_
                                                           _%hd141515142082%_
                                                           _%tl141514142084%_
                                                           _%e141631141686%_
                                                           _%hd141630141689%_
                                                           _%tl141629141691%_
                                                           _%e141634141694%_
                                                           _%hd141633141697%_
                                                           _%tl141632141699%_
                                                           _%e141637141702%_
                                                           _%hd141636141705%_
                                                           _%tl141635141707%_
                                                           _%e141640141710%_
                                                           _%hd141639141713%_
                                                           _%tl141638141715%_
                                                           _%e141643141718%_
                                                           _%hd141642141721%_
                                                           _%tl141641141723%_
                                                           _%e141646141726%_
                                                           _%hd141645141729%_
                                                           _%tl141644141731%_
                                                           _%e141649141734%_
                                                           _%hd141648141737%_
                                                           _%tl141647141739%_
                                                           _%e141652141742%_
                                                           _%hd141651141745%_
                                                           _%tl141650141747%_
                                                           _%e141655141750%_
                                                           _%hd141654141753%_
                                                           _%tl141653141755%_
                                                           _%e141658141758%_
                                                           _%hd141657141761%_
                                                           _%tl141656141763%_
                                                           _%e141661141766%_
                                                           _%hd141660141769%_
                                                           _%tl141659141771%_)
                                                          (_%__kont143846143847%_))
                                                      (_%__kont143846143847%_))
                                                  (_%__kont143846143847%_))))
                                          (_%__kont143846143847%_))
                                      (_%__kont143846143847%_))
                                  (_%__kont143846143847%_))))
                          (_%__kont143846143847%_))))
                  (_%__kont143846143847%_))
              (_%__kont143846143847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143846143847%_))
                                          (_%__kont143846143847%_))
                                      (_%__kont143846143847%_))))
                              (_%__kont143846143847%_))))
                      (_%__kont143846143847%_))
                  (_%__kont143846143847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143846143847%_))
                                              (_%__kont143846143847%_))
                                          (_%__kont143846143847%_))))
                                  (_%__kont143846143847%_))))
                          (_%__kont143846143847%_))
                      (_%__kont143846143847%_))
                  (_%__kont143846143847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143846143847%_))))
                                          (_%__kont143846143847%_)))))
                              (_%__kont143846143847%_)))))))
                 (_%dispatch-case-e140814%_
                  (lambda (_%hd140965%_ _%body140966%_)
                    (let* ((_%form140968%_
                            (cons _%hd140965%_ (cons _%body140966%_ '())))
                           (_%__stx143974143975%_ _%form140968%_)
                           (_%g140972141096%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx143974143975%_)))))
                      (let ((_%__kont143976143977%_
                             (lambda (_%L141467%_ _%L141468%_ _%L141469%_)
                               (let ((__tmp145141
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141468%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140810%_
                                  __tmp145141))))
                            (_%__kont143982143983%_
                             (lambda (_%L141315%_
                                      _%L141316%_
                                      _%L141317%_
                                      _%L141318%_)
                               (let ((__tmp145142
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141315%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140810%_
                                  __tmp145142))))
                            (_%__kont143986143987%_
                             (lambda (_%L141181%_ _%L141182%_ _%L141183%_)
                               (let ((__tmp145143
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141181%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140810%_
                                  __tmp145143)))))
                        (let* ((_%__match144083144084%_
                                (lambda (_%e141064141101%_
                                         _%hd141063141104%_
                                         _%tl141062141106%_
                                         _%e141067141109%_
                                         _%hd141066141112%_
                                         _%tl141065141114%_
                                         _%e141070141117%_
                                         _%hd141069141120%_
                                         _%tl141068141122%_
                                         _%e141073141125%_
                                         _%hd141072141128%_
                                         _%tl141071141130%_
                                         _%e141076141133%_
                                         _%hd141075141136%_
                                         _%tl141074141138%_
                                         _%e141079141141%_
                                         _%hd141078141144%_
                                         _%tl141077141146%_
                                         _%e141082141149%_
                                         _%hd141081141152%_
                                         _%tl141080141154%_
                                         _%e141085141157%_
                                         _%hd141084141160%_
                                         _%tl141083141162%_
                                         _%e141088141165%_
                                         _%hd141087141168%_
                                         _%tl141086141170%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141080141154%_))
                                      (let ((_%e141091141173%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141080141154%_))))
                                        (let ((_%tl141089141178%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141091141173%_)))
                                              (_%hd141090141176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141091141173%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141089141178%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141065141114%_))
                                                  (_%__kont143986143987%_
                                                   _%hd141087141168%_
                                                   _%hd141078141144%_
                                                   _%hd141063141104%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140972141096%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g140972141096%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g140972141096%_)))))
                               (_%__match144013144014%_
                                (lambda (_%e141025141219%_
                                         _%hd141024141222%_
                                         _%tl141023141224%_
                                         _%__splice143984143985%_
                                         _%target141026141227%_
                                         _%tl141028141229%_)
                                  (letrec ((_%loop141029141232%_
                                            (lambda (_%hd141027141235%_
                                                     _%arg141033141237%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141027141235%_))
                                                  (let ((_%e141030141240%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141027141235%_))))
                                                    (let ((_%lp-tl141032141245%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141030141240%_)))
                                                          (_%lp-hd141031141243%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141030141240%_))))
                                                      (let ((__tmp145144
                                                             (cons _%lp-hd141031141243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141033141237%_)))
                (declare (not safe))
                (_%loop141029141232%_ _%lp-tl141032141245%_ __tmp145144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141034141248%_
                                                         (reverse _%arg141033141237%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141023141224%_))
                                                        (let ((_%e141037141251%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141023141224%_))))
                  (let ((_%tl141035141256%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141037141251%_)))
                        (_%hd141036141254%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141037141251%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141036141254%_))
                        (let ((_%e141040141259%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141036141254%_))))
                          (let ((_%tl141038141264%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141040141259%_)))
                                (_%hd141039141262%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141040141259%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141039141262%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141039141262%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141038141264%_))
                                        (let ((_%e141043141267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141038141264%_))))
                                          (let ((_%tl141041141272%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141043141267%_)))
                                                (_%hd141042141270%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141043141267%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141042141270%_))
                                                (let ((_%e141046141275%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141042141270%_))))
                                                  (let ((_%tl141044141280%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141046141275%_)))
                                                        (_%hd141045141278%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141046141275%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141045141278%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141045141278%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141044141280%_))
                        (let ((_%e141049141283%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141044141280%_))))
                          (let ((_%tl141047141288%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141049141283%_)))
                                (_%hd141048141286%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141049141283%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141047141288%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141041141272%_))
                                    (let ((_%e141052141291%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141041141272%_))))
                                      (let ((_%tl141050141296%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141052141291%_)))
                                            (_%hd141051141294%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141052141291%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141051141294%_))
                                            (let ((_%e141055141299%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141051141294%_))))
                                              (let ((_%tl141053141304%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141055141299%_)))
                                                    (_%hd141054141302%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141055141299%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141054141302%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141054141302%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141053141304%_))
                                                            (let ((_%e141058141307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141053141304%_))))
                      (let ((_%tl141056141312%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141058141307%_)))
                            (_%hd141057141310%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141058141307%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141056141312%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141035141256%_))
                                (_%__kont143982143983%_
                                 _%hd141057141310%_
                                 _%hd141048141286%_
                                 _%tl141028141229%_
                                 _%arg141034141248%_)
                                (_%__match144083144084%_
                                 _%e141025141219%_
                                 _%hd141024141222%_
                                 _%tl141023141224%_
                                 _%e141037141251%_
                                 _%hd141036141254%_
                                 _%tl141035141256%_
                                 _%e141040141259%_
                                 _%hd141039141262%_
                                 _%tl141038141264%_
                                 _%e141043141267%_
                                 _%hd141042141270%_
                                 _%tl141041141272%_
                                 _%e141046141275%_
                                 _%hd141045141278%_
                                 _%tl141044141280%_
                                 _%e141049141283%_
                                 _%hd141048141286%_
                                 _%tl141047141288%_
                                 _%e141052141291%_
                                 _%hd141051141294%_
                                 _%tl141050141296%_
                                 _%e141055141299%_
                                 _%hd141054141302%_
                                 _%tl141053141304%_
                                 _%e141058141307%_
                                 _%hd141057141310%_
                                 _%tl141056141312%_))
                            (let ()
                              (declare (not safe))
                              (_%g140972141096%_)))))
                    (let () (declare (not safe)) (_%g140972141096%_)))
                (let () (declare (not safe)) (_%g140972141096%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g140972141096%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g140972141096%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g140972141096%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g140972141096%_)))))
                        (let () (declare (not safe)) (_%g140972141096%_)))
                    (let () (declare (not safe)) (_%g140972141096%_)))
                (let () (declare (not safe)) (_%g140972141096%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140972141096%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140972141096%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g140972141096%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g140972141096%_)))))
                        (let () (declare (not safe)) (_%g140972141096%_)))))
                (let () (declare (not safe)) (_%g140972141096%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141029141232%_
                                       _%target141026141227%_
                                       '())))))
                               (_%__match144001144002%_
                                (lambda (_%e140979141355%_
                                         _%hd140978141358%_
                                         _%tl140977141360%_
                                         _%__splice143978143979%_
                                         _%target140980141363%_
                                         _%tl140982141365%_)
                                  (letrec ((_%loop140983141368%_
                                            (lambda (_%hd140981141371%_
                                                     _%arg140987141373%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd140981141371%_))
                                                  (let ((_%e140984141376%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd140981141371%_))))
                                                    (let ((_%lp-tl140986141381%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140984141376%_)))
                                                          (_%lp-hd140985141379%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140984141376%_))))
                                                      (let ((__tmp145145
                                                             (cons _%lp-hd140985141379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg140987141373%_)))
                (declare (not safe))
                (_%loop140983141368%_ _%lp-tl140986141381%_ __tmp145145))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg140988141384%_
                                                         (reverse _%arg140987141373%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140977141360%_))
                                                        (let ((_%e140991141387%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl140977141360%_))))
                  (let ((_%tl140989141392%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140991141387%_)))
                        (_%hd140990141390%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140991141387%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140990141390%_))
                        (let ((_%e140994141395%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd140990141390%_))))
                          (let ((_%tl140992141400%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140994141395%_)))
                                (_%hd140993141398%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140994141395%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd140993141398%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd140993141398%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140992141400%_))
                                        (let ((_%e140997141403%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140992141400%_))))
                                          (let ((_%tl140995141408%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140997141403%_)))
                                                (_%hd140996141406%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140997141403%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140996141406%_))
                                                (let ((_%e141000141411%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140996141406%_))))
                                                  (let ((_%tl140998141416%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141000141411%_)))
                                                        (_%hd140999141414%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141000141411%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd140999141414%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd140999141414%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl140998141416%_))
                        (let ((_%e141003141419%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl140998141416%_))))
                          (let ((_%tl141001141424%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141003141419%_)))
                                (_%hd141002141422%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141003141419%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141001141424%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl140995141408%_))
                                    (let ((_%__splice143980143981%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl140995141408%_
                                              '0))))
                                      (let ((_%tl141006141429%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143980143981%_
                                                '1)))
                                            (_%target141004141427%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143980143981%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141006141429%_))
                                            (letrec ((_%loop141007141432%_
                                                      (lambda (_%hd141005141435%_
                                                               _%xarg141011141437%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141005141435%_))
                                                            (let ((_%e141008141440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141005141435%_))))
                      (let ((_%lp-tl141010141445%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141008141440%_)))
                            (_%lp-hd141009141443%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141008141440%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141009141443%_))
                            (let ((_%e141015141448%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141009141443%_))))
                              (let ((_%tl141013141453%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141015141448%_)))
                                    (_%hd141014141451%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141015141448%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141014141451%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141014141451%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141013141453%_))
                                            (let ((_%e141018141456%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141013141453%_))))
                                              (let ((_%tl141016141461%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141018141456%_)))
                                                    (_%hd141017141459%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141018141456%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141016141461%_))
                                                    (let ((__tmp145146
                                                           (cons _%hd141017141459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg141011141437%_)))
              (declare (not safe))
              (_%loop141007141432%_ _%lp-tl141010141445%_ __tmp145146))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match144013144014%_
                                                     _%e140979141355%_
                                                     _%hd140978141358%_
                                                     _%tl140977141360%_
                                                     _%__splice143978143979%_
                                                     _%target140980141363%_
                                                     _%tl140982141365%_))))
                                            (_%__match144013144014%_
                                             _%e140979141355%_
                                             _%hd140978141358%_
                                             _%tl140977141360%_
                                             _%__splice143978143979%_
                                             _%target140980141363%_
                                             _%tl140982141365%_))
                                        (_%__match144013144014%_
                                         _%e140979141355%_
                                         _%hd140978141358%_
                                         _%tl140977141360%_
                                         _%__splice143978143979%_
                                         _%target140980141363%_
                                         _%tl140982141365%_))
                                    (_%__match144013144014%_
                                     _%e140979141355%_
                                     _%hd140978141358%_
                                     _%tl140977141360%_
                                     _%__splice143978143979%_
                                     _%target140980141363%_
                                     _%tl140982141365%_))))
                            (_%__match144013144014%_
                             _%e140979141355%_
                             _%hd140978141358%_
                             _%tl140977141360%_
                             _%__splice143978143979%_
                             _%target140980141363%_
                             _%tl140982141365%_))))
                    (let ((_%xarg141012141464%_
                           (reverse _%xarg141011141437%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl140989141392%_))
                          (_%__kont143976143977%_
                           _%xarg141012141464%_
                           _%hd141002141422%_
                           _%arg140988141384%_)
                          (_%__match144013144014%_
                           _%e140979141355%_
                           _%hd140978141358%_
                           _%tl140977141360%_
                           _%__splice143978143979%_
                           _%target140980141363%_
                           _%tl140982141365%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop141007141432%_
                                                 _%target141004141427%_
                                                 '())))
                                            (_%__match144013144014%_
                                             _%e140979141355%_
                                             _%hd140978141358%_
                                             _%tl140977141360%_
                                             _%__splice143978143979%_
                                             _%target140980141363%_
                                             _%tl140982141365%_))))
                                    (_%__match144013144014%_
                                     _%e140979141355%_
                                     _%hd140978141358%_
                                     _%tl140977141360%_
                                     _%__splice143978143979%_
                                     _%target140980141363%_
                                     _%tl140982141365%_))
                                (_%__match144013144014%_
                                 _%e140979141355%_
                                 _%hd140978141358%_
                                 _%tl140977141360%_
                                 _%__splice143978143979%_
                                 _%target140980141363%_
                                 _%tl140982141365%_))))
                        (_%__match144013144014%_
                         _%e140979141355%_
                         _%hd140978141358%_
                         _%tl140977141360%_
                         _%__splice143978143979%_
                         _%target140980141363%_
                         _%tl140982141365%_))
                    (_%__match144013144014%_
                     _%e140979141355%_
                     _%hd140978141358%_
                     _%tl140977141360%_
                     _%__splice143978143979%_
                     _%target140980141363%_
                     _%tl140982141365%_))
                (_%__match144013144014%_
                 _%e140979141355%_
                 _%hd140978141358%_
                 _%tl140977141360%_
                 _%__splice143978143979%_
                 _%target140980141363%_
                 _%tl140982141365%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match144013144014%_
                                                 _%e140979141355%_
                                                 _%hd140978141358%_
                                                 _%tl140977141360%_
                                                 _%__splice143978143979%_
                                                 _%target140980141363%_
                                                 _%tl140982141365%_))))
                                        (_%__match144013144014%_
                                         _%e140979141355%_
                                         _%hd140978141358%_
                                         _%tl140977141360%_
                                         _%__splice143978143979%_
                                         _%target140980141363%_
                                         _%tl140982141365%_))
                                    (_%__match144013144014%_
                                     _%e140979141355%_
                                     _%hd140978141358%_
                                     _%tl140977141360%_
                                     _%__splice143978143979%_
                                     _%target140980141363%_
                                     _%tl140982141365%_))
                                (_%__match144013144014%_
                                 _%e140979141355%_
                                 _%hd140978141358%_
                                 _%tl140977141360%_
                                 _%__splice143978143979%_
                                 _%target140980141363%_
                                 _%tl140982141365%_))))
                        (_%__match144013144014%_
                         _%e140979141355%_
                         _%hd140978141358%_
                         _%tl140977141360%_
                         _%__splice143978143979%_
                         _%target140980141363%_
                         _%tl140982141365%_))))
                (_%__match144013144014%_
                 _%e140979141355%_
                 _%hd140978141358%_
                 _%tl140977141360%_
                 _%__splice143978143979%_
                 _%target140980141363%_
                 _%tl140982141365%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop140983141368%_
                                       _%target140980141363%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx143974143975%_))
                              (let ((_%e140979141355%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx143974143975%_))))
                                (let ((_%tl140977141360%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140979141355%_)))
                                      (_%hd140978141358%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140979141355%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd140978141358%_))
                                      (let ((_%__splice143978143979%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd140978141358%_
                                                '0))))
                                        (let ((_%tl140982141365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143978143979%_
                                                  '1)))
                                              (_%target140980141363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143978143979%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140982141365%_))
                                              (_%__match144001144002%_
                                               _%e140979141355%_
                                               _%hd140978141358%_
                                               _%tl140977141360%_
                                               _%__splice143978143979%_
                                               _%target140980141363%_
                                               _%tl140982141365%_)
                                              (_%__match144013144014%_
                                               _%e140979141355%_
                                               _%hd140978141358%_
                                               _%tl140977141360%_
                                               _%__splice143978143979%_
                                               _%target140980141363%_
                                               _%tl140982141365%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl140977141360%_))
                                          (let ((_%e141067141109%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl140977141360%_))))
                                            (let ((_%tl141065141114%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141067141109%_)))
                                                  (_%hd141066141112%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141067141109%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141066141112%_))
                                                  (let ((_%e141070141117%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141066141112%_))))
                                                    (let ((_%tl141068141122%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141070141117%_)))
                                                          (_%hd141069141120%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141070141117%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141069141120%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141069141120%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141068141122%_))
                          (let ((_%e141073141125%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141068141122%_))))
                            (let ((_%tl141071141130%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141073141125%_)))
                                  (_%hd141072141128%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141073141125%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141072141128%_))
                                  (let ((_%e141076141133%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141072141128%_))))
                                    (let ((_%tl141074141138%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141076141133%_)))
                                          (_%hd141075141136%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141076141133%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141075141136%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141075141136%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141074141138%_))
                                                  (let ((_%e141079141141%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141074141138%_))))
                                                    (let ((_%tl141077141146%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141079141141%_)))
                                                          (_%hd141078141144%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141079141141%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141077141146%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141071141130%_))
                      (let ((_%e141082141149%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141071141130%_))))
                        (let ((_%tl141080141154%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141082141149%_)))
                              (_%hd141081141152%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141082141149%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141081141152%_))
                              (let ((_%e141085141157%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141081141152%_))))
                                (let ((_%tl141083141162%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141085141157%_)))
                                      (_%hd141084141160%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141085141157%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141084141160%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141084141160%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141083141162%_))
                                              (let ((_%e141088141165%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141083141162%_))))
                                                (let ((_%tl141086141170%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141088141165%_)))
                                                      (_%hd141087141168%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141088141165%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141086141170%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141080141154%_))
                                                          (let ((_%e141091141173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141080141154%_))))
                    (let ((_%tl141089141178%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141091141173%_)))
                          (_%hd141090141176%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141091141173%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141089141178%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141065141114%_))
                              (_%__kont143986143987%_
                               _%hd141087141168%_
                               _%hd141078141144%_
                               _%hd140978141358%_)
                              (let ()
                                (declare (not safe))
                                (_%g140972141096%_)))
                          (let () (declare (not safe)) (_%g140972141096%_)))))
                  (let () (declare (not safe)) (_%g140972141096%_)))
              (let () (declare (not safe)) (_%g140972141096%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g140972141096%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140972141096%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g140972141096%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g140972141096%_)))))
                      (let () (declare (not safe)) (_%g140972141096%_)))
                  (let () (declare (not safe)) (_%g140972141096%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140972141096%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g140972141096%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140972141096%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g140972141096%_)))))
                          (let () (declare (not safe)) (_%g140972141096%_)))
                      (let () (declare (not safe)) (_%g140972141096%_)))
                  (let () (declare (not safe)) (_%g140972141096%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140972141096%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140972141096%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g140972141096%_))))))))
                 (_%generate1140815%_
                  (lambda (_%args140950%_
                           _%arglen140951%_
                           _%hd140952%_
                           _%body140953%_)
                    (let* ((_%len140955%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd140952%_)))
                           (_%condition140960%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd140952%_))
                                (let ()
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#current-compile-decls-unsafe?))
                                      (cons '##fx=
                                            (cons _%arglen140951%_
                                                  (cons _%len140955%_ '())))
                                      (cons 'let
                                            (cons '()
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%arglen140951%_ (cons _%len140955%_ '())))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len140955%_ '0)
                                    (let ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#current-compile-decls-unsafe?))
                                          (cons '##fx>=
                                                (cons _%arglen140951%_
                                                      (cons _%len140955%_
                                                            '())))
                                          (cons 'let
                                                (cons '()
                                                      (cons '(declare
                                                               (not safe))
                                                            (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%arglen140951%_
                                      (cons _%len140955%_ '())))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let () '#t))))
                           (_%dispatch140962%_
                            (if (let ()
                                  (declare (not safe))
                                  (_%dispatch-case?140813%_
                                   _%hd140952%_
                                   _%body140953%_))
                                (let ()
                                  (declare (not safe))
                                  (_%dispatch-case-e140814%_
                                   _%hd140952%_
                                   _%body140953%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _%self140810%_
                                   _%hd140952%_
                                   _%body140953%_)))))
                      (cons _%condition140960%_
                            (cons (cons 'apply
                                        (cons _%dispatch140962%_
                                              (cons _%args140950%_ '())))
                                  '()))))))
          (let* ((_%g140817140845%_
                  (lambda (_%g140818140842%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140818140842%_))))
                 (_%g140816140947%_
                  (lambda (_%g140818140848%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140818140848%_))
                        (let ((_%e140823140850%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140818140848%_))))
                          (let ((_%hd140822140853%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140823140850%_)))
                                (_%tl140821140855%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140823140850%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl140821140855%_))
                                (let ((_g145147_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl140821140855%_
                                          '0))))
                                  (begin
                                    (let ((_g145148_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145147_)
                                                 (##vector-length _g145147_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145148_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145148_)))
                                    (let ((_%target140824140858%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145147_ 0)))
                                          (_%tl140826140860%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145147_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140826140860%_))
                                          (letrec ((_%loop140827140863%_
                                                    (lambda (_%hd140825140866%_
                                                             _%body140831140868%_
                                                             _%hd140832140870%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd140825140866%_))
                                                          (let ((_%e140828140873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd140825140866%_))))
                    (let ((_%lp-hd140829140876%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140828140873%_)))
                          (_%lp-tl140830140878%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140828140873%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd140829140876%_))
                          (let ((_%e140837140881%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd140829140876%_))))
                            (let ((_%hd140836140884%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140837140881%_)))
                                  (_%tl140835140886%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140837140881%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl140835140886%_))
                                  (let ((_%e140840140889%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl140835140886%_))))
                                    (let ((_%hd140839140892%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140840140889%_)))
                                          (_%tl140838140894%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140840140889%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140838140894%_))
                                          (let ((__tmp145150
                                                 (cons _%hd140839140892%_
                                                       _%body140831140868%_))
                                                (__tmp145149
                                                 (cons _%hd140836140884%_
                                                       _%hd140832140870%_)))
                                            (declare (not safe))
                                            (_%loop140827140863%_
                                             _%lp-tl140830140878%_
                                             __tmp145150
                                             __tmp145149))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140817140845%_
                                             _%g140818140848%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g140817140845%_ _%g140818140848%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g140817140845%_ _%g140818140848%_)))))
                  (let ((_%body140833140897%_ (reverse _%body140831140868%_))
                        (_%hd140834140899%_ (reverse _%hd140832140870%_)))
                    ((lambda (_%L140902%_ _%L140903%_)
                       (let ((_%args140922%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen140923%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name140924%_
                              (let ((_%$e140919%_
                                     (let ((__tmp145151
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp145151 _%stx140811%_))))
                                (if _%$e140919%_
                                    _%$e140919%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args140922%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen140923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-decls-unsafe?))
                                     (cons '##length (cons _%args140922%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args140922%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp145155
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name140924%_
                                                                (cons _%args140922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp145152
                                  (map (lambda (_%g140925140928%_
                                                _%g140926140930%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%generate1140815%_
                                            _%args140922%_
                                            _%arglen140923%_
                                            _%g140925140928%_
                                            _%g140926140930%_)))
                                       (let ((__tmp145153
                                              (lambda (_%g140932140935%_
                                                       _%g140933140937%_)
                                                (cons _%g140932140935%_
                                                      _%g140933140937%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145153
                                          '()
                                          _%L140903%_))
                                       (let ((__tmp145154
                                              (lambda (_%g140939140942%_
                                                       _%g140940140944%_)
                                                (cons _%g140939140942%_
                                                      _%g140940140944%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145154
                                          '()
                                          _%L140902%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp145155 __tmp145152)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body140833140897%_
                     _%hd140834140899%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop140827140863%_
                                               _%target140824140858%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140817140845%_
                                             _%g140818140848%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140817140845%_ _%g140818140848%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140817140845%_ _%g140818140848%_))))))
            (declare (not safe))
            (_%g140816140947%_ _%stx140811%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self140081%_ _%stx140082%_ _%compiled-body?140083%_)
        (letrec ((_%generate-simple140085%_
                  (lambda (_%hd140795%_ _%body140796%_)
                    (let ((__tmp145156
                           (let ((__tmp145157
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _%self140081%_
                                     'let
                                     _%hd140795%_
                                     _%body140796%_
                                     _%compiled-body?140083%_))))
                             (declare (not safe))
                             (_%coalesce-let*140087%_ __tmp145157))))
                      (declare (not safe))
                      (_%coalesce-boolean140086%_ __tmp145156))))
                 (_%coalesce-boolean140086%_
                  (lambda (_%code140656%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code140657140683%_ _%code140656%_)
                               (_%else140659140691%_
                                (lambda () _%code140656%_))
                               (_%K140661140728%_
                                (lambda (_%expr2140694%_
                                         _%expr1140695%_
                                         _%id140696%_)
                                  (let* ((_%expr2140697140705%_
                                          _%expr2140694%_)
                                         (_%else140699140713%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1140695%_
                                                        (cons _%expr2140694%_
                                                              '())))))
                                         (_%K140701140718%_
                                          (lambda (_%exprs140716%_)
                                            (cons 'or
                                                  (cons _%expr1140695%_
                                                        _%exprs140716%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2140697140705%_))
                                        (let ((_%hd140702140721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2140697140705%_)))
                                              (_%tl140703140723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2140697140705%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140702140721%_ 'or))
                                              (let ((_%exprs140726%_
                                                     _%tl140703140723%_))
                                                (declare (not safe))
                                                (_%K140701140718%_
                                                 _%exprs140726%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else140699140713%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else140699140713%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code140657140683%_))
                              (let ((_%hd140662140731%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code140657140683%_)))
                                    (_%tl140663140733%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code140657140683%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd140662140731%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl140663140733%_))
                                        (let ((_%hd140664140736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl140663140733%_)))
                                              (_%tl140665140738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl140663140733%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd140664140736%_))
                                              (let ((_%hd140676140741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd140664140736%_)))
                                                    (_%tl140677140743%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd140664140736%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd140676140741%_))
                                                    (let ((_%hd140678140746%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd140676140741%_)))
                                                          (_%tl140679140748%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd140676140741%_))))
                                                      (let ((_%id140751%_
                                                             _%hd140678140746%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl140679140748%_))
                                                            (let ((_%hd140680140753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl140679140748%_)))
                          (_%tl140681140755%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl140679140748%_))))
                      (let ((_%expr1140758%_ _%hd140680140753%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl140681140755%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl140677140743%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl140665140738%_))
                                    (let ((_%hd140666140760%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl140665140738%_)))
                                          (_%tl140667140762%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl140665140738%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd140666140760%_))
                                          (let ((_%hd140668140765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd140666140760%_)))
                                                (_%tl140669140767%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd140666140760%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd140668140765%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl140669140767%_))
                                                    (let ((_%hd140670140770%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl140669140767%_)))
                                                          (_%tl140671140772%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl140669140767%_))))
                                                      (if ((lambda (_%g140774140776%_)
                                                             (eq? _%g140774140776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id140751%_))
                   _%hd140670140770%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl140671140772%_))
                      (let ((_%hd140672140779%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl140671140772%_)))
                            (_%tl140673140781%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl140671140772%_))))
                        (if ((lambda (_%g140783140785%_)
                               (eq? _%g140783140785%_ _%id140751%_))
                             _%hd140672140779%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl140673140781%_))
                                (let ((_%hd140674140788%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl140673140781%_)))
                                      (_%tl140675140790%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl140673140781%_))))
                                  (let ((_%expr2140793%_ _%hd140674140788%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl140675140790%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl140667140762%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K140661140728%_
                                               _%expr2140793%_
                                               _%expr1140758%_
                                               _%id140751%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%else140659140691%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%else140659140691%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%else140659140691%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140659140691%_))))
                      (let () (declare (not safe)) (_%else140659140691%_)))
                  (let () (declare (not safe)) (_%else140659140691%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else140659140691%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else140659140691%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else140659140691%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else140659140691%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else140659140691%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140659140691%_)))))
                    (let () (declare (not safe)) (_%else140659140691%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else140659140691%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%else140659140691%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else140659140691%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%else140659140691%_))))
                              (let ()
                                (declare (not safe))
                                (_%else140659140691%_))))
                        _%code140656%_)))
                 (_%coalesce-let*140087%_
                  (lambda (_%code140389%_)
                    (let* ((_%code140390140454%_ _%code140389%_)
                           (_%else140394140462%_ (lambda () _%code140389%_)))
                      (let ((_%K140436140607%_
                             (lambda (_%body140603%_
                                      _%expr140604%_
                                      _%id140605%_)
                               (cons 'let
                                     (cons (cons (cons _%id140605%_
                                                       (cons _%expr140604%_
                                                             '()))
                                                 '())
                                           _%body140603%_))))
                            (_%K140413140532%_
                             (lambda (_%body140526%_
                                      _%expr2140527%_
                                      _%id2140528%_
                                      _%expr1140529%_
                                      _%id1140530%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140530%_
                                                       (cons _%expr1140529%_
                                                             '()))
                                                 (cons (cons _%id2140528%_
                                                             (cons _%expr2140527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body140526%_))))
                            (_%K140396140471%_
                             (lambda (_%body140466%_
                                      _%bind140467%_
                                      _%expr1140468%_
                                      _%id1140469%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140469%_
                                                       (cons _%expr1140468%_
                                                             '()))
                                                 _%bind140467%_)
                                           _%body140466%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code140390140454%_))
                            (let ((_%tl140438140612%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code140390140454%_)))
                                  (_%hd140437140610%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code140390140454%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140437140610%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl140438140612%_))
                                      (let ((_%tl140440140617%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl140438140612%_)))
                                            (_%hd140439140615%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl140438140612%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%hd140439140615%_))
                                            (let ((_%tl140448140622%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%hd140439140615%_)))
                                                  (_%hd140447140620%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%hd140439140615%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%hd140447140620%_))
                                                  (let ((_%tl140450140627%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%hd140447140620%_)))
                                                        (_%hd140449140625%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd140447140620%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl140450140627%_))
                                                        (let ((_%tl140452140634%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl140450140627%_)))
                      (_%hd140451140632%_
                       (let ()
                         (declare (not safe))
                         (##car _%tl140450140627%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl140452140634%_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl140448140622%_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%tl140440140617%_))
                              (let ((_%tl140442140641%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%tl140440140617%_)))
                                    (_%hd140441140639%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%tl140440140617%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd140441140639%_))
                                    (let ((_%tl140444140646%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd140441140639%_)))
                                          (_%hd140443140644%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd140441140639%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd140443140644%_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%tl140444140646%_))
                                              (let ((_%tl140446140651%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%tl140444140646%_)))
                                                    (_%hd140445140649%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%tl140444140646%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%hd140445140649%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%tl140442140641%_))
                                                        (let ((_%id140630%_
                                                               _%hd140449140625%_)
                                                              (_%expr140637%_
                                                               _%hd140451140632%_)
                                                              (_%body140654%_
                                                               _%tl140446140651%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K140436140607%_
                                                             _%body140654%_
                                                             _%expr140637%_
                                                             _%id140630%_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%else140394140462%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%hd140445140649%_))
                                                        (let ((_%tl140425140581%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%hd140445140649%_)))
                      (_%hd140424140579%_
                       (let ()
                         (declare (not safe))
                         (##car _%hd140445140649%_))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%hd140424140579%_))
                      (let ((_%tl140427140586%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%hd140424140579%_)))
                            (_%hd140426140584%_
                             (let ()
                               (declare (not safe))
                               (##car _%hd140424140579%_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl140427140586%_))
                            (let ((_%tl140429140593%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl140427140586%_)))
                                  (_%hd140428140591%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl140427140586%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl140429140593%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140425140581%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140442140641%_))
                                          (let ((_%id1140555%_
                                                 _%hd140449140625%_)
                                                (_%expr1140562%_
                                                 _%hd140451140632%_)
                                                (_%id2140589%_
                                                 _%hd140426140584%_)
                                                (_%expr2140596%_
                                                 _%hd140428140591%_)
                                                (_%body140598%_
                                                 _%tl140446140651%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K140413140532%_
                                               _%body140598%_
                                               _%expr2140596%_
                                               _%id2140589%_
                                               _%expr1140562%_
                                               _%id1140555%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else140394140462%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else140394140462%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else140394140462%_))))
                            (let ()
                              (declare (not safe))
                              (_%else140394140462%_))))
                      (let () (declare (not safe)) (_%else140394140462%_))))
                (let () (declare (not safe)) (_%else140394140462%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%else140394140462%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140443140644%_
                                                       'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl140444140646%_))
                                                  (let ((_%tl140406140515%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl140444140646%_)))
                                                        (_%hd140405140513%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl140444140646%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%tl140442140641%_))
                                                        (let ((_%id1140494%_
                                                               _%hd140449140625%_)
                                                              (_%expr1140501%_
                                                               _%hd140451140632%_)
                                                              (_%bind140518%_
                                                               _%hd140405140513%_)
                                                              (_%body140520%_
                                                               _%tl140406140515%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K140396140471%_
                                                             _%body140520%_
                                                             _%bind140518%_
                                                             _%expr1140501%_
                                                             _%id1140494%_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%else140394140462%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else140394140462%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%else140394140462%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else140394140462%_))))
                              (let ()
                                (declare (not safe))
                                (_%else140394140462%_)))
                          (let () (declare (not safe)) (_%else140394140462%_)))
                      (let () (declare (not safe)) (_%else140394140462%_))))
                (let () (declare (not safe)) (_%else140394140462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else140394140462%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%else140394140462%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%else140394140462%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else140394140462%_))))
                            (let ()
                              (declare (not safe))
                              (_%else140394140462%_)))))))
                 (_%generate-values140088%_
                  (lambda (_%hd140202%_ _%body140203%_)
                    (let _%lp140205%_ ((_%rest140207%_ _%hd140202%_)
                                       (_%bind140208%_ '())
                                       (_%check140209%_ '())
                                       (_%post140210%_ '()))
                      (let* ((_%__stx144285144286%_ _%rest140207%_)
                             (_%g140213140224%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144285144286%_)))))
                        (let ((_%__kont144287144288%_
                               (lambda (_%L140251%_ _%L140252%_)
                                 (let* ((_%__stx144241144242%_ _%L140252%_)
                                        (_%g140267140292%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144241144242%_)))))
                                   (let ((_%__kont144243144244%_
                                          (lambda (_%L140365%_ _%L140366%_)
                                            (let ((_%eid140380%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140366%_)))
                                                  (_%expr140381%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140081%_
                                                      _%L140365%_))))
                                              (let ((__tmp145158
                                                     (cons (cons _%eid140380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140381%_ '()))
                   _%bind140208%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp140205%_
                                                 _%L140251%_
                                                 __tmp145158
                                                 _%check140209%_
                                                 _%post140210%_)))))
                                         (_%__kont144245144246%_
                                          (lambda (_%L140313%_ _%L140314%_)
                                            (let* ((_%vals140327%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140329%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals140327%_
                                                       _%L140314%_
                                                       _%L140313%_)))
                                                   (_%refs140331%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals140327%_
                                                       _%L140314%_)))
                                                   (_%expr140333%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140081%_
                                                       _%L140313%_))))
                                              (let ((__tmp145161
                                                     (cons (cons _%vals140327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140333%_ '()))
                   _%bind140208%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145160
                                                     (cons _%check-values140329%_
                                                           _%check140209%_))
                                                    (__tmp145159
                                                     (cons _%refs140331%_
                                                           _%post140210%_)))
                                                (declare (not safe))
                                                (_%lp140205%_
                                                 _%L140251%_
                                                 __tmp145161
                                                 __tmp145160
                                                 __tmp145159))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144241144242%_))
                                         (let ((_%e140273140341%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144241144242%_))))
                                           (let ((_%tl140271140346%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140273140341%_)))
                                                 (_%hd140272140344%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140273140341%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140272140344%_))
                                                 (let ((_%e140276140349%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140272140344%_))))
                                                   (let ((_%tl140274140354%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140276140349%_)))
                                                         (_%hd140275140352%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140276140349%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140274140354%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140271140346%_))
                     (let ((_%e140279140357%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140271140346%_))))
                       (let ((_%tl140277140362%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140279140357%_)))
                             (_%hd140278140360%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140279140357%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140277140362%_))
                             (_%__kont144243144244%_
                              _%hd140278140360%_
                              _%hd140275140352%_)
                             (let ()
                               (declare (not safe))
                               (_%g140267140292%_)))))
                     (let () (declare (not safe)) (_%g140267140292%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140271140346%_))
                     (let ((_%e140287140305%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140271140346%_))))
                       (let ((_%tl140285140310%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140287140305%_)))
                             (_%hd140286140308%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140287140305%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140285140310%_))
                             (_%__kont144245144246%_
                              _%hd140286140308%_
                              _%hd140272140344%_)
                             (let ()
                               (declare (not safe))
                               (_%g140267140292%_)))))
                     (let () (declare (not safe)) (_%g140267140292%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140271140346%_))
                                                     (let ((_%e140287140305%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140271140346%_))))
                                                       (let ((_%tl140285140310%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140287140305%_)))
                     (_%hd140286140308%_
                      (let () (declare (not safe)) (##car _%e140287140305%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140285140310%_))
                     (_%__kont144245144246%_
                      _%hd140286140308%_
                      _%hd140272140344%_)
                     (let () (declare (not safe)) (_%g140267140292%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140267140292%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140267140292%_)))))))
                              (_%__kont144289144290%_
                               (lambda ()
                                 (let* ((_%body140231%_
                                         (if _%compiled-body?140083%_
                                             _%body140203%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140081%_
                                                _%body140203%_))))
                                        (_%body140233%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post140089%_
                                            _%post140210%_
                                            _%body140231%_)))
                                        (_%body140235%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check140090%_
                                            _%check140209%_
                                            _%body140233%_))))
                                   (cons 'let
                                         (cons (reverse _%bind140208%_)
                                               (cons _%body140235%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144285144286%_))
                              (let ((_%e140219140243%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144285144286%_))))
                                (let ((_%tl140217140248%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140219140243%_)))
                                      (_%hd140218140246%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140219140243%_))))
                                  (_%__kont144287144288%_
                                   _%tl140217140248%_
                                   _%hd140218140246%_)))
                              (_%__kont144289144290%_)))))))
                 (_%generate-values-post140089%_
                  (lambda (_%post140161%_ _%body140162%_)
                    (let _%lp140164%_ ((_%rest140166%_ _%post140161%_)
                                       (_%body140167%_ _%body140162%_))
                      (let* ((_%rest140168140176%_ _%rest140166%_)
                             (_%else140170140184%_ (lambda () _%body140167%_))
                             (_%K140172140190%_
                              (lambda (_%rest140187%_ _%bind140188%_)
                                (let ((__tmp145162
                                       (cons 'let
                                             (cons _%bind140188%_
                                                   (cons _%body140167%_
                                                         '())))))
                                  (declare (not safe))
                                  (_%lp140164%_ _%rest140187%_ __tmp145162)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140168140176%_))
                            (let ((_%hd140173140193%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140168140176%_)))
                                  (_%tl140174140195%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140168140176%_))))
                              (let* ((_%bind140198%_ _%hd140173140193%_)
                                     (_%rest140200%_ _%tl140174140195%_))
                                (declare (not safe))
                                (_%K140172140190%_
                                 _%rest140200%_
                                 _%bind140198%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140170140184%_)))))))
                 (_%generate-values-check140090%_
                  (lambda (_%check140158%_ _%body140159%_)
                    (cons 'begin
                          (let ((__tmp145164 (cons _%body140159%_ '()))
                                (__tmp145163 (reverse _%check140158%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145164 __tmp145163))))))
          (let* ((_%g140092140109%_
                  (lambda (_%g140093140106%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140093140106%_))))
                 (_%g140091140155%_
                  (lambda (_%g140093140112%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140093140112%_))
                        (let ((_%e140098140114%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140093140112%_))))
                          (let ((_%hd140097140117%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140098140114%_)))
                                (_%tl140096140119%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140098140114%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140096140119%_))
                                (let ((_%e140101140122%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140096140119%_))))
                                  (let ((_%hd140100140125%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140101140122%_)))
                                        (_%tl140099140127%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140101140122%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140099140127%_))
                                        (let ((_%e140104140130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140099140127%_))))
                                          (let ((_%hd140103140133%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140104140130%_)))
                                                (_%tl140102140135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140104140130%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140102140135%_))
                                                ((lambda (_%L140138%_
                                                          _%L140139%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L140139%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple140085%_
                                                          _%L140139%_
                                                          _%L140138%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values140088%_
                                                          _%L140139%_
                                                          _%L140138%_))))
                                                 _%hd140103140133%_
                                                 _%hd140100140125%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140092140109%_
                                                   _%g140093140112%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140092140109%_
                                           _%g140093140112%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140092140109%_ _%g140093140112%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140092140109%_ _%g140093140112%_))))))
            (declare (not safe))
            (_%g140091140155%_ _%stx140082%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self140801%_ _%stx140802%_)
        (let ((_%compiled-body?140804%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _%self140801%_
           _%stx140802%_
           _%compiled-body?140804%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g145166_
        (let ((_g145165_ (let () (declare (not safe)) (##length _g145166_))))
          (cond ((let () (declare (not safe)) (##fx= _g145165_ 2))
                 (apply (lambda (_%self140801%_ _%stx140802%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _%self140801%_
                             _%stx140802%_)))
                        _g145166_))
                ((let () (declare (not safe)) (##fx= _g145165_ 3))
                 (apply (lambda (_%self140806%_
                                 _%stx140807%_
                                 _%compiled-body?140808%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _%self140806%_
                             _%stx140807%_
                             _%compiled-body?140808%_)))
                        _g145166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g145166_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals139975%_ _%hd139976%_)
        (let _%lp139978%_ ((_%rest139980%_ _%hd139976%_)
                           (_%k139981%_ '0)
                           (_%r139982%_ '()))
          (let* ((_%__stx144299144300%_ _%rest139980%_)
                 (_%g139987140004%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx144299144300%_)))))
            (let ((_%__kont144301144302%_
                   (lambda (_%L140067%_)
                     (let ((__tmp145167
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k139981%_ '1))))
                       (declare (not safe))
                       (_%lp139978%_ _%L140067%_ __tmp145167 _%r139982%_))))
                  (_%__kont144303144304%_
                   (lambda (_%L140040%_ _%L140041%_)
                     (let ((__tmp145169
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k139981%_ '1)))
                           (__tmp145168
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140041%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values-ref
                                                 _%vals139975%_
                                                 _%k139981%_
                                                 _%L140040%_))
                                              '()))
                                  _%r139982%_)))
                       (declare (not safe))
                       (_%lp139978%_ _%L140040%_ __tmp145169 __tmp145168))))
                  (_%__kont144305144306%_
                   (lambda (_%L140016%_)
                     (let ((__tmp145170
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L140016%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values->list
                                                 _%vals139975%_
                                                 _%k139981%_))
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp145170 _%r139982%_))))
                  (_%__kont144307144308%_ (lambda () (reverse _%r139982%_))))
              (let ((_%g139985140027%_
                     (lambda ()
                       (let ((_%L140016%_ _%__stx144299144300%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L140016%_))
                             (_%__kont144305144306%_ _%L140016%_)
                             (_%__kont144307144308%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx144299144300%_))
                    (let ((_%e139992140056%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx144299144300%_))))
                      (let ((_%tl139990140061%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139992140056%_)))
                            (_%hd139991140059%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139992140056%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd139991140059%_))
                            (let ((_%e139993140064%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd139991140059%_))))
                              (if (equal? _%e139993140064%_ '#f)
                                  (_%__kont144301144302%_ _%tl139990140061%_)
                                  (_%__kont144303144304%_
                                   _%tl139990140061%_
                                   _%hd139991140059%_)))
                            (_%__kont144303144304%_
                             _%tl139990140061%_
                             _%hd139991140059%_))))
                    (let () (declare (not safe)) (_%g139985140027%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self139654%_ _%stx139655%_ _%compiled-body?139656%_)
        (letrec ((_%generate-simple139658%_
                  (lambda (_%hd139960%_ _%body139961%_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _%self139654%_
                       'letrec
                       _%hd139960%_
                       _%body139961%_
                       _%compiled-body?139656%_))))
                 (_%generate-values139659%_
                  (lambda (_%hd139739%_ _%body139740%_)
                    (let _%lp139742%_ ((_%rest139744%_ _%hd139739%_)
                                       (_%bind139745%_ '())
                                       (_%check139746%_ '())
                                       (_%post139747%_ '()))
                      (let* ((_%__stx144373144374%_ _%rest139744%_)
                             (_%g139750139761%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144373144374%_)))))
                        (let ((_%__kont144375144376%_
                               (lambda (_%L139788%_ _%L139789%_)
                                 (let* ((_%__stx144329144330%_ _%L139789%_)
                                        (_%g139804139829%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144329144330%_)))))
                                   (let ((_%__kont144331144332%_
                                          (lambda (_%L139936%_ _%L139937%_)
                                            (let ((_%eid139951%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L139937%_)))
                                                  (_%expr139952%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139654%_
                                                      _%L139936%_))))
                                              (let ((__tmp145171
                                                     (cons (cons _%eid139951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr139952%_ '()))
                   _%bind139745%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp139742%_
                                                 _%L139788%_
                                                 __tmp145171
                                                 _%check139746%_
                                                 _%post139747%_)))))
                                         (_%__kont144333144334%_
                                          (lambda (_%L139850%_ _%L139851%_)
                                            (let* ((_%vals139864%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values139866%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals139864%_
                                                       _%L139851%_
                                                       _%L139850%_)))
                                                   (_%refs139868%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals139864%_
                                                       _%L139851%_)))
                                                   (_%expr139870%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self139654%_
                                                       _%L139850%_))))
                                              (let ((__tmp145174
                                                     (let ((__tmp145176
                                                            (cons (cons _%vals139864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%expr139870%_ '()))
                          _%bind139745%_))
                   (__tmp145175
                    (map (lambda (_%e139872139874%_)
                           (let* ((_%g139876139885%_ _%e139872139874%_)
                                  (_%E139878139889%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%g139876139885%_
                                              '([eid _])))
                                     '#!void))
                                  (_%K139879139894%_
                                   (lambda (_%eid139892%_)
                                     (cons _%eid139892%_ (cons '#!void '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%g139876139885%_))
                                 (let ((_%hd139880139897%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%g139876139885%_)))
                                       (_%tl139881139899%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%g139876139885%_))))
                                   (let ((_%eid139902%_ _%hd139880139897%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _%tl139881139899%_))
                                         (let ((_%tl139883139904%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%tl139881139899%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _%tl139883139904%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%K139879139894%_
                                                  _%eid139902%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%E139878139889%_))))
                                         (let ()
                                           (declare (not safe))
                                           (_%E139878139889%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%E139878139889%_)))))
                         _%refs139868%_)))
               (declare (not safe))
               (__foldl1 cons __tmp145176 __tmp145175)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145173
                                                     (cons _%check-values139866%_
                                                           _%check139746%_))
                                                    (__tmp145172
                                                     (let ()
                                                       (declare (not safe))
                                                       (__foldl1
                                                        cons
                                                        _%refs139868%_
                                                        _%post139747%_))))
                                                (declare (not safe))
                                                (_%lp139742%_
                                                 _%L139788%_
                                                 __tmp145174
                                                 __tmp145173
                                                 __tmp145172))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144329144330%_))
                                         (let ((_%e139810139912%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144329144330%_))))
                                           (let ((_%tl139808139917%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139810139912%_)))
                                                 (_%hd139809139915%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139810139912%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd139809139915%_))
                                                 (let ((_%e139813139920%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd139809139915%_))))
                                                   (let ((_%tl139811139925%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139813139920%_)))
                                                         (_%hd139812139923%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139813139920%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139811139925%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl139808139917%_))
                     (let ((_%e139816139928%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139808139917%_))))
                       (let ((_%tl139814139933%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139816139928%_)))
                             (_%hd139815139931%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139816139928%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139814139933%_))
                             (_%__kont144331144332%_
                              _%hd139815139931%_
                              _%hd139812139923%_)
                             (let ()
                               (declare (not safe))
                               (_%g139804139829%_)))))
                     (let () (declare (not safe)) (_%g139804139829%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl139808139917%_))
                     (let ((_%e139824139842%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139808139917%_))))
                       (let ((_%tl139822139847%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139824139842%_)))
                             (_%hd139823139845%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139824139842%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139822139847%_))
                             (_%__kont144333144334%_
                              _%hd139823139845%_
                              _%hd139809139915%_)
                             (let ()
                               (declare (not safe))
                               (_%g139804139829%_)))))
                     (let () (declare (not safe)) (_%g139804139829%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139808139917%_))
                                                     (let ((_%e139824139842%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139808139917%_))))
                                                       (let ((_%tl139822139847%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139824139842%_)))
                     (_%hd139823139845%_
                      (let () (declare (not safe)) (##car _%e139824139842%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139822139847%_))
                     (_%__kont144333144334%_
                      _%hd139823139845%_
                      _%hd139809139915%_)
                     (let () (declare (not safe)) (_%g139804139829%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g139804139829%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g139804139829%_)))))))
                              (_%__kont144377144378%_
                               (lambda ()
                                 (let* ((_%body139768%_
                                         (if _%compiled-body?139656%_
                                             _%body139740%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self139654%_
                                                _%body139740%_))))
                                        (_%body139770%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post139661%_
                                            _%post139747%_
                                            _%body139768%_)))
                                        (_%body139772%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check139660%_
                                            _%check139746%_
                                            _%body139770%_))))
                                   (cons 'letrec
                                         (cons (reverse _%bind139745%_)
                                               (cons _%body139772%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144373144374%_))
                              (let ((_%e139756139780%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144373144374%_))))
                                (let ((_%tl139754139785%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139756139780%_)))
                                      (_%hd139755139783%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139756139780%_))))
                                  (_%__kont144375144376%_
                                   _%tl139754139785%_
                                   _%hd139755139783%_)))
                              (_%__kont144377144378%_)))))))
                 (_%generate-values-check139660%_
                  (lambda (_%check139736%_ _%body139737%_)
                    (cons 'begin
                          (let ((__tmp145178 (cons _%body139737%_ '()))
                                (__tmp145177 (reverse _%check139736%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145178 __tmp145177)))))
                 (_%generate-values-post139661%_
                  (lambda (_%post139729%_ _%body139730%_)
                    (cons 'begin
                          (let ((__tmp145182 (cons _%body139730%_ '()))
                                (__tmp145179
                                 (let ((__tmp145181
                                        (lambda (_%g139731139733%_)
                                          (cons 'set! _%g139731139733%_)))
                                       (__tmp145180 (reverse _%post139729%_)))
                                   (declare (not safe))
                                   (##map __tmp145181 __tmp145180))))
                            (declare (not safe))
                            (__foldr1 cons __tmp145182 __tmp145179))))))
          (let* ((_%g139663139680%_
                  (lambda (_%g139664139677%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139664139677%_))))
                 (_%g139662139726%_
                  (lambda (_%g139664139683%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139664139683%_))
                        (let ((_%e139669139685%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139664139683%_))))
                          (let ((_%hd139668139688%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139669139685%_)))
                                (_%tl139667139690%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139669139685%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139667139690%_))
                                (let ((_%e139672139693%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139667139690%_))))
                                  (let ((_%hd139671139696%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139672139693%_)))
                                        (_%tl139670139698%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139672139693%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139670139698%_))
                                        (let ((_%e139675139701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139670139698%_))))
                                          (let ((_%hd139674139704%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139675139701%_)))
                                                (_%tl139673139706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139675139701%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139673139706%_))
                                                ((lambda (_%L139709%_
                                                          _%L139710%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L139710%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple139658%_
                                                          _%L139710%_
                                                          _%L139709%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values139659%_
                                                          _%L139710%_
                                                          _%L139709%_))))
                                                 _%hd139674139704%_
                                                 _%hd139671139696%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g139663139680%_
                                                   _%g139664139683%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139663139680%_
                                           _%g139664139683%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139663139680%_ _%g139664139683%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139663139680%_ _%g139664139683%_))))))
            (declare (not safe))
            (_%g139662139726%_ _%stx139655%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self139966%_ _%stx139967%_)
        (let ((_%compiled-body?139969%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _%self139966%_
           _%stx139967%_
           _%compiled-body?139969%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g145184_
        (let ((_g145183_ (let () (declare (not safe)) (##length _g145184_))))
          (cond ((let () (declare (not safe)) (##fx= _g145183_ 2))
                 (apply (lambda (_%self139966%_ _%stx139967%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _%self139966%_
                             _%stx139967%_)))
                        _g145184_))
                ((let () (declare (not safe)) (##fx= _g145183_ 3))
                 (apply (lambda (_%self139971%_
                                 _%stx139972%_
                                 _%compiled-body?139973%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _%self139971%_
                             _%stx139972%_
                             _%compiled-body?139973%_)))
                        _g145184_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g145184_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self139235%_ _%stx139236%_)
        (letrec ((_%generate-values139238%_
                  (lambda (_%hd139481%_ _%body139482%_)
                    (let _%lp139484%_ ((_%rest139486%_ _%hd139481%_)
                                       (_%bind139487%_ '()))
                      (let* ((_%rest139488139496%_ _%rest139486%_)
                             (_%else139490139507%_
                              (lambda ()
                                (let ((_%bind139504%_ (reverse _%bind139487%_))
                                      (_%body139505%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139235%_
                                          _%body139482%_))))
                                  (cons 'letrec*
                                        (cons _%bind139504%_
                                              (cons _%body139505%_ '()))))))
                             (_%K139492139641%_
                              (lambda (_%rest139510%_ _%hd-bind139511%_)
                                (let* ((_%__stx144387144388%_
                                        _%hd-bind139511%_)
                                       (_%g139514139539%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx144387144388%_)))))
                                  (let ((_%__kont144389144390%_
                                         (lambda (_%L139620%_ _%L139621%_)
                                           (let ((_%eid139635%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L139621%_)))
                                                 (_%expr139636%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self139235%_
                                                     _%L139620%_))))
                                             (let ((__tmp145185
                                                    (cons (cons _%eid139635%_
                                                                (cons _%expr139636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind139487%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp139484%_
                                                _%rest139510%_
                                                __tmp145185)))))
                                        (_%__kont144391144392%_
                                         (lambda (_%L139560%_ _%L139561%_)
                                           (let* ((_%vals139580%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp139582%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values139584%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _%tmp139582%_
                                                      _%L139561%_
                                                      _%L139560%_)))
                                                  (_%refs139586%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _%vals139580%_
                                                      _%L139561%_)))
                                                  (_%expr139588%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139235%_
                                                      _%L139560%_))))
                                             (let ((__tmp145186
                                                    (let ((__tmp145187
                                                           (cons (cons _%vals139580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'let
                                           (cons (cons (cons _%tmp139582%_
                                                             (cons _%expr139588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%check-values139584%_
                                                       (cons _%tmp139582%_
                                                             '()))))
                                     '()))
                         _%bind139487%_)))
              (declare (not safe))
              (__foldl1 cons __tmp145187 _%refs139586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp139484%_
                                                _%rest139510%_
                                                __tmp145186))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144387144388%_))
                                        (let ((_%e139520139596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144387144388%_))))
                                          (let ((_%tl139518139601%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139520139596%_)))
                                                (_%hd139519139599%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139520139596%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd139519139599%_))
                                                (let ((_%e139523139604%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd139519139599%_))))
                                                  (let ((_%tl139521139609%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139523139604%_)))
                                                        (_%hd139522139607%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139523139604%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139521139609%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl139518139601%_))
                                                            (let ((_%e139526139612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139518139601%_))))
                      (let ((_%tl139524139617%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139526139612%_)))
                            (_%hd139525139615%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139526139612%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139524139617%_))
                            (_%__kont144389144390%_
                             _%hd139525139615%_
                             _%hd139522139607%_)
                            (let ()
                              (declare (not safe))
                              (_%g139514139539%_)))))
                    (let () (declare (not safe)) (_%g139514139539%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl139518139601%_))
                    (let ((_%e139534139552%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139518139601%_))))
                      (let ((_%tl139532139557%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139534139552%_)))
                            (_%hd139533139555%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139534139552%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139532139557%_))
                            (_%__kont144391144392%_
                             _%hd139533139555%_
                             _%hd139519139599%_)
                            (let ()
                              (declare (not safe))
                              (_%g139514139539%_)))))
                    (let () (declare (not safe)) (_%g139514139539%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139518139601%_))
                                                    (let ((_%e139534139552%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139518139601%_))))
                                                      (let ((_%tl139532139557%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139534139552%_)))
                    (_%hd139533139555%_
                     (let () (declare (not safe)) (##car _%e139534139552%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139532139557%_))
                    (_%__kont144391144392%_
                     _%hd139533139555%_
                     _%hd139519139599%_)
                    (let () (declare (not safe)) (_%g139514139539%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g139514139539%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139514139539%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139488139496%_))
                            (let ((_%hd139493139644%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139488139496%_)))
                                  (_%tl139494139646%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139488139496%_))))
                              (let* ((_%hd-bind139649%_ _%hd139493139644%_)
                                     (_%rest139651%_ _%tl139494139646%_))
                                (declare (not safe))
                                (_%K139492139641%_
                                 _%rest139651%_
                                 _%hd-bind139649%_)))
                            (let ()
                              (declare (not safe))
                              (_%else139490139507%_)))))))
                 (_%generate-letrec?139239%_
                  (lambda (_%hd139371%_)
                    (let _%lp139373%_ ((_%rest139375%_ _%hd139371%_))
                      (let* ((_%rest139376139384%_ _%rest139375%_)
                             (_%else139378139392%_ (lambda () '#t))
                             (_%K139380139469%_
                              (lambda (_%rest139395%_ _%hd-bind139396%_)
                                (let* ((_%g139398139415%_
                                        (lambda (_%g139399139412%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g139399139412%_))))
                                       (_%g139397139466%_
                                        (lambda (_%g139399139418%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g139399139418%_))
                                              (let ((_%e139404139420%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g139399139418%_))))
                                                (let ((_%hd139403139423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139404139420%_)))
                                                      (_%tl139402139425%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139404139420%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd139403139423%_))
                                                      (let ((_%e139407139428%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd139403139423%_))))
                (let ((_%hd139406139431%_
                       (let () (declare (not safe)) (##car _%e139407139428%_)))
                      (_%tl139405139433%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139407139428%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139405139433%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139402139425%_))
                          (let ((_%e139410139436%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139402139425%_))))
                            (let ((_%hd139409139439%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139410139436%_)))
                                  (_%tl139408139441%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139410139436%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl139408139441%_))
                                  ((lambda (_%L139444%_ _%L139445%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%is-lambda-expr?139240%_
                                            _%L139444%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%lp139373%_ _%rest139395%_))
                                         '#f))
                                   _%hd139409139439%_
                                   _%hd139406139431%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g139398139415%_ _%g139399139418%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g139398139415%_ _%g139399139418%_)))
                      (let ()
                        (declare (not safe))
                        (_%g139398139415%_ _%g139399139418%_)))))
              (let ()
                (declare (not safe))
                (_%g139398139415%_ _%g139399139418%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g139398139415%_
                                                 _%g139399139418%_))))))
                                  (declare (not safe))
                                  (_%g139397139466%_ _%hd-bind139396%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139376139384%_))
                            (let ((_%hd139381139472%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139376139384%_)))
                                  (_%tl139382139474%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139376139384%_))))
                              (let* ((_%hd-bind139477%_ _%hd139381139472%_)
                                     (_%rest139479%_ _%tl139382139474%_))
                                (declare (not safe))
                                (_%K139380139469%_
                                 _%rest139479%_
                                 _%hd-bind139477%_)))
                            (let ()
                              (declare (not safe))
                              (_%else139378139392%_)))))))
                 (_%is-lambda-expr?139240%_
                  (lambda (_%expr139308%_)
                    (let* ((_%__stx144431144432%_ _%expr139308%_)
                           (_%g139311139325%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144431144432%_)))))
                      (let ((_%__kont144433144434%_
                             (lambda (_%L139353%_ _%L139354%_) '#t))
                            (_%__kont144435144436%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx144431144432%_))
                            (let ((_%e139317139337%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx144431144432%_))))
                              (let ((_%tl139315139342%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139317139337%_)))
                                    (_%hd139316139340%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139317139337%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd139316139340%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd139316139340%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl139315139342%_))
                                            (let ((_%e139320139345%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl139315139342%_))))
                                              (let ((_%tl139318139350%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139320139345%_)))
                                                    (_%hd139319139348%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139320139345%_))))
                                                (_%__kont144433144434%_
                                                 _%tl139318139350%_
                                                 _%hd139319139348%_)))
                                            (_%__kont144435144436%_))
                                        (_%__kont144435144436%_))
                                    (_%__kont144435144436%_))))
                            (_%__kont144435144436%_)))))))
          (let* ((_%g139242139259%_
                  (lambda (_%g139243139256%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139243139256%_))))
                 (_%g139241139305%_
                  (lambda (_%g139243139262%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139243139262%_))
                        (let ((_%e139248139264%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139243139262%_))))
                          (let ((_%hd139247139267%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139248139264%_)))
                                (_%tl139246139269%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139248139264%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139246139269%_))
                                (let ((_%e139251139272%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139246139269%_))))
                                  (let ((_%hd139250139275%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139251139272%_)))
                                        (_%tl139249139277%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139251139272%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139249139277%_))
                                        (let ((_%e139254139280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139249139277%_))))
                                          (let ((_%hd139253139283%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139254139280%_)))
                                                (_%tl139252139285%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139254139280%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139252139285%_))
                                                ((lambda (_%L139288%_
                                                          _%L139289%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L139289%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-letrec?139239%_
                                                              _%L139289%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139235%_
                                                              'letrec
                                                              _%L139289%_
                                                              _%L139288%_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139235%_
                                                              'letrec*
                                                              _%L139289%_
                                                              _%L139288%_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values139238%_
                                                          _%L139289%_
                                                          _%L139288%_))))
                                                 _%hd139253139283%_
                                                 _%hd139250139275%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g139242139259%_
                                                   _%g139243139262%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139242139259%_
                                           _%g139243139262%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139242139259%_ _%g139243139262%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139242139259%_ _%g139243139262%_))))))
            (declare (not safe))
            (_%g139241139305%_ _%stx139236%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd139172%_)
        (let _%lp139174%_ ((_%rest139176%_ _%hd139172%_))
          (let* ((_%rest139177139193%_ _%rest139176%_)
                 (_%else139180139201%_ (lambda () '#f)))
            (let ((_%K139183139214%_
                   (lambda (_%rest139212%_)
                     (let ()
                       (declare (not safe))
                       (_%lp139174%_ _%rest139212%_))))
                  (_%K139182139206%_ (lambda () '#t)))
              (let ((_%try-match139179139209%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest139177139193%_))
                           (let () (declare (not safe)) (_%K139182139206%_))
                           (let ()
                             (declare (not safe))
                             (_%else139180139201%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139177139193%_))
                    (let ((_%tl139185139219%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139177139193%_)))
                          (_%hd139184139217%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139177139193%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd139184139217%_))
                          (let ((_%tl139187139224%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd139184139217%_)))
                                (_%hd139186139222%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd139184139217%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139186139222%_))
                                (let ((_%tl139191139227%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139186139222%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl139191139227%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl139187139224%_))
                                          (let ((_%tl139189139230%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl139187139224%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl139189139230%_))
                                                (let ((_%rest139233%_
                                                       _%tl139185139219%_))
                                                  (declare (not safe))
                                                  (_%lp139174%_
                                                   _%rest139233%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else139180139201%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else139180139201%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else139180139201%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%else139180139201%_))))
                          (let ()
                            (declare (not safe))
                            (_%else139180139201%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match139179139209%_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self139083%_
               _%form139084%_
               _%hd139085%_
               _%body139086%_
               _%compiled-body?139087%_)
        (letrec ((_%generate1139089%_
                  (lambda (_%bind139128%_)
                    (let* ((_%bind139129139140%_ _%bind139128%_)
                           (_%E139131139144%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind139129139140%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K139132139150%_
                            (lambda (_%expr139147%_ _%id139148%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id139148%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self139083%_
                                             _%expr139147%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind139129139140%_))
                          (let ((_%hd139133139153%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind139129139140%_)))
                                (_%tl139134139155%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind139129139140%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139133139153%_))
                                (let ((_%hd139137139158%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd139133139153%_)))
                                      (_%tl139138139160%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139133139153%_))))
                                  (let ((_%id139163%_ _%hd139137139158%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl139138139160%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl139134139155%_))
                                            (let ((_%hd139135139165%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl139134139155%_)))
                                                  (_%tl139136139167%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl139134139155%_))))
                                              (let ((_%expr139170%_
                                                     _%hd139135139165%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl139136139167%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K139132139150%_
                                                       _%expr139170%_
                                                       _%id139163%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E139131139144%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%E139131139144%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E139131139144%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%E139131139144%_))))
                          (let ()
                            (declare (not safe))
                            (_%E139131139144%_)))))))
          (let* ((_%bind139091%_ (map _%generate1139089%_ _%hd139085%_))
                 (_%body139093%_
                  (if _%compiled-body?139087%_
                      _%body139086%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self139083%_ _%body139086%_))))
                 (_%body139125%_
                  (let* ((_%body139094139102%_ _%body139093%_)
                         (_%else139096139110%_
                          (lambda () (cons _%body139093%_ '())))
                         (_%K139098139115%_
                          (lambda (_%exprs139113%_) _%exprs139113%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body139094139102%_))
                        (let ((_%hd139099139118%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body139094139102%_)))
                              (_%tl139100139120%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body139094139102%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd139099139118%_ 'begin))
                              (let ((_%exprs139123%_ _%tl139100139120%_))
                                (declare (not safe))
                                (_%K139098139115%_ _%exprs139123%_))
                              (let ()
                                (declare (not safe))
                                (_%else139096139110%_))))
                        (let ()
                          (declare (not safe))
                          (_%else139096139110%_))))))
            (cons _%form139084%_ (cons _%bind139091%_ _%body139125%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self138983%_ _%stx138984%_)
        (letrec ((_%generate1138986%_
                  (lambda (_%datum139038%_)
                    (if (or (let ()
                              (declare (not safe))
                              (null? _%datum139038%_))
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum139038%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum139038%_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _%datum139038%_)))
                        (let () _%datum139038%_)
                        (if (uninterned-symbol? _%datum139038%_)
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-gensym-reference__%
                                 _%datum139038%_
                                 '#t)))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%datum139038%_))
                                (let ()
                                  (cons (let ((__tmp145188
                                               (car _%datum139038%_)))
                                          (declare (not safe))
                                          (_%generate1138986%_ __tmp145188))
                                        (let ((__tmp145189
                                               (cdr _%datum139038%_)))
                                          (declare (not safe))
                                          (_%generate1138986%_ __tmp145189))))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _%datum139038%_))
                                    (let ()
                                      (box (let ((__tmp145190
                                                  (unbox _%datum139038%_)))
                                             (declare (not safe))
                                             (_%generate1138986%_
                                              __tmp145190))))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _%datum139038%_))
                                        (let ()
                                          (vector-map
                                           _%generate1138986%_
                                           _%datum139038%_))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (s8vector? _%datum139038%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _%datum139038%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s16vector? _%datum139038%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u16vector? _%datum139038%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s32vector? _%datum139038%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u32vector? _%datum139038%_))
                                                (s64vector? _%datum139038%_)
                                                (u64vector? _%datum139038%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (f32vector? _%datum139038%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (f64vector?
                                                   _%datum139038%_)))
                                            (let () _%datum139038%_)
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"Cannot compile non-primitive quote"
                                                 _%stx138984%_))))))))))))
          (let* ((_%g138988139001%_
                  (lambda (_%g138989138998%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138989138998%_))))
                 (_%g138987139035%_
                  (lambda (_%g138989139004%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138989139004%_))
                        (let ((_%e138993139006%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138989139004%_))))
                          (let ((_%hd138992139009%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138993139006%_)))
                                (_%tl138991139011%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138993139006%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138991139011%_))
                                (let ((_%e138996139014%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138991139011%_))))
                                  (let ((_%hd138995139017%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138996139014%_)))
                                        (_%tl138994139019%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138996139014%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138994139019%_))
                                        ((lambda (_%L139022%_)
                                           (cons 'quote
                                                 (cons (let ((__tmp145191
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%L139022%_))))
                 (declare (not safe))
                 (_%generate1138986%_ __tmp145191))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd138995139017%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g138988139001%_
                                           _%g138989139004%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g138988139001%_ _%g138989139004%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g138988139001%_ _%g138989139004%_))))))
            (declare (not safe))
            (_%g138987139035%_ _%stx138984%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self138424%_ _%stx138425%_)
        (letrec ((_%compile-call138427%_
                  (lambda (_%rator138716%_ _%rands138717%_)
                    (let ((_%rator138723%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self138424%_
                              _%rator138716%_)))
                          (_%rands138724%_
                           (map (lambda (_%g138718138720%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self138424%_
                                     _%g138718138720%_)))
                                _%rands138717%_)))
                      (let* ((_%__stx144478144479%_ _%rator138723%_)
                             (_%g138727138779%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144478144479%_)))))
                        (let ((_%__kont144480144481%_
                               (lambda (_%L138903%_
                                        _%L138904%_
                                        _%L138905%_
                                        _%L138906%_)
                                 (if (let ((__tmp145194
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands138724%_)))
                                           (__tmp145192
                                            (length (let ((__tmp145193
                                                           (lambda (_%g138942138945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g138943138947%_)
                     (cons _%g138942138945%_ _%g138943138947%_))))
              (declare (not safe))
              (__foldr1 __tmp145193 '() _%L138905%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145194 __tmp145192))
                                     (let* ((_%id138950%_ _%L138906%_)
                                            (_%args138959%_
                                             (let ((__tmp145195
                                                    (lambda (_%g138951138954%_
                                                             _%g138952138956%_)
                                                      (cons _%g138951138954%_
                                                            _%g138952138956%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145195
                                                '()
                                                _%L138905%_)))
                                            (_%body138968%_
                                             (let ((__tmp145196
                                                    (lambda (_%g138960138963%_
                                                             _%g138961138965%_)
                                                      (cons _%g138960138963%_
                                                            _%g138961138965%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145196
                                                '()
                                                _%L138904%_)))
                                            (_%init138970%_
                                             (map list
                                                  _%args138959%_
                                                  _%rands138724%_)))
                                       (cons 'let
                                             (cons _%id138950%_
                                                   (cons _%init138970%_
                                                         _%body138968%_))))
                                     (let ((__tmp145197
                                            (let ((__tmp145198
                                                   (lambda (_%g138972138975%_
                                                            _%g138973138977%_)
                                                     (cons _%g138972138975%_
                                                           _%g138973138977%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145198
                                               '()
                                               _%L138905%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx138425%_
                                        __tmp145197
                                        _%rands138724%_)))))
                              (_%__kont144486144487%_
                               (lambda ()
                                 (cons _%rator138723%_ _%rands138724%_))))
                          (let ((_%__match144545144546%_
                                 (lambda (_%e138735138791%_
                                          _%hd138734138794%_
                                          _%tl138733138796%_
                                          _%e138738138799%_
                                          _%hd138737138802%_
                                          _%tl138736138804%_
                                          _%e138741138807%_
                                          _%hd138740138810%_
                                          _%tl138739138812%_
                                          _%e138744138815%_
                                          _%hd138743138818%_
                                          _%tl138742138820%_
                                          _%e138747138823%_
                                          _%hd138746138826%_
                                          _%tl138745138828%_
                                          _%e138750138831%_
                                          _%hd138749138834%_
                                          _%tl138748138836%_
                                          _%e138753138839%_
                                          _%hd138752138842%_
                                          _%tl138751138844%_
                                          _%__splice144482144483%_
                                          _%target138754138847%_
                                          _%tl138756138849%_)
                                   (letrec ((_%loop138757138852%_
                                             (lambda (_%hd138755138855%_
                                                      _%arg138761138857%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd138755138855%_))
                                                   (let ((_%e138758138860%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd138755138855%_))))
                                                     (let ((_%lp-tl138760138865%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e138758138860%_)))
                                                           (_%lp-hd138759138863%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e138758138860%_))))
                                                       (let ((__tmp145199
                                                              (cons _%lp-hd138759138863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%arg138761138857%_)))
                 (declare (not safe))
                 (_%loop138757138852%_ _%lp-tl138760138865%_ __tmp145199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%arg138762138868%_
                                                          (reverse _%arg138761138857%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl138751138844%_))
                                                         (let ((_%__splice144484144485%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl138751138844%_ '0))))
                   (let ((_%tl138765138873%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144484144485%_ '1)))
                         (_%target138763138871%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144484144485%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl138765138873%_))
                         (letrec ((_%loop138766138876%_
                                   (lambda (_%hd138764138879%_
                                            _%body138770138881%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd138764138879%_))
                                         (let ((_%e138767138884%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd138764138879%_))))
                                           (let ((_%lp-tl138769138889%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e138767138884%_)))
                                                 (_%lp-hd138768138887%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e138767138884%_))))
                                             (let ((__tmp145200
                                                    (cons _%lp-hd138768138887%_
                                                          _%body138770138881%_)))
                                               (declare (not safe))
                                               (_%loop138766138876%_
                                                _%lp-tl138769138889%_
                                                __tmp145200))))
                                         (let ((_%body138771138892%_
                                                (reverse _%body138770138881%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl138745138828%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl138739138812%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl138736138804%_))
                                                       (let ((_%e138774138895%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl138736138804%_))))
                 (let ((_%tl138772138900%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e138774138895%_)))
                       (_%hd138773138898%_
                        (let ()
                          (declare (not safe))
                          (##car _%e138774138895%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl138772138900%_))
                       (let ((_%L138903%_ _%hd138773138898%_)
                             (_%L138904%_ _%body138771138892%_)
                             (_%L138905%_ _%arg138762138868%_)
                             (_%L138906%_ _%hd138743138818%_))
                         (if (eq? _%L138906%_ _%L138903%_)
                             (_%__kont144480144481%_
                              _%L138903%_
                              _%L138904%_
                              _%L138905%_
                              _%L138906%_)
                             (_%__kont144486144487%_)))
                       (_%__kont144486144487%_))))
               (_%__kont144486144487%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144486144487%_))
                                               (_%__kont144486144487%_)))))))
                           (let ()
                             (declare (not safe))
                             (_%loop138766138876%_
                              _%target138763138871%_
                              '())))
                         (_%__kont144486144487%_))))
                 (_%__kont144486144487%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_%loop138757138852%_
                                        _%target138754138847%_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144478144479%_))
                                (let ((_%e138735138791%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144478144479%_))))
                                  (let ((_%tl138733138796%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138735138791%_)))
                                        (_%hd138734138794%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138735138791%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138734138794%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd138734138794%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138733138796%_))
                                                (let ((_%e138738138799%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138733138796%_))))
                                                  (let ((_%tl138736138804%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138738138799%_)))
                                                        (_%hd138737138802%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138738138799%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd138737138802%_))
                                                        (let ((_%e138741138807%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd138737138802%_))))
                  (let ((_%tl138739138812%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138741138807%_)))
                        (_%hd138740138810%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138741138807%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd138740138810%_))
                        (let ((_%e138744138815%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd138740138810%_))))
                          (let ((_%tl138742138820%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138744138815%_)))
                                (_%hd138743138818%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138744138815%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138742138820%_))
                                (let ((_%e138747138823%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138742138820%_))))
                                  (let ((_%tl138745138828%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138747138823%_)))
                                        (_%hd138746138826%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138747138823%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd138746138826%_))
                                        (let ((_%e138750138831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd138746138826%_))))
                                          (let ((_%tl138748138836%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138750138831%_)))
                                                (_%hd138749138834%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138750138831%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd138749138834%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd138749138834%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl138748138836%_))
                                                        (let ((_%e138753138839%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl138748138836%_))))
                  (let ((_%tl138751138844%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138753138839%_)))
                        (_%hd138752138842%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138753138839%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd138752138842%_))
                        (let ((_%__splice144482144483%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd138752138842%_
                                  '0))))
                          (let ((_%tl138756138849%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice144482144483%_ '1)))
                                (_%target138754138847%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice144482144483%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl138756138849%_))
                                (_%__match144545144546%_
                                 _%e138735138791%_
                                 _%hd138734138794%_
                                 _%tl138733138796%_
                                 _%e138738138799%_
                                 _%hd138737138802%_
                                 _%tl138736138804%_
                                 _%e138741138807%_
                                 _%hd138740138810%_
                                 _%tl138739138812%_
                                 _%e138744138815%_
                                 _%hd138743138818%_
                                 _%tl138742138820%_
                                 _%e138747138823%_
                                 _%hd138746138826%_
                                 _%tl138745138828%_
                                 _%e138750138831%_
                                 _%hd138749138834%_
                                 _%tl138748138836%_
                                 _%e138753138839%_
                                 _%hd138752138842%_
                                 _%tl138751138844%_
                                 _%__splice144482144483%_
                                 _%target138754138847%_
                                 _%tl138756138849%_)
                                (_%__kont144486144487%_))))
                        (_%__kont144486144487%_))))
                (_%__kont144486144487%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144486144487%_))
                                                (_%__kont144486144487%_))))
                                        (_%__kont144486144487%_))))
                                (_%__kont144486144487%_))))
                        (_%__kont144486144487%_))))
                (_%__kont144486144487%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont144486144487%_))
                                            (_%__kont144486144487%_))
                                        (_%__kont144486144487%_))))
                                (_%__kont144486144487%_)))))))))
          (let* ((_%g138429138452%_
                  (lambda (_%g138430138449%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138430138449%_))))
                 (_%g138428138713%_
                  (lambda (_%g138430138455%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138430138455%_))
                        (let ((_%e138435138457%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138430138455%_))))
                          (let ((_%hd138434138460%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138435138457%_)))
                                (_%tl138433138462%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138435138457%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138433138462%_))
                                (let ((_%e138438138465%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138433138462%_))))
                                  (let ((_%hd138437138468%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138438138465%_)))
                                        (_%tl138436138470%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138438138465%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl138436138470%_))
                                        (let ((_g145201_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl138436138470%_
                                                  '0))))
                                          (begin
                                            (let ((_g145202_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g145201_)
                                                         (##vector-length
                                                          _g145201_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g145202_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g145202_)))
                                            (let ((_%target138439138473%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145201_
                                                      0)))
                                                  (_%tl138441138475%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145201_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl138441138475%_))
                                                  (letrec ((_%loop138442138478%_
                                                            (lambda (_%hd138440138481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand138446138483%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd138440138481%_))
                          (let ((_%e138443138486%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd138440138481%_))))
                            (let ((_%lp-hd138444138489%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138443138486%_)))
                                  (_%lp-tl138445138491%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138443138486%_))))
                              (let ((__tmp145203
                                     (cons _%lp-hd138444138489%_
                                           _%rand138446138483%_)))
                                (declare (not safe))
                                (_%loop138442138478%_
                                 _%lp-tl138445138491%_
                                 __tmp145203))))
                          (let ((_%rand138447138494%_
                                 (reverse _%rand138446138483%_)))
                            ((lambda (_%L138497%_ _%L138498%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls-unsafe?))
                                   (let ((__tmp145204
                                          (let ((__tmp145205
                                                 (lambda (_%g138515138518%_
                                                          _%g138516138520%_)
                                                   (cons _%g138515138518%_
                                                         _%g138516138520%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp145205
                                             '()
                                             _%L138497%_))))
                                     (declare (not safe))
                                     (_%compile-call138427%_
                                      _%L138498%_
                                      __tmp145204))
                                   (let* ((_%__stx144594144595%_ _%L138498%_)
                                          (_%g138524138536%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx144594144595%_)))))
                                     (let ((_%__kont144596144597%_
                                            (lambda ()
                                              (let ((_%f138573%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self138424%_
                                                        _%L138498%_))))
                                                (if (and (let ((__tmp145206
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f138573%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp145206))
                 (let ((__tmp145207
                        (let ()
                          (declare (not safe))
                          (##memq _%f138573%_ gxc#checked-primitives))))
                   (declare (not safe))
                   (not __tmp145207)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp138575%_ ((_%rest138578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp145213
                                                (lambda (_%g138695138698%_
                                                         _%g138696138700%_)
                                                  (cons _%g138695138698%_
                                                        _%g138696138700%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp145213
                                            '()
                                            _%L138497%_))))
                               (_%bind138580%_ '())
                               (_%args138581%_ '()))
              (let* ((_%rest138582138590%_ _%rest138578%_)
                     (_%else138584138598%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind138580%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f138573%_
                                                      _%args138581%_)
                                                '()))))))
                     (_%K138586138684%_
                      (lambda (_%rest138601%_ _%e138602%_)
                        (let* ((_%__stx144548144549%_ _%e138602%_)
                               (_%g138607138625%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx144548144549%_)))))
                          (let ((_%__kont144550144551%_
                                 (lambda ()
                                   (let ((__tmp145208
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e138602%_))
                                                _%args138581%_)))
                                     (declare (not safe))
                                     (_%lp138575%_
                                      _%rest138601%_
                                      _%bind138580%_
                                      __tmp145208))))
                                (_%__kont144552144553%_
                                 (lambda ()
                                   (let ((__tmp145209
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e138602%_))
                                                _%args138581%_)))
                                     (declare (not safe))
                                     (_%lp138575%_
                                      _%rest138601%_
                                      _%bind138580%_
                                      __tmp145209))))
                                (_%__kont144554144555%_
                                 (lambda ()
                                   (let ((_%tmp138632%_
                                          (let ((__tmp145210
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp145210))))
                                     (let ((__tmp145212
                                            (cons (cons _%tmp138632%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e138602%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind138580%_))
                                           (__tmp145211
                                            (cons _%tmp138632%_
                                                  _%args138581%_)))
                                       (declare (not safe))
                                       (_%lp138575%_
                                        _%rest138601%_
                                        __tmp145212
                                        __tmp145211))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144548144549%_))
                                (let ((_%e138611138663%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144548144549%_))))
                                  (let ((_%tl138609138668%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138611138663%_)))
                                        (_%hd138610138666%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138611138663%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138610138666%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd138610138666%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138609138668%_))
                                                (let ((_%e138614138671%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138609138668%_))))
                                                  (let ((_%tl138612138676%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138614138671%_)))
                                                        (_%hd138613138674%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138614138671%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138612138676%_))
                                                        (_%__kont144550144551%_)
                                                        (_%__kont144554144555%_))))
                                                (_%__kont144554144555%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd138610138666%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl138609138668%_))
                                                    (let ((_%e138620138648%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl138609138668%_))))
                                                      (let ((_%tl138618138653%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e138620138648%_)))
                    (_%hd138619138651%_
                     (let () (declare (not safe)) (##car _%e138620138648%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl138618138653%_))
                    (_%__kont144552144553%_)
                    (_%__kont144554144555%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144554144555%_))
                                                (_%__kont144554144555%_)))
                                        (_%__kont144554144555%_))))
                                (_%__kont144554144555%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest138582138590%_))
                    (let ((_%hd138587138687%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest138582138590%_)))
                          (_%tl138588138689%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest138582138590%_))))
                      (let* ((_%e138692%_ _%hd138587138687%_)
                             (_%rest138694%_ _%tl138588138689%_))
                        (declare (not safe))
                        (_%K138586138684%_ _%rest138694%_ _%e138692%_)))
                    (let () (declare (not safe)) (_%else138584138598%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp145214
                                                           (let ((__tmp145215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g138702138705%_ _%g138703138707%_)
                            (cons _%g138702138705%_ _%g138703138707%_))))
                     (declare (not safe))
                     (__foldr1 __tmp145215 '() _%L138497%_))))
              (declare (not safe))
              (_%compile-call138427%_ _%L138498%_ __tmp145214))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont144598144599%_
                                            (lambda ()
                                              (let ((__tmp145216
                                                     (let ((__tmp145217
                                                            (lambda (_%g138542138545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g138543138547%_)
                      (cons _%g138542138545%_ _%g138543138547%_))))
               (declare (not safe))
               (__foldr1 __tmp145217 '() _%L138497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%compile-call138427%_
                                                 _%L138498%_
                                                 __tmp145216)))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx144594144595%_))
                                           (let ((_%e138528138555%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx144594144595%_))))
                                             (let ((_%tl138526138560%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e138528138555%_)))
                                                   (_%hd138527138558%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e138528138555%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd138527138558%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd138527138558%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl138526138560%_))
                                                           (let ((_%e138531138563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl138526138560%_))))
                     (let ((_%tl138529138568%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e138531138563%_)))
                           (_%hd138530138566%_
                            (let ()
                              (declare (not safe))
                              (##car _%e138531138563%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl138529138568%_))
                           (_%__kont144596144597%_)
                           (_%__kont144598144599%_))))
                   (_%__kont144598144599%_))
               (_%__kont144598144599%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144598144599%_))))
                                           (_%__kont144598144599%_))))))
                             _%rand138447138494%_
                             _%hd138437138468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%loop138442138478%_
                                                       _%target138439138473%_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g138429138452%_
                                                     _%g138430138455%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g138429138452%_
                                           _%g138430138455%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g138429138452%_ _%g138430138455%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g138429138452%_ _%g138430138455%_))))))
            (declare (not safe))
            (_%g138428138713%_ _%stx138425%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self138167%_ _%stx138168%_)
        (let* ((_%__stx144666144667%_ _%stx138168%_)
               (_%g138171138200%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144666144667%_)))))
          (let ((_%__kont144668144669%_
                 (lambda (_%L138268%_ _%L138269%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call%
                          _%self138167%_
                          _%stx138168%_))
                       (let ((_%f138291%_
                              (let ((__tmp145218
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L138269%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self138167%_
                                 __tmp145218))))
                         (let _%lp138293%_ ((_%rest138296%_
                                             (reverse (let ((__tmp145224
                                                             (lambda (_%g138413138416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g138414138418%_)
                       (cons _%g138413138416%_ _%g138414138418%_))))
                (declare (not safe))
                (__foldr1 __tmp145224 '() _%L138268%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind138298%_ '())
                                            (_%args138299%_ '()))
                           (let* ((_%rest138300138308%_ _%rest138296%_)
                                  (_%else138302138316%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind138298%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f138291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args138299%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K138304138402%_
                                   (lambda (_%rest138319%_ _%e138320%_)
                                     (let* ((_%__stx144620144621%_ _%e138320%_)
                                            (_%g138325138343%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx144620144621%_)))))
                                       (let ((_%__kont144622144623%_
                                              (lambda ()
                                                (let ((__tmp145219
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138320%_))
                     _%args138299%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138293%_
                                                   _%rest138319%_
                                                   _%bind138298%_
                                                   __tmp145219))))
                                             (_%__kont144624144625%_
                                              (lambda ()
                                                (let ((__tmp145220
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138320%_))
                     _%args138299%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138293%_
                                                   _%rest138319%_
                                                   _%bind138298%_
                                                   __tmp145220))))
                                             (_%__kont144626144627%_
                                              (lambda ()
                                                (let ((_%tmp138350%_
                                                       (let ((__tmp145221
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp145221))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp145223
                                                         (cons (cons _%tmp138350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__0 _%e138320%_))
                                   '()))
                       _%bind138298%_))
                (__tmp145222 (cons _%tmp138350%_ _%args138299%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%lp138293%_
                                                     _%rest138319%_
                                                     __tmp145223
                                                     __tmp145222))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx144620144621%_))
                                             (let ((_%e138329138381%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx144620144621%_))))
                                               (let ((_%tl138327138386%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e138329138381%_)))
                                                     (_%hd138328138384%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e138329138381%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd138328138384%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd138328138384%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138327138386%_))
                     (let ((_%e138332138389%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138327138386%_))))
                       (let ((_%tl138330138394%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138332138389%_)))
                             (_%hd138331138392%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138332138389%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138330138394%_))
                             (_%__kont144622144623%_)
                             (_%__kont144626144627%_))))
                     (_%__kont144626144627%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd138328138384%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138327138386%_))
                         (let ((_%e138338138366%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138327138386%_))))
                           (let ((_%tl138336138371%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138338138366%_)))
                                 (_%hd138337138369%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138338138366%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138336138371%_))
                                 (_%__kont144624144625%_)
                                 (_%__kont144626144627%_))))
                         (_%__kont144626144627%_))
                     (_%__kont144626144627%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144626144627%_))))
                                             (_%__kont144626144627%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest138300138308%_))
                                 (let ((_%hd138305138405%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest138300138308%_)))
                                       (_%tl138306138407%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest138300138308%_))))
                                   (let* ((_%e138410%_ _%hd138305138405%_)
                                          (_%rest138412%_ _%tl138306138407%_))
                                     (declare (not safe))
                                     (_%K138304138402%_
                                      _%rest138412%_
                                      _%e138410%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%else138302138316%_)))))))))
                (_%__kont144672144673%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call%
                      _%self138167%_
                      _%stx138168%_)))))
            (let ((_%__match144711144712%_
                   (lambda (_%e138177138212%_
                            _%hd138176138215%_
                            _%tl138175138217%_
                            _%e138180138220%_
                            _%hd138179138223%_
                            _%tl138178138225%_
                            _%e138183138228%_
                            _%hd138182138231%_
                            _%tl138181138233%_
                            _%e138186138236%_
                            _%hd138185138239%_
                            _%tl138184138241%_
                            _%__splice144670144671%_
                            _%target138187138244%_
                            _%tl138189138246%_)
                     (letrec ((_%loop138190138249%_
                               (lambda (_%hd138188138252%_
                                        _%rand138194138254%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138188138252%_))
                                     (let ((_%e138191138257%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138188138252%_))))
                                       (let ((_%lp-tl138193138262%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138191138257%_)))
                                             (_%lp-hd138192138260%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138191138257%_))))
                                         (let ((__tmp145225
                                                (cons _%lp-hd138192138260%_
                                                      _%rand138194138254%_)))
                                           (declare (not safe))
                                           (_%loop138190138249%_
                                            _%lp-tl138193138262%_
                                            __tmp145225))))
                                     (let ((_%rand138195138265%_
                                            (reverse _%rand138194138254%_)))
                                       (_%__kont144668144669%_
                                        _%rand138195138265%_
                                        _%hd138185138239%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop138190138249%_ _%target138187138244%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144666144667%_))
                  (let ((_%e138177138212%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144666144667%_))))
                    (let ((_%tl138175138217%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138177138212%_)))
                          (_%hd138176138215%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138177138212%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138175138217%_))
                          (let ((_%e138180138220%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138175138217%_))))
                            (let ((_%tl138178138225%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138180138220%_)))
                                  (_%hd138179138223%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138180138220%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138179138223%_))
                                  (let ((_%e138183138228%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138179138223%_))))
                                    (let ((_%tl138181138233%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138183138228%_)))
                                          (_%hd138182138231%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138183138228%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138182138231%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138182138231%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138181138233%_))
                                                  (let ((_%e138186138236%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138181138233%_))))
                                                    (let ((_%tl138184138241%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138186138236%_)))
                                                          (_%hd138185138239%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138186138236%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138184138241%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138178138225%_))
                      (let ((_%__splice144670144671%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138178138225%_
                                '0))))
                        (let ((_%tl138189138246%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144670144671%_ '1)))
                              (_%target138187138244%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144670144671%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138189138246%_))
                              (_%__match144711144712%_
                               _%e138177138212%_
                               _%hd138176138215%_
                               _%tl138175138217%_
                               _%e138180138220%_
                               _%hd138179138223%_
                               _%tl138178138225%_
                               _%e138183138228%_
                               _%hd138182138231%_
                               _%tl138181138233%_
                               _%e138186138236%_
                               _%hd138185138239%_
                               _%tl138184138241%_
                               _%__splice144670144671%_
                               _%target138187138244%_
                               _%tl138189138246%_)
                              (_%__kont144672144673%_))))
                      (_%__kont144672144673%_))
                  (_%__kont144672144673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144672144673%_))
                                              (_%__kont144672144673%_))
                                          (_%__kont144672144673%_))))
                                  (_%__kont144672144673%_))))
                          (_%__kont144672144673%_))))
                  (_%__kont144672144673%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self137979%_ _%stx137980%_)
        (letrec ((_%simplify137982%_
                  (lambda (_%code138067%_)
                    (let* ((_%code138068138086%_ _%code138067%_)
                           (_%else138070138094%_ (lambda () _%code138067%_))
                           (_%K138072138130%_
                            (lambda (_%expr138097%_ _%test138098%_)
                              (let* ((_%expr138099138107%_ _%expr138097%_)
                                     (_%else138101138115%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test138098%_
                                                    (cons _%expr138097%_
                                                          '())))))
                                     (_%K138103138120%_
                                      (lambda (_%exprs138118%_)
                                        (cons 'and
                                              (cons _%test138098%_
                                                    _%exprs138118%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr138099138107%_))
                                    (let ((_%hd138104138123%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr138099138107%_)))
                                          (_%tl138105138125%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr138099138107%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd138104138123%_ 'and))
                                          (let ((_%exprs138128%_
                                                 _%tl138105138125%_))
                                            (declare (not safe))
                                            (_%K138103138120%_
                                             _%exprs138128%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138101138115%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138101138115%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code138068138086%_))
                          (let ((_%hd138073138133%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code138068138086%_)))
                                (_%tl138074138135%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code138068138086%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd138073138133%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl138074138135%_))
                                    (let ((_%hd138075138138%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl138074138135%_)))
                                          (_%tl138076138140%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl138074138135%_))))
                                      (let ((_%test138143%_
                                             _%hd138075138138%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl138076138140%_))
                                            (let ((_%hd138077138145%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl138076138140%_)))
                                                  (_%tl138078138147%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl138076138140%_))))
                                              (let ((_%expr138150%_
                                                     _%hd138077138145%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl138078138147%_))
                                                    (let ((_%hd138079138152%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl138078138147%_)))
                                                          (_%tl138080138154%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl138078138147%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd138079138152%_))
                                                          (let ((_%hd138081138157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd138079138152%_)))
                        (_%tl138082138159%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd138079138152%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd138081138157%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl138082138159%_))
                            (let ((_%hd138083138162%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl138082138159%_)))
                                  (_%tl138084138164%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl138082138159%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd138083138162%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl138084138164%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl138080138154%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%K138072138130%_
                                             _%expr138150%_
                                             _%test138143%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else138070138094%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else138070138094%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else138070138094%_))))
                            (let ()
                              (declare (not safe))
                              (_%else138070138094%_)))
                        (let () (declare (not safe)) (_%else138070138094%_))))
                  (let () (declare (not safe)) (_%else138070138094%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else138070138094%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%else138070138094%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else138070138094%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else138070138094%_))))
                          (let ()
                            (declare (not safe))
                            (_%else138070138094%_)))))))
          (let* ((_%g137984138005%_
                  (lambda (_%g137985138002%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137985138002%_))))
                 (_%g137983138064%_
                  (lambda (_%g137985138008%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137985138008%_))
                        (let ((_%e137991138010%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137985138008%_))))
                          (let ((_%hd137990138013%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137991138010%_)))
                                (_%tl137989138015%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137991138010%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137989138015%_))
                                (let ((_%e137994138018%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137989138015%_))))
                                  (let ((_%hd137993138021%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137994138018%_)))
                                        (_%tl137992138023%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137994138018%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137992138023%_))
                                        (let ((_%e137997138026%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137992138023%_))))
                                          (let ((_%hd137996138029%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137997138026%_)))
                                                (_%tl137995138031%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137997138026%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl137995138031%_))
                                                (let ((_%e138000138034%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl137995138031%_))))
                                                  (let ((_%hd137999138037%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138000138034%_)))
                                                        (_%tl137998138039%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138000138034%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl137998138039%_))
                                                        ((lambda (_%L138042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L138043%_
                          _%L138044%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (let ((__tmp145226
                              (cons 'if
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self137979%_
                                             _%L138044%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self137979%_
                                                   _%L138043%_))
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self137979%_
                                                         _%L138042%_))
                                                      '()))))))
                         (declare (not safe))
                         (_%simplify137982%_ __tmp145226))
                       (cons 'if
                             (cons (let ((__tmp145227
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self137979%_
                                               _%L138044%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp145227
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137979%_
                                            _%L138043%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self137979%_
                                                  _%L138042%_))
                                               '()))))))
                 _%hd137999138037%_
                 _%hd137996138029%_
                 _%hd137993138021%_)
                (let ()
                  (declare (not safe))
                  (_%g137984138005%_ _%g137985138008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g137984138005%_
                                                   _%g137985138008%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g137984138005%_
                                           _%g137985138008%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g137984138005%_ _%g137985138008%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g137984138005%_ _%g137985138008%_))))))
            (declare (not safe))
            (_%g137983138064%_ _%stx137980%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self137927%_ _%stx137928%_)
        (let* ((_%g137930137943%_
                (lambda (_%g137931137940%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137931137940%_))))
               (_%g137929137976%_
                (lambda (_%g137931137946%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137931137946%_))
                      (let ((_%e137935137948%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137931137946%_))))
                        (let ((_%hd137934137951%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137935137948%_)))
                              (_%tl137933137953%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137935137948%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137933137953%_))
                              (let ((_%e137938137956%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137933137953%_))))
                                (let ((_%hd137937137959%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137938137956%_)))
                                      (_%tl137936137961%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137938137956%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl137936137961%_))
                                      ((lambda (_%L137964%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L137964%_)))
                                       _%hd137937137959%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g137930137943%_
                                         _%g137931137946%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137930137943%_ _%g137931137946%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137930137943%_ _%g137931137946%_))))))
          (declare (not safe))
          (_%g137929137976%_ _%stx137928%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self137859%_ _%stx137860%_)
        (let* ((_%g137862137879%_
                (lambda (_%g137863137876%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137863137876%_))))
               (_%g137861137924%_
                (lambda (_%g137863137882%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137863137882%_))
                      (let ((_%e137868137884%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137863137882%_))))
                        (let ((_%hd137867137887%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137868137884%_)))
                              (_%tl137866137889%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137868137884%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137866137889%_))
                              (let ((_%e137871137892%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137866137889%_))))
                                (let ((_%hd137870137895%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137871137892%_)))
                                      (_%tl137869137897%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137871137892%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137869137897%_))
                                      (let ((_%e137874137900%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137869137897%_))))
                                        (let ((_%hd137873137903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137874137900%_)))
                                              (_%tl137872137905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137874137900%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137872137905%_))
                                              ((lambda (_%L137908%_
                                                        _%L137909%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L137909%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self137859%_ _%L137908%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137873137903%_
                                               _%hd137870137895%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g137862137879%_
                                                 _%g137863137882%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137862137879%_
                                         _%g137863137882%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137862137879%_ _%g137863137882%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137862137879%_ _%g137863137882%_))))))
          (declare (not safe))
          (_%g137861137924%_ _%stx137860%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self137670%_ _%stx137671%_)
        (let* ((_%g137673137690%_
                (lambda (_%g137674137687%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137674137687%_))))
               (_%g137672137856%_
                (lambda (_%g137674137693%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137674137693%_))
                      (let ((_%e137679137695%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137674137693%_))))
                        (let ((_%hd137678137698%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137679137695%_)))
                              (_%tl137677137700%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137679137695%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137677137700%_))
                              (let ((_%e137682137703%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137677137700%_))))
                                (let ((_%hd137681137706%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137682137703%_)))
                                      (_%tl137680137708%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137682137703%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137680137708%_))
                                      (let ((_%e137685137711%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137680137708%_))))
                                        (let ((_%hd137684137714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137685137711%_)))
                                              (_%tl137683137716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137685137711%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137683137716%_))
                                              ((lambda (_%L137719%_
                                                        _%L137720%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137670%_ _%L137719%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137670%_ _%L137720%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137735%_ ((_%rest137738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137720%_ (cons _%L137719%_ '())))
                                (_%bind137740%_ '())
                                (_%args137741%_ '()))
               (let* ((_%rest137742137750%_ _%rest137738%_)
                      (_%else137744137758%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137740%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args137741%_)
                                                 '()))))))
                      (_%K137746137844%_
                       (lambda (_%rest137761%_ _%e137762%_)
                         (let* ((_%__stx144714144715%_ _%e137762%_)
                                (_%g137767137785%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144714144715%_)))))
                           (let ((_%__kont144716144717%_
                                  (lambda ()
                                    (let ((__tmp145228
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137762%_))
                                                 _%args137741%_)))
                                      (declare (not safe))
                                      (_%lp137735%_
                                       _%rest137761%_
                                       _%bind137740%_
                                       __tmp145228))))
                                 (_%__kont144718144719%_
                                  (lambda ()
                                    (let ((__tmp145229
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137762%_))
                                                 _%args137741%_)))
                                      (declare (not safe))
                                      (_%lp137735%_
                                       _%rest137761%_
                                       _%bind137740%_
                                       __tmp145229))))
                                 (_%__kont144720144721%_
                                  (lambda ()
                                    (let ((_%tmp137792%_
                                           (let ((__tmp145230
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145230))))
                                      (let ((__tmp145232
                                             (cons (cons _%tmp137792%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e137762%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind137740%_))
                                            (__tmp145231
                                             (cons _%tmp137792%_
                                                   _%args137741%_)))
                                        (declare (not safe))
                                        (_%lp137735%_
                                         _%rest137761%_
                                         __tmp145232
                                         __tmp145231))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144714144715%_))
                                 (let ((_%e137771137823%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144714144715%_))))
                                   (let ((_%tl137769137828%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137771137823%_)))
                                         (_%hd137770137826%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137771137823%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137770137826%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137770137826%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137769137828%_))
                                                 (let ((_%e137774137831%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137769137828%_))))
                                                   (let ((_%tl137772137836%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137774137831%_)))
                                                         (_%hd137773137834%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137774137831%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137772137836%_))
                                                         (_%__kont144716144717%_)
                                                         (_%__kont144720144721%_))))
                                                 (_%__kont144720144721%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137770137826%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137769137828%_))
                                                     (let ((_%e137780137808%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137769137828%_))))
                                                       (let ((_%tl137778137813%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137780137808%_)))
                     (_%hd137779137811%_
                      (let () (declare (not safe)) (##car _%e137780137808%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137778137813%_))
                     (_%__kont144718144719%_)
                     (_%__kont144720144721%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144720144721%_))
                                                 (_%__kont144720144721%_)))
                                         (_%__kont144720144721%_))))
                                 (_%__kont144720144721%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137742137750%_))
                     (let ((_%hd137747137847%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137742137750%_)))
                           (_%tl137748137849%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137742137750%_))))
                       (let* ((_%e137852%_ _%hd137747137847%_)
                              (_%rest137854%_ _%tl137748137849%_))
                         (declare (not safe))
                         (_%K137746137844%_ _%rest137854%_ _%e137852%_)))
                     (let () (declare (not safe)) (_%else137744137758%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137684137714%_
                                               _%hd137681137706%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g137673137690%_
                                                 _%g137674137693%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137673137690%_
                                         _%g137674137693%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137673137690%_ _%g137674137693%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137673137690%_ _%g137674137693%_))))))
          (declare (not safe))
          (_%g137672137856%_ _%stx137671%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self137481%_ _%stx137482%_)
        (let* ((_%g137484137501%_
                (lambda (_%g137485137498%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137485137498%_))))
               (_%g137483137667%_
                (lambda (_%g137485137504%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137485137504%_))
                      (let ((_%e137490137506%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137485137504%_))))
                        (let ((_%hd137489137509%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137490137506%_)))
                              (_%tl137488137511%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137490137506%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137488137511%_))
                              (let ((_%e137493137514%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137488137511%_))))
                                (let ((_%hd137492137517%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137493137514%_)))
                                      (_%tl137491137519%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137493137514%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137491137519%_))
                                      (let ((_%e137496137522%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137491137519%_))))
                                        (let ((_%hd137495137525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137496137522%_)))
                                              (_%tl137494137527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137496137522%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137494137527%_))
                                              ((lambda (_%L137530%_
                                                        _%L137531%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137481%_ _%L137530%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137481%_ _%L137531%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137546%_ ((_%rest137549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137531%_ (cons _%L137530%_ '())))
                                (_%bind137551%_ '())
                                (_%args137552%_ '()))
               (let* ((_%rest137553137561%_ _%rest137549%_)
                      (_%else137555137569%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137551%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args137552%_)
                                                 '()))))))
                      (_%K137557137655%_
                       (lambda (_%rest137572%_ _%e137573%_)
                         (let* ((_%__stx144760144761%_ _%e137573%_)
                                (_%g137578137596%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144760144761%_)))))
                           (let ((_%__kont144762144763%_
                                  (lambda ()
                                    (let ((__tmp145233
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137573%_))
                                                 _%args137552%_)))
                                      (declare (not safe))
                                      (_%lp137546%_
                                       _%rest137572%_
                                       _%bind137551%_
                                       __tmp145233))))
                                 (_%__kont144764144765%_
                                  (lambda ()
                                    (let ((__tmp145234
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137573%_))
                                                 _%args137552%_)))
                                      (declare (not safe))
                                      (_%lp137546%_
                                       _%rest137572%_
                                       _%bind137551%_
                                       __tmp145234))))
                                 (_%__kont144766144767%_
                                  (lambda ()
                                    (let ((_%tmp137603%_
                                           (let ((__tmp145235
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145235))))
                                      (let ((__tmp145237
                                             (cons (cons _%tmp137603%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e137573%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind137551%_))
                                            (__tmp145236
                                             (cons _%tmp137603%_
                                                   _%args137552%_)))
                                        (declare (not safe))
                                        (_%lp137546%_
                                         _%rest137572%_
                                         __tmp145237
                                         __tmp145236))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144760144761%_))
                                 (let ((_%e137582137634%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144760144761%_))))
                                   (let ((_%tl137580137639%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137582137634%_)))
                                         (_%hd137581137637%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137582137634%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137581137637%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137581137637%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137580137639%_))
                                                 (let ((_%e137585137642%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137580137639%_))))
                                                   (let ((_%tl137583137647%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137585137642%_)))
                                                         (_%hd137584137645%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137585137642%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137583137647%_))
                                                         (_%__kont144762144763%_)
                                                         (_%__kont144766144767%_))))
                                                 (_%__kont144766144767%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137581137637%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137580137639%_))
                                                     (let ((_%e137591137619%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137580137639%_))))
                                                       (let ((_%tl137589137624%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137591137619%_)))
                     (_%hd137590137622%_
                      (let () (declare (not safe)) (##car _%e137591137619%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137589137624%_))
                     (_%__kont144764144765%_)
                     (_%__kont144766144767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144766144767%_))
                                                 (_%__kont144766144767%_)))
                                         (_%__kont144766144767%_))))
                                 (_%__kont144766144767%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137553137561%_))
                     (let ((_%hd137558137658%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137553137561%_)))
                           (_%tl137559137660%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137553137561%_))))
                       (let* ((_%e137663%_ _%hd137558137658%_)
                              (_%rest137665%_ _%tl137559137660%_))
                         (declare (not safe))
                         (_%K137557137655%_ _%rest137665%_ _%e137663%_)))
                     (let () (declare (not safe)) (_%else137555137569%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137495137525%_
                                               _%hd137492137517%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g137484137501%_
                                                 _%g137485137504%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137484137501%_
                                         _%g137485137504%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137484137501%_ _%g137485137504%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137484137501%_ _%g137485137504%_))))))
          (declare (not safe))
          (_%g137483137667%_ _%stx137482%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self137397%_ _%stx137398%_)
        (let* ((_%g137400137421%_
                (lambda (_%g137401137418%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137401137418%_))))
               (_%g137399137478%_
                (lambda (_%g137401137424%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137401137424%_))
                      (let ((_%e137407137426%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137401137424%_))))
                        (let ((_%hd137406137429%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137407137426%_)))
                              (_%tl137405137431%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137407137426%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137405137431%_))
                              (let ((_%e137410137434%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137405137431%_))))
                                (let ((_%hd137409137437%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137410137434%_)))
                                      (_%tl137408137439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137410137434%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137408137439%_))
                                      (let ((_%e137413137442%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137408137439%_))))
                                        (let ((_%hd137412137445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137413137442%_)))
                                              (_%tl137411137447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137413137442%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137411137447%_))
                                              (let ((_%e137416137450%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137411137447%_))))
                                                (let ((_%hd137415137453%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137416137450%_)))
                                                      (_%tl137414137455%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137416137450%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137414137455%_))
                                                      ((lambda (_%L137458%_
                                                                _%L137459%_
                                                                _%L137460%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137397%_ _%L137458%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137397%_
                                      _%L137459%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137397%_
                                            _%L137460%_))
                                         (cons ''#f '()))))))
               _%hd137415137453%_
               _%hd137412137445%_
               _%hd137409137437%_)
              (let ()
                (declare (not safe))
                (_%g137400137421%_ _%g137401137424%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137400137421%_
                                                 _%g137401137424%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137400137421%_
                                         _%g137401137424%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137400137421%_ _%g137401137424%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137400137421%_ _%g137401137424%_))))))
          (declare (not safe))
          (_%g137399137478%_ _%stx137398%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self137297%_ _%stx137298%_)
        (let* ((_%g137300137325%_
                (lambda (_%g137301137322%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137301137322%_))))
               (_%g137299137394%_
                (lambda (_%g137301137328%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137301137328%_))
                      (let ((_%e137308137330%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137301137328%_))))
                        (let ((_%hd137307137333%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137308137330%_)))
                              (_%tl137306137335%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137308137330%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137306137335%_))
                              (let ((_%e137311137338%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137306137335%_))))
                                (let ((_%hd137310137341%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137311137338%_)))
                                      (_%tl137309137343%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137311137338%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137309137343%_))
                                      (let ((_%e137314137346%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137309137343%_))))
                                        (let ((_%hd137313137349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137314137346%_)))
                                              (_%tl137312137351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137314137346%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137312137351%_))
                                              (let ((_%e137317137354%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137312137351%_))))
                                                (let ((_%hd137316137357%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137317137354%_)))
                                                      (_%tl137315137359%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137317137354%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137315137359%_))
                                                      (let ((_%e137320137362%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137315137359%_))))
                (let ((_%hd137319137365%_
                       (let () (declare (not safe)) (##car _%e137320137362%_)))
                      (_%tl137318137367%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137320137362%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137318137367%_))
                      ((lambda (_%L137370%_
                                _%L137371%_
                                _%L137372%_
                                _%L137373%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137297%_
                                        _%L137371%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137297%_
                                              _%L137370%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137297%_
                                                    _%L137372%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137297%_
                                                          _%L137373%_))
                                                       (cons ''#f '())))))))
                       _%hd137319137365%_
                       _%hd137316137357%_
                       _%hd137313137349%_
                       _%hd137310137341%_)
                      (let ()
                        (declare (not safe))
                        (_%g137300137325%_ _%g137301137328%_)))))
              (let ()
                (declare (not safe))
                (_%g137300137325%_ _%g137301137328%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137300137325%_
                                                 _%g137301137328%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137300137325%_
                                         _%g137301137328%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137300137325%_ _%g137301137328%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137300137325%_ _%g137301137328%_))))))
          (declare (not safe))
          (_%g137299137394%_ _%stx137298%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self137213%_ _%stx137214%_)
        (let* ((_%g137216137237%_
                (lambda (_%g137217137234%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137217137234%_))))
               (_%g137215137294%_
                (lambda (_%g137217137240%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137217137240%_))
                      (let ((_%e137223137242%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137217137240%_))))
                        (let ((_%hd137222137245%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137223137242%_)))
                              (_%tl137221137247%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137223137242%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137221137247%_))
                              (let ((_%e137226137250%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137221137247%_))))
                                (let ((_%hd137225137253%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137226137250%_)))
                                      (_%tl137224137255%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137226137250%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137224137255%_))
                                      (let ((_%e137229137258%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137224137255%_))))
                                        (let ((_%hd137228137261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137229137258%_)))
                                              (_%tl137227137263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137229137258%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137227137263%_))
                                              (let ((_%e137232137266%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137227137263%_))))
                                                (let ((_%hd137231137269%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137232137266%_)))
                                                      (_%tl137230137271%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137232137266%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137230137271%_))
                                                      ((lambda (_%L137274%_
                                                                _%L137275%_
                                                                _%L137276%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137213%_ _%L137274%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137213%_
                                      _%L137275%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137213%_
                                            _%L137276%_))
                                         (cons ''#f '()))))))
               _%hd137231137269%_
               _%hd137228137261%_
               _%hd137225137253%_)
              (let ()
                (declare (not safe))
                (_%g137216137237%_ _%g137217137240%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137216137237%_
                                                 _%g137217137240%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137216137237%_
                                         _%g137217137240%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137216137237%_ _%g137217137240%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137216137237%_ _%g137217137240%_))))))
          (declare (not safe))
          (_%g137215137294%_ _%stx137214%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self137113%_ _%stx137114%_)
        (let* ((_%g137116137141%_
                (lambda (_%g137117137138%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137117137138%_))))
               (_%g137115137210%_
                (lambda (_%g137117137144%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137117137144%_))
                      (let ((_%e137124137146%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137117137144%_))))
                        (let ((_%hd137123137149%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137124137146%_)))
                              (_%tl137122137151%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137124137146%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137122137151%_))
                              (let ((_%e137127137154%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137122137151%_))))
                                (let ((_%hd137126137157%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137127137154%_)))
                                      (_%tl137125137159%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137127137154%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137125137159%_))
                                      (let ((_%e137130137162%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137125137159%_))))
                                        (let ((_%hd137129137165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137130137162%_)))
                                              (_%tl137128137167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137130137162%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137128137167%_))
                                              (let ((_%e137133137170%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137128137167%_))))
                                                (let ((_%hd137132137173%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137133137170%_)))
                                                      (_%tl137131137175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137133137170%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137131137175%_))
                                                      (let ((_%e137136137178%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137131137175%_))))
                (let ((_%hd137135137181%_
                       (let () (declare (not safe)) (##car _%e137136137178%_)))
                      (_%tl137134137183%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137136137178%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137134137183%_))
                      ((lambda (_%L137186%_
                                _%L137187%_
                                _%L137188%_
                                _%L137189%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137113%_
                                        _%L137187%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137113%_
                                              _%L137186%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137113%_
                                                    _%L137188%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137113%_
                                                          _%L137189%_))
                                                       (cons ''#f '())))))))
                       _%hd137135137181%_
                       _%hd137132137173%_
                       _%hd137129137165%_
                       _%hd137126137157%_)
                      (let ()
                        (declare (not safe))
                        (_%g137116137141%_ _%g137117137144%_)))))
              (let ()
                (declare (not safe))
                (_%g137116137141%_ _%g137117137144%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137116137141%_
                                                 _%g137117137144%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137116137141%_
                                         _%g137117137144%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137116137141%_ _%g137117137144%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137116137141%_ _%g137117137144%_))))))
          (declare (not safe))
          (_%g137115137210%_ _%stx137114%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self136908%_ _%stx136909%_)
        (let* ((_%g136911136932%_
                (lambda (_%g136912136929%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136912136929%_))))
               (_%g136910137110%_
                (lambda (_%g136912136935%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136912136935%_))
                      (let ((_%e136918136937%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136912136935%_))))
                        (let ((_%hd136917136940%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136918136937%_)))
                              (_%tl136916136942%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136918136937%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136916136942%_))
                              (let ((_%e136921136945%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136916136942%_))))
                                (let ((_%hd136920136948%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136921136945%_)))
                                      (_%tl136919136950%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136921136945%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136919136950%_))
                                      (let ((_%e136924136953%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136919136950%_))))
                                        (let ((_%hd136923136956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136924136953%_)))
                                              (_%tl136922136958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136924136953%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136922136958%_))
                                              (let ((_%e136927136961%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136922136958%_))))
                                                (let ((_%hd136926136964%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136927136961%_)))
                                                      (_%tl136925136966%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136927136961%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl136925136966%_))
                                                      ((lambda (_%L136969%_
                                                                _%L136970%_
                                                                _%L136971%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (cons '##unchecked-structure-ref
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self136908%_
                                    _%L136969%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self136908%_
                                          _%L136970%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp136989%_ ((_%rest136992%_
                                         (cons _%L136970%_
                                               (cons _%L136969%_ '())))
                                        (_%bind136994%_ '())
                                        (_%args136995%_ '()))
                       (let* ((_%rest136996137004%_ _%rest136992%_)
                              (_%else136998137012%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind136994%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp145238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp145238 _%args136995%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K137000137098%_
                               (lambda (_%rest137015%_ _%e137016%_)
                                 (let* ((_%__stx144806144807%_ _%e137016%_)
                                        (_%g137021137039%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144806144807%_)))))
                                   (let ((_%__kont144808144809%_
                                          (lambda ()
                                            (let ((__tmp145239
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137016%_))
                                                         _%args136995%_)))
                                              (declare (not safe))
                                              (_%lp136989%_
                                               _%rest137015%_
                                               _%bind136994%_
                                               __tmp145239))))
                                         (_%__kont144810144811%_
                                          (lambda ()
                                            (let ((__tmp145240
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137016%_))
                                                         _%args136995%_)))
                                              (declare (not safe))
                                              (_%lp136989%_
                                               _%rest137015%_
                                               _%bind136994%_
                                               __tmp145240))))
                                         (_%__kont144812144813%_
                                          (lambda ()
                                            (let ((_%tmp137046%_
                                                   (let ((__tmp145241
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp145241))))
                                              (let ((__tmp145243
                                                     (cons (cons _%tmp137046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__0 _%e137016%_))
                               '()))
                   _%bind136994%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145242
                                                     (cons _%tmp137046%_
                                                           _%args136995%_)))
                                                (declare (not safe))
                                                (_%lp136989%_
                                                 _%rest137015%_
                                                 __tmp145243
                                                 __tmp145242))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144806144807%_))
                                         (let ((_%e137025137077%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144806144807%_))))
                                           (let ((_%tl137023137082%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e137025137077%_)))
                                                 (_%hd137024137080%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e137025137077%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd137024137080%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd137024137080%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl137023137082%_))
                                                         (let ((_%e137028137085%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl137023137082%_))))
                   (let ((_%tl137026137090%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e137028137085%_)))
                         (_%hd137027137088%_
                          (let ()
                            (declare (not safe))
                            (##car _%e137028137085%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl137026137090%_))
                         (_%__kont144808144809%_)
                         (_%__kont144812144813%_))))
                 (_%__kont144812144813%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd137024137080%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl137023137082%_))
                     (let ((_%e137034137062%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl137023137082%_))))
                       (let ((_%tl137032137067%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e137034137062%_)))
                             (_%hd137033137065%_
                              (let ()
                                (declare (not safe))
                                (##car _%e137034137062%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl137032137067%_))
                             (_%__kont144810144811%_)
                             (_%__kont144812144813%_))))
                     (_%__kont144812144813%_))
                 (_%__kont144812144813%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144812144813%_))))
                                         (_%__kont144812144813%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest136996137004%_))
                             (let ((_%hd137001137101%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest136996137004%_)))
                                   (_%tl137002137103%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest136996137004%_))))
                               (let* ((_%e137106%_ _%hd137001137101%_)
                                      (_%rest137108%_ _%tl137002137103%_))
                                 (declare (not safe))
                                 (_%K137000137098%_
                                  _%rest137108%_
                                  _%e137106%_)))
                             (let ()
                               (declare (not safe))
                               (_%else136998137012%_)))))))
               _%hd136926136964%_
               _%hd136923136956%_
               _%hd136920136948%_)
              (let ()
                (declare (not safe))
                (_%g136911136932%_ _%g136912136935%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g136911136932%_
                                                 _%g136912136935%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136911136932%_
                                         _%g136912136935%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136911136932%_ _%g136912136935%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136911136932%_ _%g136912136935%_))))))
          (declare (not safe))
          (_%g136910137110%_ _%stx136909%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self136687%_ _%stx136688%_)
        (let* ((_%g136690136715%_
                (lambda (_%g136691136712%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136691136712%_))))
               (_%g136689136905%_
                (lambda (_%g136691136718%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136691136718%_))
                      (let ((_%e136698136720%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136691136718%_))))
                        (let ((_%hd136697136723%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136698136720%_)))
                              (_%tl136696136725%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136698136720%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136696136725%_))
                              (let ((_%e136701136728%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136696136725%_))))
                                (let ((_%hd136700136731%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136701136728%_)))
                                      (_%tl136699136733%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136701136728%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136699136733%_))
                                      (let ((_%e136704136736%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136699136733%_))))
                                        (let ((_%hd136703136739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136704136736%_)))
                                              (_%tl136702136741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136704136736%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136702136741%_))
                                              (let ((_%e136707136744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136702136741%_))))
                                                (let ((_%hd136706136747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136707136744%_)))
                                                      (_%tl136705136749%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136707136744%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl136705136749%_))
                                                      (let ((_%e136710136752%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl136705136749%_))))
                (let ((_%hd136709136755%_
                       (let () (declare (not safe)) (##car _%e136710136752%_)))
                      (_%tl136708136757%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e136710136752%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl136708136757%_))
                      ((lambda (_%L136760%_
                                _%L136761%_
                                _%L136762%_
                                _%L136763%_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self136687%_
                                            _%L136761%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self136687%_
                                                  _%L136760%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self136687%_
                                                        _%L136762%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp136784%_ ((_%rest136787%_
                                                 (cons _%L136762%_
                                                       (cons _%L136760%_
                                                             (cons _%L136761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind136789%_ '())
                                                (_%args136790%_ '()))
                               (let* ((_%rest136791136799%_ _%rest136787%_)
                                      (_%else136793136807%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind136789%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp145244 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp145244 _%args136790%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K136795136893%_
                                       (lambda (_%rest136810%_ _%e136811%_)
                                         (let* ((_%__stx144852144853%_
                                                 _%e136811%_)
                                                (_%g136816136834%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx144852144853%_)))))
                                           (let ((_%__kont144854144855%_
                                                  (lambda ()
                                                    (let ((__tmp145245
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e136811%_))
                         _%args136790%_)))
              (declare (not safe))
              (_%lp136784%_ _%rest136810%_ _%bind136789%_ __tmp145245))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144856144857%_
                                                  (lambda ()
                                                    (let ((__tmp145246
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e136811%_))
                         _%args136790%_)))
              (declare (not safe))
              (_%lp136784%_ _%rest136810%_ _%bind136789%_ __tmp145246))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144858144859%_
                                                  (lambda ()
                                                    (let ((_%tmp136841%_
                                                           (let ((__tmp145247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp145247))))
              (let ((__tmp145249
                     (cons (cons _%tmp136841%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e136811%_))
                                       '()))
                           _%bind136789%_))
                    (__tmp145248 (cons _%tmp136841%_ _%args136790%_)))
                (declare (not safe))
                (_%lp136784%_ _%rest136810%_ __tmp145249 __tmp145248))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx144852144853%_))
                                                 (let ((_%e136820136872%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx144852144853%_))))
                                                   (let ((_%tl136818136877%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e136820136872%_)))
                                                         (_%hd136819136875%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e136820136872%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd136819136875%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd136819136875%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl136818136877%_))
                         (let ((_%e136823136880%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl136818136877%_))))
                           (let ((_%tl136821136885%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e136823136880%_)))
                                 (_%hd136822136883%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e136823136880%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl136821136885%_))
                                 (_%__kont144854144855%_)
                                 (_%__kont144858144859%_))))
                         (_%__kont144858144859%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd136819136875%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl136818136877%_))
                             (let ((_%e136829136857%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl136818136877%_))))
                               (let ((_%tl136827136862%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e136829136857%_)))
                                     (_%hd136828136860%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e136829136857%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl136827136862%_))
                                     (_%__kont144856144857%_)
                                     (_%__kont144858144859%_))))
                             (_%__kont144858144859%_))
                         (_%__kont144858144859%_)))
                 (_%__kont144858144859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144858144859%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest136791136799%_))
                                     (let ((_%hd136796136896%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest136791136799%_)))
                                           (_%tl136797136898%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest136791136799%_))))
                                       (let* ((_%e136901%_ _%hd136796136896%_)
                                              (_%rest136903%_
                                               _%tl136797136898%_))
                                         (declare (not safe))
                                         (_%K136795136893%_
                                          _%rest136903%_
                                          _%e136901%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%else136793136807%_)))))))
                       _%hd136709136755%_
                       _%hd136706136747%_
                       _%hd136703136739%_
                       _%hd136700136731%_)
                      (let ()
                        (declare (not safe))
                        (_%g136690136715%_ _%g136691136718%_)))))
              (let ()
                (declare (not safe))
                (_%g136690136715%_ _%g136691136718%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g136690136715%_
                                                 _%g136691136718%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136690136715%_
                                         _%g136691136718%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136690136715%_ _%g136691136718%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136690136715%_ _%g136691136718%_))))))
          (declare (not safe))
          (_%g136689136905%_ _%stx136688%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self136526%_ _%stx136527%_)
        (letrec ((_%import-set-template136529%_
                  (lambda (_%in136632%_ _%phi136633%_)
                    (let ((_%iphi136635%_
                           (fx+ _%phi136633%_
                                (##direct-structure-ref
                                 _%in136632%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports136636%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in136632%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp136638%_ ((_%rest136640%_ _%imports136636%_)
                                         (_%r136641%_ '()))
                        (let* ((_%rest136642136650%_ _%rest136640%_)
                               (_%else136644136658%_ (lambda () _%r136641%_))
                               (_%K136646136675%_
                                (lambda (_%rest136661%_ _%in136662%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in136662%_
                                         'gx#module-context::t))
                                      (let ()
                                        (if (let ()
                                              (declare (not safe))
                                              (##fxzero? _%iphi136635%_))
                                            (let ((__tmp145250
                                                   (cons _%in136662%_
                                                         _%r136641%_)))
                                              (declare (not safe))
                                              (_%lp136638%_
                                               _%rest136661%_
                                               __tmp145250))
                                            (let ()
                                              (declare (not safe))
                                              (_%lp136638%_
                                               _%rest136661%_
                                               _%r136641%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in136662%_
                                             'gx#module-import::t))
                                          (let ()
                                            (let ((_%iphi136666%_
                                                   (fx+ _%phi136633%_
                                                        (##direct-structure-ref
                                                         _%in136662%_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fxzero? _%iphi136666%_))
                                                  (let ((__tmp145251
                                                         (cons (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in136662%_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)
                       _%r136641%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%lp136638%_
                                                     _%rest136661%_
                                                     __tmp145251))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%lp136638%_
                                                     _%rest136661%_
                                                     _%r136641%_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in136662%_
                                                 'gx#import-set::t))
                                              (let ()
                                                (let ((_%xphi136669%_
                                                       (fx+ _%iphi136635%_
                                                            (##direct-structure-ref
                                                             _%in136662%_
                                                             '2
                                                             gx#import-set::t
                                                             '#f))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##fxzero?
                                                         _%xphi136669%_))
                                                      (let ()
                                                        (let ((__tmp145252
                                                               (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%in136662%_
                              '1
                              gx#import-set::t
                              '#f)
                             _%r136641%_)))
                  (declare (not safe))
                  (_%lp136638%_ _%rest136661%_ __tmp145252)))
              (if (let () (declare (not safe)) (##fxpositive? _%xphi136669%_))
                  (let ()
                    (let ((__tmp145253
                           (let ((__tmp145254
                                  (let ()
                                    (declare (not safe))
                                    (_%import-set-template136529%_
                                     _%in136662%_
                                     _%iphi136635%_))))
                             (declare (not safe))
                             (__foldl1 cons _%r136641%_ __tmp145254))))
                      (declare (not safe))
                      (_%lp136638%_ _%rest136661%_ __tmp145253)))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (_%lp136638%_ _%rest136661%_ _%r136641%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp136638%_
                                                   _%rest136661%_
                                                   _%r136641%_)))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest136642136650%_))
                              (let ((_%hd136647136678%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest136642136650%_)))
                                    (_%tl136648136680%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest136642136650%_))))
                                (let* ((_%in136683%_ _%hd136647136678%_)
                                       (_%rest136685%_ _%tl136648136680%_))
                                  (declare (not safe))
                                  (_%K136646136675%_
                                   _%rest136685%_
                                   _%in136683%_)))
                              (let ()
                                (declare (not safe))
                                (_%else136644136658%_)))))))))
          (let* ((_%g136531136541%_
                  (lambda (_%g136532136538%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136532136538%_))))
                 (_%g136530136629%_
                  (lambda (_%g136532136544%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136532136544%_))
                        (let ((_%e136536136546%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136532136544%_))))
                          (let ((_%hd136535136549%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136536136546%_)))
                                (_%tl136534136551%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136536136546%_))))
                            ((lambda (_%L136554%_)
                               (let ((_%ht136565%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp136567%_ ((_%rest136569%_
                                                     _%L136554%_)
                                                    (_%loads136570%_ '()))
                                   (letrec ((_%K136572%_
                                             (lambda (_%ctx136622%_
                                                      _%rest136623%_)
                                               (let ((_%id136625%_
                                                      (##structure-ref
                                                       _%ctx136622%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht136565%_
                                                        _%id136625%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp136567%_
                                                        _%rest136623%_
                                                        _%loads136570%_))
                                                     (let ((_%rt136627%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id136625%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht136565%_
                                                          _%id136625%_
                                                          _%rt136627%_))
                                                       (let ((__tmp145255
                                                              (cons _%rt136627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%loads136570%_)))
                 (declare (not safe))
                 (_%lp136567%_ _%rest136623%_ __tmp145255))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_%rest136573136581%_
                                             _%rest136569%_)
                                            (_%else136575136593%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp145257
                                                            (lambda (_%g136588136590%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g136588136590%_)))
                   (__tmp145256 (reverse _%loads136570%_)))
               (declare (not safe))
               (##map __tmp145257 __tmp145256)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K136577136610%_
                                             (lambda (_%rest136596%_
                                                      _%in136597%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in136597%_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%K136572%_
                                                        _%in136597%_
                                                        _%rest136596%_)))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in136597%_
                                                          'gx#module-import::t))
                                                       (let ()
                                                         (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%in136597%_
                               '3
                               gx#module-import::t
                               '#f))
                     (let ((__tmp145258
                            (##direct-structure-ref
                             (##direct-structure-ref
                              _%in136597%_
                              '1
                              gx#module-import::t
                              '#f)
                             '1
                             gx#module-export::t
                             '#f)))
                       (declare (not safe))
                       (_%K136572%_ __tmp145258 _%rest136596%_))
                     (let ()
                       (declare (not safe))
                       (_%lp136567%_ _%rest136596%_ _%loads136570%_))))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in136597%_
                      'gx#import-set::t))
                   (let ()
                     (let ((_%phi136602%_
                            (##direct-structure-ref
                             _%in136597%_
                             '2
                             gx#import-set::t
                             '#f)))
                       (if (fxzero? _%phi136602%_)
                           (let ()
                             (let ((__tmp145259
                                    (##direct-structure-ref
                                     _%in136597%_
                                     '1
                                     gx#import-set::t
                                     '#f)))
                               (declare (not safe))
                               (_%K136572%_ __tmp145259 _%rest136596%_)))
                           (if (fxpositive? _%phi136602%_)
                               (let ()
                                 (let* ((_%deps136606%_
                                         (let ()
                                           (declare (not safe))
                                           (_%import-set-template136529%_
                                            _%in136597%_
                                            '0)))
                                        (__tmp145260
                                         (let ()
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            _%rest136596%_
                                            _%deps136606%_))))
                                   (declare (not safe))
                                   (_%lp136567%_ __tmp145260 _%loads136570%_)))
                               (let ()
                                 (let ()
                                   (declare (not safe))
                                   (_%lp136567%_
                                    _%rest136596%_
                                    _%loads136570%_)))))))
                   (let ()
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"Unexpected import"
                        _%stx136527%_
                        _%in136597%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest136573136581%_))
                                           (let ((_%hd136578136613%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest136573136581%_)))
                                                 (_%tl136579136615%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest136573136581%_))))
                                             (let* ((_%in136618%_
                                                     _%hd136578136613%_)
                                                    (_%rest136620%_
                                                     _%tl136579136615%_))
                                               (declare (not safe))
                                               (_%K136577136610%_
                                                _%rest136620%_
                                                _%in136618%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%else136575136593%_))))))))
                             _%tl136534136551%_)))
                        (let ()
                          (declare (not safe))
                          (_%g136531136541%_ _%g136532136544%_))))))
            (declare (not safe))
            (_%g136530136629%_ _%stx136527%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self136339%_ _%stx136340%_)
        (letrec ((_%add-lift!136342%_
                  (lambda (_%expr136524%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr136524%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote136343%_
                  (lambda (_%id136521%_ _%marks136522%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id136521%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks136522%_
                                                        '()))))))))
                 (_%generate-simple136344%_
                  (lambda (_%stxq136516%_)
                    (let ((_%gid136518%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid136519%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq136516%_))))
                      (let ((__tmp145261
                             (cons 'define
                                   (cons _%gid136518%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136343%_
                                                  _%qid136519%_
                                                  ''()))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136342%_ __tmp145261))
                      (let ((__tmp145262
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145262 _%stxq136516%_ _%gid136518%_))
                      _%gid136518%_)))
                 (_%generate-serialized136345%_
                  (lambda (_%stxq136506%_ _%marks136507%_)
                    (let* ((_%mark-refs136509%_
                            (map _%generate-mark136346%_ _%marks136507%_))
                           (_%gid136511%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid136513%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq136506%_))))
                      (let ((__tmp145263
                             (cons 'define
                                   (cons _%gid136511%_
                                         (cons (let ((__tmp145264
                                                      (cons 'list
                                                            _%mark-refs136509%_)))
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136343%_
                                                  _%qid136513%_
                                                  __tmp145264))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136342%_ __tmp145263))
                      (let ((__tmp145265
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145265 _%stxq136506%_ _%gid136511%_))
                      _%gid136511%_)))
                 (_%generate-mark136346%_
                  (lambda (_%mark136491%_)
                    (let ((_%$e136493%_
                           (let ((__tmp145266
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp145266 _%mark136491%_))))
                      (if _%$e136493%_
                          (values _%$e136493%_)
                          (let ()
                            (let* ((_%gid136497%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-temporary__% '#t)))
                                   (_%repr136499%_
                                    (let ()
                                      (declare (not safe))
                                      (_%serialize-mark136347%_
                                       _%mark136491%_)))
                                   (_%ctx136501%_
                                    (let ((__tmp145267
                                           (##structure-ref
                                            _%mark136491%_
                                            '2
                                            gx#expander-mark::t
                                            '#f)))
                                      (declare (not safe))
                                      (gx#core-context-top__1 __tmp145267)))
                                   (_%ctx-ref136503%_
                                    (if (eq? _%ctx136501%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#current-expander-context)))
                                        '(gx#current-expander-context)
                                        (cons 'gx#import-module
                                              (cons (cons 'quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_%context-ref136348%_ _%ctx136501%_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              (let ((__tmp145268
                                     (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-marks))))
                                (declare (not safe))
                                (hash-put!
                                 __tmp145268
                                 _%mark136491%_
                                 _%gid136497%_))
                              (let ((__tmp145269
                                     (cons 'define
                                           (cons _%gid136497%_
                                                 (cons (cons 'gx#core-deserialize-mark
                                                             (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%repr136499%_ '()))
                           (cons _%ctx-ref136503%_ '())))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (_%add-lift!136342%_ __tmp145269))
                              _%gid136497%_))))))
                 (_%serialize-mark136347%_
                  (lambda (_%mark136438%_)
                    (letrec ((_%quote-e136440%_
                              (lambda (_%sym136489%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym136489%_))
                                    _%sym136489%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym136489%_))))))
                      (let* ((_%mark136441136450%_ _%mark136438%_)
                             (_%E136443136454%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark136441136450%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K136444136466%_
                              (lambda (_%trace136457%_
                                       _%phi136458%_
                                       _%ctx136459%_
                                       _%subst136460%_)
                                (let ((_%subs136462%_
                                       (if _%subst136460%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst136460%_))
                                           '())))
                                  (cons _%phi136458%_
                                        (map (lambda (_%pair136464%_)
                                               (cons (let ((__tmp145270
                                                            (car _%pair136464%_)))
                                                       (declare (not safe))
                                                       (_%quote-e136440%_
                                                        __tmp145270))
                                                     (let ((__tmp145271
                                                            (cdr _%pair136464%_)))
                                                       (declare (not safe))
                                                       (_%quote-e136440%_
                                                        __tmp145271))))
                                             _%subs136462%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark136441136450%_
                               'gx#expander-mark::t))
                            (let* ((_%e136445136469%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136441136450%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst136472%_ _%e136445136469%_)
                                   (_%e136446136474%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136441136450%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx136477%_ _%e136446136474%_)
                                   (_%e136447136479%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136441136450%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi136482%_ _%e136447136479%_)
                                   (_%e136448136484%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136441136450%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace136487%_ _%e136448136484%_))
                              (declare (not safe))
                              (_%K136444136466%_
                               _%trace136487%_
                               _%phi136482%_
                               _%ctx136477%_
                               _%subst136472%_))
                            (let ()
                              (declare (not safe))
                              (_%E136443136454%_)))))))
                 (_%context-ref136348%_
                  (lambda (_%ctx136425%_)
                    (if (let ((__tmp145272
                               (##structure-ref
                                _%ctx136425%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp145272
                           'gx#module-context::t))
                        (let ((_%ctx-ref136427%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-nested136350%_ _%ctx136425%_)))
                              (_%ctx-origin136428%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-origin136349%_ _%ctx136425%_)))
                              (_%origin136429%_
                               (let ((__tmp145273
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (_%context-ref-origin136349%_ __tmp145273))))
                          (if (eq? _%origin136429%_ _%ctx-origin136428%_)
                              (let ((_%ref136431%_
                                     (let ((__tmp145274
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-context))))
                                       (declare (not safe))
                                       (_%context-ref-nested136350%_
                                        __tmp145274))))
                                (let _%lp136433%_ ((_%ref136435%_
                                                    (cdr _%ref136431%_))
                                                   (_%ctx-ref136436%_
                                                    (cdr _%ctx-ref136427%_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _%ref136435%_))
                                           (eq? (car _%ref136435%_)
                                                (car _%ctx-ref136436%_)))
                                      (let ((__tmp145276 (cdr _%ref136435%_))
                                            (__tmp145275
                                             (cdr _%ctx-ref136436%_)))
                                        (declare (not safe))
                                        (_%lp136433%_ __tmp145276 __tmp145275))
                                      (cons '#f _%ctx-ref136436%_))))
                              _%ctx-ref136427%_))
                        (let ((__tmp145277
                               (##structure-ref
                                _%ctx136425%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp145277)))))
                 (_%context-ref-origin136349%_
                  (lambda (_%ctx136417%_)
                    (let _%lp136419%_ ((_%ctx136421%_ _%ctx136417%_))
                      (let ((_%super136423%_
                             (##structure-ref
                              _%ctx136421%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136423%_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_%lp136419%_ _%super136423%_))
                            _%ctx136421%_)))))
                 (_%context-ref-nested136350%_
                  (lambda (_%ctx136408%_)
                    (let _%lp136410%_ ((_%ctx136412%_ _%ctx136408%_)
                                       (_%r136413%_ '()))
                      (let ((_%super136415%_
                             (##structure-ref
                              _%ctx136412%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136415%_
                               'gx#module-context::t))
                            (let ((__tmp145278
                                   (cons (car (##structure-ref
                                               _%ctx136412%_
                                               '7
                                               gx#module-context::t
                                               '#f))
                                         _%r136413%_)))
                              (declare (not safe))
                              (_%lp136410%_ _%super136415%_ __tmp145278))
                            (cons (let ((__tmp145279
                                         (##structure-ref
                                          _%ctx136412%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp145279))
                                  _%r136413%_)))))))
          (let* ((_%g136352136365%_
                  (lambda (_%g136353136362%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136353136362%_))))
                 (_%g136351136405%_
                  (lambda (_%g136353136368%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136353136368%_))
                        (let ((_%e136357136370%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136353136368%_))))
                          (let ((_%hd136356136373%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136357136370%_)))
                                (_%tl136355136375%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136357136370%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136355136375%_))
                                (let ((_%e136360136378%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136355136375%_))))
                                  (let ((_%hd136359136381%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136360136378%_)))
                                        (_%tl136358136383%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136360136378%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136358136383%_))
                                        ((lambda (_%L136386%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L136386%_))
                                               (let ((_%$e136399%_
                                                      (let ((__tmp145280
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp145280 _%L136386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e136399%_
                                                     (values _%$e136399%_)
                                                     (let ()
                                                       (let ((_%marks136403%_
                                                              (##direct-structure-ref
                                                               _%L136386%_
                                                               '4
                                                               gx#syntax-quote::t
                                                               '#f)))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _%marks136403%_))
                     (let ()
                       (declare (not safe))
                       (_%generate-simple136344%_ _%L136386%_))
                     (let ()
                       (declare (not safe))
                       (_%generate-serialized136345%_
                        _%L136386%_
                        _%marks136403%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L136386%_))))
                                         _%hd136359136381%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g136352136365%_
                                           _%g136353136368%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g136352136365%_ _%g136353136368%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g136352136365%_ _%g136353136368%_))))))
            (declare (not safe))
            (_%g136351136405%_ _%stx136340%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self136271%_ _%stx136272%_)
        (let* ((_%g136274136291%_
                (lambda (_%g136275136288%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136275136288%_))))
               (_%g136273136336%_
                (lambda (_%g136275136294%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136275136294%_))
                      (let ((_%e136280136296%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136275136294%_))))
                        (let ((_%hd136279136299%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136280136296%_)))
                              (_%tl136278136301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136280136296%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136278136301%_))
                              (let ((_%e136283136304%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136278136301%_))))
                                (let ((_%hd136282136307%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136283136304%_)))
                                      (_%tl136281136309%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136283136304%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136281136309%_))
                                      (let ((_%e136286136312%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136281136309%_))))
                                        (let ((_%hd136285136315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136286136312%_)))
                                              (_%tl136284136317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136286136312%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136284136317%_))
                                              ((lambda (_%L136320%_
                                                        _%L136321%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136321%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self136271%_ _%L136320%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd136285136315%_
                                               _%hd136282136307%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g136274136291%_
                                                 _%g136275136294%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136274136291%_
                                         _%g136275136294%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136274136291%_ _%g136275136294%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136274136291%_ _%g136275136294%_))))))
          (declare (not safe))
          (_%g136273136336%_ _%stx136272%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self136220%_ _%stx136221%_)
        (let* ((_%g136223136233%_
                (lambda (_%g136224136230%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136224136230%_))))
               (_%g136222136268%_
                (lambda (_%g136224136236%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136224136236%_))
                      (let ((_%e136228136238%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136224136236%_))))
                        (let ((_%hd136227136241%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136228136238%_)))
                              (_%tl136226136243%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136228136238%_))))
                          ((lambda (_%L136246%_)
                             (let* ((_%c-body136260%_
                                     (map (lambda (_%g136255136257%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self136220%_
                                               _%g136255136257%_)))
                                          _%L136246%_))
                                    (_%c-body136265%_
                                     (let ((__tmp145281
                                            (lambda (_%$obj136262%_)
                                              (let ((__tmp145282
                                                     (let ()
                                                       (declare (not safe))
                                                       (eq? _%$obj136262%_
                                                            '#!void))))
                                                (declare (not safe))
                                                (not __tmp145282)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp145281
                                        _%c-body136260%_))))
                               (cons '%#begin _%c-body136265%_)))
                           _%tl136226136243%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136223136233%_ _%g136224136236%_))))))
          (declare (not safe))
          (_%g136222136268%_ _%stx136221%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self136125%_ _%stx136126%_)
        (let* ((_%g136128136138%_
                (lambda (_%g136129136135%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136129136135%_))))
               (_%g136127136217%_
                (lambda (_%g136129136141%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136129136141%_))
                      (let ((_%e136133136143%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136129136141%_))))
                        (let ((_%hd136132136146%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136133136143%_)))
                              (_%tl136131136148%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136133136143%_))))
                          ((lambda (_%L136151%_)
                             (let* ((_%phi136161%_
                                     (let ((__tmp145283
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp145283 '1)))
                                    (_%block136163%_
                                     (let ((__tmp145284
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self136125%_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp145284
                                        _%phi136161%_)))
                                    (_%compiled136166%_
                                     (let ((__tmp145285
                                            (lambda ()
                                              (let ((__tmp145287
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%L136151%_))
                                                    (__tmp145286
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self136125%_
                                                        'state))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp145287
                                                 'state:
                                                 __tmp145286)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp145285
                                        gx#current-expander-phi
                                        _%phi136161%_))))
                               (let* ((_%g136169136179%_
                                       (lambda (_%g136170136176%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g136170136176%_))))
                                      (_%g136168136214%_
                                       (lambda (_%g136170136182%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%g136170136182%_))
                                             (let ((_%e136174136184%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%g136170136182%_))))
                                               (let ((_%hd136173136187%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e136174136184%_)))
                                                     (_%tl136172136189%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e136174136184%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd136173136187%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _%hd136173136187%_))
                                                         ((lambda (_%L136192%_)
                                                            (let ((_%c-body136209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_%$obj136206%_)
                                     (let ((__tmp145288
                                            (let ()
                                              (declare (not safe))
                                              (eq? _%$obj136206%_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp145288)))
                                   _%L136192%_)))
                      (if _%block136163%_
                          (let ()
                            (cons '%#begin-syntax
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'load-module
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons _%block136163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%c-body136209%_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _%c-body136209%_))
                              (let () '#!void)
                              (let ()
                                (cons '%#begin-syntax _%c-body136209%_))))))
                  _%tl136172136189%_)
                 (let ()
                   (declare (not safe))
                   (_%g136169136179%_ _%g136170136182%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g136169136179%_
                                                        _%g136170136182%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g136169136179%_
                                                _%g136170136182%_))))))
                                 (declare (not safe))
                                 (_%g136168136214%_ _%compiled136166%_))))
                           _%tl136131136148%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136128136138%_ _%g136129136141%_))))))
          (declare (not safe))
          (_%g136127136217%_ _%stx136126%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self136056%_ _%stx136057%_)
        (let ((__tmp145289
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self136056%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp145289))
        (let* ((_%g136059136073%_
                (lambda (_%g136060136070%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136060136070%_))))
               (_%g136058136122%_
                (lambda (_%g136060136076%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136060136076%_))
                      (let ((_%e136065136078%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136060136076%_))))
                        (let ((_%hd136064136081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136065136078%_)))
                              (_%tl136063136083%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136065136078%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136063136083%_))
                              (let ((_%e136068136086%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136063136083%_))))
                                (let ((_%hd136067136089%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136068136086%_)))
                                      (_%tl136066136091%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136068136086%_))))
                                  ((lambda (_%L136094%_ _%L136095%_)
                                     (let ((_%key136108%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L136095%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key136108%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx136057%_
                                              _%L136095%_
                                              _%key136108%_)))
                                       (let* ((_%ctx136110%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L136095%_)))
                                              (_%code136113%_
                                               (let ((__tmp145290
                                                      (lambda ()
                                                        (let ((__tmp145291
                                                               (##structure-ref
                                                                _%ctx136110%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self136056%_
                                                           __tmp145291)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp145290
                                                  gx#current-expander-context
                                                  _%ctx136110%_)))
                                              (_%rt136115%_
                                               (let ((__tmp145292
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp145292
                                                  _%ctx136110%_)))
                                              (_%loader136117%_
                                               (if _%rt136115%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt136115%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid136119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L136095%_))))
                                         (let ((__tmp145293
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self136056%_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp145293))
                                         (cons '%#module
                                               (cons _%modid136119%_
                                                     (cons _%code136113%_
                                                           _%loader136117%_))))))
                                   _%tl136066136091%_
                                   _%hd136067136089%_)))
                              (let ()
                                (declare (not safe))
                                (_%g136059136073%_ _%g136060136076%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136059136073%_ _%g136060136076%_))))))
          (declare (not safe))
          (_%g136058136122%_ _%stx136057%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx136043%_ _%context-chain136044%_)
        (let _%lp136046%_ ((_%ctx136048%_ _%ctx136043%_) (_%path136049%_ '()))
          (let ((_%super136051%_
                 (##structure-ref _%ctx136048%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super136051%_ _%context-chain136044%_)
                (let ()
                  (let ((__tmp145294
                         (let ((__tmp145295
                                (car (##structure-ref
                                      _%ctx136048%_
                                      '7
                                      gx#module-context::t
                                      '#f))))
                           (declare (not safe))
                           (cons __tmp145295 _%path136049%_))))
                    (declare (not safe))
                    (cons '#f __tmp145294)))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super136051%_
                       'gx#module-context::t))
                    (let ()
                      (let ((__tmp145296
                             (cons (car (##structure-ref
                                         _%ctx136048%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%path136049%_)))
                        (declare (not safe))
                        (_%lp136046%_ _%super136051%_ __tmp145296)))
                    (let ()
                      (cons (let ((__tmp145297
                                   (##structure-ref
                                    _%ctx136048%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (make-symbol__1 '":" __tmp145297))
                            _%path136049%_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp136036%_ ((_%ctx136038%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r136039%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx136038%_ 'gx#module-context::t))
              (let ()
                (let ((__tmp145299
                       (##structure-ref
                        _%ctx136038%_
                        '3
                        gx#phi-context::t
                        '#f))
                      (__tmp145298 (cons _%ctx136038%_ _%r136039%_)))
                  (declare (not safe))
                  (_%lp136036%_ __tmp145299 __tmp145298)))
              (let () _%r136039%_)))))
    (define gxc#generate-meta-import%
      (lambda (_%self135799%_ _%stx135800%_)
        (letrec* ((_%context-chain135802%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-spec135803%_
                   (lambda (_%in135972%_)
                     (let* ((_%in135973135985%_ _%in135972%_)
                            (_%E135975135989%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in135973135985%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K135976135999%_
                             (lambda (_%phi135992%_
                                      _%name135993%_
                                      _%src-name135994%_
                                      _%src-phi135995%_
                                      _%src-key135996%_
                                      _%src-ctx135997%_)
                               (cons _%phi135992%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name135993%_))
                                           (cons _%src-phi135995%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name135994%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in135973135985%_
                              'gx#module-import::t))
                           (let ((_%e135977136002%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in135973135985%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e135977136002%_
                                    'gx#module-export::t))
                                 (let* ((_%e135980136005%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135977136002%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx136008%_ _%e135980136005%_)
                                        (_%e135981136010%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135977136002%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key136013%_ _%e135981136010%_)
                                        (_%e135982136015%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135977136002%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi136018%_ _%e135982136015%_)
                                        (_%e135983136020%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135977136002%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name136023%_ _%e135983136020%_)
                                        (_%e135978136025%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in135973135985%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name136028%_ _%e135978136025%_)
                                        (_%e135979136030%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in135973135985%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi136033%_ _%e135979136030%_))
                                   (declare (not safe))
                                   (_%K135976135999%_
                                    _%phi136033%_
                                    _%name136028%_
                                    _%src-name136023%_
                                    _%src-phi136018%_
                                    _%src-key136013%_
                                    _%src-ctx136008%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%E135975135989%_))))
                           (let ()
                             (declare (not safe))
                             (_%E135975135989%_))))))
                  (_%make-import-path135804%_
                   (lambda (_%ctx135970%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx135970%_
                        _%context-chain135802%_))))
                  (_%make-import-spec-in135805%_
                   (lambda (_%ctx135967%_ _%in135968%_)
                     (cons 'spec:
                           (cons (let ()
                                   (declare (not safe))
                                   (_%make-import-path135804%_ _%ctx135967%_))
                                 (reverse _%in135968%_))))))
          (let ((__tmp145300
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self135799%_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp145300))
          (let* ((_%g135807135817%_
                  (lambda (_%g135808135814%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135808135814%_))))
                 (_%g135806135964%_
                  (lambda (_%g135808135820%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135808135820%_))
                        (let ((_%e135812135822%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135808135820%_))))
                          (let ((_%hd135811135825%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135812135822%_)))
                                (_%tl135810135827%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135812135822%_))))
                            ((lambda (_%L135830%_)
                               (let _%lp135841%_ ((_%rest135843%_ _%L135830%_)
                                                  (_%current-src135844%_ '#f)
                                                  (_%current-in135845%_ '())
                                                  (_%r135846%_ '()))
                                 (let* ((_%rest135847135855%_ _%rest135843%_)
                                        (_%else135849135865%_
                                         (lambda ()
                                           (let ((_%r135863%_
                                                  (if _%current-src135844%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%make-import-spec-in135805%_
                                                               _%current-src135844%_
                                                               _%current-in135845%_))
                                                            _%r135846%_)
                                                      _%r135846%_)))
                                             (cons '%#import
                                                   (reverse _%r135863%_)))))
                                        (_%K135851135952%_
                                         (lambda (_%rest135868%_ _%in135869%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in135869%_
                                                  'gx#module-import::t))
                                               (let ()
                                                 (let* ((_%in135871135878%_
                                                         _%in135869%_)
                                                        (_%E135873135882%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%in135871135878%_
                            '((module-import (module-export src-ctx)))))
                   '#!void))
                (_%K135874135890%_
                 (lambda (_%src-ctx135885%_)
                   (if (eq? _%current-src135844%_ _%src-ctx135885%_)
                       (let ()
                         (let ((__tmp145301
                                (cons (let ()
                                        (declare (not safe))
                                        (_%make-import-spec135803%_
                                         _%in135869%_))
                                      _%current-in135845%_)))
                           (declare (not safe))
                           (_%lp135841%_
                            _%rest135868%_
                            _%current-src135844%_
                            __tmp145301
                            _%r135846%_)))
                       (if _%current-src135844%_
                           (let ()
                             (let ((__tmp145303
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%make-import-spec135803%_
                                             _%in135869%_))
                                          '()))
                                   (__tmp145302
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%make-import-spec-in135805%_
                                             _%current-src135844%_
                                             _%current-in135845%_))
                                          _%r135846%_)))
                               (declare (not safe))
                               (_%lp135841%_
                                _%rest135868%_
                                _%src-ctx135885%_
                                __tmp145303
                                __tmp145302)))
                           (let ()
                             (let ((__tmp145304
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%make-import-spec135803%_
                                             _%in135869%_))
                                          '())))
                               (declare (not safe))
                               (_%lp135841%_
                                _%rest135868%_
                                _%src-ctx135885%_
                                __tmp145304
                                _%r135846%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in135871135878%_
                                                          'gx#module-import::t))
                                                       (let ((_%e135875135893%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%in135871135878%_
                         '1
                         '#f
                         '#f))))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        _%e135875135893%_
                        'gx#module-export::t))
                     (let* ((_%e135876135896%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%e135875135893%_
                                '1
                                '#f
                                '#f)))
                            (_%src-ctx135899%_ _%e135876135896%_))
                       (declare (not safe))
                       (_%K135874135890%_ _%src-ctx135899%_))
                     (let () (declare (not safe)) (_%E135873135882%_))))
               (let () (declare (not safe)) (_%E135873135882%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in135869%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (let* ((_%phi135902%_
                                                             (##direct-structure-ref
                                                              _%in135869%_
                                                              '2
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src135904%_
                                                             (##direct-structure-ref
                                                              _%in135869%_
                                                              '1
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src-in135944%_
                                                             (let* ((_%g135905135914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_%make-import-path135804%_ _%src135904%_)))
                            (_%E135908135918%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g135905135914%_
                                        '([path])
                                        '(path)))
                               '#!void)))
                       (let ((_%K135910135934%_
                              (lambda (_%path135932%_) _%path135932%_))
                             (_%K135909135924%_
                              (lambda (_%path135922%_)
                                (cons 'in: _%path135922%_))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g135905135914%_))
                             (let ((_%tl135912135939%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g135905135914%_)))
                                   (_%hd135911135937%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g135905135914%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl135912135939%_))
                                   (let ((_%path135942%_ _%hd135911135937%_))
                                     (declare (not safe))
                                     (_%K135910135934%_ _%path135942%_))
                                   (let ((_%path135927%_ _%g135905135914%_))
                                     (declare (not safe))
                                     (_%K135909135924%_ _%path135927%_))))
                             (let ((_%path135927%_ _%g135905135914%_))
                               (declare (not safe))
                               (_%K135909135924%_ _%path135927%_))))))
                    (_%r135946%_
                     (if _%current-src135844%_
                         (cons (let ()
                                 (declare (not safe))
                                 (_%make-import-spec-in135805%_
                                  _%current-src135844%_
                                  _%current-in135845%_))
                               _%r135846%_)
                         _%r135846%_)))
               (let ((__tmp145305
                      (cons (if (fxzero? _%phi135902%_)
                                _%src-in135944%_
                                (cons 'phi:
                                      (cons _%phi135902%_
                                            (cons _%src-in135944%_ '()))))
                            _%r135946%_)))
                 (declare (not safe))
                 (_%lp135841%_ _%rest135868%_ '#f '() __tmp145305))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in135869%_
                                                          'gx#module-context::t))
                                                       (let ()
                                                         (let* ((_%r135950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if _%current-src135844%_
                             (cons (let ()
                                     (declare (not safe))
                                     (_%make-import-spec-in135805%_
                                      _%current-src135844%_
                                      _%current-in135845%_))
                                   _%r135846%_)
                             _%r135846%_))
                        (__tmp145306
                         (cons (cons 'runtime:
                                     (let ()
                                       (declare (not safe))
                                       (_%make-import-path135804%_
                                        _%in135869%_)))
                               _%r135950%_)))
                   (declare (not safe))
                   (_%lp135841%_ _%rest135868%_ '#f '() __tmp145306)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135847135855%_))
                                       (let ((_%hd135852135955%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135847135855%_)))
                                             (_%tl135853135957%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135847135855%_))))
                                         (let* ((_%in135960%_
                                                 _%hd135852135955%_)
                                                (_%rest135962%_
                                                 _%tl135853135957%_))
                                           (declare (not safe))
                                           (_%K135851135952%_
                                            _%rest135962%_
                                            _%in135960%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else135849135865%_))))))
                             _%tl135810135827%_)))
                        (let ()
                          (declare (not safe))
                          (_%g135807135817%_ _%g135808135820%_))))))
            (declare (not safe))
            (_%g135806135964%_ _%stx135800%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self135609%_ _%stx135610%_)
        (letrec* ((_%context-chain135612%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-path135613%_
                   (lambda (_%ctx135797%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx135797%_
                        _%context-chain135612%_)))))
          (let* ((_%g135615135625%_
                  (lambda (_%g135616135622%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135616135622%_))))
                 (_%g135614135794%_
                  (lambda (_%g135616135628%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135616135628%_))
                        (let ((_%e135620135630%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135616135628%_))))
                          (let ((_%hd135619135633%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135620135630%_)))
                                (_%tl135618135635%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135620135630%_))))
                            ((lambda (_%L135638%_)
                               (let _%lp135649%_ ((_%rest135651%_ _%L135638%_)
                                                  (_%r135652%_ '()))
                                 (let* ((_%rest135653135661%_ _%rest135651%_)
                                        (_%else135655135669%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r135652%_))))
                                        (_%K135657135782%_
                                         (lambda (_%rest135672%_ _%out135673%_)
                                           (let* ((_%out135674135687%_
                                                   _%out135673%_)
                                                  (_%E135677135691%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out135674135687%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K135681135761%_
                                                    (lambda (_%name135757%_
                                                             _%phi135758%_
                                                             _%key135759%_)
                                                      (let ((__tmp145307
                                                             (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%phi135758%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%key135759%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-identifier-key
                                                      _%name135757%_))
                                                   '()))))
                           _%r135652%_)))
                (declare (not safe))
                (_%lp135649%_ _%rest135672%_ __tmp145307))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K135678135741%_
                                                    (lambda (_%phi135695%_
                                                             _%src135696%_)
                                                      (let* ((_%out135736%_
                                                              (if _%src135696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g135697135706%_
                                              (let ()
                                                (declare (not safe))
                                                (_%make-import-path135613%_
                                                 _%src135696%_)))
                                             (_%E135700135710%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g135697135706%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K135702135726%_
                                               (lambda (_%path135724%_)
                                                 _%path135724%_))
                                              (_%K135701135716%_
                                               (lambda (_%path135714%_)
                                                 (cons 'in: _%path135714%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g135697135706%_))
                                              (let ((_%tl135704135731%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g135697135706%_)))
                                                    (_%hd135703135729%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g135697135706%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl135704135731%_))
                                                    (let ((_%path135734%_
                                                           _%hd135703135729%_))
                                                      (declare (not safe))
                                                      (_%K135702135726%_
                                                       _%path135734%_))
                                                    (let ((_%path135719%_
                                                           _%g135697135706%_))
                                                      (declare (not safe))
                                                      (_%K135701135716%_
                                                       _%path135719%_))))
                                              (let ((_%path135719%_
                                                     _%g135697135706%_))
                                                (declare (not safe))
                                                (_%K135701135716%_
                                                 _%path135719%_)))))
                                      '()))
                          '#t))
                     (_%out135738%_
                      (if (fxzero? _%phi135695%_)
                          _%out135736%_
                          (cons 'phi:
                                (cons _%phi135695%_
                                      (cons _%out135736%_ '()))))))
                (let ((__tmp145308 (cons _%out135738%_ _%r135652%_)))
                  (declare (not safe))
                  (_%lp135649%_ _%rest135672%_ __tmp145308))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match135676135754%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out135674135687%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e135679135744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135674135687%_
                               '1
                               '#f
                               '#f)))
                           (_%e135680135749%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135674135687%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src135747%_ _%e135679135744%_)
                            (_%phi135752%_ _%e135680135749%_))
                        (let ()
                          (declare (not safe))
                          (_%K135678135741%_ _%phi135752%_ _%src135747%_))))
                    (let () (declare (not safe)) (_%E135677135691%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out135674135687%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e135682135764%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out135674135687%_
                        '1
                        '#f
                        '#f)))
                    (_%e135683135767%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135674135687%_
                        '2
                        '#f
                        '#f)))
                    (_%e135684135772%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135674135687%_
                        '3
                        '#f
                        '#f)))
                    (_%e135685135777%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135674135687%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key135770%_ _%e135683135767%_)
                     (_%phi135775%_ _%e135684135772%_)
                     (_%name135780%_ _%e135685135777%_))
                 (let ()
                   (declare (not safe))
                   (_%K135681135761%_
                    _%name135780%_
                    _%phi135775%_
                    _%key135770%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%try-match135676135754%_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135653135661%_))
                                       (let ((_%hd135658135785%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135653135661%_)))
                                             (_%tl135659135787%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135653135661%_))))
                                         (let* ((_%out135790%_
                                                 _%hd135658135785%_)
                                                (_%rest135792%_
                                                 _%tl135659135787%_))
                                           (declare (not safe))
                                           (_%K135657135782%_
                                            _%rest135792%_
                                            _%out135790%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else135655135669%_))))))
                             _%tl135618135635%_)))
                        (let ()
                          (declare (not safe))
                          (_%g135615135625%_ _%g135616135628%_))))))
            (declare (not safe))
            (_%g135614135794%_ _%stx135610%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self135570%_ _%stx135571%_)
        (let ((__tmp145309
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135570%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp145309))
        (let* ((_%g135573135583%_
                (lambda (_%g135574135580%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135574135580%_))))
               (_%g135572135606%_
                (lambda (_%g135574135586%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135574135586%_))
                      (let ((_%e135578135588%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135574135586%_))))
                        (let ((_%hd135577135591%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135578135588%_)))
                              (_%tl135576135593%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135578135588%_))))
                          ((lambda (_%L135596%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L135596%_)))
                           _%tl135576135593%_)))
                      (let ()
                        (declare (not safe))
                        (_%g135573135583%_ _%g135574135586%_))))))
          (declare (not safe))
          (_%g135572135606%_ _%stx135571%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self135441%_ _%stx135442%_)
        (letrec ((_%generate1135444%_
                  (lambda (_%id135565%_ _%eid135566%_)
                    (let ((_%eid135568%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid135566%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid135568%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx135442%_
                             _%eid135568%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id135565%_))
                            (cons _%eid135568%_ '()))))))
          (let* ((_%g135446135474%_
                  (lambda (_%g135447135471%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135447135471%_))))
                 (_%g135445135562%_
                  (lambda (_%g135447135477%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135447135477%_))
                        (let ((_%e135452135479%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135447135477%_))))
                          (let ((_%hd135451135482%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135452135479%_)))
                                (_%tl135450135484%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135452135479%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl135450135484%_))
                                (let ((_g145310_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl135450135484%_
                                          '0))))
                                  (begin
                                    (let ((_g145311_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145310_)
                                                 (##vector-length _g145310_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145311_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145311_)))
                                    (let ((_%target135453135487%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145310_ 0)))
                                          (_%tl135455135489%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145310_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135455135489%_))
                                          (letrec ((_%loop135456135492%_
                                                    (lambda (_%hd135454135495%_
                                                             _%eid135460135497%_
                                                             _%id135461135499%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd135454135495%_))
                                                          (let ((_%e135457135502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd135454135495%_))))
                    (let ((_%lp-hd135458135505%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135457135502%_)))
                          (_%lp-tl135459135507%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135457135502%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd135458135505%_))
                          (let ((_%e135466135510%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd135458135505%_))))
                            (let ((_%hd135465135513%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e135466135510%_)))
                                  (_%tl135464135515%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e135466135510%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl135464135515%_))
                                  (let ((_%e135469135518%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl135464135515%_))))
                                    (let ((_%hd135468135521%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135469135518%_)))
                                          (_%tl135467135523%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135469135518%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135467135523%_))
                                          (let ((__tmp145313
                                                 (cons _%hd135468135521%_
                                                       _%eid135460135497%_))
                                                (__tmp145312
                                                 (cons _%hd135465135513%_
                                                       _%id135461135499%_)))
                                            (declare (not safe))
                                            (_%loop135456135492%_
                                             _%lp-tl135459135507%_
                                             __tmp145313
                                             __tmp145312))
                                          (let ()
                                            (declare (not safe))
                                            (_%g135446135474%_
                                             _%g135447135477%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g135446135474%_ _%g135447135477%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g135446135474%_ _%g135447135477%_)))))
                  (let ((_%eid135462135526%_ (reverse _%eid135460135497%_))
                        (_%id135463135528%_ (reverse _%id135461135499%_)))
                    ((lambda (_%L135531%_ _%L135532%_)
                       (cons '%#extern
                             (map _%generate1135444%_
                                  (let ((__tmp145314
                                         (lambda (_%g135547135550%_
                                                  _%g135548135552%_)
                                           (cons _%g135547135550%_
                                                 _%g135548135552%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145314 '() _%L135532%_))
                                  (let ((__tmp145315
                                         (lambda (_%g135554135557%_
                                                  _%g135555135559%_)
                                           (cons _%g135554135557%_
                                                 _%g135555135559%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145315 '() _%L135531%_)))))
                     _%eid135462135526%_
                     _%id135463135528%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop135456135492%_
                                               _%target135453135487%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g135446135474%_
                                             _%g135447135477%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g135446135474%_ _%g135447135477%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g135446135474%_ _%g135447135477%_))))))
            (declare (not safe))
            (_%g135445135562%_ _%stx135442%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self135231%_ _%stx135232%_)
        (letrec ((_%generate1135234%_
                  (lambda (_%id135436%_)
                    (let ((_%eid135438%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id135436%_)))
                          (_%ident135439%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id135436%_))))
                      (cons '%#define-runtime
                            (cons _%ident135439%_ (cons _%eid135438%_ '()))))))
                 (_%generate*135235%_
                  (lambda (_%all135404%_)
                    (let* ((_%all135405135413%_ _%all135404%_)
                           (_%else135407135421%_
                            (lambda () (cons '%#begin _%all135404%_)))
                           (_%K135409135426%_
                            (lambda (_%one135424%_) _%one135424%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all135405135413%_))
                          (let ((_%hd135410135429%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all135405135413%_)))
                                (_%tl135411135431%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all135405135413%_))))
                            (let ((_%one135434%_ _%hd135410135429%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl135411135431%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K135409135426%_ _%one135434%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%else135407135421%_)))))
                          (let ()
                            (declare (not safe))
                            (_%else135407135421%_)))))))
          (let* ((_%g135237135254%_
                  (lambda (_%g135238135251%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135238135251%_))))
                 (_%g135236135401%_
                  (lambda (_%g135238135257%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135238135257%_))
                        (let ((_%e135243135259%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135238135257%_))))
                          (let ((_%hd135242135262%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135243135259%_)))
                                (_%tl135241135264%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135243135259%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135241135264%_))
                                (let ((_%e135246135267%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135241135264%_))))
                                  (let ((_%hd135245135270%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135246135267%_)))
                                        (_%tl135244135272%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135246135267%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135244135272%_))
                                        (let ((_%e135249135275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135244135272%_))))
                                          (let ((_%hd135248135278%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135249135275%_)))
                                                (_%tl135247135280%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135249135275%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135247135280%_))
                                                ((lambda (_%L135283%_
                                                          _%L135284%_)
                                                   (let _%lp135300%_ ((_%rest135302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L135284%_)
                              (_%r135303%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx144931144932%_
                                                             _%rest135302%_)
                                                            (_%g135308135325%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx144931144932%_)))))
               (let ((_%__kont144933144934%_
                      (lambda (_%L135388%_)
                        (let ()
                          (declare (not safe))
                          (_%lp135300%_ _%L135388%_ _%r135303%_))))
                     (_%__kont144935144936%_
                      (lambda (_%L135361%_ _%L135362%_)
                        (let ((__tmp145316
                               (cons (let ()
                                       (declare (not safe))
                                       (_%generate1135234%_ _%L135362%_))
                                     _%r135303%_)))
                          (declare (not safe))
                          (_%lp135300%_ _%L135361%_ __tmp145316))))
                     (_%__kont144937144938%_
                      (lambda (_%L135337%_)
                        (let ((__tmp145317
                               (let ((__tmp145318
                                      (cons (let ()
                                              (declare (not safe))
                                              (_%generate1135234%_
                                               _%L135337%_))
                                            '())))
                                 (declare (not safe))
                                 (__foldl1 cons __tmp145318 _%r135303%_))))
                          (declare (not safe))
                          (_%generate*135235%_ __tmp145317))))
                     (_%__kont144939144940%_
                      (lambda ()
                        (let ((__tmp145319 (reverse _%r135303%_)))
                          (declare (not safe))
                          (_%generate*135235%_ __tmp145319)))))
                 (let ((_%g135306135348%_
                        (lambda ()
                          (let ((_%L135337%_ _%__stx144931144932%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L135337%_))
                                (_%__kont144937144938%_ _%L135337%_)
                                (_%__kont144939144940%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx144931144932%_))
                       (let ((_%e135313135377%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx144931144932%_))))
                         (let ((_%tl135311135382%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e135313135377%_)))
                               (_%hd135312135380%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e135313135377%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd135312135380%_))
                               (let ((_%e135314135385%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd135312135380%_))))
                                 (if (equal? _%e135314135385%_ '#f)
                                     (_%__kont144933144934%_
                                      _%tl135311135382%_)
                                     (_%__kont144935144936%_
                                      _%tl135311135382%_
                                      _%hd135312135380%_)))
                               (_%__kont144935144936%_
                                _%tl135311135382%_
                                _%hd135312135380%_))))
                       (let () (declare (not safe)) (_%g135306135348%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd135248135278%_
                                                 _%hd135245135270%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g135237135254%_
                                                   _%g135238135257%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g135237135254%_
                                           _%g135238135257%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g135237135254%_ _%g135238135257%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g135237135254%_ _%g135238135257%_))))))
            (declare (not safe))
            (_%g135236135401%_ _%stx135232%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self135128%_ _%stx135129%_)
        (let* ((_%g135131135148%_
                (lambda (_%g135132135145%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135132135145%_))))
               (_%g135130135228%_
                (lambda (_%g135132135151%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135132135151%_))
                      (let ((_%e135137135153%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135132135151%_))))
                        (let ((_%hd135136135156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135137135153%_)))
                              (_%tl135135135158%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135137135153%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135135135158%_))
                              (let ((_%e135140135161%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135135135158%_))))
                                (let ((_%hd135139135164%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135140135161%_)))
                                      (_%tl135138135166%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135140135161%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135138135166%_))
                                      (let ((_%e135143135169%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135138135166%_))))
                                        (let ((_%hd135142135172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135143135169%_)))
                                              (_%tl135141135174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135143135169%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135141135174%_))
                                              ((lambda (_%L135177%_
                                                        _%L135178%_)
                                                 (let* ((_%eid135193%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L135178%_)))
                                                        (_%phi135195%_
                                                         (let ((__tmp145320
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp145320 '1)))
                (_%block135197%_
                 (let ((__tmp145321
                        (let ()
                          (declare (not safe))
                          (slot-ref__0 _%self135128%_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp145321 _%phi135195%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g135200135207%_
                                                           (lambda (_%g135201135204%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g135201135204%_))))
                  (_%g135199135225%_
                   (lambda (_%g135201135210%_)
                     ((lambda (_%L135212%_)
                        (let ()
                          (let ((__tmp145323
                                 (let ()
                                   (declare (not safe))
                                   (slot-ref__0 _%self135128%_ 'state)))
                                (__tmp145322
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime))
                                       (cons _%L135212%_
                                             (cons _%L135177%_ '())))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             __tmp145323
                             _%phi135195%_
                             __tmp145322))))
                      _%g135201135210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%g135199135225%_
                                                      _%eid135193%_))
                                                   (if _%block135197%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block135197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%L135178%_))
                                             (cons _%eid135193%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135178%_))
                           (cons _%eid135193%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135142135172%_
                                               _%hd135139135164%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135131135148%_
                                                 _%g135132135151%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135131135148%_
                                         _%g135132135151%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135131135148%_ _%g135132135151%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135131135148%_ _%g135132135151%_))))))
          (declare (not safe))
          (_%g135130135228%_ _%stx135129%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self135060%_ _%stx135061%_)
        (let* ((_%g135063135080%_
                (lambda (_%g135064135077%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135064135077%_))))
               (_%g135062135125%_
                (lambda (_%g135064135083%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135064135083%_))
                      (let ((_%e135069135085%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135064135083%_))))
                        (let ((_%hd135068135088%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135069135085%_)))
                              (_%tl135067135090%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135069135085%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135067135090%_))
                              (let ((_%e135072135093%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135067135090%_))))
                                (let ((_%hd135071135096%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135072135093%_)))
                                      (_%tl135070135098%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135072135093%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135070135098%_))
                                      (let ((_%e135075135101%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135070135098%_))))
                                        (let ((_%hd135074135104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135075135101%_)))
                                              (_%tl135073135106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135075135101%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135073135106%_))
                                              ((lambda (_%L135109%_
                                                        _%L135110%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%L135110%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135109%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135074135104%_
                                               _%hd135071135096%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135063135080%_
                                                 _%g135064135083%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135063135080%_
                                         _%g135064135083%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135063135080%_ _%g135064135083%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135063135080%_ _%g135064135083%_))))))
          (declare (not safe))
          (_%g135062135125%_ _%stx135061%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self135057%_ _%stx135058%_)
        (let ((__tmp145325
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135057%_ 'state)))
              (__tmp145324
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp145325 __tmp145324 _%stx135058%_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _%self135057%_ _%stx135058%_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self135054%_ _%stx135055%_)
        (let ((__tmp145327
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135054%_ 'state)))
              (__tmp145326
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp145327 __tmp145326 _%stx135055%_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp145329 (list)) (__tmp145328 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp145329
         '(src n open blocks)
         __tmp145328
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args135051%_
        (apply make-instance gxc#meta-state::t _%$args135051%_)))
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
      (lambda (_%self135037%_ _%ctx135038%_)
        (let ()
          (let ((_%self135041%_ _%self135037%_))
            (let ()
              (if (let ((__tmp145330
                         (let ()
                           (declare (not safe))
                           (##structure-length _%self135041%_))))
                    (declare (not safe))
                    (##fx< '4 __tmp145330))
                  (begin
                    (let ((__tmp145331
                           (let ((__tmp145332
                                  (##structure-ref
                                   _%ctx135038%_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#module-id->path-string __tmp145332))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self135041%_
                       __tmp145331
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self135041%_
                       '1
                       '2
                       '#f
                       '#f))
                    (let ((__tmp145333
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self135041%_
                       __tmp145333
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self135041%_
                       '()
                       '4
                       '#f
                       '#f))
                    '#!void)
                  (let ((__tmp145334
                         (let ()
                           (declare (not safe))
                           (##vector-length _%self135041%_))))
                    (declare (not safe))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self135041%_
                           '4
                           __tmp145334))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp145336 (list)) (__tmp145335 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp145336
         '(ctx phi n code)
         __tmp145335
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args134912%_
        (apply make-instance gxc#meta-state-block::t _%$args134912%_)))
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
      (lambda (_%state134871%_ _%phi134872%_)
        (let* ((_%state134873134881%_ _%state134871%_)
               (_%E134875134885%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state134873134881%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K134876134894%_
                (lambda (_%open134888%_ _%n134889%_ _%src134890%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open134888%_ _%phi134872%_))
                      '#f
                      (let ((_%block-ref134892%_
                             (let ((__tmp145337 (number->string _%n134889%_)))
                               (declare (not safe))
                               (##string-append
                                _%src134890%_
                                '"~"
                                __tmp145337))))
                        (##structure-set!
                         _%state134871%_
                         (let () (declare (not safe)) (##fx+ _%n134889%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp145338
                               (let ((__tmp145339
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp145339
                                  _%phi134872%_
                                  _%n134889%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open134888%_ _%phi134872%_ __tmp145338))
                        _%block-ref134892%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state134873134881%_
                 'gxc#meta-state::t))
              (let* ((_%e134877134897%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134873134881%_
                         '1
                         '#f
                         '#f)))
                     (_%src134900%_ _%e134877134897%_)
                     (_%e134878134902%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134873134881%_
                         '2
                         '#f
                         '#f)))
                     (_%n134905%_ _%e134878134902%_)
                     (_%e134879134907%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134873134881%_
                         '3
                         '#f
                         '#f)))
                     (_%open134910%_ _%e134879134907%_))
                (declare (not safe))
                (_%K134876134894%_ _%open134910%_ _%n134905%_ _%src134900%_))
              (let () (declare (not safe)) (_%E134875134885%_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state134865%_ _%phi134866%_ _%stx134867%_)
        (let ((_%block134869%_
               (let ((__tmp145340
                      (##structure-ref
                       _%state134865%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp145340 _%phi134866%_))))
          (##structure-set!
           _%block134869%_
           (cons _%stx134867%_
                 (##structure-ref
                  _%block134869%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state134859%_)
        (##structure-set!
         _%state134859%_
         (let ((__tmp145343
                (lambda (_%_134861%_ _%block134862%_ _%r134863%_)
                  (cons _%block134862%_ _%r134863%_)))
               (__tmp145342
                (##structure-ref _%state134859%_ '4 gxc#meta-state::t '#f))
               (__tmp145341
                (##structure-ref _%state134859%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp145343 __tmp145342 __tmp145341))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state134859%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state134811%_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _%state134811%_))
        (let ((__tmp145345
               (lambda (_%block134813%_ _%r134814%_)
                 (let* ((_%block134815134824%_ _%block134813%_)
                        (_%E134817134828%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block134815134824%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K134818134836%_
                         (lambda (_%code134831%_
                                  _%n134832%_
                                  _%phi134833%_
                                  _%ctx134834%_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%code134831%_))
                               _%r134814%_
                               (cons (cons _%ctx134834%_
                                           (cons _%phi134833%_
                                                 (cons _%n134832%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code134831%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r134814%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block134815134824%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e134819134839%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134815134824%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx134842%_ _%e134819134839%_)
                              (_%e134820134844%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134815134824%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi134847%_ _%e134820134844%_)
                              (_%e134821134849%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134815134824%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n134852%_ _%e134821134849%_)
                              (_%e134822134854%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134815134824%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code134857%_ _%e134822134854%_))
                         (declare (not safe))
                         (_%K134818134836%_
                          _%code134857%_
                          _%n134852%_
                          _%phi134847%_
                          _%ctx134842%_))
                       (let () (declare (not safe)) (_%E134817134828%_))))))
              (__tmp145344
               (##structure-ref _%state134811%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp145345 '() __tmp145344))))
    (define gxc#collect-expression-refs
      (lambda (_%stx134807%_)
        (let ((_%ht134809%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs
             _%stx134807%_
             'table:
             _%ht134809%_))
          _%ht134809%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self134750%_ _%stx134751%_)
        (let* ((_%g134753134766%_
                (lambda (_%g134754134763%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134754134763%_))))
               (_%g134752134804%_
                (lambda (_%g134754134769%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134754134769%_))
                      (let ((_%e134758134771%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134754134769%_))))
                        (let ((_%hd134757134774%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134758134771%_)))
                              (_%tl134756134776%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134758134771%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134756134776%_))
                              (let ((_%e134761134779%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134756134776%_))))
                                (let ((_%hd134760134782%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134761134779%_)))
                                      (_%tl134759134784%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134761134779%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134759134784%_))
                                      ((lambda (_%L134787%_)
                                         (let* ((_%bind134799%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L134787%_)))
                                                (_%eid134801%_
                                                 (if _%bind134799%_
                                                     (##structure-ref
                                                      _%bind134799%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L134787%_)))))
                                           (let ((__tmp145346
                                                  (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _%self134750%_
                                                     'table))))
                                             (declare (not safe))
                                             (hash-put!
                                              __tmp145346
                                              _%eid134801%_
                                              _%eid134801%_))))
                                       _%hd134760134782%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g134753134766%_
                                         _%g134754134769%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134753134766%_ _%g134754134769%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134753134766%_ _%g134754134769%_))))))
          (declare (not safe))
          (_%g134752134804%_ _%stx134751%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self134677%_ _%stx134678%_)
        (let* ((_%g134680134697%_
                (lambda (_%g134681134694%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134681134694%_))))
               (_%g134679134747%_
                (lambda (_%g134681134700%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134681134700%_))
                      (let ((_%e134686134702%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134681134700%_))))
                        (let ((_%hd134685134705%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134686134702%_)))
                              (_%tl134684134707%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134686134702%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134684134707%_))
                              (let ((_%e134689134710%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134684134707%_))))
                                (let ((_%hd134688134713%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134689134710%_)))
                                      (_%tl134687134715%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134689134710%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134687134715%_))
                                      (let ((_%e134692134718%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134687134715%_))))
                                        (let ((_%hd134691134721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134692134718%_)))
                                              (_%tl134690134723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134692134718%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134690134723%_))
                                              ((lambda (_%L134726%_
                                                        _%L134727%_)
                                                 (let* ((_%bind134742%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L134727%_)))
                                                        (_%eid134744%_
                                                         (if _%bind134742%_
                                                             (##structure-ref
                                                              _%bind134742%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L134727%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp145347
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self134677%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp145347
                                                      _%eid134744%_
                                                      _%eid134744%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self134677%_
                                                      _%L134726%_))))
                                               _%hd134691134721%_
                                               _%hd134688134713%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g134680134697%_
                                                 _%g134681134700%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134680134697%_
                                         _%g134681134700%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134680134697%_ _%g134681134700%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134680134697%_ _%g134681134700%_))))))
          (declare (not safe))
          (_%g134679134747%_ _%stx134678%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self134634%_ _%stx134635%_)
        (let* ((_%g134637134647%_
                (lambda (_%g134638134644%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134638134644%_))))
               (_%g134636134674%_
                (lambda (_%g134638134650%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134638134650%_))
                      (let ((_%e134642134652%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134638134650%_))))
                        (let ((_%hd134641134655%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134642134652%_)))
                              (_%tl134640134657%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134642134652%_))))
                          ((lambda (_%L134660%_)
                             (let ((__tmp145348
                                    (lambda (_%g134669134671%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self134634%_
                                         _%g134669134671%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp145348 _%L134660%_)))
                           _%tl134640134657%_)))
                      (let ()
                        (declare (not safe))
                        (_%g134637134647%_ _%g134638134650%_))))))
          (declare (not safe))
          (_%g134636134674%_ _%stx134635%_))))
    (define gxc#count-values-single%
      (lambda (_%self134631%_ _%stx134632%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self134497%_ _%stx134498%_)
        (let* ((_%__stx144961144962%_ _%stx134498%_)
               (_%g134501134530%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144961144962%_)))))
          (let ((_%__kont144963144964%_
                 (lambda (_%L134598%_ _%L134599%_)
                   (length (let ((__tmp145349
                                  (lambda (_%g134620134623%_ _%g134621134625%_)
                                    (cons _%g134620134623%_
                                          _%g134621134625%_))))
                             (declare (not safe))
                             (__foldr1 __tmp145349 '() _%L134598%_)))))
                (_%__kont144967144968%_ (lambda () '#f)))
            (let ((_%__match145006145007%_
                   (lambda (_%e134507134542%_
                            _%hd134506134545%_
                            _%tl134505134547%_
                            _%e134510134550%_
                            _%hd134509134553%_
                            _%tl134508134555%_
                            _%e134513134558%_
                            _%hd134512134561%_
                            _%tl134511134563%_
                            _%e134516134566%_
                            _%hd134515134569%_
                            _%tl134514134571%_
                            _%__splice144965144966%_
                            _%target134517134574%_
                            _%tl134519134576%_)
                     (letrec ((_%loop134520134579%_
                               (lambda (_%hd134518134582%_
                                        _%rand134524134584%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd134518134582%_))
                                     (let ((_%e134521134587%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd134518134582%_))))
                                       (let ((_%lp-tl134523134592%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e134521134587%_)))
                                             (_%lp-hd134522134590%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e134521134587%_))))
                                         (let ((__tmp145350
                                                (cons _%lp-hd134522134590%_
                                                      _%rand134524134584%_)))
                                           (declare (not safe))
                                           (_%loop134520134579%_
                                            _%lp-tl134523134592%_
                                            __tmp145350))))
                                     (let ((_%rand134525134595%_
                                            (reverse _%rand134524134584%_)))
                                       (let ((_%L134598%_ _%rand134525134595%_)
                                             (_%L134599%_ _%hd134515134569%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L134599%_
                                                'values))
                                             (_%__kont144963144964%_
                                              _%L134598%_
                                              _%L134599%_)
                                             (_%__kont144967144968%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop134520134579%_ _%target134517134574%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144961144962%_))
                  (let ((_%e134507134542%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144961144962%_))))
                    (let ((_%tl134505134547%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e134507134542%_)))
                          (_%hd134506134545%_
                           (let ()
                             (declare (not safe))
                             (##car _%e134507134542%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl134505134547%_))
                          (let ((_%e134510134550%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl134505134547%_))))
                            (let ((_%tl134508134555%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e134510134550%_)))
                                  (_%hd134509134553%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e134510134550%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd134509134553%_))
                                  (let ((_%e134513134558%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd134509134553%_))))
                                    (let ((_%tl134511134563%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e134513134558%_)))
                                          (_%hd134512134561%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e134513134558%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd134512134561%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd134512134561%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl134511134563%_))
                                                  (let ((_%e134516134566%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl134511134563%_))))
                                                    (let ((_%tl134514134571%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e134516134566%_)))
                                                          (_%hd134515134569%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e134516134566%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl134514134571%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl134508134555%_))
                      (let ((_%__splice144965144966%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl134508134555%_
                                '0))))
                        (let ((_%tl134519134576%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144965144966%_ '1)))
                              (_%target134517134574%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144965144966%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl134519134576%_))
                              (_%__match145006145007%_
                               _%e134507134542%_
                               _%hd134506134545%_
                               _%tl134505134547%_
                               _%e134510134550%_
                               _%hd134509134553%_
                               _%tl134508134555%_
                               _%e134513134558%_
                               _%hd134512134561%_
                               _%tl134511134563%_
                               _%e134516134566%_
                               _%hd134515134569%_
                               _%tl134514134571%_
                               _%__splice144965144966%_
                               _%target134517134574%_
                               _%tl134519134576%_)
                              (_%__kont144967144968%_))))
                      (_%__kont144967144968%_))
                  (_%__kont144967144968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144967144968%_))
                                              (_%__kont144967144968%_))
                                          (_%__kont144967144968%_))))
                                  (_%__kont144967144968%_))))
                          (_%__kont144967144968%_))))
                  (_%__kont144967144968%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self134400%_ _%stx134401%_)
        (let* ((_%g134403134424%_
                (lambda (_%g134404134421%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134404134421%_))))
               (_%g134402134494%_
                (lambda (_%g134404134427%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134404134427%_))
                      (let ((_%e134410134429%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134404134427%_))))
                        (let ((_%hd134409134432%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134410134429%_)))
                              (_%tl134408134434%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134410134429%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134408134434%_))
                              (let ((_%e134413134437%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134408134434%_))))
                                (let ((_%hd134412134440%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134413134437%_)))
                                      (_%tl134411134442%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134413134437%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134411134442%_))
                                      (let ((_%e134416134445%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134411134442%_))))
                                        (let ((_%hd134415134448%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134416134445%_)))
                                              (_%tl134414134450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134416134445%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl134414134450%_))
                                              (let ((_%e134419134453%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl134414134450%_))))
                                                (let ((_%hd134418134456%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e134419134453%_)))
                                                      (_%tl134417134458%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e134419134453%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl134417134458%_))
                                                      ((lambda (_%L134461%_
                                                                _%L134462%_
                                                                _%L134463%_)
                                                         (let ((_%c1134480134482%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self134400%_ _%L134462%_))))
                   (if _%c1134480134482%_
                       (let* ((_%c1134485%_ _%c1134480134482%_)
                              (_%c2134486134488%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self134400%_
                                  _%L134461%_))))
                         (if _%c2134486134488%_
                             (let ((_%c2134491%_ _%c2134486134488%_))
                               (if (fx= _%c1134485%_ _%c2134491%_)
                                   _%c1134485%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd134418134456%_
               _%hd134415134448%_
               _%hd134412134440%_)
              (let ()
                (declare (not safe))
                (_%g134403134424%_ _%g134404134427%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g134403134424%_
                                                 _%g134404134427%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134403134424%_
                                         _%g134404134427%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134403134424%_ _%g134404134427%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134403134424%_ _%g134404134427%_))))))
          (declare (not safe))
          (_%g134402134494%_ _%stx134401%_))))))
