(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1768864949)
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
        (letrec ((_%hash-e159677%_
                  (lambda (_%id159679%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id159679%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e159677%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp161064 (list gxc#::void::t))
            (__tmp161063 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp161064
         '()
         __tmp161063
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args159673%_
        (apply make-instance gxc#::collect-bindings::t _%$args159673%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp161065
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
        (__make-atomic-promise __tmp161065)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx159665%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self159668%_
                (let ((__obj161039
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj161039))
               (__tmp161066
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159668%_ _%stx159665%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161066
           gxc#current-compile-method
           _%self159668%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp161068 (list gxc#::void::t))
            (__tmp161067 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp161068
         '(modules)
         __tmp161067
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args159662%_
        (apply make-instance gxc#::lift-modules::t _%$args159662%_)))
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
      (let ((__tmp161069
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
        (__make-atomic-promise __tmp161069)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords159636%_ _%modules159633159637%_ _%stx159639%_)
        (let ((_%modules159642%_
               (if (eq? _%modules159633159637%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules159633159637%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self159644%_
                  (let ((__obj161041
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161041
                       _%modules159642%_
                       '1
                       '#f
                       '#f))
                    __obj161041))
                 (__tmp161070
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self159644%_ _%stx159639%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161070
             gxc#current-compile-method
             _%self159644%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords159651%_ . _%args159652%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords159651%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159651%_
                  'modules:
                  absent-value))
               _%args159652%_)))
    (define gxc#apply-lift-modules
      (lambda _%args159634159658%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args159634159658%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp161072 (list)) (__tmp161071 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp161072
         '()
         __tmp161071
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args159629%_
        (apply make-instance gxc#::find-runtime-code::t _%$args159629%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp161073
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
        (__make-atomic-promise __tmp161073)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx159621%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self159624%_
                (let ((__obj161043
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj161043))
               (__tmp161074
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159624%_ _%stx159621%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161074
           gxc#current-compile-method
           _%self159624%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp161076 (list gxc#::false::t))
            (__tmp161075 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp161076
         '()
         __tmp161075
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args159618%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args159618%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp161077
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
        (__make-atomic-promise __tmp161077)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx159610%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self159613%_
                (let ((__obj161045
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj161045))
               (__tmp161078
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159613%_ _%stx159610%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161078
           gxc#current-compile-method
           _%self159613%_))))
    (define gxc#::count-values::t
      (let ((__tmp161080 (list gxc#::false-expression::t))
            (__tmp161079 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp161080
         '()
         __tmp161079
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args159607%_
        (apply make-instance gxc#::count-values::t _%$args159607%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp161081
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
        (__make-atomic-promise __tmp161081)))
    (define gxc#apply-count-values
      (lambda (_%stx159599%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self159602%_
                (let ((__obj161047
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj161047))
               (__tmp161082
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159602%_ _%stx159599%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161082
           gxc#current-compile-method
           _%self159602%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp161083 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp161083
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args159596%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args159596%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp161084
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
        (__make-atomic-promise __tmp161084)))
    (define gxc#::generate-loader::t
      (let ((__tmp161086 (list gxc#::generate-runtime-empty::t))
            (__tmp161085 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp161086
         '()
         __tmp161085
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args159592%_
        (apply make-instance gxc#::generate-loader::t _%$args159592%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp161087
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
        (__make-atomic-promise __tmp161087)))
    (define gxc#apply-generate-loader
      (lambda (_%stx159584%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self159587%_
                (let ((__obj161050
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj161050))
               (__tmp161088
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159587%_ _%stx159584%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161088
           gxc#current-compile-method
           _%self159587%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp161089 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp161089
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args159581%_
        (apply make-instance gxc#::generate-runtime::t _%$args159581%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp161090
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
        (__make-atomic-promise __tmp161090)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx159573%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self159576%_
                (let ((__obj161052
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj161052))
               (__tmp161091
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159576%_ _%stx159573%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161091
           gxc#current-compile-method
           _%self159576%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp161093 (list gxc#::generate-runtime::t))
            (__tmp161092 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp161093
         '()
         __tmp161092
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args159570%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args159570%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp161094
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
        (__make-atomic-promise __tmp161094)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx159562%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self159565%_
                (let ((__obj161054
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj161054))
               (__tmp161095
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159565%_ _%stx159562%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161095
           gxc#current-compile-method
           _%self159565%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp161096 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp161096
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args159559%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args159559%_)))
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
      (let ((__tmp161097
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
        (__make-atomic-promise __tmp161097)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords159533%_ _%table159530159534%_ _%stx159536%_)
        (let ((_%table159539%_
               (if (eq? _%table159530159534%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table159530159534%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self159541%_
                  (let ((__obj161056
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161056
                       _%table159539%_
                       '1
                       '#f
                       '#f))
                    __obj161056))
                 (__tmp161098
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self159541%_ _%stx159536%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161098
             gxc#current-compile-method
             _%self159541%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords159548%_ . _%args159549%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords159548%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159548%_
                  'table:
                  absent-value))
               _%args159549%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args159531159555%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args159531159555%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp161100 (list gxc#::void-expression::t))
            (__tmp161099 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp161100
         '(state)
         __tmp161099
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args159526%_
        (apply make-instance gxc#::generate-meta::t _%$args159526%_)))
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
      (let ((__tmp161101
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
        (__make-atomic-promise __tmp161101)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords159500%_ _%state159497159501%_ _%stx159503%_)
        (let ((_%state159506%_
               (if (eq? _%state159497159501%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state159497159501%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self159508%_
                  (let ((__obj161058
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161058
                       _%state159506%_
                       '1
                       '#f
                       '#f))
                    __obj161058))
                 (__tmp161102
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self159508%_ _%stx159503%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161102
             gxc#current-compile-method
             _%self159508%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords159515%_ . _%args159516%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords159515%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159515%_
                  'state:
                  absent-value))
               _%args159516%_)))
    (define gxc#apply-generate-meta
      (lambda _%args159498159522%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args159498159522%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp161104 (list)) (__tmp161103 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp161104
         '(state)
         __tmp161103
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args159493%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args159493%_)))
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
      (let ((__tmp161105
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
        (__make-atomic-promise __tmp161105)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords159467%_ _%state159464159468%_ _%stx159470%_)
        (let ((_%state159473%_
               (if (eq? _%state159464159468%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state159464159468%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self159475%_
                  (let ((__obj161060
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161060
                       _%state159473%_
                       '1
                       '#f
                       '#f))
                    __obj161060))
                 (__tmp161106
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self159475%_ _%stx159470%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161106
             gxc#current-compile-method
             _%self159475%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords159482%_ . _%args159483%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords159482%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159482%_
                  'state:
                  absent-value))
               _%args159483%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args159465159489%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args159465159489%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self159393%_ _%stx159394%_)
        (let* ((_%g159396159413%_
                (lambda (_%g159397159410%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159397159410%_))))
               (_%g159395159460%_
                (lambda (_%g159397159416%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159397159416%_))
                      (let ((_%e159400159418%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159397159416%_))))
                        (let ((_%hd159401159421%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159400159418%_)))
                              (_%tl159402159423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159400159418%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159402159423%_))
                              (let ((_%e159403159426%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159402159423%_))))
                                (let ((_%hd159404159429%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159403159426%_)))
                                      (_%tl159405159431%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159403159426%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159405159431%_))
                                      (let ((_%e159406159434%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159405159431%_))))
                                        (let ((_%hd159407159437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159406159434%_)))
                                              (_%tl159408159439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159406159434%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159408159439%_))
                                              ((lambda (_%L159442%_
                                                        _%L159443%_)
                                                 (let ((__tmp161107
                                                        (lambda (_%bind159458%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind159458%_))
                      (gxc#add-module-binding! _%bind159458%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp161107
                                                    _%L159443%_)))
                                               _%hd159407159437%_
                                               _%hd159404159429%_)
                                              (_%g159396159413%_
                                               _%g159397159416%_))))
                                      (_%g159396159413%_ _%g159397159416%_))))
                              (_%g159396159413%_ _%g159397159416%_))))
                      (_%g159396159413%_ _%g159397159416%_)))))
          (_%g159395159460%_ _%stx159394%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self159325%_ _%stx159326%_)
        (let* ((_%g159328159345%_
                (lambda (_%g159329159342%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159329159342%_))))
               (_%g159327159390%_
                (lambda (_%g159329159348%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159329159348%_))
                      (let ((_%e159332159350%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159329159348%_))))
                        (let ((_%hd159333159353%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159332159350%_)))
                              (_%tl159334159355%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159332159350%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159334159355%_))
                              (let ((_%e159335159358%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159334159355%_))))
                                (let ((_%hd159336159361%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159335159358%_)))
                                      (_%tl159337159363%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159335159358%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159337159363%_))
                                      (let ((_%e159338159366%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159337159363%_))))
                                        (let ((_%hd159339159369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159338159366%_)))
                                              (_%tl159340159371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159338159366%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159340159371%_))
                                              ((lambda (_%L159374%_
                                                        _%L159375%_)
                                                 (gxc#add-module-binding!
                                                  _%L159375%_
                                                  '#t))
                                               _%hd159339159369%_
                                               _%hd159336159361%_)
                                              (_%g159328159345%_
                                               _%g159329159348%_))))
                                      (_%g159328159345%_ _%g159329159348%_))))
                              (_%g159328159345%_ _%g159329159348%_))))
                      (_%g159328159345%_ _%g159329159348%_)))))
          (_%g159327159390%_ _%stx159326%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self159267%_ _%stx159268%_)
        (let* ((_%g159270159284%_
                (lambda (_%g159271159281%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159271159281%_))))
               (_%g159269159322%_
                (lambda (_%g159271159287%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159271159287%_))
                      (let ((_%e159274159289%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159271159287%_))))
                        (let ((_%hd159275159292%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159274159289%_)))
                              (_%tl159276159294%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159274159289%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159276159294%_))
                              (let ((_%e159277159297%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159276159294%_))))
                                (let ((_%hd159278159300%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159277159297%_)))
                                      (_%tl159279159302%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159277159297%_))))
                                  ((lambda (_%L159305%_ _%L159306%_)
                                     (let ((_%ctx159319%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L159306%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self159267%_
                                           'modules))
                                        (cons _%ctx159319%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self159267%_
                                                        'modules)))))
                                       (let ((__tmp161108
                                              (lambda ()
                                                (let ((__tmp161109
                                                       (##structure-ref
                                                        _%ctx159319%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self159267%_
                                                   __tmp161109)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp161108
                                          gx#current-expander-context
                                          _%ctx159319%_))))
                                   _%tl159279159302%_
                                   _%hd159278159300%_)))
                              (_%g159270159284%_ _%g159271159287%_))))
                      (_%g159270159284%_ _%g159271159287%_)))))
          (_%g159269159322%_ _%stx159268%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls159220159222%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls159220159222%_
              (let ((_%decls159225%_ _%decls159220159222%_))
                (let _%lp159227%_ ((_%rest159229%_ _%decls159225%_))
                  (let* ((_%rest159230159238%_ _%rest159229%_)
                         (_%else159232159246%_ (lambda () '#f))
                         (_%K159234159255%_
                          (lambda (_%decls159249%_ _%decl159250%_)
                            (if (equal? _%decl159250%_ '(not safe))
                                '#t
                                (if (equal? _%decl159250%_ '(safe))
                                    '#f
                                    (_%lp159227%_ _%decls159249%_))))))
                    (if (pair? _%rest159230159238%_)
                        (let ((_%hd159235159258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest159230159238%_)))
                              (_%tl159236159260%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest159230159238%_))))
                          (let* ((_%decl159263%_ _%hd159235159258%_)
                                 (_%decls159265%_ _%tl159236159260%_))
                            (_%K159234159255%_
                             _%decls159265%_
                             _%decl159263%_)))
                        (_%else159232159246%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id159214%_ _%syntax?159215%_)
        (let ((_%eid159217%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id159214%_))
                '1
                gx#binding::t
                '#f))
              (_%ht159218%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid159217%_))
              '#!void
              (let ((__tmp161110
                     (let ((__tmp161111
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid159217%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp161111 _%syntax?159215%_))))
                (declare (not safe))
                (hash-put! _%ht159218%_ _%eid159217%_ __tmp161110))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id159212%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id159212%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key159167%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key159167%_))
            _%key159167%_
            (if (uninterned-symbol? _%key159167%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key159167%_))
                (let* ((_%key159171159178%_ _%key159167%_)
                       (_%E159173159182%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key159171159178%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K159174159200%_
                        (lambda (_%mark159185%_ _%eid159186%_)
                          (let ((_%$e159188%_
                                 (##structure-ref
                                  _%mark159185%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e159188%_
                                ((lambda (_%ht159191%_)
                                   (let ((_%$e159193%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht159191%_
                                             _%eid159186%_))))
                                     (if _%$e159193%_
                                         ((lambda (_%id159196%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id159196%_))
                                                _%id159196%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id159196%_))))
                                          _%$e159193%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid159186%_))))
                                 _%$e159188%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid159186%_))))))
                  (if (pair? _%key159171159178%_)
                      (let ((_%hd159175159203%_
                             (let ()
                               (declare (not safe))
                               (##car _%key159171159178%_)))
                            (_%tl159176159205%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key159171159178%_))))
                        (let* ((_%eid159208%_ _%hd159175159203%_)
                               (_%mark159210%_ _%tl159176159205%_))
                          (_%K159174159200%_ _%mark159210%_ _%eid159208%_)))
                      (_%E159173159182%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self159164%_ _%stx159165%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self159011%_ _%stx159012%_)
        (letrec ((_%simplify159014%_
                  (lambda (_%body159062%_)
                    (let _%lp159064%_ ((_%rest159066%_ _%body159062%_)
                                       (_%r159067%_ '()))
                      (let* ((_%rest159068159076%_ _%rest159066%_)
                             (_%else159070159084%_
                              (lambda () (reverse _%r159067%_)))
                             (_%K159072159152%_
                              (lambda (_%rest159087%_ _%hd159088%_)
                                (let* ((_%hd159089159105%_ _%hd159088%_)
                                       (_%else159093159113%_
                                        (lambda ()
                                          (_%lp159064%_
                                           _%rest159087%_
                                           (cons _%hd159088%_ _%r159067%_)))))
                                  (let ((_%K159101159142%_
                                         (lambda (_%exprs159140%_)
                                           (_%lp159064%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest159087%_
                                               _%exprs159140%_))
                                            _%r159067%_)))
                                        (_%K159096159126%_
                                         (lambda ()
                                           (if (null? _%rest159087%_)
                                               (_%lp159064%_
                                                _%rest159087%_
                                                (cons _%hd159088%_
                                                      _%r159067%_))
                                               (_%lp159064%_
                                                _%rest159087%_
                                                _%r159067%_))))
                                        (_%K159095159118%_
                                         (lambda ()
                                           (if (null? _%rest159087%_)
                                               (_%lp159064%_
                                                _%rest159087%_
                                                (cons _%hd159088%_
                                                      _%r159067%_))
                                               (_%lp159064%_
                                                _%rest159087%_
                                                _%r159067%_)))))
                                    (let ((_%try-match159092159121%_
                                           (lambda ()
                                             (if (symbol? _%hd159089159105%_)
                                                 (_%K159095159118%_)
                                                 (_%else159093159113%_)))))
                                      (if (pair? _%hd159089159105%_)
                                          (let ((_%tl159103159147%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd159089159105%_)))
                                                (_%hd159102159145%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd159089159105%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd159102159145%_
                                                         'begin))
                                                (let ((_%exprs159150%_
                                                       _%tl159103159147%_))
                                                  (_%K159101159142%_
                                                   _%exprs159150%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd159102159145%_
                                                             'quote))
                                                    (if (pair? _%tl159103159147%_)
                                                        (let ((_%tl159100159134%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl159103159147%_))))
                  (if (null? _%tl159100159134%_)
                      (_%K159096159126%_)
                      (_%try-match159092159121%_)))
                (_%try-match159092159121%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match159092159121%_))))
                                          (_%try-match159092159121%_))))))))
                        (if (pair? _%rest159068159076%_)
                            (let ((_%hd159073159155%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest159068159076%_)))
                                  (_%tl159074159157%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest159068159076%_))))
                              (let* ((_%hd159160%_ _%hd159073159155%_)
                                     (_%rest159162%_ _%tl159074159157%_))
                                (_%K159072159152%_
                                 _%rest159162%_
                                 _%hd159160%_)))
                            (_%else159070159084%_)))))))
          (let* ((_%g159016159026%_
                  (lambda (_%g159017159023%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g159017159023%_))))
                 (_%g159015159059%_
                  (lambda (_%g159017159029%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g159017159029%_))
                        (let ((_%e159019159031%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g159017159029%_))))
                          (let ((_%hd159020159034%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e159019159031%_)))
                                (_%tl159021159036%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e159019159031%_))))
                            ((lambda (_%L159039%_)
                               (let* ((_%body159054%_
                                       (map (lambda (_%g159049159051%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self159011%_
                                                 _%g159049159051%_)))
                                            _%L159039%_))
                                      (_%body159056%_
                                       (_%simplify159014%_ _%body159054%_)))
                                 (if (let ((__tmp161112
                                            (length _%body159056%_)))
                                       (declare (not safe))
                                       (##fx= __tmp161112 '1))
                                     (car _%body159056%_)
                                     (cons 'begin _%body159056%_))))
                             _%tl159021159036%_)))
                        (_%g159016159026%_ _%g159017159029%_)))))
            (_%g159015159059%_ _%stx159012%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self158972%_ _%stx158973%_)
        (let* ((_%g158975158985%_
                (lambda (_%g158976158982%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158976158982%_))))
               (_%g158974159008%_
                (lambda (_%g158976158988%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158976158988%_))
                      (let ((_%e158978158990%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158976158988%_))))
                        (let ((_%hd158979158993%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158978158990%_)))
                              (_%tl158980158995%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158978158990%_))))
                          ((lambda (_%L158998%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L158998%_))))
                           _%tl158980158995%_)))
                      (_%g158975158985%_ _%g158976158988%_)))))
          (_%g158974159008%_ _%stx158973%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self158736%_ _%stx158737%_)
        (let* ((_%__stx159702159703%_ _%stx158737%_)
               (_%g158741158793%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx159702159703%_)))))
          (let ((_%__kont159704159705%_
                 (lambda (_%L158954%_ _%L158955%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self158736%_ _%L158954%_))))
                (_%__kont159706159707%_
                 (lambda (_%L158902%_ _%L158903%_ _%L158904%_)
                   (if (let ((__tmp161113
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L158904%_))))
                         (declare (not safe))
                         (##memq __tmp161113 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self158736%_ _%L158902%_)))))
                (_%__kont159710159711%_
                 (lambda (_%L158822%_ _%L158823%_)
                   (let ((_%decls158838%_ (map gx#syntax->datum _%L158823%_)))
                     (let ((__tmp161116
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls158838%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self158736%_
                                                   _%L158822%_))
                                                '())))))
                           (__tmp161114
                            (let ((__tmp161115
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp161115 _%decls158838%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp161116
                        gxc#current-compile-decls
                        __tmp161114))))))
            (let* ((_%__match159757159758%_
                    (lambda (_%e158757158846%_
                             _%hd158758158849%_
                             _%tl158759158851%_
                             _%e158760158854%_
                             _%hd158761158857%_
                             _%tl158762158859%_
                             _%e158763158862%_
                             _%hd158764158865%_
                             _%tl158765158867%_
                             _%__splice159708159709%_
                             _%target158766158870%_
                             _%tl158768158872%_)
                      (letrec ((_%loop158769158875%_
                                (lambda (_%hd158767158878%_
                                         _%param158773158880%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd158767158878%_))
                                      (let ((_%e158770158883%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd158767158878%_))))
                                        (let ((_%lp-tl158772158888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158770158883%_)))
                                              (_%lp-hd158771158886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158770158883%_))))
                                          (_%loop158769158875%_
                                           _%lp-tl158772158888%_
                                           (cons _%lp-hd158771158886%_
                                                 _%param158773158880%_))))
                                      (let ((_%param158774158891%_
                                             (reverse _%param158773158880%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl158762158859%_))
                                            (let ((_%e158775158894%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl158762158859%_))))
                                              (let ((_%tl158777158899%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e158775158894%_)))
                                                    (_%hd158776158897%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e158775158894%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl158777158899%_))
                                                    (let ((_%L158902%_
                                                           _%hd158776158897%_)
                                                          (_%L158903%_
                                                           _%param158774158891%_)
                                                          (_%L158904%_
                                                           _%hd158764158865%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L158904%_))
                       (not (let ((__tmp161117
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L158904%_))))
                              (declare (not safe))
                              (##memq __tmp161117 gxc#gambit-annotations))))
                  (_%__kont159706159707%_ _%L158902%_ _%L158903%_ _%L158904%_)
                  (_%__kont159710159711%_
                   _%hd158776158897%_
                   _%hd158761158857%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g158741158793%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g158741158793%_))))))))
                        (_%loop158769158875%_ _%target158766158870%_ '()))))
                   (_%__match159731159732%_
                    (lambda (_%e158745158930%_
                             _%hd158746158933%_
                             _%tl158747158935%_
                             _%e158748158938%_
                             _%hd158749158941%_
                             _%tl158750158943%_
                             _%e158751158946%_
                             _%hd158752158949%_
                             _%tl158753158951%_)
                      (let ((_%L158954%_ _%hd158752158949%_)
                            (_%L158955%_ _%hd158749158941%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L158955%_))
                            (_%__kont159704159705%_ _%L158954%_ _%L158955%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd158749158941%_))
                                (let ((_%e158763158862%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd158749158941%_))))
                                  (let ((_%tl158765158867%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e158763158862%_)))
                                        (_%hd158764158865%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e158763158862%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl158765158867%_))
                                        (let ((_%__splice159708159709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl158765158867%_
                                                  '0))))
                                          (let ((_%tl158768158872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice159708159709%_
                                                    '1)))
                                                (_%target158766158870%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice159708159709%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl158768158872%_))
                                                (_%__match159757159758%_
                                                 _%e158745158930%_
                                                 _%hd158746158933%_
                                                 _%tl158747158935%_
                                                 _%e158748158938%_
                                                 _%hd158749158941%_
                                                 _%tl158750158943%_
                                                 _%e158763158862%_
                                                 _%hd158764158865%_
                                                 _%tl158765158867%_
                                                 _%__splice159708159709%_
                                                 _%target158766158870%_
                                                 _%tl158768158872%_)
                                                (_%__kont159710159711%_
                                                 _%hd158752158949%_
                                                 _%hd158749158941%_))))
                                        (_%__kont159710159711%_
                                         _%hd158752158949%_
                                         _%hd158749158941%_))))
                                (_%__kont159710159711%_
                                 _%hd158752158949%_
                                 _%hd158749158941%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx159702159703%_))
                  (let ((_%e158745158930%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx159702159703%_))))
                    (let ((_%tl158747158935%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e158745158930%_)))
                          (_%hd158746158933%_
                           (let ()
                             (declare (not safe))
                             (##car _%e158745158930%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl158747158935%_))
                          (let ((_%e158748158938%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl158747158935%_))))
                            (let ((_%tl158750158943%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e158748158938%_)))
                                  (_%hd158749158941%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e158748158938%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl158750158943%_))
                                  (let ((_%e158751158946%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl158750158943%_))))
                                    (let ((_%tl158753158951%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e158751158946%_)))
                                          (_%hd158752158949%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e158751158946%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl158753158951%_))
                                          (_%__match159731159732%_
                                           _%e158745158930%_
                                           _%hd158746158933%_
                                           _%tl158747158935%_
                                           _%e158748158938%_
                                           _%hd158749158941%_
                                           _%tl158750158943%_
                                           _%e158751158946%_
                                           _%hd158752158949%_
                                           _%tl158753158951%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd158749158941%_))
                                              (let ((_%e158763158862%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd158749158941%_))))
                                                (let ((_%tl158765158867%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e158763158862%_)))
                                                      (_%hd158764158865%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e158763158862%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl158765158867%_))
                                                      (let ((_%__splice159708159709%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl158765158867%_
                        '0))))
                (let ((_%tl158768158872%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice159708159709%_ '1)))
                      (_%target158766158870%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice159708159709%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl158768158872%_))
                      (_%__match159757159758%_
                       _%e158745158930%_
                       _%hd158746158933%_
                       _%tl158747158935%_
                       _%e158748158938%_
                       _%hd158749158941%_
                       _%tl158750158943%_
                       _%e158763158862%_
                       _%hd158764158865%_
                       _%tl158765158867%_
                       _%__splice159708159709%_
                       _%target158766158870%_
                       _%tl158768158872%_)
                      (let () (declare (not safe)) (_%g158741158793%_)))))
              (let () (declare (not safe)) (_%g158741158793%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g158741158793%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd158749158941%_))
                                      (let ((_%e158763158862%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd158749158941%_))))
                                        (let ((_%tl158765158867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158763158862%_)))
                                              (_%hd158764158865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158763158862%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl158765158867%_))
                                              (let ((_%__splice159708159709%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl158765158867%_
                                                        '0))))
                                                (let ((_%tl158768158872%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice159708159709%_
                                                          '1)))
                                                      (_%target158766158870%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice159708159709%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl158768158872%_))
                                                      (_%__match159757159758%_
                                                       _%e158745158930%_
                                                       _%hd158746158933%_
                                                       _%tl158747158935%_
                                                       _%e158748158938%_
                                                       _%hd158749158941%_
                                                       _%tl158750158943%_
                                                       _%e158763158862%_
                                                       _%hd158764158865%_
                                                       _%tl158765158867%_
                                                       _%__splice159708159709%_
                                                       _%target158766158870%_
                                                       _%tl158768158872%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g158741158793%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g158741158793%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g158741158793%_))))))
                          (let () (declare (not safe)) (_%g158741158793%_)))))
                  (let () (declare (not safe)) (_%g158741158793%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self158695%_ _%stx158696%_)
        (let* ((_%g158698158708%_
                (lambda (_%g158699158705%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158699158705%_))))
               (_%g158697158733%_
                (lambda (_%g158699158711%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158699158711%_))
                      (let ((_%e158701158713%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158699158711%_))))
                        (let ((_%hd158702158716%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158701158713%_)))
                              (_%tl158703158718%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158701158713%_))))
                          ((lambda (_%L158721%_)
                             (let ((_%decls158731%_
                                    (map gx#syntax->datum _%L158721%_)))
                               (let ((__tmp161118
                                      (let ((__tmp161119
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp161119
                                         _%decls158731%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp161118))
                               (cons 'declare _%decls158731%_)))
                           _%tl158703158718%_)))
                      (_%g158698158708%_ _%g158699158711%_)))))
          (_%g158697158733%_ _%stx158696%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self158441%_ _%stx158442%_)
        (let* ((_%g158444158461%_
                (lambda (_%g158445158458%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158445158458%_))))
               (_%g158443158692%_
                (lambda (_%g158445158464%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158445158464%_))
                      (let ((_%e158448158466%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158445158464%_))))
                        (let ((_%hd158449158469%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158448158466%_)))
                              (_%tl158450158471%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158448158466%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158450158471%_))
                              (let ((_%e158451158474%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158450158471%_))))
                                (let ((_%hd158452158477%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158451158474%_)))
                                      (_%tl158453158479%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158451158474%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl158453158479%_))
                                      (let ((_%e158454158482%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl158453158479%_))))
                                        (let ((_%hd158455158485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158454158482%_)))
                                              (_%tl158456158487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158454158482%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl158456158487%_))
                                              ((lambda (_%L158490%_
                                                        _%L158491%_)
                                                 (let* ((_%__stx159810159811%_
                                                         _%L158491%_)
                                                        (_%g158508158522%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx159810159811%_)))))
                                                   (let ((_%__kont159812159813%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self158441%_
                                                               _%L158490%_))))
                                                         (_%__kont159814159815%_
                                                          (lambda (_%L158654%_)
                                                            (let ((_%eid158663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L158654%_))))
                      (let ((_%lambda-expr158664158666%_
                             (gxc#apply-find-lambda-expression _%L158490%_)))
                        (if _%lambda-expr158664158666%_
                            (let* ((_%lambda-expr158669%_
                                    _%lambda-expr158664158666%_)
                                   (__tmp161120
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp161120
                               _%lambda-expr158669%_
                               _%eid158663%_))
                            '#f))
                      (cons 'define
                            (cons _%eid158663%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self158441%_
                                           _%L158490%_))
                                        '()))))))
                 (_%__kont159816159817%_
                  (lambda ()
                    (let* ((_%tmp158529%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body158638%_
                            (let _%lp158531%_ ((_%rest158533%_ _%L158491%_)
                                               (_%k158534%_ '0)
                                               (_%r158535%_ '()))
                              (let* ((_%__stx159780159781%_ _%rest158533%_)
                                     (_%g158540158557%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx159780159781%_)))))
                                (let ((_%__kont159782159783%_
                                       (lambda (_%L158625%_)
                                         (_%lp158531%_
                                          _%L158625%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k158534%_ '1))
                                          _%r158535%_)))
                                      (_%__kont159784159785%_
                                       (lambda (_%L158598%_ _%L158599%_)
                                         (_%lp158531%_
                                          _%L158598%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k158534%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L158599%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp158529%_
                           _%k158534%_
                           _%L158598%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r158535%_))))
                                      (_%__kont159786159787%_
                                       (lambda (_%L158569%_)
                                         (let ((__tmp161121
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L158569%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp158529%_
                                 _%k158534%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp161121
                                            _%r158535%_))))
                                      (_%__kont159788159789%_
                                       (lambda () (reverse _%r158535%_))))
                                  (let ((_%g158538158585%_
                                         (lambda ()
                                           (let ((_%L158569%_
                                                  _%__stx159780159781%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L158569%_))
                                                 (_%__kont159786159787%_
                                                  _%L158569%_)
                                                 (_%__kont159788159789%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx159780159781%_))
                                        (let ((_%e158543158614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx159780159781%_))))
                                          (let ((_%tl158545158619%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e158543158614%_)))
                                                (_%hd158544158617%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e158543158614%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd158544158617%_))
                                                (let ((_%e158546158622%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd158544158617%_))))
                                                  (if (equal? _%e158546158622%_
                                                              '#f)
                                                      (_%__kont159782159783%_
                                                       _%tl158545158619%_)
                                                      (_%__kont159784159785%_
                                                       _%tl158545158619%_
                                                       _%hd158544158617%_)))
                                                (_%__kont159784159785%_
                                                 _%tl158545158619%_
                                                 _%hd158544158617%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g158538158585%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp158529%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self158441%_
                                                       _%L158490%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp158529%_
                                         _%L158491%_
                                         _%L158490%_)
                                        _%body158638%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx159810159811%_))
                                                         (let ((_%e158510158676%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx159810159811%_))))
                   (let ((_%tl158512158681%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e158510158676%_)))
                         (_%hd158511158679%_
                          (let ()
                            (declare (not safe))
                            (##car _%e158510158676%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd158511158679%_))
                         (let ((_%e158513158684%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd158511158679%_))))
                           (if (equal? _%e158513158684%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl158512158681%_))
                                   (_%__kont159812159813%_)
                                   (_%__kont159816159817%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl158512158681%_))
                                   (_%__kont159814159815%_ _%hd158511158679%_)
                                   (_%__kont159816159817%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl158512158681%_))
                             (_%__kont159814159815%_ _%hd158511158679%_)
                             (_%__kont159816159817%_)))))
                 (_%__kont159816159817%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd158455158485%_
                                               _%hd158452158477%_)
                                              (_%g158444158461%_
                                               _%g158445158464%_))))
                                      (_%g158444158461%_ _%g158445158464%_))))
                              (_%g158444158461%_ _%g158445158464%_))))
                      (_%g158444158461%_ _%g158445158464%_)))))
          (_%g158443158692%_ _%stx158442%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals158416%_ _%hd158417%_ _%expr158418%_)
        (let ((_%$e158420%_ (gxc#apply-count-values _%expr158418%_)))
          (if _%$e158420%_
              ((lambda (_%count158423%_)
                 (let ((_%len158425%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd158417%_)))
                       (_%cmp158426%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd158417%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len158425%_ '0))
                           (_%cmp158426%_ _%count158423%_ _%len158425%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr158418%_
                          _%hd158417%_)))))
               _%$e158420%_)
              (let* ((_%len158432%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd158417%_)))
                     (_%cmp158434%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd158417%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg158436%_
                      (let ((__tmp161123
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd158417%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp161122 (number->string _%len158432%_)))
                        (declare (not safe))
                        (##string-append __tmp161123 __tmp161122 '" values")))
                     (_%count158438%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd158417%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len158432%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count158438%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals158416%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp158434%_
                                (cons _%count158438%_
                                      (cons _%len158432%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp158434%_
                                                        (cons _%count158438%_
                                                              (cons _%len158432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg158436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count158438%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var158411%_)
        (letrec ((_%generate-inline158413%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var158411%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var158411%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline158413%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline158413%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var158404%_ _%i158405%_ _%rest158406%_)
        (letrec ((_%generate-inline158408%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i158405%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest158406%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var158404%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var158404%_
                                                      (cons '0 '())))
                                          (cons _%var158404%_ '()))))
                        (cons '##values-ref
                              (cons _%var158404%_ (cons _%i158405%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline158408%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline158408%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var158398%_ _%i158399%_)
        (if (let () (declare (not safe)) (##fx= _%i158399%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var158398%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var158398%_ '()))
                                  (cons (cons 'list (cons _%var158398%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var158398%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var158398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var158398%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i158399%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var158398%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var158398%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var158398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var158398%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var158398%_ '()))
                                (cons _%i158399%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var158398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i158399%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self158330%_ _%stx158331%_)
        (let* ((_%g158333158350%_
                (lambda (_%g158334158347%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158334158347%_))))
               (_%g158332158395%_
                (lambda (_%g158334158353%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158334158353%_))
                      (let ((_%e158337158355%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158334158353%_))))
                        (let ((_%hd158338158358%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158337158355%_)))
                              (_%tl158339158360%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158337158355%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158339158360%_))
                              (let ((_%e158340158363%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158339158360%_))))
                                (let ((_%hd158341158366%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158340158363%_)))
                                      (_%tl158342158368%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158340158363%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl158342158368%_))
                                      (let ((_%e158343158371%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl158342158368%_))))
                                        (let ((_%hd158344158374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158343158371%_)))
                                              (_%tl158345158376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158343158371%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl158345158376%_))
                                              ((lambda (_%L158379%_
                                                        _%L158380%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self158330%_
                                                  _%L158380%_
                                                  _%L158379%_))
                                               _%hd158344158374%_
                                               _%hd158341158366%_)
                                              (_%g158333158350%_
                                               _%g158334158353%_))))
                                      (_%g158333158350%_ _%g158334158353%_))))
                              (_%g158333158350%_ _%g158334158353%_))))
                      (_%g158333158350%_ _%g158334158353%_)))))
          (_%g158332158395%_ _%stx158331%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self158289%_ _%hd158290%_ _%body158291%_)
        (let* ((_%hd158293%_ (gxc#generate-runtime-lambda-head _%hd158290%_))
               (_%body158295%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self158289%_ _%body158291%_)))
               (_%body158327%_
                (let* ((_%body158296158304%_ _%body158295%_)
                       (_%else158298158312%_
                        (lambda () (cons _%body158295%_ '())))
                       (_%K158300158317%_
                        (lambda (_%exprs158315%_) _%exprs158315%_)))
                  (if (pair? _%body158296158304%_)
                      (let ((_%hd158301158320%_
                             (let ()
                               (declare (not safe))
                               (##car _%body158296158304%_)))
                            (_%tl158302158322%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body158296158304%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd158301158320%_ 'begin))
                            (let ((_%exprs158325%_ _%tl158302158322%_))
                              (_%K158300158317%_ _%exprs158325%_))
                            (_%else158298158312%_)))
                      (_%else158298158312%_)))))
          (cons 'lambda (cons _%hd158293%_ _%body158327%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd158287%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd158287%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self156826%_ _%stx156827%_)
        (letrec ((_%dispatch-case?156829%_
                  (lambda (_%hd157517%_ _%body157518%_)
                    (let* ((_%form157520%_
                            (cons _%hd157517%_ (cons _%body157518%_ '())))
                           (_%__stx159842159843%_ _%form157520%_)
                           (_%g157525157682%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx159842159843%_)))))
                      (let ((_%__kont159844159845%_
                             (lambda (_%L158207%_ _%L158208%_ _%L158209%_)
                               '#t))
                            (_%__kont159850159851%_
                             (lambda (_%L157995%_
                                      _%L157996%_
                                      _%L157997%_
                                      _%L157998%_
                                      _%L157999%_
                                      _%L158000%_)
                               '#t))
                            (_%__kont159856159857%_
                             (lambda (_%L157790%_
                                      _%L157791%_
                                      _%L157792%_
                                      _%L157793%_)
                               '#t))
                            (_%__kont159858159859%_ (lambda () '#f)))
                        (let* ((_%__match159983159984%_
                                (lambda (_%e157642157694%_
                                         _%hd157643157697%_
                                         _%tl157644157699%_
                                         _%e157645157702%_
                                         _%hd157646157705%_
                                         _%tl157647157707%_
                                         _%e157648157710%_
                                         _%hd157649157713%_
                                         _%tl157650157715%_
                                         _%e157651157718%_
                                         _%hd157652157721%_
                                         _%tl157653157723%_
                                         _%e157654157726%_
                                         _%hd157655157729%_
                                         _%tl157656157731%_
                                         _%e157657157734%_
                                         _%hd157658157737%_
                                         _%tl157659157739%_
                                         _%e157660157742%_
                                         _%hd157661157745%_
                                         _%tl157662157747%_
                                         _%e157663157750%_
                                         _%hd157664157753%_
                                         _%tl157665157755%_
                                         _%e157666157758%_
                                         _%hd157667157761%_
                                         _%tl157668157763%_
                                         _%e157669157766%_
                                         _%hd157670157769%_
                                         _%tl157671157771%_
                                         _%e157672157774%_
                                         _%hd157673157777%_
                                         _%tl157674157779%_
                                         _%e157675157782%_
                                         _%hd157676157785%_
                                         _%tl157677157787%_)
                                  (let ((_%L157790%_ _%hd157676157785%_)
                                        (_%L157791%_ _%hd157667157761%_)
                                        (_%L157792%_ _%hd157658157737%_)
                                        (_%L157793%_ _%hd157643157697%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L157793%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L157792%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L157793%_
                                                _%L157790%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L157791%_
                                                     _%L157793%_))))
                                        (_%__kont159856159857%_
                                         _%L157790%_
                                         _%L157791%_
                                         _%L157792%_
                                         _%L157793%_)
                                        (_%__kont159858159859%_)))))
                               (_%__match159955159956%_
                                (lambda (_%e157642157694%_
                                         _%hd157643157697%_
                                         _%tl157644157699%_
                                         _%e157645157702%_
                                         _%hd157646157705%_
                                         _%tl157647157707%_
                                         _%e157648157710%_
                                         _%hd157649157713%_
                                         _%tl157650157715%_
                                         _%e157651157718%_
                                         _%hd157652157721%_
                                         _%tl157653157723%_
                                         _%e157654157726%_
                                         _%hd157655157729%_
                                         _%tl157656157731%_
                                         _%e157657157734%_
                                         _%hd157658157737%_
                                         _%tl157659157739%_
                                         _%e157660157742%_
                                         _%hd157661157745%_
                                         _%tl157662157747%_
                                         _%e157663157750%_
                                         _%hd157664157753%_
                                         _%tl157665157755%_
                                         _%e157666157758%_
                                         _%hd157667157761%_
                                         _%tl157668157763%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl157662157747%_))
                                      (let ((_%e157669157766%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl157662157747%_))))
                                        (let ((_%tl157671157771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e157669157766%_)))
                                              (_%hd157670157769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e157669157766%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd157670157769%_))
                                              (let ((_%e157672157774%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd157670157769%_))))
                                                (let ((_%tl157674157779%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e157672157774%_)))
                                                      (_%hd157673157777%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e157672157774%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd157673157777%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd157673157777%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl157674157779%_))
                      (let ((_%e157675157782%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl157674157779%_))))
                        (let ((_%tl157677157787%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157675157782%_)))
                              (_%hd157676157785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157675157782%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl157677157787%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl157671157771%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl157647157707%_))
                                      (_%__match159983159984%_
                                       _%e157642157694%_
                                       _%hd157643157697%_
                                       _%tl157644157699%_
                                       _%e157645157702%_
                                       _%hd157646157705%_
                                       _%tl157647157707%_
                                       _%e157648157710%_
                                       _%hd157649157713%_
                                       _%tl157650157715%_
                                       _%e157651157718%_
                                       _%hd157652157721%_
                                       _%tl157653157723%_
                                       _%e157654157726%_
                                       _%hd157655157729%_
                                       _%tl157656157731%_
                                       _%e157657157734%_
                                       _%hd157658157737%_
                                       _%tl157659157739%_
                                       _%e157660157742%_
                                       _%hd157661157745%_
                                       _%tl157662157747%_
                                       _%e157663157750%_
                                       _%hd157664157753%_
                                       _%tl157665157755%_
                                       _%e157666157758%_
                                       _%hd157667157761%_
                                       _%tl157668157763%_
                                       _%e157669157766%_
                                       _%hd157670157769%_
                                       _%tl157671157771%_
                                       _%e157672157774%_
                                       _%hd157673157777%_
                                       _%tl157674157779%_
                                       _%e157675157782%_
                                       _%hd157676157785%_
                                       _%tl157677157787%_)
                                      (_%__kont159858159859%_))
                                  (_%__kont159858159859%_))
                              (_%__kont159858159859%_))))
                      (_%__kont159858159859%_))
                  (_%__kont159858159859%_))
              (_%__kont159858159859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont159858159859%_))))
                                      (_%__kont159858159859%_))))
                               (_%__match159885159886%_
                                (lambda (_%e157578157835%_
                                         _%hd157579157838%_
                                         _%tl157580157840%_
                                         _%__splice159852159853%_
                                         _%target157581157843%_
                                         _%tl157583157845%_)
                                  (letrec ((_%loop157584157848%_
                                            (lambda (_%hd157582157851%_
                                                     _%arg157588157853%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157582157851%_))
                                                  (let ((_%e157585157856%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157582157851%_))))
                                                    (let ((_%lp-tl157587157861%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157585157856%_)))
                                                          (_%lp-hd157586157859%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157585157856%_))))
                                                      (_%loop157584157848%_
                                                       _%lp-tl157587157861%_
                                                       (cons _%lp-hd157586157859%_
                                                             _%arg157588157853%_))))
                                                  (let ((_%arg157589157864%_
                                                         (reverse _%arg157588157853%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl157580157840%_))
                                                        (let ((_%e157590157867%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl157580157840%_))))
                  (let ((_%tl157592157872%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157590157867%_)))
                        (_%hd157591157870%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157590157867%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157591157870%_))
                        (let ((_%e157593157875%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157591157870%_))))
                          (let ((_%tl157595157880%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157593157875%_)))
                                (_%hd157594157878%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157593157875%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157594157878%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd157594157878%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157595157880%_))
                                        (let ((_%e157596157883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157595157880%_))))
                                          (let ((_%tl157598157888%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157596157883%_)))
                                                (_%hd157597157886%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157596157883%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd157597157886%_))
                                                (let ((_%e157599157891%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd157597157886%_))))
                                                  (let ((_%tl157601157896%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e157599157891%_)))
                                                        (_%hd157600157894%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e157599157891%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd157600157894%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd157600157894%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl157601157896%_))
                        (let ((_%e157602157899%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl157601157896%_))))
                          (let ((_%tl157604157904%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157602157899%_)))
                                (_%hd157603157902%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157602157899%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157604157904%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl157598157888%_))
                                    (let ((_%e157605157907%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl157598157888%_))))
                                      (let ((_%tl157607157912%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e157605157907%_)))
                                            (_%hd157606157910%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e157605157907%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd157606157910%_))
                                            (let ((_%e157608157915%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd157606157910%_))))
                                              (let ((_%tl157610157920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157608157915%_)))
                                                    (_%hd157609157918%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157608157915%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd157609157918%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd157609157918%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl157610157920%_))
                                                            (let ((_%e157611157923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl157610157920%_))))
                      (let ((_%tl157613157928%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e157611157923%_)))
                            (_%hd157612157926%_
                             (let ()
                               (declare (not safe))
                               (##car _%e157611157923%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl157613157928%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl157607157912%_))
                                (if (let ((__tmp161124
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl157607157912%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp161124 '1))
                                    (let ((_%__splice159854159855%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl157607157912%_
                                              '1))))
                                      (let ((_%tl157616157933%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice159854159855%_
                                                '1)))
                                            (_%target157614157931%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice159854159855%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl157616157933%_))
                                            (let ((_%e157623157936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl157616157933%_))))
                                              (let ((_%tl157625157941%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157623157936%_)))
                                                    (_%hd157624157939%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157623157936%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd157624157939%_))
                                                    (let ((_%e157626157944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd157624157939%_))))
                                                      (let ((_%tl157628157949%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e157626157944%_)))
                    (_%hd157627157947%_
                     (let () (declare (not safe)) (##car _%e157626157944%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd157627157947%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd157627157947%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl157628157949%_))
                            (let ((_%e157629157952%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl157628157949%_))))
                              (let ((_%tl157631157957%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e157629157952%_)))
                                    (_%hd157630157955%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e157629157952%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl157631157957%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl157625157941%_))
                                        (letrec ((_%loop157617157960%_
                                                  (lambda (_%hd157615157963%_
                                                           _%xarg157621157965%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd157615157963%_))
                                                        (let ((_%e157618157968%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd157615157963%_))))
                  (let ((_%lp-tl157620157973%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157618157968%_)))
                        (_%lp-hd157619157971%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157618157968%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd157619157971%_))
                        (let ((_%e157632157976%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd157619157971%_))))
                          (let ((_%tl157634157981%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157632157976%_)))
                                (_%hd157633157979%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157632157976%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157633157979%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd157633157979%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157634157981%_))
                                        (let ((_%e157635157984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157634157981%_))))
                                          (let ((_%tl157637157989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157635157984%_)))
                                                (_%hd157636157987%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157635157984%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl157637157989%_))
                                                (_%loop157617157960%_
                                                 _%lp-tl157620157973%_
                                                 (cons _%hd157636157987%_
                                                       _%xarg157621157965%_))
                                                (_%__match159955159956%_
                                                 _%e157578157835%_
                                                 _%hd157579157838%_
                                                 _%tl157580157840%_
                                                 _%e157590157867%_
                                                 _%hd157591157870%_
                                                 _%tl157592157872%_
                                                 _%e157593157875%_
                                                 _%hd157594157878%_
                                                 _%tl157595157880%_
                                                 _%e157596157883%_
                                                 _%hd157597157886%_
                                                 _%tl157598157888%_
                                                 _%e157599157891%_
                                                 _%hd157600157894%_
                                                 _%tl157601157896%_
                                                 _%e157602157899%_
                                                 _%hd157603157902%_
                                                 _%tl157604157904%_
                                                 _%e157605157907%_
                                                 _%hd157606157910%_
                                                 _%tl157607157912%_
                                                 _%e157608157915%_
                                                 _%hd157609157918%_
                                                 _%tl157610157920%_
                                                 _%e157611157923%_
                                                 _%hd157612157926%_
                                                 _%tl157613157928%_))))
                                        (_%__match159955159956%_
                                         _%e157578157835%_
                                         _%hd157579157838%_
                                         _%tl157580157840%_
                                         _%e157590157867%_
                                         _%hd157591157870%_
                                         _%tl157592157872%_
                                         _%e157593157875%_
                                         _%hd157594157878%_
                                         _%tl157595157880%_
                                         _%e157596157883%_
                                         _%hd157597157886%_
                                         _%tl157598157888%_
                                         _%e157599157891%_
                                         _%hd157600157894%_
                                         _%tl157601157896%_
                                         _%e157602157899%_
                                         _%hd157603157902%_
                                         _%tl157604157904%_
                                         _%e157605157907%_
                                         _%hd157606157910%_
                                         _%tl157607157912%_
                                         _%e157608157915%_
                                         _%hd157609157918%_
                                         _%tl157610157920%_
                                         _%e157611157923%_
                                         _%hd157612157926%_
                                         _%tl157613157928%_))
                                    (_%__match159955159956%_
                                     _%e157578157835%_
                                     _%hd157579157838%_
                                     _%tl157580157840%_
                                     _%e157590157867%_
                                     _%hd157591157870%_
                                     _%tl157592157872%_
                                     _%e157593157875%_
                                     _%hd157594157878%_
                                     _%tl157595157880%_
                                     _%e157596157883%_
                                     _%hd157597157886%_
                                     _%tl157598157888%_
                                     _%e157599157891%_
                                     _%hd157600157894%_
                                     _%tl157601157896%_
                                     _%e157602157899%_
                                     _%hd157603157902%_
                                     _%tl157604157904%_
                                     _%e157605157907%_
                                     _%hd157606157910%_
                                     _%tl157607157912%_
                                     _%e157608157915%_
                                     _%hd157609157918%_
                                     _%tl157610157920%_
                                     _%e157611157923%_
                                     _%hd157612157926%_
                                     _%tl157613157928%_))
                                (_%__match159955159956%_
                                 _%e157578157835%_
                                 _%hd157579157838%_
                                 _%tl157580157840%_
                                 _%e157590157867%_
                                 _%hd157591157870%_
                                 _%tl157592157872%_
                                 _%e157593157875%_
                                 _%hd157594157878%_
                                 _%tl157595157880%_
                                 _%e157596157883%_
                                 _%hd157597157886%_
                                 _%tl157598157888%_
                                 _%e157599157891%_
                                 _%hd157600157894%_
                                 _%tl157601157896%_
                                 _%e157602157899%_
                                 _%hd157603157902%_
                                 _%tl157604157904%_
                                 _%e157605157907%_
                                 _%hd157606157910%_
                                 _%tl157607157912%_
                                 _%e157608157915%_
                                 _%hd157609157918%_
                                 _%tl157610157920%_
                                 _%e157611157923%_
                                 _%hd157612157926%_
                                 _%tl157613157928%_))))
                        (_%__match159955159956%_
                         _%e157578157835%_
                         _%hd157579157838%_
                         _%tl157580157840%_
                         _%e157590157867%_
                         _%hd157591157870%_
                         _%tl157592157872%_
                         _%e157593157875%_
                         _%hd157594157878%_
                         _%tl157595157880%_
                         _%e157596157883%_
                         _%hd157597157886%_
                         _%tl157598157888%_
                         _%e157599157891%_
                         _%hd157600157894%_
                         _%tl157601157896%_
                         _%e157602157899%_
                         _%hd157603157902%_
                         _%tl157604157904%_
                         _%e157605157907%_
                         _%hd157606157910%_
                         _%tl157607157912%_
                         _%e157608157915%_
                         _%hd157609157918%_
                         _%tl157610157920%_
                         _%e157611157923%_
                         _%hd157612157926%_
                         _%tl157613157928%_))))
                (let ((_%xarg157622157992%_ (reverse _%xarg157621157965%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl157592157872%_))
                      (let ((_%L157995%_ _%hd157630157955%_)
                            (_%L157996%_ _%xarg157622157992%_)
                            (_%L157997%_ _%hd157612157926%_)
                            (_%L157998%_ _%hd157603157902%_)
                            (_%L157999%_ _%tl157583157845%_)
                            (_%L158000%_ _%arg157589157864%_))
                        (if (and (let ((__tmp161125
                                        (let ((__tmp161126
                                               (lambda (_%g158043158046%_
                                                        _%g158044158048%_)
                                                 (cons _%g158043158046%_
                                                       _%g158044158048%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp161126
                                           '()
                                           _%L158000%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp161125))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L157999%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L157998%_
                                    'apply))
                                 (let ((__tmp161129
                                        (length (let ((__tmp161130
                                                       (lambda (_%g158050158053%_
                                                                _%g158051158055%_)
                                                         (cons _%g158050158053%_
                                                               _%g158051158055%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp161130
                                                   '()
                                                   _%L158000%_))))
                                       (__tmp161127
                                        (length (let ((__tmp161128
                                                       (lambda (_%g158057158060%_
                                                                _%g158058158062%_)
                                                         (cons _%g158057158060%_
                                                               _%g158058158062%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp161128
                                                   '()
                                                   _%L157996%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp161129 __tmp161127))
                                 (let ((__tmp161133
                                        (let ((__tmp161134
                                               (lambda (_%g158064158067%_
                                                        _%g158065158069%_)
                                                 (cons _%g158064158067%_
                                                       _%g158065158069%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp161134
                                           '()
                                           _%L158000%_)))
                                       (__tmp161131
                                        (let ((__tmp161132
                                               (lambda (_%g158071158074%_
                                                        _%g158072158076%_)
                                                 (cons _%g158071158074%_
                                                       _%g158072158076%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp161132
                                           '()
                                           _%L157996%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp161133
                                    __tmp161131))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L157999%_
                                    _%L157995%_))
                                 (not (let ((__tmp161138
                                             (lambda (_%g158078158080%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g158078158080%_
                                                  _%L157997%_))))
                                            (__tmp161135
                                             (let ((__tmp161137
                                                    (lambda (_%g158082158085%_
                                                             _%g158083158087%_)
                                                      (cons _%g158082158085%_
                                                            _%g158083158087%_)))
                                                   (__tmp161136
                                                    (cons _%L157999%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp161137
                                                __tmp161136
                                                _%L158000%_))))
                                        (declare (not safe))
                                        (__find __tmp161138 __tmp161135))))
                            (_%__kont159850159851%_
                             _%L157995%_
                             _%L157996%_
                             _%L157997%_
                             _%L157998%_
                             _%L157999%_
                             _%L158000%_)
                            (_%__match159955159956%_
                             _%e157578157835%_
                             _%hd157579157838%_
                             _%tl157580157840%_
                             _%e157590157867%_
                             _%hd157591157870%_
                             _%tl157592157872%_
                             _%e157593157875%_
                             _%hd157594157878%_
                             _%tl157595157880%_
                             _%e157596157883%_
                             _%hd157597157886%_
                             _%tl157598157888%_
                             _%e157599157891%_
                             _%hd157600157894%_
                             _%tl157601157896%_
                             _%e157602157899%_
                             _%hd157603157902%_
                             _%tl157604157904%_
                             _%e157605157907%_
                             _%hd157606157910%_
                             _%tl157607157912%_
                             _%e157608157915%_
                             _%hd157609157918%_
                             _%tl157610157920%_
                             _%e157611157923%_
                             _%hd157612157926%_
                             _%tl157613157928%_)))
                      (_%__match159955159956%_
                       _%e157578157835%_
                       _%hd157579157838%_
                       _%tl157580157840%_
                       _%e157590157867%_
                       _%hd157591157870%_
                       _%tl157592157872%_
                       _%e157593157875%_
                       _%hd157594157878%_
                       _%tl157595157880%_
                       _%e157596157883%_
                       _%hd157597157886%_
                       _%tl157598157888%_
                       _%e157599157891%_
                       _%hd157600157894%_
                       _%tl157601157896%_
                       _%e157602157899%_
                       _%hd157603157902%_
                       _%tl157604157904%_
                       _%e157605157907%_
                       _%hd157606157910%_
                       _%tl157607157912%_
                       _%e157608157915%_
                       _%hd157609157918%_
                       _%tl157610157920%_
                       _%e157611157923%_
                       _%hd157612157926%_
                       _%tl157613157928%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop157617157960%_
                                           _%target157614157931%_
                                           '()))
                                        (_%__match159955159956%_
                                         _%e157578157835%_
                                         _%hd157579157838%_
                                         _%tl157580157840%_
                                         _%e157590157867%_
                                         _%hd157591157870%_
                                         _%tl157592157872%_
                                         _%e157593157875%_
                                         _%hd157594157878%_
                                         _%tl157595157880%_
                                         _%e157596157883%_
                                         _%hd157597157886%_
                                         _%tl157598157888%_
                                         _%e157599157891%_
                                         _%hd157600157894%_
                                         _%tl157601157896%_
                                         _%e157602157899%_
                                         _%hd157603157902%_
                                         _%tl157604157904%_
                                         _%e157605157907%_
                                         _%hd157606157910%_
                                         _%tl157607157912%_
                                         _%e157608157915%_
                                         _%hd157609157918%_
                                         _%tl157610157920%_
                                         _%e157611157923%_
                                         _%hd157612157926%_
                                         _%tl157613157928%_))
                                    (_%__match159955159956%_
                                     _%e157578157835%_
                                     _%hd157579157838%_
                                     _%tl157580157840%_
                                     _%e157590157867%_
                                     _%hd157591157870%_
                                     _%tl157592157872%_
                                     _%e157593157875%_
                                     _%hd157594157878%_
                                     _%tl157595157880%_
                                     _%e157596157883%_
                                     _%hd157597157886%_
                                     _%tl157598157888%_
                                     _%e157599157891%_
                                     _%hd157600157894%_
                                     _%tl157601157896%_
                                     _%e157602157899%_
                                     _%hd157603157902%_
                                     _%tl157604157904%_
                                     _%e157605157907%_
                                     _%hd157606157910%_
                                     _%tl157607157912%_
                                     _%e157608157915%_
                                     _%hd157609157918%_
                                     _%tl157610157920%_
                                     _%e157611157923%_
                                     _%hd157612157926%_
                                     _%tl157613157928%_))))
                            (_%__match159955159956%_
                             _%e157578157835%_
                             _%hd157579157838%_
                             _%tl157580157840%_
                             _%e157590157867%_
                             _%hd157591157870%_
                             _%tl157592157872%_
                             _%e157593157875%_
                             _%hd157594157878%_
                             _%tl157595157880%_
                             _%e157596157883%_
                             _%hd157597157886%_
                             _%tl157598157888%_
                             _%e157599157891%_
                             _%hd157600157894%_
                             _%tl157601157896%_
                             _%e157602157899%_
                             _%hd157603157902%_
                             _%tl157604157904%_
                             _%e157605157907%_
                             _%hd157606157910%_
                             _%tl157607157912%_
                             _%e157608157915%_
                             _%hd157609157918%_
                             _%tl157610157920%_
                             _%e157611157923%_
                             _%hd157612157926%_
                             _%tl157613157928%_))
                        (_%__match159955159956%_
                         _%e157578157835%_
                         _%hd157579157838%_
                         _%tl157580157840%_
                         _%e157590157867%_
                         _%hd157591157870%_
                         _%tl157592157872%_
                         _%e157593157875%_
                         _%hd157594157878%_
                         _%tl157595157880%_
                         _%e157596157883%_
                         _%hd157597157886%_
                         _%tl157598157888%_
                         _%e157599157891%_
                         _%hd157600157894%_
                         _%tl157601157896%_
                         _%e157602157899%_
                         _%hd157603157902%_
                         _%tl157604157904%_
                         _%e157605157907%_
                         _%hd157606157910%_
                         _%tl157607157912%_
                         _%e157608157915%_
                         _%hd157609157918%_
                         _%tl157610157920%_
                         _%e157611157923%_
                         _%hd157612157926%_
                         _%tl157613157928%_))
                    (_%__match159955159956%_
                     _%e157578157835%_
                     _%hd157579157838%_
                     _%tl157580157840%_
                     _%e157590157867%_
                     _%hd157591157870%_
                     _%tl157592157872%_
                     _%e157593157875%_
                     _%hd157594157878%_
                     _%tl157595157880%_
                     _%e157596157883%_
                     _%hd157597157886%_
                     _%tl157598157888%_
                     _%e157599157891%_
                     _%hd157600157894%_
                     _%tl157601157896%_
                     _%e157602157899%_
                     _%hd157603157902%_
                     _%tl157604157904%_
                     _%e157605157907%_
                     _%hd157606157910%_
                     _%tl157607157912%_
                     _%e157608157915%_
                     _%hd157609157918%_
                     _%tl157610157920%_
                     _%e157611157923%_
                     _%hd157612157926%_
                     _%tl157613157928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match159955159956%_
                                                     _%e157578157835%_
                                                     _%hd157579157838%_
                                                     _%tl157580157840%_
                                                     _%e157590157867%_
                                                     _%hd157591157870%_
                                                     _%tl157592157872%_
                                                     _%e157593157875%_
                                                     _%hd157594157878%_
                                                     _%tl157595157880%_
                                                     _%e157596157883%_
                                                     _%hd157597157886%_
                                                     _%tl157598157888%_
                                                     _%e157599157891%_
                                                     _%hd157600157894%_
                                                     _%tl157601157896%_
                                                     _%e157602157899%_
                                                     _%hd157603157902%_
                                                     _%tl157604157904%_
                                                     _%e157605157907%_
                                                     _%hd157606157910%_
                                                     _%tl157607157912%_
                                                     _%e157608157915%_
                                                     _%hd157609157918%_
                                                     _%tl157610157920%_
                                                     _%e157611157923%_
                                                     _%hd157612157926%_
                                                     _%tl157613157928%_))))
                                            (_%__match159955159956%_
                                             _%e157578157835%_
                                             _%hd157579157838%_
                                             _%tl157580157840%_
                                             _%e157590157867%_
                                             _%hd157591157870%_
                                             _%tl157592157872%_
                                             _%e157593157875%_
                                             _%hd157594157878%_
                                             _%tl157595157880%_
                                             _%e157596157883%_
                                             _%hd157597157886%_
                                             _%tl157598157888%_
                                             _%e157599157891%_
                                             _%hd157600157894%_
                                             _%tl157601157896%_
                                             _%e157602157899%_
                                             _%hd157603157902%_
                                             _%tl157604157904%_
                                             _%e157605157907%_
                                             _%hd157606157910%_
                                             _%tl157607157912%_
                                             _%e157608157915%_
                                             _%hd157609157918%_
                                             _%tl157610157920%_
                                             _%e157611157923%_
                                             _%hd157612157926%_
                                             _%tl157613157928%_))))
                                    (_%__match159955159956%_
                                     _%e157578157835%_
                                     _%hd157579157838%_
                                     _%tl157580157840%_
                                     _%e157590157867%_
                                     _%hd157591157870%_
                                     _%tl157592157872%_
                                     _%e157593157875%_
                                     _%hd157594157878%_
                                     _%tl157595157880%_
                                     _%e157596157883%_
                                     _%hd157597157886%_
                                     _%tl157598157888%_
                                     _%e157599157891%_
                                     _%hd157600157894%_
                                     _%tl157601157896%_
                                     _%e157602157899%_
                                     _%hd157603157902%_
                                     _%tl157604157904%_
                                     _%e157605157907%_
                                     _%hd157606157910%_
                                     _%tl157607157912%_
                                     _%e157608157915%_
                                     _%hd157609157918%_
                                     _%tl157610157920%_
                                     _%e157611157923%_
                                     _%hd157612157926%_
                                     _%tl157613157928%_))
                                (_%__match159955159956%_
                                 _%e157578157835%_
                                 _%hd157579157838%_
                                 _%tl157580157840%_
                                 _%e157590157867%_
                                 _%hd157591157870%_
                                 _%tl157592157872%_
                                 _%e157593157875%_
                                 _%hd157594157878%_
                                 _%tl157595157880%_
                                 _%e157596157883%_
                                 _%hd157597157886%_
                                 _%tl157598157888%_
                                 _%e157599157891%_
                                 _%hd157600157894%_
                                 _%tl157601157896%_
                                 _%e157602157899%_
                                 _%hd157603157902%_
                                 _%tl157604157904%_
                                 _%e157605157907%_
                                 _%hd157606157910%_
                                 _%tl157607157912%_
                                 _%e157608157915%_
                                 _%hd157609157918%_
                                 _%tl157610157920%_
                                 _%e157611157923%_
                                 _%hd157612157926%_
                                 _%tl157613157928%_))
                            (_%__kont159858159859%_))))
                    (_%__kont159858159859%_))
                (_%__kont159858159859%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont159858159859%_))))
                                            (_%__kont159858159859%_))))
                                    (_%__kont159858159859%_))
                                (_%__kont159858159859%_))))
                        (_%__kont159858159859%_))
                    (_%__kont159858159859%_))
                (_%__kont159858159859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont159858159859%_))))
                                        (_%__kont159858159859%_))
                                    (_%__kont159858159859%_))
                                (_%__kont159858159859%_))))
                        (_%__kont159858159859%_))))
                (_%__kont159858159859%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop157584157848%_
                                     _%target157581157843%_
                                     '()))))
                               (_%__match159873159874%_
                                (lambda (_%e157530158095%_
                                         _%hd157531158098%_
                                         _%tl157532158100%_
                                         _%__splice159846159847%_
                                         _%target157533158103%_
                                         _%tl157535158105%_)
                                  (letrec ((_%loop157536158108%_
                                            (lambda (_%hd157534158111%_
                                                     _%arg157540158113%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157534158111%_))
                                                  (let ((_%e157537158116%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157534158111%_))))
                                                    (let ((_%lp-tl157539158121%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157537158116%_)))
                                                          (_%lp-hd157538158119%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157537158116%_))))
                                                      (_%loop157536158108%_
                                                       _%lp-tl157539158121%_
                                                       (cons _%lp-hd157538158119%_
                                                             _%arg157540158113%_))))
                                                  (let ((_%arg157541158124%_
                                                         (reverse _%arg157540158113%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl157532158100%_))
                                                        (let ((_%e157542158127%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl157532158100%_))))
                  (let ((_%tl157544158132%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157542158127%_)))
                        (_%hd157543158130%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157542158127%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157543158130%_))
                        (let ((_%e157545158135%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157543158130%_))))
                          (let ((_%tl157547158140%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157545158135%_)))
                                (_%hd157546158138%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157545158135%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157546158138%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd157546158138%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157547158140%_))
                                        (let ((_%e157548158143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157547158140%_))))
                                          (let ((_%tl157550158148%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157548158143%_)))
                                                (_%hd157549158146%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157548158143%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd157549158146%_))
                                                (let ((_%e157551158151%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd157549158146%_))))
                                                  (let ((_%tl157553158156%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e157551158151%_)))
                                                        (_%hd157552158154%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e157551158151%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd157552158154%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd157552158154%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl157553158156%_))
                        (let ((_%e157554158159%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl157553158156%_))))
                          (let ((_%tl157556158164%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157554158159%_)))
                                (_%hd157555158162%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157554158159%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157556158164%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl157550158148%_))
                                    (let ((_%__splice159848159849%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl157550158148%_
                                              '0))))
                                      (let ((_%tl157559158169%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice159848159849%_
                                                '1)))
                                            (_%target157557158167%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice159848159849%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl157559158169%_))
                                            (letrec ((_%loop157560158172%_
                                                      (lambda (_%hd157558158175%_
                                                               _%xarg157564158177%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd157558158175%_))
                                                            (let ((_%e157561158180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd157558158175%_))))
                      (let ((_%lp-tl157563158185%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e157561158180%_)))
                            (_%lp-hd157562158183%_
                             (let ()
                               (declare (not safe))
                               (##car _%e157561158180%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd157562158183%_))
                            (let ((_%e157566158188%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd157562158183%_))))
                              (let ((_%tl157568158193%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e157566158188%_)))
                                    (_%hd157567158191%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e157566158188%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd157567158191%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd157567158191%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl157568158193%_))
                                            (let ((_%e157569158196%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl157568158193%_))))
                                              (let ((_%tl157571158201%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157569158196%_)))
                                                    (_%hd157570158199%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157569158196%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl157571158201%_))
                                                    (_%loop157560158172%_
                                                     _%lp-tl157563158185%_
                                                     (cons _%hd157570158199%_
                                                           _%xarg157564158177%_))
                                                    (_%__match159885159886%_
                                                     _%e157530158095%_
                                                     _%hd157531158098%_
                                                     _%tl157532158100%_
                                                     _%__splice159846159847%_
                                                     _%target157533158103%_
                                                     _%tl157535158105%_))))
                                            (_%__match159885159886%_
                                             _%e157530158095%_
                                             _%hd157531158098%_
                                             _%tl157532158100%_
                                             _%__splice159846159847%_
                                             _%target157533158103%_
                                             _%tl157535158105%_))
                                        (_%__match159885159886%_
                                         _%e157530158095%_
                                         _%hd157531158098%_
                                         _%tl157532158100%_
                                         _%__splice159846159847%_
                                         _%target157533158103%_
                                         _%tl157535158105%_))
                                    (_%__match159885159886%_
                                     _%e157530158095%_
                                     _%hd157531158098%_
                                     _%tl157532158100%_
                                     _%__splice159846159847%_
                                     _%target157533158103%_
                                     _%tl157535158105%_))))
                            (_%__match159885159886%_
                             _%e157530158095%_
                             _%hd157531158098%_
                             _%tl157532158100%_
                             _%__splice159846159847%_
                             _%target157533158103%_
                             _%tl157535158105%_))))
                    (let ((_%xarg157565158204%_
                           (reverse _%xarg157564158177%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl157544158132%_))
                          (let ((_%L158207%_ _%xarg157565158204%_)
                                (_%L158208%_ _%hd157555158162%_)
                                (_%L158209%_ _%arg157541158124%_))
                            (if (and (let ((__tmp161139
                                            (let ((__tmp161140
                                                   (lambda (_%g158237158240%_
                                                            _%g158238158242%_)
                                                     (cons _%g158237158240%_
                                                           _%g158238158242%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161140
                                               '()
                                               _%L158209%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp161139))
                                     (let ((__tmp161143
                                            (length (let ((__tmp161144
                                                           (lambda (_%g158244158247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g158245158249%_)
                     (cons _%g158244158247%_ _%g158245158249%_))))
              (declare (not safe))
              (__foldr1 __tmp161144 '() _%L158209%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp161141
                                            (length (let ((__tmp161142
                                                           (lambda (_%g158251158254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g158252158256%_)
                     (cons _%g158251158254%_ _%g158252158256%_))))
              (declare (not safe))
              (__foldr1 __tmp161142 '() _%L158207%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp161143 __tmp161141))
                                     (let ((__tmp161147
                                            (let ((__tmp161148
                                                   (lambda (_%g158258158261%_
                                                            _%g158259158263%_)
                                                     (cons _%g158258158261%_
                                                           _%g158259158263%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161148
                                               '()
                                               _%L158209%_)))
                                           (__tmp161145
                                            (let ((__tmp161146
                                                   (lambda (_%g158265158268%_
                                                            _%g158266158270%_)
                                                     (cons _%g158265158268%_
                                                           _%g158266158270%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161146
                                               '()
                                               _%L158207%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp161147
                                        __tmp161145))
                                     (not (let ((__tmp161151
                                                 (lambda (_%g158272158274%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g158272158274%_
                                                      _%L158208%_))))
                                                (__tmp161149
                                                 (let ((__tmp161150
                                                        (lambda (_%g158276158279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g158277158281%_)
                  (cons _%g158276158279%_ _%g158277158281%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp161150
                                                    '()
                                                    _%L158209%_))))
                                            (declare (not safe))
                                            (__find __tmp161151 __tmp161149))))
                                (_%__kont159844159845%_
                                 _%L158207%_
                                 _%L158208%_
                                 _%L158209%_)
                                (_%__match159885159886%_
                                 _%e157530158095%_
                                 _%hd157531158098%_
                                 _%tl157532158100%_
                                 _%__splice159846159847%_
                                 _%target157533158103%_
                                 _%tl157535158105%_)))
                          (_%__match159885159886%_
                           _%e157530158095%_
                           _%hd157531158098%_
                           _%tl157532158100%_
                           _%__splice159846159847%_
                           _%target157533158103%_
                           _%tl157535158105%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop157560158172%_
                                               _%target157557158167%_
                                               '()))
                                            (_%__match159885159886%_
                                             _%e157530158095%_
                                             _%hd157531158098%_
                                             _%tl157532158100%_
                                             _%__splice159846159847%_
                                             _%target157533158103%_
                                             _%tl157535158105%_))))
                                    (_%__match159885159886%_
                                     _%e157530158095%_
                                     _%hd157531158098%_
                                     _%tl157532158100%_
                                     _%__splice159846159847%_
                                     _%target157533158103%_
                                     _%tl157535158105%_))
                                (_%__match159885159886%_
                                 _%e157530158095%_
                                 _%hd157531158098%_
                                 _%tl157532158100%_
                                 _%__splice159846159847%_
                                 _%target157533158103%_
                                 _%tl157535158105%_))))
                        (_%__match159885159886%_
                         _%e157530158095%_
                         _%hd157531158098%_
                         _%tl157532158100%_
                         _%__splice159846159847%_
                         _%target157533158103%_
                         _%tl157535158105%_))
                    (_%__match159885159886%_
                     _%e157530158095%_
                     _%hd157531158098%_
                     _%tl157532158100%_
                     _%__splice159846159847%_
                     _%target157533158103%_
                     _%tl157535158105%_))
                (_%__match159885159886%_
                 _%e157530158095%_
                 _%hd157531158098%_
                 _%tl157532158100%_
                 _%__splice159846159847%_
                 _%target157533158103%_
                 _%tl157535158105%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match159885159886%_
                                                 _%e157530158095%_
                                                 _%hd157531158098%_
                                                 _%tl157532158100%_
                                                 _%__splice159846159847%_
                                                 _%target157533158103%_
                                                 _%tl157535158105%_))))
                                        (_%__match159885159886%_
                                         _%e157530158095%_
                                         _%hd157531158098%_
                                         _%tl157532158100%_
                                         _%__splice159846159847%_
                                         _%target157533158103%_
                                         _%tl157535158105%_))
                                    (_%__match159885159886%_
                                     _%e157530158095%_
                                     _%hd157531158098%_
                                     _%tl157532158100%_
                                     _%__splice159846159847%_
                                     _%target157533158103%_
                                     _%tl157535158105%_))
                                (_%__match159885159886%_
                                 _%e157530158095%_
                                 _%hd157531158098%_
                                 _%tl157532158100%_
                                 _%__splice159846159847%_
                                 _%target157533158103%_
                                 _%tl157535158105%_))))
                        (_%__match159885159886%_
                         _%e157530158095%_
                         _%hd157531158098%_
                         _%tl157532158100%_
                         _%__splice159846159847%_
                         _%target157533158103%_
                         _%tl157535158105%_))))
                (_%__match159885159886%_
                 _%e157530158095%_
                 _%hd157531158098%_
                 _%tl157532158100%_
                 _%__splice159846159847%_
                 _%target157533158103%_
                 _%tl157535158105%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop157536158108%_
                                     _%target157533158103%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx159842159843%_))
                              (let ((_%e157530158095%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx159842159843%_))))
                                (let ((_%tl157532158100%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157530158095%_)))
                                      (_%hd157531158098%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157530158095%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd157531158098%_))
                                      (let ((_%__splice159846159847%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd157531158098%_
                                                '0))))
                                        (let ((_%tl157535158105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice159846159847%_
                                                  '1)))
                                              (_%target157533158103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice159846159847%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl157535158105%_))
                                              (_%__match159873159874%_
                                               _%e157530158095%_
                                               _%hd157531158098%_
                                               _%tl157532158100%_
                                               _%__splice159846159847%_
                                               _%target157533158103%_
                                               _%tl157535158105%_)
                                              (_%__match159885159886%_
                                               _%e157530158095%_
                                               _%hd157531158098%_
                                               _%tl157532158100%_
                                               _%__splice159846159847%_
                                               _%target157533158103%_
                                               _%tl157535158105%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl157532158100%_))
                                          (let ((_%e157645157702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl157532158100%_))))
                                            (let ((_%tl157647157707%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e157645157702%_)))
                                                  (_%hd157646157705%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e157645157702%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157646157705%_))
                                                  (let ((_%e157648157710%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157646157705%_))))
                                                    (let ((_%tl157650157715%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157648157710%_)))
                                                          (_%hd157649157713%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157648157710%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd157649157713%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd157649157713%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl157650157715%_))
                          (let ((_%e157651157718%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl157650157715%_))))
                            (let ((_%tl157653157723%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e157651157718%_)))
                                  (_%hd157652157721%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e157651157718%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd157652157721%_))
                                  (let ((_%e157654157726%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd157652157721%_))))
                                    (let ((_%tl157656157731%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e157654157726%_)))
                                          (_%hd157655157729%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e157654157726%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd157655157729%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd157655157729%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl157656157731%_))
                                                  (let ((_%e157657157734%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl157656157731%_))))
                                                    (let ((_%tl157659157739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157657157734%_)))
                                                          (_%hd157658157737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157657157734%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl157659157739%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl157653157723%_))
                      (let ((_%e157660157742%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl157653157723%_))))
                        (let ((_%tl157662157747%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157660157742%_)))
                              (_%hd157661157745%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157660157742%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd157661157745%_))
                              (let ((_%e157663157750%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd157661157745%_))))
                                (let ((_%tl157665157755%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157663157750%_)))
                                      (_%hd157664157753%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157663157750%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd157664157753%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd157664157753%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl157665157755%_))
                                              (let ((_%e157666157758%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl157665157755%_))))
                                                (let ((_%tl157668157763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e157666157758%_)))
                                                      (_%hd157667157761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e157666157758%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl157668157763%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl157662157747%_))
                                                          (let ((_%e157669157766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl157662157747%_))))
                    (let ((_%tl157671157771%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e157669157766%_)))
                          (_%hd157670157769%_
                           (let ()
                             (declare (not safe))
                             (##car _%e157669157766%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd157670157769%_))
                          (let ((_%e157672157774%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd157670157769%_))))
                            (let ((_%tl157674157779%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e157672157774%_)))
                                  (_%hd157673157777%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e157672157774%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd157673157777%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd157673157777%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl157674157779%_))
                                          (let ((_%e157675157782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl157674157779%_))))
                                            (let ((_%tl157677157787%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e157675157782%_)))
                                                  (_%hd157676157785%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e157675157782%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl157677157787%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl157671157771%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl157647157707%_))
                                                          (_%__match159983159984%_
                                                           _%e157530158095%_
                                                           _%hd157531158098%_
                                                           _%tl157532158100%_
                                                           _%e157645157702%_
                                                           _%hd157646157705%_
                                                           _%tl157647157707%_
                                                           _%e157648157710%_
                                                           _%hd157649157713%_
                                                           _%tl157650157715%_
                                                           _%e157651157718%_
                                                           _%hd157652157721%_
                                                           _%tl157653157723%_
                                                           _%e157654157726%_
                                                           _%hd157655157729%_
                                                           _%tl157656157731%_
                                                           _%e157657157734%_
                                                           _%hd157658157737%_
                                                           _%tl157659157739%_
                                                           _%e157660157742%_
                                                           _%hd157661157745%_
                                                           _%tl157662157747%_
                                                           _%e157663157750%_
                                                           _%hd157664157753%_
                                                           _%tl157665157755%_
                                                           _%e157666157758%_
                                                           _%hd157667157761%_
                                                           _%tl157668157763%_
                                                           _%e157669157766%_
                                                           _%hd157670157769%_
                                                           _%tl157671157771%_
                                                           _%e157672157774%_
                                                           _%hd157673157777%_
                                                           _%tl157674157779%_
                                                           _%e157675157782%_
                                                           _%hd157676157785%_
                                                           _%tl157677157787%_)
                                                          (_%__kont159858159859%_))
                                                      (_%__kont159858159859%_))
                                                  (_%__kont159858159859%_))))
                                          (_%__kont159858159859%_))
                                      (_%__kont159858159859%_))
                                  (_%__kont159858159859%_))))
                          (_%__kont159858159859%_))))
                  (_%__kont159858159859%_))
              (_%__kont159858159859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont159858159859%_))
                                          (_%__kont159858159859%_))
                                      (_%__kont159858159859%_))))
                              (_%__kont159858159859%_))))
                      (_%__kont159858159859%_))
                  (_%__kont159858159859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont159858159859%_))
                                              (_%__kont159858159859%_))
                                          (_%__kont159858159859%_))))
                                  (_%__kont159858159859%_))))
                          (_%__kont159858159859%_))
                      (_%__kont159858159859%_))
                  (_%__kont159858159859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont159858159859%_))))
                                          (_%__kont159858159859%_)))))
                              (_%__kont159858159859%_)))))))
                 (_%dispatch-case-e156830%_
                  (lambda (_%hd156981%_ _%body156982%_)
                    (let* ((_%form156984%_
                            (cons _%hd156981%_ (cons _%body156982%_ '())))
                           (_%__stx159986159987%_ _%form156984%_)
                           (_%g156988157112%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx159986159987%_)))))
                      (let ((_%__kont159988159989%_
                             (lambda (_%L157483%_ _%L157484%_ _%L157485%_)
                               (let ((__tmp161152
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L157484%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self156826%_
                                  __tmp161152))))
                            (_%__kont159994159995%_
                             (lambda (_%L157331%_
                                      _%L157332%_
                                      _%L157333%_
                                      _%L157334%_)
                               (let ((__tmp161153
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L157331%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self156826%_
                                  __tmp161153))))
                            (_%__kont159998159999%_
                             (lambda (_%L157197%_ _%L157198%_ _%L157199%_)
                               (let ((__tmp161154
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L157197%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self156826%_
                                  __tmp161154)))))
                        (let* ((_%__match160095160096%_
                                (lambda (_%e157078157117%_
                                         _%hd157079157120%_
                                         _%tl157080157122%_
                                         _%e157081157125%_
                                         _%hd157082157128%_
                                         _%tl157083157130%_
                                         _%e157084157133%_
                                         _%hd157085157136%_
                                         _%tl157086157138%_
                                         _%e157087157141%_
                                         _%hd157088157144%_
                                         _%tl157089157146%_
                                         _%e157090157149%_
                                         _%hd157091157152%_
                                         _%tl157092157154%_
                                         _%e157093157157%_
                                         _%hd157094157160%_
                                         _%tl157095157162%_
                                         _%e157096157165%_
                                         _%hd157097157168%_
                                         _%tl157098157170%_
                                         _%e157099157173%_
                                         _%hd157100157176%_
                                         _%tl157101157178%_
                                         _%e157102157181%_
                                         _%hd157103157184%_
                                         _%tl157104157186%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl157098157170%_))
                                      (let ((_%e157105157189%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl157098157170%_))))
                                        (let ((_%tl157107157194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e157105157189%_)))
                                              (_%hd157106157192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e157105157189%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl157107157194%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl157083157130%_))
                                                  (_%__kont159998159999%_
                                                   _%hd157103157184%_
                                                   _%hd157094157160%_
                                                   _%hd157079157120%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g156988157112%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g156988157112%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g156988157112%_)))))
                               (_%__match160025160026%_
                                (lambda (_%e157039157235%_
                                         _%hd157040157238%_
                                         _%tl157041157240%_
                                         _%__splice159996159997%_
                                         _%target157042157243%_
                                         _%tl157044157245%_)
                                  (letrec ((_%loop157045157248%_
                                            (lambda (_%hd157043157251%_
                                                     _%arg157049157253%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157043157251%_))
                                                  (let ((_%e157046157256%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157043157251%_))))
                                                    (let ((_%lp-tl157048157261%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157046157256%_)))
                                                          (_%lp-hd157047157259%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157046157256%_))))
                                                      (_%loop157045157248%_
                                                       _%lp-tl157048157261%_
                                                       (cons _%lp-hd157047157259%_
                                                             _%arg157049157253%_))))
                                                  (let ((_%arg157050157264%_
                                                         (reverse _%arg157049157253%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl157041157240%_))
                                                        (let ((_%e157051157267%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl157041157240%_))))
                  (let ((_%tl157053157272%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157051157267%_)))
                        (_%hd157052157270%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157051157267%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157052157270%_))
                        (let ((_%e157054157275%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157052157270%_))))
                          (let ((_%tl157056157280%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157054157275%_)))
                                (_%hd157055157278%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157054157275%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157055157278%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd157055157278%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157056157280%_))
                                        (let ((_%e157057157283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157056157280%_))))
                                          (let ((_%tl157059157288%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157057157283%_)))
                                                (_%hd157058157286%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157057157283%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd157058157286%_))
                                                (let ((_%e157060157291%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd157058157286%_))))
                                                  (let ((_%tl157062157296%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e157060157291%_)))
                                                        (_%hd157061157294%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e157060157291%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd157061157294%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd157061157294%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl157062157296%_))
                        (let ((_%e157063157299%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl157062157296%_))))
                          (let ((_%tl157065157304%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157063157299%_)))
                                (_%hd157064157302%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157063157299%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157065157304%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl157059157288%_))
                                    (let ((_%e157066157307%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl157059157288%_))))
                                      (let ((_%tl157068157312%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e157066157307%_)))
                                            (_%hd157067157310%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e157066157307%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd157067157310%_))
                                            (let ((_%e157069157315%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd157067157310%_))))
                                              (let ((_%tl157071157320%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157069157315%_)))
                                                    (_%hd157070157318%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157069157315%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd157070157318%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd157070157318%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl157071157320%_))
                                                            (let ((_%e157072157323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl157071157320%_))))
                      (let ((_%tl157074157328%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e157072157323%_)))
                            (_%hd157073157326%_
                             (let ()
                               (declare (not safe))
                               (##car _%e157072157323%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl157074157328%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157053157272%_))
                                (_%__kont159994159995%_
                                 _%hd157073157326%_
                                 _%hd157064157302%_
                                 _%tl157044157245%_
                                 _%arg157050157264%_)
                                (_%__match160095160096%_
                                 _%e157039157235%_
                                 _%hd157040157238%_
                                 _%tl157041157240%_
                                 _%e157051157267%_
                                 _%hd157052157270%_
                                 _%tl157053157272%_
                                 _%e157054157275%_
                                 _%hd157055157278%_
                                 _%tl157056157280%_
                                 _%e157057157283%_
                                 _%hd157058157286%_
                                 _%tl157059157288%_
                                 _%e157060157291%_
                                 _%hd157061157294%_
                                 _%tl157062157296%_
                                 _%e157063157299%_
                                 _%hd157064157302%_
                                 _%tl157065157304%_
                                 _%e157066157307%_
                                 _%hd157067157310%_
                                 _%tl157068157312%_
                                 _%e157069157315%_
                                 _%hd157070157318%_
                                 _%tl157071157320%_
                                 _%e157072157323%_
                                 _%hd157073157326%_
                                 _%tl157074157328%_))
                            (let ()
                              (declare (not safe))
                              (_%g156988157112%_)))))
                    (let () (declare (not safe)) (_%g156988157112%_)))
                (let () (declare (not safe)) (_%g156988157112%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g156988157112%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g156988157112%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g156988157112%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g156988157112%_)))))
                        (let () (declare (not safe)) (_%g156988157112%_)))
                    (let () (declare (not safe)) (_%g156988157112%_)))
                (let () (declare (not safe)) (_%g156988157112%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g156988157112%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g156988157112%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g156988157112%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g156988157112%_)))))
                        (let () (declare (not safe)) (_%g156988157112%_)))))
                (let () (declare (not safe)) (_%g156988157112%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop157045157248%_
                                     _%target157042157243%_
                                     '()))))
                               (_%__match160013160014%_
                                (lambda (_%e156993157371%_
                                         _%hd156994157374%_
                                         _%tl156995157376%_
                                         _%__splice159990159991%_
                                         _%target156996157379%_
                                         _%tl156998157381%_)
                                  (letrec ((_%loop156999157384%_
                                            (lambda (_%hd156997157387%_
                                                     _%arg157003157389%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd156997157387%_))
                                                  (let ((_%e157000157392%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd156997157387%_))))
                                                    (let ((_%lp-tl157002157397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157000157392%_)))
                                                          (_%lp-hd157001157395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157000157392%_))))
                                                      (_%loop156999157384%_
                                                       _%lp-tl157002157397%_
                                                       (cons _%lp-hd157001157395%_
                                                             _%arg157003157389%_))))
                                                  (let ((_%arg157004157400%_
                                                         (reverse _%arg157003157389%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl156995157376%_))
                                                        (let ((_%e157005157403%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl156995157376%_))))
                  (let ((_%tl157007157408%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157005157403%_)))
                        (_%hd157006157406%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157005157403%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157006157406%_))
                        (let ((_%e157008157411%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157006157406%_))))
                          (let ((_%tl157010157416%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157008157411%_)))
                                (_%hd157009157414%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157008157411%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157009157414%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd157009157414%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157010157416%_))
                                        (let ((_%e157011157419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157010157416%_))))
                                          (let ((_%tl157013157424%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157011157419%_)))
                                                (_%hd157012157422%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157011157419%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd157012157422%_))
                                                (let ((_%e157014157427%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd157012157422%_))))
                                                  (let ((_%tl157016157432%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e157014157427%_)))
                                                        (_%hd157015157430%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e157014157427%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd157015157430%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd157015157430%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl157016157432%_))
                        (let ((_%e157017157435%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl157016157432%_))))
                          (let ((_%tl157019157440%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157017157435%_)))
                                (_%hd157018157438%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157017157435%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157019157440%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl157013157424%_))
                                    (let ((_%__splice159992159993%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl157013157424%_
                                              '0))))
                                      (let ((_%tl157022157445%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice159992159993%_
                                                '1)))
                                            (_%target157020157443%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice159992159993%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl157022157445%_))
                                            (letrec ((_%loop157023157448%_
                                                      (lambda (_%hd157021157451%_
                                                               _%xarg157027157453%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd157021157451%_))
                                                            (let ((_%e157024157456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd157021157451%_))))
                      (let ((_%lp-tl157026157461%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e157024157456%_)))
                            (_%lp-hd157025157459%_
                             (let ()
                               (declare (not safe))
                               (##car _%e157024157456%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd157025157459%_))
                            (let ((_%e157029157464%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd157025157459%_))))
                              (let ((_%tl157031157469%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e157029157464%_)))
                                    (_%hd157030157467%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e157029157464%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd157030157467%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd157030157467%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl157031157469%_))
                                            (let ((_%e157032157472%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl157031157469%_))))
                                              (let ((_%tl157034157477%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157032157472%_)))
                                                    (_%hd157033157475%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157032157472%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl157034157477%_))
                                                    (_%loop157023157448%_
                                                     _%lp-tl157026157461%_
                                                     (cons _%hd157033157475%_
                                                           _%xarg157027157453%_))
                                                    (_%__match160025160026%_
                                                     _%e156993157371%_
                                                     _%hd156994157374%_
                                                     _%tl156995157376%_
                                                     _%__splice159990159991%_
                                                     _%target156996157379%_
                                                     _%tl156998157381%_))))
                                            (_%__match160025160026%_
                                             _%e156993157371%_
                                             _%hd156994157374%_
                                             _%tl156995157376%_
                                             _%__splice159990159991%_
                                             _%target156996157379%_
                                             _%tl156998157381%_))
                                        (_%__match160025160026%_
                                         _%e156993157371%_
                                         _%hd156994157374%_
                                         _%tl156995157376%_
                                         _%__splice159990159991%_
                                         _%target156996157379%_
                                         _%tl156998157381%_))
                                    (_%__match160025160026%_
                                     _%e156993157371%_
                                     _%hd156994157374%_
                                     _%tl156995157376%_
                                     _%__splice159990159991%_
                                     _%target156996157379%_
                                     _%tl156998157381%_))))
                            (_%__match160025160026%_
                             _%e156993157371%_
                             _%hd156994157374%_
                             _%tl156995157376%_
                             _%__splice159990159991%_
                             _%target156996157379%_
                             _%tl156998157381%_))))
                    (let ((_%xarg157028157480%_
                           (reverse _%xarg157027157453%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl157007157408%_))
                          (_%__kont159988159989%_
                           _%xarg157028157480%_
                           _%hd157018157438%_
                           _%arg157004157400%_)
                          (_%__match160025160026%_
                           _%e156993157371%_
                           _%hd156994157374%_
                           _%tl156995157376%_
                           _%__splice159990159991%_
                           _%target156996157379%_
                           _%tl156998157381%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop157023157448%_
                                               _%target157020157443%_
                                               '()))
                                            (_%__match160025160026%_
                                             _%e156993157371%_
                                             _%hd156994157374%_
                                             _%tl156995157376%_
                                             _%__splice159990159991%_
                                             _%target156996157379%_
                                             _%tl156998157381%_))))
                                    (_%__match160025160026%_
                                     _%e156993157371%_
                                     _%hd156994157374%_
                                     _%tl156995157376%_
                                     _%__splice159990159991%_
                                     _%target156996157379%_
                                     _%tl156998157381%_))
                                (_%__match160025160026%_
                                 _%e156993157371%_
                                 _%hd156994157374%_
                                 _%tl156995157376%_
                                 _%__splice159990159991%_
                                 _%target156996157379%_
                                 _%tl156998157381%_))))
                        (_%__match160025160026%_
                         _%e156993157371%_
                         _%hd156994157374%_
                         _%tl156995157376%_
                         _%__splice159990159991%_
                         _%target156996157379%_
                         _%tl156998157381%_))
                    (_%__match160025160026%_
                     _%e156993157371%_
                     _%hd156994157374%_
                     _%tl156995157376%_
                     _%__splice159990159991%_
                     _%target156996157379%_
                     _%tl156998157381%_))
                (_%__match160025160026%_
                 _%e156993157371%_
                 _%hd156994157374%_
                 _%tl156995157376%_
                 _%__splice159990159991%_
                 _%target156996157379%_
                 _%tl156998157381%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match160025160026%_
                                                 _%e156993157371%_
                                                 _%hd156994157374%_
                                                 _%tl156995157376%_
                                                 _%__splice159990159991%_
                                                 _%target156996157379%_
                                                 _%tl156998157381%_))))
                                        (_%__match160025160026%_
                                         _%e156993157371%_
                                         _%hd156994157374%_
                                         _%tl156995157376%_
                                         _%__splice159990159991%_
                                         _%target156996157379%_
                                         _%tl156998157381%_))
                                    (_%__match160025160026%_
                                     _%e156993157371%_
                                     _%hd156994157374%_
                                     _%tl156995157376%_
                                     _%__splice159990159991%_
                                     _%target156996157379%_
                                     _%tl156998157381%_))
                                (_%__match160025160026%_
                                 _%e156993157371%_
                                 _%hd156994157374%_
                                 _%tl156995157376%_
                                 _%__splice159990159991%_
                                 _%target156996157379%_
                                 _%tl156998157381%_))))
                        (_%__match160025160026%_
                         _%e156993157371%_
                         _%hd156994157374%_
                         _%tl156995157376%_
                         _%__splice159990159991%_
                         _%target156996157379%_
                         _%tl156998157381%_))))
                (_%__match160025160026%_
                 _%e156993157371%_
                 _%hd156994157374%_
                 _%tl156995157376%_
                 _%__splice159990159991%_
                 _%target156996157379%_
                 _%tl156998157381%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop156999157384%_
                                     _%target156996157379%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx159986159987%_))
                              (let ((_%e156993157371%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx159986159987%_))))
                                (let ((_%tl156995157376%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e156993157371%_)))
                                      (_%hd156994157374%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e156993157371%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd156994157374%_))
                                      (let ((_%__splice159990159991%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd156994157374%_
                                                '0))))
                                        (let ((_%tl156998157381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice159990159991%_
                                                  '1)))
                                              (_%target156996157379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice159990159991%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl156998157381%_))
                                              (_%__match160013160014%_
                                               _%e156993157371%_
                                               _%hd156994157374%_
                                               _%tl156995157376%_
                                               _%__splice159990159991%_
                                               _%target156996157379%_
                                               _%tl156998157381%_)
                                              (_%__match160025160026%_
                                               _%e156993157371%_
                                               _%hd156994157374%_
                                               _%tl156995157376%_
                                               _%__splice159990159991%_
                                               _%target156996157379%_
                                               _%tl156998157381%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl156995157376%_))
                                          (let ((_%e157081157125%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl156995157376%_))))
                                            (let ((_%tl157083157130%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e157081157125%_)))
                                                  (_%hd157082157128%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e157081157125%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157082157128%_))
                                                  (let ((_%e157084157133%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157082157128%_))))
                                                    (let ((_%tl157086157138%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157084157133%_)))
                                                          (_%hd157085157136%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157084157133%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd157085157136%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd157085157136%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl157086157138%_))
                          (let ((_%e157087157141%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl157086157138%_))))
                            (let ((_%tl157089157146%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e157087157141%_)))
                                  (_%hd157088157144%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e157087157141%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd157088157144%_))
                                  (let ((_%e157090157149%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd157088157144%_))))
                                    (let ((_%tl157092157154%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e157090157149%_)))
                                          (_%hd157091157152%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e157090157149%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd157091157152%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd157091157152%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl157092157154%_))
                                                  (let ((_%e157093157157%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl157092157154%_))))
                                                    (let ((_%tl157095157162%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157093157157%_)))
                                                          (_%hd157094157160%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157093157157%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl157095157162%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl157089157146%_))
                      (let ((_%e157096157165%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl157089157146%_))))
                        (let ((_%tl157098157170%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157096157165%_)))
                              (_%hd157097157168%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157096157165%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd157097157168%_))
                              (let ((_%e157099157173%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd157097157168%_))))
                                (let ((_%tl157101157178%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157099157173%_)))
                                      (_%hd157100157176%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157099157173%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd157100157176%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd157100157176%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl157101157178%_))
                                              (let ((_%e157102157181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl157101157178%_))))
                                                (let ((_%tl157104157186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e157102157181%_)))
                                                      (_%hd157103157184%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e157102157181%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl157104157186%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl157098157170%_))
                                                          (let ((_%e157105157189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl157098157170%_))))
                    (let ((_%tl157107157194%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e157105157189%_)))
                          (_%hd157106157192%_
                           (let ()
                             (declare (not safe))
                             (##car _%e157105157189%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl157107157194%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl157083157130%_))
                              (_%__kont159998159999%_
                               _%hd157103157184%_
                               _%hd157094157160%_
                               _%hd156994157374%_)
                              (let ()
                                (declare (not safe))
                                (_%g156988157112%_)))
                          (let () (declare (not safe)) (_%g156988157112%_)))))
                  (let () (declare (not safe)) (_%g156988157112%_)))
              (let () (declare (not safe)) (_%g156988157112%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g156988157112%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g156988157112%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g156988157112%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g156988157112%_)))))
                      (let () (declare (not safe)) (_%g156988157112%_)))
                  (let () (declare (not safe)) (_%g156988157112%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g156988157112%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g156988157112%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g156988157112%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g156988157112%_)))))
                          (let () (declare (not safe)) (_%g156988157112%_)))
                      (let () (declare (not safe)) (_%g156988157112%_)))
                  (let () (declare (not safe)) (_%g156988157112%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g156988157112%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g156988157112%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g156988157112%_))))))))
                 (_%generate1156831%_
                  (lambda (_%args156966%_
                           _%arglen156967%_
                           _%hd156968%_
                           _%body156969%_)
                    (let* ((_%len156971%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd156968%_)))
                           (_%condition156976%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd156968%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen156967%_
                                                (cons _%len156971%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen156967%_ (cons _%len156971%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len156971%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen156967%_
                                                    (cons _%len156971%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen156967%_ (cons _%len156971%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch156978%_
                            (if (_%dispatch-case?156829%_
                                 _%hd156968%_
                                 _%body156969%_)
                                (_%dispatch-case-e156830%_
                                 _%hd156968%_
                                 _%body156969%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self156826%_
                                 _%hd156968%_
                                 _%body156969%_))))
                      (cons _%condition156976%_
                            (cons (cons 'apply
                                        (cons _%dispatch156978%_
                                              (cons _%args156966%_ '())))
                                  '()))))))
          (let* ((_%g156833156861%_
                  (lambda (_%g156834156858%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g156834156858%_))))
                 (_%g156832156963%_
                  (lambda (_%g156834156864%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g156834156864%_))
                        (let ((_%e156837156866%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g156834156864%_))))
                          (let ((_%hd156838156869%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156837156866%_)))
                                (_%tl156839156871%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156837156866%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl156839156871%_))
                                (let ((_g161155_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl156839156871%_
                                          '0))))
                                  (begin
                                    (let ((_g161156_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g161155_)
                                                 (##values-length _g161155_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g161156_ 2)))
                                          (error "Context expects 2 values"
                                                 _g161156_)))
                                    (let ((_%target156840156874%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161155_ 0)))
                                          (_%tl156842156876%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161155_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl156842156876%_))
                                          (letrec ((_%loop156843156879%_
                                                    (lambda (_%hd156841156882%_
                                                             _%body156847156884%_
                                                             _%hd156848156886%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd156841156882%_))
                                                          (let ((_%e156844156889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd156841156882%_))))
                    (let ((_%lp-hd156845156892%_
                           (let ()
                             (declare (not safe))
                             (##car _%e156844156889%_)))
                          (_%lp-tl156846156894%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e156844156889%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd156845156892%_))
                          (let ((_%e156851156897%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd156845156892%_))))
                            (let ((_%hd156852156900%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e156851156897%_)))
                                  (_%tl156853156902%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e156851156897%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl156853156902%_))
                                  (let ((_%e156854156905%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl156853156902%_))))
                                    (let ((_%hd156855156908%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e156854156905%_)))
                                          (_%tl156856156910%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e156854156905%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl156856156910%_))
                                          (_%loop156843156879%_
                                           _%lp-tl156846156894%_
                                           (cons _%hd156855156908%_
                                                 _%body156847156884%_)
                                           (cons _%hd156852156900%_
                                                 _%hd156848156886%_))
                                          (_%g156833156861%_
                                           _%g156834156864%_))))
                                  (_%g156833156861%_ _%g156834156864%_))))
                          (_%g156833156861%_ _%g156834156864%_))))
                  (let ((_%body156849156913%_ (reverse _%body156847156884%_))
                        (_%hd156850156915%_ (reverse _%hd156848156886%_)))
                    ((lambda (_%L156918%_ _%L156919%_)
                       (let ((_%args156938%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen156939%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name156940%_
                              (let ((_%$e156935%_
                                     (let ((__tmp161157
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp161157 _%stx156827%_))))
                                (if _%$e156935%_
                                    _%$e156935%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args156938%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen156939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args156938%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args156938%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp161161
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name156940%_
                                                                (cons _%args156938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp161158
                                  (map (lambda (_%g156941156944%_
                                                _%g156942156946%_)
                                         (_%generate1156831%_
                                          _%args156938%_
                                          _%arglen156939%_
                                          _%g156941156944%_
                                          _%g156942156946%_))
                                       (let ((__tmp161159
                                              (lambda (_%g156948156951%_
                                                       _%g156949156953%_)
                                                (cons _%g156948156951%_
                                                      _%g156949156953%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp161159
                                          '()
                                          _%L156919%_))
                                       (let ((__tmp161160
                                              (lambda (_%g156955156958%_
                                                       _%g156956156960%_)
                                                (cons _%g156955156958%_
                                                      _%g156956156960%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp161160
                                          '()
                                          _%L156918%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp161161 __tmp161158)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body156849156913%_
                     _%hd156850156915%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop156843156879%_
                                             _%target156840156874%_
                                             '()
                                             '()))
                                          (_%g156833156861%_
                                           _%g156834156864%_)))))
                                (_%g156833156861%_ _%g156834156864%_))))
                        (_%g156833156861%_ _%g156834156864%_)))))
            (_%g156832156963%_ _%stx156827%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self156063%_ _%stx156064%_ _%compiled-body?156065%_)
        (letrec ((_%generate-simple156067%_
                  (lambda (_%hd156811%_ _%body156812%_)
                    (_%coalesce-boolean156068%_
                     (_%simplify-let156069%_
                      (gxc#generate-runtime-simple-let
                       _%self156063%_
                       'let
                       _%hd156811%_
                       _%body156812%_
                       _%compiled-body?156065%_)))))
                 (_%coalesce-boolean156068%_
                  (lambda (_%code156672%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code156673156699%_ _%code156672%_)
                               (_%else156675156707%_
                                (lambda () _%code156672%_))
                               (_%K156677156744%_
                                (lambda (_%expr2156710%_
                                         _%expr1156711%_
                                         _%id156712%_)
                                  (let* ((_%expr2156713156721%_
                                          _%expr2156710%_)
                                         (_%else156715156729%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1156711%_
                                                        (cons _%expr2156710%_
                                                              '())))))
                                         (_%K156717156734%_
                                          (lambda (_%exprs156732%_)
                                            (cons 'or
                                                  (cons _%expr1156711%_
                                                        _%exprs156732%_)))))
                                    (if (pair? _%expr2156713156721%_)
                                        (let ((_%hd156718156737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2156713156721%_)))
                                              (_%tl156719156739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2156713156721%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd156718156737%_ 'or))
                                              (let ((_%exprs156742%_
                                                     _%tl156719156739%_))
                                                (_%K156717156734%_
                                                 _%exprs156742%_))
                                              (_%else156715156729%_)))
                                        (_%else156715156729%_))))))
                          (if (pair? _%code156673156699%_)
                              (let ((_%hd156678156747%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code156673156699%_)))
                                    (_%tl156679156749%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code156673156699%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd156678156747%_ 'let))
                                    (if (pair? _%tl156679156749%_)
                                        (let ((_%hd156680156752%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl156679156749%_)))
                                              (_%tl156681156754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl156679156749%_))))
                                          (if (pair? _%hd156680156752%_)
                                              (let ((_%hd156692156757%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd156680156752%_)))
                                                    (_%tl156693156759%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd156680156752%_))))
                                                (if (pair? _%hd156692156757%_)
                                                    (let ((_%hd156694156762%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd156692156757%_)))
                                                          (_%tl156695156764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd156692156757%_))))
                                                      (let ((_%id156767%_
                                                             _%hd156694156762%_))
                                                        (if (pair? _%tl156695156764%_)
                                                            (let ((_%hd156696156769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl156695156764%_)))
                          (_%tl156697156771%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl156695156764%_))))
                      (let ((_%expr1156774%_ _%hd156696156769%_))
                        (if (null? _%tl156697156771%_)
                            (if (null? _%tl156693156759%_)
                                (if (pair? _%tl156681156754%_)
                                    (let ((_%hd156682156776%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl156681156754%_)))
                                          (_%tl156683156778%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl156681156754%_))))
                                      (if (pair? _%hd156682156776%_)
                                          (let ((_%hd156684156781%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd156682156776%_)))
                                                (_%tl156685156783%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd156682156776%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd156684156781%_
                                                         'if))
                                                (if (pair? _%tl156685156783%_)
                                                    (let ((_%hd156686156786%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl156685156783%_)))
                                                          (_%tl156687156788%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl156685156783%_))))
                                                      (if ((lambda (_%g156790156792%_)
                                                             (eq? _%g156790156792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id156767%_))
                   _%hd156686156786%_)
                  (if (pair? _%tl156687156788%_)
                      (let ((_%hd156688156795%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl156687156788%_)))
                            (_%tl156689156797%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl156687156788%_))))
                        (if ((lambda (_%g156799156801%_)
                               (eq? _%g156799156801%_ _%id156767%_))
                             _%hd156688156795%_)
                            (if (pair? _%tl156689156797%_)
                                (let ((_%hd156690156804%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl156689156797%_)))
                                      (_%tl156691156806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl156689156797%_))))
                                  (let ((_%expr2156809%_ _%hd156690156804%_))
                                    (if (null? _%tl156691156806%_)
                                        (if (null? _%tl156683156778%_)
                                            (_%K156677156744%_
                                             _%expr2156809%_
                                             _%expr1156774%_
                                             _%id156767%_)
                                            (_%else156675156707%_))
                                        (_%else156675156707%_))))
                                (_%else156675156707%_))
                            (_%else156675156707%_)))
                      (_%else156675156707%_))
                  (_%else156675156707%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else156675156707%_))
                                                (_%else156675156707%_)))
                                          (_%else156675156707%_)))
                                    (_%else156675156707%_))
                                (_%else156675156707%_))
                            (_%else156675156707%_))))
                    (_%else156675156707%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else156675156707%_)))
                                              (_%else156675156707%_)))
                                        (_%else156675156707%_))
                                    (_%else156675156707%_)))
                              (_%else156675156707%_)))
                        _%code156672%_)))
                 (_%simplify-let156069%_
                  (lambda (_%code156371%_)
                    (let* ((_%code156372156444%_ _%code156371%_)
                           (_%else156377156452%_ (lambda () _%code156371%_)))
                      (let ((_%K156436156652%_
                             (lambda (_%expr156650%_) _%expr156650%_))
                            (_%K156419156598%_
                             (lambda (_%body156594%_
                                      _%expr156595%_
                                      _%id156596%_)
                               (cons 'let
                                     (cons (cons (cons _%id156596%_
                                                       (cons _%expr156595%_
                                                             '()))
                                                 '())
                                           _%body156594%_))))
                            (_%K156396156522%_
                             (lambda (_%body156516%_
                                      _%expr2156517%_
                                      _%id2156518%_
                                      _%expr1156519%_
                                      _%id1156520%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1156520%_
                                                       (cons _%expr1156519%_
                                                             '()))
                                                 (cons (cons _%id2156518%_
                                                             (cons _%expr2156517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body156516%_))))
                            (_%K156379156461%_
                             (lambda (_%body156456%_
                                      _%bind156457%_
                                      _%expr1156458%_
                                      _%id1156459%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1156459%_
                                                       (cons _%expr1156458%_
                                                             '()))
                                                 _%bind156457%_)
                                           _%body156456%_)))))
                        (if (pair? _%code156372156444%_)
                            (let ((_%tl156438156657%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code156372156444%_)))
                                  (_%hd156437156655%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code156372156444%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd156437156655%_ 'let))
                                  (if (pair? _%tl156438156657%_)
                                      (let ((_%tl156440156662%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl156438156657%_)))
                                            (_%hd156439156660%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl156438156657%_))))
                                        (if (null? _%hd156439156660%_)
                                            (if (pair? _%tl156440156662%_)
                                                (let ((_%tl156442156667%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl156440156662%_)))
                                                      (_%hd156441156665%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl156440156662%_))))
                                                  (if (null? _%tl156442156667%_)
                                                      (let ((_%expr156670%_
                                                             _%hd156441156665%_))
                                                        (_%K156436156652%_
                                                         _%expr156670%_))
                                                      (_%else156377156452%_)))
                                                (_%else156377156452%_))
                                            (if (pair? _%hd156439156660%_)
                                                (let ((_%tl156431156613%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd156439156660%_)))
                                                      (_%hd156430156611%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd156439156660%_))))
                                                  (if (pair? _%hd156430156611%_)
                                                      (let ((_%tl156433156618%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd156430156611%_)))
                    (_%hd156432156616%_
                     (let () (declare (not safe)) (##car _%hd156430156611%_))))
                (if (pair? _%tl156433156618%_)
                    (let ((_%tl156435156625%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl156433156618%_)))
                          (_%hd156434156623%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl156433156618%_))))
                      (if (null? _%tl156435156625%_)
                          (if (null? _%tl156431156613%_)
                              (if (pair? _%tl156440156662%_)
                                  (let ((_%tl156425156632%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl156440156662%_)))
                                        (_%hd156424156630%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl156440156662%_))))
                                    (if (pair? _%hd156424156630%_)
                                        (let ((_%tl156427156637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd156424156630%_)))
                                              (_%hd156426156635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd156424156630%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd156426156635%_
                                                       'let))
                                              (if (pair? _%tl156427156637%_)
                                                  (let ((_%tl156429156642%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl156427156637%_)))
                                                        (_%hd156428156640%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl156427156637%_))))
                                                    (if (null? _%hd156428156640%_)
                                                        (if (null? _%tl156425156632%_)
                                                            (let ((_%id156621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd156432156616%_)
                          (_%expr156628%_ _%hd156434156623%_)
                          (_%body156645%_ _%tl156429156642%_))
                      (_%K156419156598%_
                       _%body156645%_
                       _%expr156628%_
                       _%id156621%_))
                    (_%else156377156452%_))
                (if (pair? _%hd156428156640%_)
                    (let ((_%tl156408156571%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd156428156640%_)))
                          (_%hd156407156569%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd156428156640%_))))
                      (if (pair? _%hd156407156569%_)
                          (let ((_%tl156410156576%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd156407156569%_)))
                                (_%hd156409156574%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd156407156569%_))))
                            (if (pair? _%tl156410156576%_)
                                (let ((_%tl156412156583%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl156410156576%_)))
                                      (_%hd156411156581%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl156410156576%_))))
                                  (if (null? _%tl156412156583%_)
                                      (if (null? _%tl156408156571%_)
                                          (if (null? _%tl156425156632%_)
                                              (let ((_%id1156545%_
                                                     _%hd156432156616%_)
                                                    (_%expr1156552%_
                                                     _%hd156434156623%_)
                                                    (_%id2156579%_
                                                     _%hd156409156574%_)
                                                    (_%expr2156586%_
                                                     _%hd156411156581%_)
                                                    (_%body156588%_
                                                     _%tl156429156642%_))
                                                (_%K156396156522%_
                                                 _%body156588%_
                                                 _%expr2156586%_
                                                 _%id2156579%_
                                                 _%expr1156552%_
                                                 _%id1156545%_))
                                              (_%else156377156452%_))
                                          (_%else156377156452%_))
                                      (_%else156377156452%_)))
                                (_%else156377156452%_)))
                          (_%else156377156452%_)))
                    (_%else156377156452%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else156377156452%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd156426156635%_
                                                           'let*))
                                                  (if (pair? _%tl156427156637%_)
                                                      (let ((_%tl156389156505%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl156427156637%_)))
                    (_%hd156388156503%_
                     (let () (declare (not safe)) (##car _%tl156427156637%_))))
                (if (null? _%tl156425156632%_)
                    (let ((_%id1156484%_ _%hd156432156616%_)
                          (_%expr1156491%_ _%hd156434156623%_)
                          (_%bind156508%_ _%hd156388156503%_)
                          (_%body156510%_ _%tl156389156505%_))
                      (_%K156379156461%_
                       _%body156510%_
                       _%bind156508%_
                       _%expr1156491%_
                       _%id1156484%_))
                    (_%else156377156452%_)))
              (_%else156377156452%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else156377156452%_))))
                                        (_%else156377156452%_)))
                                  (_%else156377156452%_))
                              (_%else156377156452%_))
                          (_%else156377156452%_)))
                    (_%else156377156452%_)))
              (_%else156377156452%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else156377156452%_))))
                                      (_%else156377156452%_))
                                  (_%else156377156452%_)))
                            (_%else156377156452%_))))))
                 (_%generate-values156070%_
                  (lambda (_%hd156184%_ _%body156185%_)
                    (let _%lp156187%_ ((_%rest156189%_ _%hd156184%_)
                                       (_%bind156190%_ '())
                                       (_%check156191%_ '())
                                       (_%post156192%_ '()))
                      (let* ((_%__stx160315160316%_ _%rest156189%_)
                             (_%g156195156206%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx160315160316%_)))))
                        (let ((_%__kont160317160318%_
                               (lambda (_%L156233%_ _%L156234%_)
                                 (let* ((_%__stx160271160272%_ _%L156234%_)
                                        (_%g156249156274%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx160271160272%_)))))
                                   (let ((_%__kont160273160274%_
                                          (lambda (_%L156347%_ _%L156348%_)
                                            (let ((_%eid156362%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L156348%_)))
                                                  (_%expr156363%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self156063%_
                                                      _%L156347%_))))
                                              (_%lp156187%_
                                               _%L156233%_
                                               (cons (cons _%eid156362%_
                                                           (cons _%expr156363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind156190%_)
                                               _%check156191%_
                                               _%post156192%_))))
                                         (_%__kont160275160276%_
                                          (lambda (_%L156295%_ _%L156296%_)
                                            (let* ((_%vals156309%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values156311%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals156309%_
                                                     _%L156296%_
                                                     _%L156295%_))
                                                   (_%refs156313%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals156309%_
                                                     _%L156296%_))
                                                   (_%expr156315%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self156063%_
                                                       _%L156295%_))))
                                              (_%lp156187%_
                                               _%L156233%_
                                               (cons (cons _%vals156309%_
                                                           (cons _%expr156315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind156190%_)
                                               (cons _%check-values156311%_
                                                     _%check156191%_)
                                               (cons _%refs156313%_
                                                     _%post156192%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx160271160272%_))
                                         (let ((_%e156253156323%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx160271160272%_))))
                                           (let ((_%tl156255156328%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e156253156323%_)))
                                                 (_%hd156254156326%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e156253156323%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd156254156326%_))
                                                 (let ((_%e156256156331%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd156254156326%_))))
                                                   (let ((_%tl156258156336%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e156256156331%_)))
                                                         (_%hd156257156334%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e156256156331%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl156258156336%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl156255156328%_))
                     (let ((_%e156259156339%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl156255156328%_))))
                       (let ((_%tl156261156344%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e156259156339%_)))
                             (_%hd156260156342%_
                              (let ()
                                (declare (not safe))
                                (##car _%e156259156339%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl156261156344%_))
                             (_%__kont160273160274%_
                              _%hd156260156342%_
                              _%hd156257156334%_)
                             (let ()
                               (declare (not safe))
                               (_%g156249156274%_)))))
                     (let () (declare (not safe)) (_%g156249156274%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl156255156328%_))
                     (let ((_%e156267156287%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl156255156328%_))))
                       (let ((_%tl156269156292%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e156267156287%_)))
                             (_%hd156268156290%_
                              (let ()
                                (declare (not safe))
                                (##car _%e156267156287%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl156269156292%_))
                             (_%__kont160275160276%_
                              _%hd156268156290%_
                              _%hd156254156326%_)
                             (let ()
                               (declare (not safe))
                               (_%g156249156274%_)))))
                     (let () (declare (not safe)) (_%g156249156274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl156255156328%_))
                                                     (let ((_%e156267156287%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl156255156328%_))))
                                                       (let ((_%tl156269156292%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e156267156287%_)))
                     (_%hd156268156290%_
                      (let () (declare (not safe)) (##car _%e156267156287%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl156269156292%_))
                     (_%__kont160275160276%_
                      _%hd156268156290%_
                      _%hd156254156326%_)
                     (let () (declare (not safe)) (_%g156249156274%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g156249156274%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g156249156274%_)))))))
                              (_%__kont160319160320%_
                               (lambda ()
                                 (let* ((_%body156213%_
                                         (if _%compiled-body?156065%_
                                             _%body156185%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self156063%_
                                                _%body156185%_))))
                                        (_%body156215%_
                                         (_%generate-values-post156071%_
                                          _%post156192%_
                                          _%body156213%_))
                                        (_%body156217%_
                                         (_%generate-values-check156072%_
                                          _%check156191%_
                                          _%body156215%_)))
                                   (cons 'let
                                         (cons (reverse _%bind156190%_)
                                               (cons _%body156217%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx160315160316%_))
                              (let ((_%e156199156225%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx160315160316%_))))
                                (let ((_%tl156201156230%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e156199156225%_)))
                                      (_%hd156200156228%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e156199156225%_))))
                                  (_%__kont160317160318%_
                                   _%tl156201156230%_
                                   _%hd156200156228%_)))
                              (_%__kont160319160320%_)))))))
                 (_%generate-values-post156071%_
                  (lambda (_%post156143%_ _%body156144%_)
                    (let _%lp156146%_ ((_%rest156148%_ _%post156143%_)
                                       (_%body156149%_ _%body156144%_))
                      (let* ((_%rest156150156158%_ _%rest156148%_)
                             (_%else156152156166%_ (lambda () _%body156149%_))
                             (_%K156154156172%_
                              (lambda (_%rest156169%_ _%bind156170%_)
                                (_%lp156146%_
                                 _%rest156169%_
                                 (cons 'let
                                       (cons _%bind156170%_
                                             (cons _%body156149%_ '())))))))
                        (if (pair? _%rest156150156158%_)
                            (let ((_%hd156155156175%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest156150156158%_)))
                                  (_%tl156156156177%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest156150156158%_))))
                              (let* ((_%bind156180%_ _%hd156155156175%_)
                                     (_%rest156182%_ _%tl156156156177%_))
                                (_%K156154156172%_
                                 _%rest156182%_
                                 _%bind156180%_)))
                            (_%else156152156166%_))))))
                 (_%generate-values-check156072%_
                  (lambda (_%check156140%_ _%body156141%_)
                    (cons 'begin
                          (let ((__tmp161163 (cons _%body156141%_ '()))
                                (__tmp161162 (reverse _%check156140%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp161163 __tmp161162))))))
          (let* ((_%g156074156091%_
                  (lambda (_%g156075156088%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g156075156088%_))))
                 (_%g156073156137%_
                  (lambda (_%g156075156094%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g156075156094%_))
                        (let ((_%e156078156096%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g156075156094%_))))
                          (let ((_%hd156079156099%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156078156096%_)))
                                (_%tl156080156101%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156078156096%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl156080156101%_))
                                (let ((_%e156081156104%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl156080156101%_))))
                                  (let ((_%hd156082156107%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e156081156104%_)))
                                        (_%tl156083156109%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e156081156104%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl156083156109%_))
                                        (let ((_%e156084156112%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl156083156109%_))))
                                          (let ((_%hd156085156115%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e156084156112%_)))
                                                (_%tl156086156117%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e156084156112%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl156086156117%_))
                                                ((lambda (_%L156120%_
                                                          _%L156121%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L156121%_)
                                                       (_%generate-simple156067%_
                                                        _%L156121%_
                                                        _%L156120%_)
                                                       (_%generate-values156070%_
                                                        _%L156121%_
                                                        _%L156120%_)))
                                                 _%hd156085156115%_
                                                 _%hd156082156107%_)
                                                (_%g156074156091%_
                                                 _%g156075156094%_))))
                                        (_%g156074156091%_
                                         _%g156075156094%_))))
                                (_%g156074156091%_ _%g156075156094%_))))
                        (_%g156074156091%_ _%g156075156094%_)))))
            (_%g156073156137%_ _%stx156064%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self156817%_ _%stx156818%_)
        (let ((_%compiled-body?156820%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self156817%_
           _%stx156818%_
           _%compiled-body?156820%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g161164_
        (let ((_g161165_ (let () (declare (not safe)) (##length _g161164_))))
          (cond ((let () (declare (not safe)) (##fx= _g161165_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g161164_))
                ((let () (declare (not safe)) (##fx= _g161165_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g161164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g161164_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals155957%_ _%hd155958%_)
        (let _%lp155960%_ ((_%rest155962%_ _%hd155958%_)
                           (_%k155963%_ '0)
                           (_%r155964%_ '()))
          (let* ((_%__stx160329160330%_ _%rest155962%_)
                 (_%g155969155986%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx160329160330%_)))))
            (let ((_%__kont160331160332%_
                   (lambda (_%L156049%_)
                     (_%lp155960%_
                      _%L156049%_
                      (let () (declare (not safe)) (##fx+ _%k155963%_ '1))
                      _%r155964%_)))
                  (_%__kont160333160334%_
                   (lambda (_%L156022%_ _%L156023%_)
                     (_%lp155960%_
                      _%L156022%_
                      (let () (declare (not safe)) (##fx+ _%k155963%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L156023%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals155957%_
                                         _%k155963%_
                                         _%L156022%_)
                                        '()))
                            _%r155964%_))))
                  (_%__kont160335160336%_
                   (lambda (_%L155998%_)
                     (let ((__tmp161166
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L155998%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals155957%_
                                               _%k155963%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp161166 _%r155964%_))))
                  (_%__kont160337160338%_ (lambda () (reverse _%r155964%_))))
              (let ((_%g155967156009%_
                     (lambda ()
                       (let ((_%L155998%_ _%__stx160329160330%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L155998%_))
                             (_%__kont160335160336%_ _%L155998%_)
                             (_%__kont160337160338%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx160329160330%_))
                    (let ((_%e155972156038%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx160329160330%_))))
                      (let ((_%tl155974156043%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e155972156038%_)))
                            (_%hd155973156041%_
                             (let ()
                               (declare (not safe))
                               (##car _%e155972156038%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd155973156041%_))
                            (let ((_%e155975156046%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd155973156041%_))))
                              (if (equal? _%e155975156046%_ '#f)
                                  (_%__kont160331160332%_ _%tl155974156043%_)
                                  (_%__kont160333160334%_
                                   _%tl155974156043%_
                                   _%hd155973156041%_)))
                            (_%__kont160333160334%_
                             _%tl155974156043%_
                             _%hd155973156041%_))))
                    (let () (declare (not safe)) (_%g155967156009%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self155636%_ _%stx155637%_ _%compiled-body?155638%_)
        (letrec ((_%generate-simple155640%_
                  (lambda (_%hd155942%_ _%body155943%_)
                    (gxc#generate-runtime-simple-let
                     _%self155636%_
                     'letrec
                     _%hd155942%_
                     _%body155943%_
                     _%compiled-body?155638%_)))
                 (_%generate-values155641%_
                  (lambda (_%hd155721%_ _%body155722%_)
                    (let _%lp155724%_ ((_%rest155726%_ _%hd155721%_)
                                       (_%bind155727%_ '())
                                       (_%check155728%_ '())
                                       (_%post155729%_ '()))
                      (let* ((_%__stx160403160404%_ _%rest155726%_)
                             (_%g155732155743%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx160403160404%_)))))
                        (let ((_%__kont160405160406%_
                               (lambda (_%L155770%_ _%L155771%_)
                                 (let* ((_%__stx160359160360%_ _%L155771%_)
                                        (_%g155786155811%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx160359160360%_)))))
                                   (let ((_%__kont160361160362%_
                                          (lambda (_%L155918%_ _%L155919%_)
                                            (let ((_%eid155933%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L155919%_)))
                                                  (_%expr155934%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self155636%_
                                                      _%L155918%_))))
                                              (_%lp155724%_
                                               _%L155770%_
                                               (cons (cons _%eid155933%_
                                                           (cons _%expr155934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind155727%_)
                                               _%check155728%_
                                               _%post155729%_))))
                                         (_%__kont160363160364%_
                                          (lambda (_%L155832%_ _%L155833%_)
                                            (let* ((_%vals155846%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values155848%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals155846%_
                                                     _%L155833%_
                                                     _%L155832%_))
                                                   (_%refs155850%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals155846%_
                                                     _%L155833%_))
                                                   (_%expr155852%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self155636%_
                                                       _%L155832%_))))
                                              (_%lp155724%_
                                               _%L155770%_
                                               (let ((__tmp161168
                                                      (cons (cons _%vals155846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr155852%_ '()))
                    _%bind155727%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp161167
                                                      (map (lambda (_%e155854155856%_)
                                                             (let* ((_%g155858155867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e155854155856%_)
                            (_%E155860155871%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g155858155867%_
                                        '([eid _])))
                               '#!void))
                            (_%K155861155876%_
                             (lambda (_%eid155874%_)
                               (cons _%eid155874%_ (cons '#!void '())))))
                       (if (pair? _%g155858155867%_)
                           (let ((_%hd155862155879%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g155858155867%_)))
                                 (_%tl155863155881%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g155858155867%_))))
                             (let ((_%eid155884%_ _%hd155862155879%_))
                               (if (pair? _%tl155863155881%_)
                                   (let ((_%tl155865155886%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl155863155881%_))))
                                     (if (null? _%tl155865155886%_)
                                         (_%K155861155876%_ _%eid155884%_)
                                         (_%E155860155871%_)))
                                   (_%E155860155871%_))))
                           (_%E155860155871%_))))
                   _%refs155850%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp161168
                                                  __tmp161167))
                                               (cons _%check-values155848%_
                                                     _%check155728%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs155850%_
                                                  _%post155729%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx160359160360%_))
                                         (let ((_%e155790155894%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx160359160360%_))))
                                           (let ((_%tl155792155899%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e155790155894%_)))
                                                 (_%hd155791155897%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e155790155894%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd155791155897%_))
                                                 (let ((_%e155793155902%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd155791155897%_))))
                                                   (let ((_%tl155795155907%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e155793155902%_)))
                                                         (_%hd155794155905%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e155793155902%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl155795155907%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl155792155899%_))
                     (let ((_%e155796155910%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl155792155899%_))))
                       (let ((_%tl155798155915%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e155796155910%_)))
                             (_%hd155797155913%_
                              (let ()
                                (declare (not safe))
                                (##car _%e155796155910%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl155798155915%_))
                             (_%__kont160361160362%_
                              _%hd155797155913%_
                              _%hd155794155905%_)
                             (let ()
                               (declare (not safe))
                               (_%g155786155811%_)))))
                     (let () (declare (not safe)) (_%g155786155811%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl155792155899%_))
                     (let ((_%e155804155824%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl155792155899%_))))
                       (let ((_%tl155806155829%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e155804155824%_)))
                             (_%hd155805155827%_
                              (let ()
                                (declare (not safe))
                                (##car _%e155804155824%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl155806155829%_))
                             (_%__kont160363160364%_
                              _%hd155805155827%_
                              _%hd155791155897%_)
                             (let ()
                               (declare (not safe))
                               (_%g155786155811%_)))))
                     (let () (declare (not safe)) (_%g155786155811%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl155792155899%_))
                                                     (let ((_%e155804155824%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl155792155899%_))))
                                                       (let ((_%tl155806155829%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e155804155824%_)))
                     (_%hd155805155827%_
                      (let () (declare (not safe)) (##car _%e155804155824%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl155806155829%_))
                     (_%__kont160363160364%_
                      _%hd155805155827%_
                      _%hd155791155897%_)
                     (let () (declare (not safe)) (_%g155786155811%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g155786155811%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g155786155811%_)))))))
                              (_%__kont160407160408%_
                               (lambda ()
                                 (let* ((_%body155750%_
                                         (if _%compiled-body?155638%_
                                             _%body155722%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self155636%_
                                                _%body155722%_))))
                                        (_%body155752%_
                                         (_%generate-values-post155643%_
                                          _%post155729%_
                                          _%body155750%_))
                                        (_%body155754%_
                                         (_%generate-values-check155642%_
                                          _%check155728%_
                                          _%body155752%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind155727%_)
                                               (cons _%body155754%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx160403160404%_))
                              (let ((_%e155736155762%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx160403160404%_))))
                                (let ((_%tl155738155767%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155736155762%_)))
                                      (_%hd155737155765%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155736155762%_))))
                                  (_%__kont160405160406%_
                                   _%tl155738155767%_
                                   _%hd155737155765%_)))
                              (_%__kont160407160408%_)))))))
                 (_%generate-values-check155642%_
                  (lambda (_%check155718%_ _%body155719%_)
                    (cons 'begin
                          (let ((__tmp161170 (cons _%body155719%_ '()))
                                (__tmp161169 (reverse _%check155718%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp161170 __tmp161169)))))
                 (_%generate-values-post155643%_
                  (lambda (_%post155711%_ _%body155712%_)
                    (cons 'begin
                          (let ((__tmp161174 (cons _%body155712%_ '()))
                                (__tmp161171
                                 (let ((__tmp161173
                                        (lambda (_%g155713155715%_)
                                          (cons 'set! _%g155713155715%_)))
                                       (__tmp161172 (reverse _%post155711%_)))
                                   (declare (not safe))
                                   (##map __tmp161173 __tmp161172))))
                            (declare (not safe))
                            (__foldr1 cons __tmp161174 __tmp161171))))))
          (let* ((_%g155645155662%_
                  (lambda (_%g155646155659%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g155646155659%_))))
                 (_%g155644155708%_
                  (lambda (_%g155646155665%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g155646155665%_))
                        (let ((_%e155649155667%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g155646155665%_))))
                          (let ((_%hd155650155670%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155649155667%_)))
                                (_%tl155651155672%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155649155667%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl155651155672%_))
                                (let ((_%e155652155675%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl155651155672%_))))
                                  (let ((_%hd155653155678%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155652155675%_)))
                                        (_%tl155654155680%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155652155675%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl155654155680%_))
                                        (let ((_%e155655155683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl155654155680%_))))
                                          (let ((_%hd155656155686%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e155655155683%_)))
                                                (_%tl155657155688%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e155655155683%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl155657155688%_))
                                                ((lambda (_%L155691%_
                                                          _%L155692%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L155692%_)
                                                       (_%generate-simple155640%_
                                                        _%L155692%_
                                                        _%L155691%_)
                                                       (_%generate-values155641%_
                                                        _%L155692%_
                                                        _%L155691%_)))
                                                 _%hd155656155686%_
                                                 _%hd155653155678%_)
                                                (_%g155645155662%_
                                                 _%g155646155665%_))))
                                        (_%g155645155662%_
                                         _%g155646155665%_))))
                                (_%g155645155662%_ _%g155646155665%_))))
                        (_%g155645155662%_ _%g155646155665%_)))))
            (_%g155644155708%_ _%stx155637%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self155948%_ _%stx155949%_)
        (let ((_%compiled-body?155951%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self155948%_
           _%stx155949%_
           _%compiled-body?155951%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g161175_
        (let ((_g161176_ (let () (declare (not safe)) (##length _g161175_))))
          (cond ((let () (declare (not safe)) (##fx= _g161176_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g161175_))
                ((let () (declare (not safe)) (##fx= _g161176_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g161175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g161175_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self155217%_ _%stx155218%_)
        (letrec ((_%generate-values155220%_
                  (lambda (_%hd155463%_ _%body155464%_)
                    (let _%lp155466%_ ((_%rest155468%_ _%hd155463%_)
                                       (_%bind155469%_ '()))
                      (let* ((_%rest155470155478%_ _%rest155468%_)
                             (_%else155472155489%_
                              (lambda ()
                                (let ((_%bind155486%_ (reverse _%bind155469%_))
                                      (_%body155487%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self155217%_
                                          _%body155464%_))))
                                  (cons 'letrec*
                                        (cons _%bind155486%_
                                              (cons _%body155487%_ '()))))))
                             (_%K155474155623%_
                              (lambda (_%rest155492%_ _%hd-bind155493%_)
                                (let* ((_%__stx160417160418%_
                                        _%hd-bind155493%_)
                                       (_%g155496155521%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx160417160418%_)))))
                                  (let ((_%__kont160419160420%_
                                         (lambda (_%L155602%_ _%L155603%_)
                                           (let ((_%eid155617%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L155603%_)))
                                                 (_%expr155618%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self155217%_
                                                     _%L155602%_))))
                                             (_%lp155466%_
                                              _%rest155492%_
                                              (cons (cons _%eid155617%_
                                                          (cons _%expr155618%_
                                                                '()))
                                                    _%bind155469%_)))))
                                        (_%__kont160421160422%_
                                         (lambda (_%L155542%_ _%L155543%_)
                                           (let* ((_%vals155562%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp155564%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values155566%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp155564%_
                                                    _%L155543%_
                                                    _%L155542%_))
                                                  (_%refs155568%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals155562%_
                                                    _%L155543%_))
                                                  (_%expr155570%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self155217%_
                                                      _%L155542%_))))
                                             (_%lp155466%_
                                              _%rest155492%_
                                              (let ((__tmp161177
                                                     (cons (cons _%vals155562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp155564%_
                                                       (cons _%expr155570%_
                                                             '()))
                                                 '())
                                           (cons _%check-values155566%_
                                                 (cons _%tmp155564%_ '()))))
                               '()))
                   _%bind155469%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp161177
                                                 _%refs155568%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx160417160418%_))
                                        (let ((_%e155500155578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx160417160418%_))))
                                          (let ((_%tl155502155583%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e155500155578%_)))
                                                (_%hd155501155581%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e155500155578%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd155501155581%_))
                                                (let ((_%e155503155586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd155501155581%_))))
                                                  (let ((_%tl155505155591%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e155503155586%_)))
                                                        (_%hd155504155589%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e155503155586%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl155505155591%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl155502155583%_))
                                                            (let ((_%e155506155594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl155502155583%_))))
                      (let ((_%tl155508155599%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e155506155594%_)))
                            (_%hd155507155597%_
                             (let ()
                               (declare (not safe))
                               (##car _%e155506155594%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl155508155599%_))
                            (_%__kont160419160420%_
                             _%hd155507155597%_
                             _%hd155504155589%_)
                            (let ()
                              (declare (not safe))
                              (_%g155496155521%_)))))
                    (let () (declare (not safe)) (_%g155496155521%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl155502155583%_))
                    (let ((_%e155514155534%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl155502155583%_))))
                      (let ((_%tl155516155539%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e155514155534%_)))
                            (_%hd155515155537%_
                             (let ()
                               (declare (not safe))
                               (##car _%e155514155534%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl155516155539%_))
                            (_%__kont160421160422%_
                             _%hd155515155537%_
                             _%hd155501155581%_)
                            (let ()
                              (declare (not safe))
                              (_%g155496155521%_)))))
                    (let () (declare (not safe)) (_%g155496155521%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl155502155583%_))
                                                    (let ((_%e155514155534%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl155502155583%_))))
                                                      (let ((_%tl155516155539%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e155514155534%_)))
                    (_%hd155515155537%_
                     (let () (declare (not safe)) (##car _%e155514155534%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl155516155539%_))
                    (_%__kont160421160422%_
                     _%hd155515155537%_
                     _%hd155501155581%_)
                    (let () (declare (not safe)) (_%g155496155521%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g155496155521%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g155496155521%_))))))))
                        (if (pair? _%rest155470155478%_)
                            (let ((_%hd155475155626%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest155470155478%_)))
                                  (_%tl155476155628%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest155470155478%_))))
                              (let* ((_%hd-bind155631%_ _%hd155475155626%_)
                                     (_%rest155633%_ _%tl155476155628%_))
                                (_%K155474155623%_
                                 _%rest155633%_
                                 _%hd-bind155631%_)))
                            (_%else155472155489%_))))))
                 (_%generate-letrec?155221%_
                  (lambda (_%hd155353%_)
                    (let _%lp155355%_ ((_%rest155357%_ _%hd155353%_))
                      (let* ((_%rest155358155366%_ _%rest155357%_)
                             (_%else155360155374%_ (lambda () '#t))
                             (_%K155362155451%_
                              (lambda (_%rest155377%_ _%hd-bind155378%_)
                                (let* ((_%g155380155397%_
                                        (lambda (_%g155381155394%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g155381155394%_))))
                                       (_%g155379155448%_
                                        (lambda (_%g155381155400%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g155381155400%_))
                                              (let ((_%e155384155402%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g155381155400%_))))
                                                (let ((_%hd155385155405%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155384155402%_)))
                                                      (_%tl155386155407%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155384155402%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd155385155405%_))
                                                      (let ((_%e155387155410%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd155385155405%_))))
                (let ((_%hd155388155413%_
                       (let () (declare (not safe)) (##car _%e155387155410%_)))
                      (_%tl155389155415%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e155387155410%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl155389155415%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl155386155407%_))
                          (let ((_%e155390155418%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl155386155407%_))))
                            (let ((_%hd155391155421%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e155390155418%_)))
                                  (_%tl155392155423%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e155390155418%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl155392155423%_))
                                  ((lambda (_%L155426%_ _%L155427%_)
                                     (if (_%is-lambda-expr?155222%_
                                          _%L155426%_)
                                         (_%lp155355%_ _%rest155377%_)
                                         '#f))
                                   _%hd155391155421%_
                                   _%hd155388155413%_)
                                  (_%g155380155397%_ _%g155381155400%_))))
                          (_%g155380155397%_ _%g155381155400%_))
                      (_%g155380155397%_ _%g155381155400%_))))
              (_%g155380155397%_ _%g155381155400%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g155380155397%_
                                               _%g155381155400%_)))))
                                  (_%g155379155448%_ _%hd-bind155378%_)))))
                        (if (pair? _%rest155358155366%_)
                            (let ((_%hd155363155454%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest155358155366%_)))
                                  (_%tl155364155456%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest155358155366%_))))
                              (let* ((_%hd-bind155459%_ _%hd155363155454%_)
                                     (_%rest155461%_ _%tl155364155456%_))
                                (_%K155362155451%_
                                 _%rest155461%_
                                 _%hd-bind155459%_)))
                            (_%else155360155374%_))))))
                 (_%is-lambda-expr?155222%_
                  (lambda (_%expr155290%_)
                    (let* ((_%__stx160461160462%_ _%expr155290%_)
                           (_%g155293155307%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx160461160462%_)))))
                      (let ((_%__kont160463160464%_
                             (lambda (_%L155335%_ _%L155336%_) '#t))
                            (_%__kont160465160466%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx160461160462%_))
                            (let ((_%e155297155319%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx160461160462%_))))
                              (let ((_%tl155299155324%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e155297155319%_)))
                                    (_%hd155298155322%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e155297155319%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd155298155322%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd155298155322%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl155299155324%_))
                                            (let ((_%e155300155327%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl155299155324%_))))
                                              (let ((_%tl155302155332%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e155300155327%_)))
                                                    (_%hd155301155330%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e155300155327%_))))
                                                (_%__kont160463160464%_
                                                 _%tl155302155332%_
                                                 _%hd155301155330%_)))
                                            (_%__kont160465160466%_))
                                        (_%__kont160465160466%_))
                                    (_%__kont160465160466%_))))
                            (_%__kont160465160466%_)))))))
          (let* ((_%g155224155241%_
                  (lambda (_%g155225155238%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g155225155238%_))))
                 (_%g155223155287%_
                  (lambda (_%g155225155244%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g155225155244%_))
                        (let ((_%e155228155246%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g155225155244%_))))
                          (let ((_%hd155229155249%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155228155246%_)))
                                (_%tl155230155251%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155228155246%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl155230155251%_))
                                (let ((_%e155231155254%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl155230155251%_))))
                                  (let ((_%hd155232155257%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155231155254%_)))
                                        (_%tl155233155259%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155231155254%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl155233155259%_))
                                        (let ((_%e155234155262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl155233155259%_))))
                                          (let ((_%hd155235155265%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e155234155262%_)))
                                                (_%tl155236155267%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e155234155262%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl155236155267%_))
                                                ((lambda (_%L155270%_
                                                          _%L155271%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L155271%_)
                                                       (if (_%generate-letrec?155221%_
                                                            _%L155271%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self155217%_
                                                            'letrec
                                                            _%L155271%_
                                                            _%L155270%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self155217%_
                                                            'letrec*
                                                            _%L155271%_
                                                            _%L155270%_
                                                            '#f))
                                                       (_%generate-values155220%_
                                                        _%L155271%_
                                                        _%L155270%_)))
                                                 _%hd155235155265%_
                                                 _%hd155232155257%_)
                                                (_%g155224155241%_
                                                 _%g155225155244%_))))
                                        (_%g155224155241%_
                                         _%g155225155244%_))))
                                (_%g155224155241%_ _%g155225155244%_))))
                        (_%g155224155241%_ _%g155225155244%_)))))
            (_%g155223155287%_ _%stx155218%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd155154%_)
        (let _%lp155156%_ ((_%rest155158%_ _%hd155154%_))
          (let* ((_%rest155159155175%_ _%rest155158%_)
                 (_%else155162155183%_ (lambda () '#f)))
            (let ((_%K155165155196%_
                   (lambda (_%rest155194%_) (_%lp155156%_ _%rest155194%_)))
                  (_%K155164155188%_ (lambda () '#t)))
              (let ((_%try-match155161155191%_
                     (lambda ()
                       (if (null? _%rest155159155175%_)
                           (_%K155164155188%_)
                           (_%else155162155183%_)))))
                (if (pair? _%rest155159155175%_)
                    (let ((_%tl155167155201%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest155159155175%_)))
                          (_%hd155166155199%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest155159155175%_))))
                      (if (pair? _%hd155166155199%_)
                          (let ((_%tl155169155206%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd155166155199%_)))
                                (_%hd155168155204%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd155166155199%_))))
                            (if (pair? _%hd155168155204%_)
                                (let ((_%tl155173155209%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd155168155204%_))))
                                  (if (null? _%tl155173155209%_)
                                      (if (pair? _%tl155169155206%_)
                                          (let ((_%tl155171155212%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl155169155206%_))))
                                            (if (null? _%tl155171155212%_)
                                                (let ((_%rest155215%_
                                                       _%tl155167155201%_))
                                                  (_%lp155156%_
                                                   _%rest155215%_))
                                                (_%else155162155183%_)))
                                          (_%else155162155183%_))
                                      (_%else155162155183%_)))
                                (_%else155162155183%_)))
                          (_%else155162155183%_)))
                    (_%try-match155161155191%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self155065%_
               _%form155066%_
               _%hd155067%_
               _%body155068%_
               _%compiled-body?155069%_)
        (letrec ((_%generate1155071%_
                  (lambda (_%bind155110%_)
                    (let* ((_%bind155111155122%_ _%bind155110%_)
                           (_%E155113155126%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind155111155122%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K155114155132%_
                            (lambda (_%expr155129%_ _%id155130%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id155130%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self155065%_
                                             _%expr155129%_))
                                          '())))))
                      (if (pair? _%bind155111155122%_)
                          (let ((_%hd155115155135%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind155111155122%_)))
                                (_%tl155116155137%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind155111155122%_))))
                            (if (pair? _%hd155115155135%_)
                                (let ((_%hd155119155140%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd155115155135%_)))
                                      (_%tl155120155142%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd155115155135%_))))
                                  (let ((_%id155145%_ _%hd155119155140%_))
                                    (if (null? _%tl155120155142%_)
                                        (if (pair? _%tl155116155137%_)
                                            (let ((_%hd155117155147%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl155116155137%_)))
                                                  (_%tl155118155149%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl155116155137%_))))
                                              (let ((_%expr155152%_
                                                     _%hd155117155147%_))
                                                (if (null? _%tl155118155149%_)
                                                    (_%K155114155132%_
                                                     _%expr155152%_
                                                     _%id155145%_)
                                                    (_%E155113155126%_))))
                                            (_%E155113155126%_))
                                        (_%E155113155126%_))))
                                (_%E155113155126%_)))
                          (_%E155113155126%_))))))
          (let* ((_%bind155073%_ (map _%generate1155071%_ _%hd155067%_))
                 (_%body155075%_
                  (if _%compiled-body?155069%_
                      _%body155068%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self155065%_ _%body155068%_))))
                 (_%body155107%_
                  (let* ((_%body155076155084%_ _%body155075%_)
                         (_%else155078155092%_
                          (lambda () (cons _%body155075%_ '())))
                         (_%K155080155097%_
                          (lambda (_%exprs155095%_) _%exprs155095%_)))
                    (if (pair? _%body155076155084%_)
                        (let ((_%hd155081155100%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body155076155084%_)))
                              (_%tl155082155102%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body155076155084%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd155081155100%_ 'begin))
                              (let ((_%exprs155105%_ _%tl155082155102%_))
                                (_%K155080155097%_ _%exprs155105%_))
                              (_%else155078155092%_)))
                        (_%else155078155092%_)))))
            (cons _%form155066%_ (cons _%bind155073%_ _%body155107%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self154965%_ _%stx154966%_)
        (letrec ((_%generate1154968%_
                  (lambda (_%datum155020%_)
                    (if (or (null? _%datum155020%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum155020%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum155020%_))
                            (eof-object? _%datum155020%_))
                        _%datum155020%_
                        (if (uninterned-symbol? _%datum155020%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum155020%_
                               '#t))
                            (if (pair? _%datum155020%_)
                                (cons (_%generate1154968%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum155020%_)))
                                      (_%generate1154968%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum155020%_))))
                                (if (box? _%datum155020%_)
                                    (box (_%generate1154968%_
                                          (unbox _%datum155020%_)))
                                    (if (vector? _%datum155020%_)
                                        (vector-map
                                         _%generate1154968%_
                                         _%datum155020%_)
                                        (if (or (s8vector? _%datum155020%_)
                                                (u8vector? _%datum155020%_)
                                                (s16vector? _%datum155020%_)
                                                (u16vector? _%datum155020%_)
                                                (s32vector? _%datum155020%_)
                                                (u32vector? _%datum155020%_)
                                                (s64vector? _%datum155020%_)
                                                (u64vector? _%datum155020%_)
                                                (f32vector? _%datum155020%_)
                                                (f64vector? _%datum155020%_))
                                            _%datum155020%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx154966%_)))))))))))
          (let* ((_%g154970154983%_
                  (lambda (_%g154971154980%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g154971154980%_))))
                 (_%g154969155017%_
                  (lambda (_%g154971154986%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g154971154986%_))
                        (let ((_%e154973154988%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g154971154986%_))))
                          (let ((_%hd154974154991%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154973154988%_)))
                                (_%tl154975154993%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154973154988%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl154975154993%_))
                                (let ((_%e154976154996%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl154975154993%_))))
                                  (let ((_%hd154977154999%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154976154996%_)))
                                        (_%tl154978155001%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154976154996%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl154978155001%_))
                                        ((lambda (_%L155004%_)
                                           (cons 'quote
                                                 (cons (_%generate1154968%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L155004%_)))
                                                       '())))
                                         _%hd154977154999%_)
                                        (_%g154970154983%_
                                         _%g154971154986%_))))
                                (_%g154970154983%_ _%g154971154986%_))))
                        (_%g154970154983%_ _%g154971154986%_)))))
            (_%g154969155017%_ _%stx154966%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self154406%_ _%stx154407%_)
        (letrec ((_%compile-call154409%_
                  (lambda (_%rator154698%_ _%rands154699%_)
                    (let ((_%rator154705%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self154406%_
                              _%rator154698%_)))
                          (_%rands154706%_
                           (map (lambda (_%g154700154702%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self154406%_
                                     _%g154700154702%_)))
                                _%rands154699%_)))
                      (let* ((_%__stx160508160509%_ _%rator154705%_)
                             (_%g154709154761%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx160508160509%_)))))
                        (let ((_%__kont160510160511%_
                               (lambda (_%L154885%_
                                        _%L154886%_
                                        _%L154887%_
                                        _%L154888%_)
                                 (if (let ((__tmp161180
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands154706%_)))
                                           (__tmp161178
                                            (length (let ((__tmp161179
                                                           (lambda (_%g154924154927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g154925154929%_)
                     (cons _%g154924154927%_ _%g154925154929%_))))
              (declare (not safe))
              (__foldr1 __tmp161179 '() _%L154887%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp161180 __tmp161178))
                                     (let* ((_%id154932%_ _%L154888%_)
                                            (_%args154941%_
                                             (let ((__tmp161181
                                                    (lambda (_%g154933154936%_
                                                             _%g154934154938%_)
                                                      (cons _%g154933154936%_
                                                            _%g154934154938%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp161181
                                                '()
                                                _%L154887%_)))
                                            (_%body154950%_
                                             (let ((__tmp161182
                                                    (lambda (_%g154942154945%_
                                                             _%g154943154947%_)
                                                      (cons _%g154942154945%_
                                                            _%g154943154947%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp161182
                                                '()
                                                _%L154886%_)))
                                            (_%init154952%_
                                             (map list
                                                  _%args154941%_
                                                  _%rands154706%_)))
                                       (cons 'let
                                             (cons _%id154932%_
                                                   (cons _%init154952%_
                                                         _%body154950%_))))
                                     (let ((__tmp161183
                                            (let ((__tmp161184
                                                   (lambda (_%g154954154957%_
                                                            _%g154955154959%_)
                                                     (cons _%g154954154957%_
                                                           _%g154955154959%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161184
                                               '()
                                               _%L154887%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx154407%_
                                        __tmp161183
                                        _%rands154706%_)))))
                              (_%__kont160516160517%_
                               (lambda ()
                                 (cons _%rator154705%_ _%rands154706%_))))
                          (let ((_%__match160575160576%_
                                 (lambda (_%e154715154773%_
                                          _%hd154716154776%_
                                          _%tl154717154778%_
                                          _%e154718154781%_
                                          _%hd154719154784%_
                                          _%tl154720154786%_
                                          _%e154721154789%_
                                          _%hd154722154792%_
                                          _%tl154723154794%_
                                          _%e154724154797%_
                                          _%hd154725154800%_
                                          _%tl154726154802%_
                                          _%e154727154805%_
                                          _%hd154728154808%_
                                          _%tl154729154810%_
                                          _%e154730154813%_
                                          _%hd154731154816%_
                                          _%tl154732154818%_
                                          _%e154733154821%_
                                          _%hd154734154824%_
                                          _%tl154735154826%_
                                          _%__splice160512160513%_
                                          _%target154736154829%_
                                          _%tl154738154831%_)
                                   (letrec ((_%loop154739154834%_
                                             (lambda (_%hd154737154837%_
                                                      _%arg154743154839%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd154737154837%_))
                                                   (let ((_%e154740154842%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd154737154837%_))))
                                                     (let ((_%lp-tl154742154847%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e154740154842%_)))
                                                           (_%lp-hd154741154845%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e154740154842%_))))
                                                       (_%loop154739154834%_
                                                        _%lp-tl154742154847%_
                                                        (cons _%lp-hd154741154845%_
                                                              _%arg154743154839%_))))
                                                   (let ((_%arg154744154850%_
                                                          (reverse _%arg154743154839%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl154735154826%_))
                                                         (let ((_%__splice160514160515%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl154735154826%_
                           '0))))
                   (let ((_%tl154747154855%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice160514160515%_ '1)))
                         (_%target154745154853%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice160514160515%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl154747154855%_))
                         (letrec ((_%loop154748154858%_
                                   (lambda (_%hd154746154861%_
                                            _%body154752154863%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd154746154861%_))
                                         (let ((_%e154749154866%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd154746154861%_))))
                                           (let ((_%lp-tl154751154871%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e154749154866%_)))
                                                 (_%lp-hd154750154869%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e154749154866%_))))
                                             (_%loop154748154858%_
                                              _%lp-tl154751154871%_
                                              (cons _%lp-hd154750154869%_
                                                    _%body154752154863%_))))
                                         (let ((_%body154753154874%_
                                                (reverse _%body154752154863%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl154729154810%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl154723154794%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl154720154786%_))
                                                       (let ((_%e154754154877%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl154720154786%_))))
                 (let ((_%tl154756154882%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e154754154877%_)))
                       (_%hd154755154880%_
                        (let ()
                          (declare (not safe))
                          (##car _%e154754154877%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl154756154882%_))
                       (let ((_%L154885%_ _%hd154755154880%_)
                             (_%L154886%_ _%body154753154874%_)
                             (_%L154887%_ _%arg154744154850%_)
                             (_%L154888%_ _%hd154725154800%_))
                         (if (eq? _%L154888%_ _%L154885%_)
                             (_%__kont160510160511%_
                              _%L154885%_
                              _%L154886%_
                              _%L154887%_
                              _%L154888%_)
                             (_%__kont160516160517%_)))
                       (_%__kont160516160517%_))))
               (_%__kont160516160517%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont160516160517%_))
                                               (_%__kont160516160517%_)))))))
                           (_%loop154748154858%_ _%target154745154853%_ '()))
                         (_%__kont160516160517%_))))
                 (_%__kont160516160517%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop154739154834%_
                                      _%target154736154829%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx160508160509%_))
                                (let ((_%e154715154773%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx160508160509%_))))
                                  (let ((_%tl154717154778%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154715154773%_)))
                                        (_%hd154716154776%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154715154773%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd154716154776%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd154716154776%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl154717154778%_))
                                                (let ((_%e154718154781%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl154717154778%_))))
                                                  (let ((_%tl154720154786%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e154718154781%_)))
                                                        (_%hd154719154784%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e154718154781%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd154719154784%_))
                                                        (let ((_%e154721154789%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd154719154784%_))))
                  (let ((_%tl154723154794%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e154721154789%_)))
                        (_%hd154722154792%_
                         (let ()
                           (declare (not safe))
                           (##car _%e154721154789%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd154722154792%_))
                        (let ((_%e154724154797%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd154722154792%_))))
                          (let ((_%tl154726154802%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154724154797%_)))
                                (_%hd154725154800%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154724154797%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl154726154802%_))
                                (let ((_%e154727154805%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl154726154802%_))))
                                  (let ((_%tl154729154810%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154727154805%_)))
                                        (_%hd154728154808%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154727154805%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd154728154808%_))
                                        (let ((_%e154730154813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd154728154808%_))))
                                          (let ((_%tl154732154818%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e154730154813%_)))
                                                (_%hd154731154816%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e154730154813%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd154731154816%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd154731154816%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl154732154818%_))
                                                        (let ((_%e154733154821%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl154732154818%_))))
                  (let ((_%tl154735154826%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e154733154821%_)))
                        (_%hd154734154824%_
                         (let ()
                           (declare (not safe))
                           (##car _%e154733154821%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd154734154824%_))
                        (let ((_%__splice160512160513%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd154734154824%_
                                  '0))))
                          (let ((_%tl154738154831%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice160512160513%_ '1)))
                                (_%target154736154829%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice160512160513%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl154738154831%_))
                                (_%__match160575160576%_
                                 _%e154715154773%_
                                 _%hd154716154776%_
                                 _%tl154717154778%_
                                 _%e154718154781%_
                                 _%hd154719154784%_
                                 _%tl154720154786%_
                                 _%e154721154789%_
                                 _%hd154722154792%_
                                 _%tl154723154794%_
                                 _%e154724154797%_
                                 _%hd154725154800%_
                                 _%tl154726154802%_
                                 _%e154727154805%_
                                 _%hd154728154808%_
                                 _%tl154729154810%_
                                 _%e154730154813%_
                                 _%hd154731154816%_
                                 _%tl154732154818%_
                                 _%e154733154821%_
                                 _%hd154734154824%_
                                 _%tl154735154826%_
                                 _%__splice160512160513%_
                                 _%target154736154829%_
                                 _%tl154738154831%_)
                                (_%__kont160516160517%_))))
                        (_%__kont160516160517%_))))
                (_%__kont160516160517%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont160516160517%_))
                                                (_%__kont160516160517%_))))
                                        (_%__kont160516160517%_))))
                                (_%__kont160516160517%_))))
                        (_%__kont160516160517%_))))
                (_%__kont160516160517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont160516160517%_))
                                            (_%__kont160516160517%_))
                                        (_%__kont160516160517%_))))
                                (_%__kont160516160517%_)))))))))
          (let* ((_%g154411154434%_
                  (lambda (_%g154412154431%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g154412154431%_))))
                 (_%g154410154695%_
                  (lambda (_%g154412154437%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g154412154437%_))
                        (let ((_%e154415154439%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g154412154437%_))))
                          (let ((_%hd154416154442%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154415154439%_)))
                                (_%tl154417154444%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154415154439%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl154417154444%_))
                                (let ((_%e154418154447%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl154417154444%_))))
                                  (let ((_%hd154419154450%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154418154447%_)))
                                        (_%tl154420154452%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154418154447%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl154420154452%_))
                                        (let ((_g161185_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl154420154452%_
                                                  '0))))
                                          (begin
                                            (let ((_g161186_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g161185_)
                                                         (##values-length
                                                          _g161185_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g161186_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g161186_)))
                                            (let ((_%target154421154455%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g161185_
                                                      0)))
                                                  (_%tl154423154457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g161185_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl154423154457%_))
                                                  (letrec ((_%loop154424154460%_
                                                            (lambda (_%hd154422154463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand154428154465%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd154422154463%_))
                          (let ((_%e154425154468%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd154422154463%_))))
                            (let ((_%lp-hd154426154471%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e154425154468%_)))
                                  (_%lp-tl154427154473%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e154425154468%_))))
                              (_%loop154424154460%_
                               _%lp-tl154427154473%_
                               (cons _%lp-hd154426154471%_
                                     _%rand154428154465%_))))
                          (let ((_%rand154429154476%_
                                 (reverse _%rand154428154465%_)))
                            ((lambda (_%L154479%_ _%L154480%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call154409%_
                                    _%L154480%_
                                    (let ((__tmp161187
                                           (lambda (_%g154497154500%_
                                                    _%g154498154502%_)
                                             (cons _%g154497154500%_
                                                   _%g154498154502%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp161187 '() _%L154479%_)))
                                   (let* ((_%__stx160624160625%_ _%L154480%_)
                                          (_%g154506154518%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx160624160625%_)))))
                                     (let ((_%__kont160626160627%_
                                            (lambda ()
                                              (let ((_%f154555%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self154406%_
                                                        _%L154480%_))))
                                                (if (and (let ((__tmp161188
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f154555%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp161188))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f154555%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp154557%_ ((_%rest154560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp161190
                                                (lambda (_%g154677154680%_
                                                         _%g154678154682%_)
                                                  (cons _%g154677154680%_
                                                        _%g154678154682%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp161190
                                            '()
                                            _%L154479%_))))
                               (_%bind154562%_ '())
                               (_%args154563%_ '()))
              (let* ((_%rest154564154572%_ _%rest154560%_)
                     (_%else154566154580%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind154562%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f154555%_
                                                      _%args154563%_)
                                                '()))))))
                     (_%K154568154666%_
                      (lambda (_%rest154583%_ _%e154584%_)
                        (let* ((_%__stx160578160579%_ _%e154584%_)
                               (_%g154589154607%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx160578160579%_)))))
                          (let ((_%__kont160580160581%_
                                 (lambda ()
                                   (_%lp154557%_
                                    _%rest154583%_
                                    _%bind154562%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e154584%_))
                                          _%args154563%_))))
                                (_%__kont160582160583%_
                                 (lambda ()
                                   (_%lp154557%_
                                    _%rest154583%_
                                    _%bind154562%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e154584%_))
                                          _%args154563%_))))
                                (_%__kont160584160585%_
                                 (lambda ()
                                   (let ((_%tmp154614%_
                                          (let ((__tmp161189
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp161189))))
                                     (_%lp154557%_
                                      _%rest154583%_
                                      (cons (cons _%tmp154614%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e154584%_))
                                                        '()))
                                            _%bind154562%_)
                                      (cons _%tmp154614%_ _%args154563%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx160578160579%_))
                                (let ((_%e154591154645%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx160578160579%_))))
                                  (let ((_%tl154593154650%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154591154645%_)))
                                        (_%hd154592154648%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154591154645%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd154592154648%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd154592154648%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl154593154650%_))
                                                (let ((_%e154594154653%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl154593154650%_))))
                                                  (let ((_%tl154596154658%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e154594154653%_)))
                                                        (_%hd154595154656%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e154594154653%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl154596154658%_))
                                                        (_%__kont160580160581%_)
                                                        (_%__kont160584160585%_))))
                                                (_%__kont160584160585%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd154592154648%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl154593154650%_))
                                                    (let ((_%e154600154630%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl154593154650%_))))
                                                      (let ((_%tl154602154635%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e154600154630%_)))
                    (_%hd154601154633%_
                     (let () (declare (not safe)) (##car _%e154600154630%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl154602154635%_))
                    (_%__kont160582160583%_)
                    (_%__kont160584160585%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont160584160585%_))
                                                (_%__kont160584160585%_)))
                                        (_%__kont160584160585%_))))
                                (_%__kont160584160585%_)))))))
                (if (pair? _%rest154564154572%_)
                    (let ((_%hd154569154669%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest154564154572%_)))
                          (_%tl154570154671%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest154564154572%_))))
                      (let* ((_%e154674%_ _%hd154569154669%_)
                             (_%rest154676%_ _%tl154570154671%_))
                        (_%K154568154666%_ _%rest154676%_ _%e154674%_)))
                    (_%else154566154580%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call154409%_
                                                     _%L154480%_
                                                     (let ((__tmp161191
                                                            (lambda (_%g154684154687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g154685154689%_)
                      (cons _%g154684154687%_ _%g154685154689%_))))
               (declare (not safe))
               (__foldr1 __tmp161191 '() _%L154479%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont160628160629%_
                                            (lambda ()
                                              (_%compile-call154409%_
                                               _%L154480%_
                                               (let ((__tmp161192
                                                      (lambda (_%g154524154527%_
                                                               _%g154525154529%_)
                                                        (cons _%g154524154527%_
                                                              _%g154525154529%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp161192
                                                  '()
                                                  _%L154479%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx160624160625%_))
                                           (let ((_%e154508154537%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx160624160625%_))))
                                             (let ((_%tl154510154542%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e154508154537%_)))
                                                   (_%hd154509154540%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e154508154537%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd154509154540%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd154509154540%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl154510154542%_))
                                                           (let ((_%e154511154545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl154510154542%_))))
                     (let ((_%tl154513154550%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e154511154545%_)))
                           (_%hd154512154548%_
                            (let ()
                              (declare (not safe))
                              (##car _%e154511154545%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl154513154550%_))
                           (_%__kont160626160627%_)
                           (_%__kont160628160629%_))))
                   (_%__kont160628160629%_))
               (_%__kont160628160629%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont160628160629%_))))
                                           (_%__kont160628160629%_))))))
                             _%rand154429154476%_
                             _%hd154419154450%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop154424154460%_
                                                     _%target154421154455%_
                                                     '()))
                                                  (_%g154411154434%_
                                                   _%g154412154437%_)))))
                                        (_%g154411154434%_
                                         _%g154412154437%_))))
                                (_%g154411154434%_ _%g154412154437%_))))
                        (_%g154411154434%_ _%g154412154437%_)))))
            (_%g154410154695%_ _%stx154407%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self154149%_ _%stx154150%_)
        (let* ((_%__stx160696160697%_ _%stx154150%_)
               (_%g154153154182%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx160696160697%_)))))
          (let ((_%__kont160698160699%_
                 (lambda (_%L154250%_ _%L154251%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self154149%_
                        _%stx154150%_)
                       (let ((_%f154273%_
                              (let ((__tmp161193
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L154251%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self154149%_
                                 __tmp161193))))
                         (let _%lp154275%_ ((_%rest154278%_
                                             (reverse (let ((__tmp161195
                                                             (lambda (_%g154395154398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g154396154400%_)
                       (cons _%g154395154398%_ _%g154396154400%_))))
                (declare (not safe))
                (__foldr1 __tmp161195 '() _%L154250%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind154280%_ '())
                                            (_%args154281%_ '()))
                           (let* ((_%rest154282154290%_ _%rest154278%_)
                                  (_%else154284154298%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind154280%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f154273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args154281%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K154286154384%_
                                   (lambda (_%rest154301%_ _%e154302%_)
                                     (let* ((_%__stx160650160651%_ _%e154302%_)
                                            (_%g154307154325%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx160650160651%_)))))
                                       (let ((_%__kont160652160653%_
                                              (lambda ()
                                                (_%lp154275%_
                                                 _%rest154301%_
                                                 _%bind154280%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e154302%_))
                                                       _%args154281%_))))
                                             (_%__kont160654160655%_
                                              (lambda ()
                                                (_%lp154275%_
                                                 _%rest154301%_
                                                 _%bind154280%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e154302%_))
                                                       _%args154281%_))))
                                             (_%__kont160656160657%_
                                              (lambda ()
                                                (let ((_%tmp154332%_
                                                       (let ((__tmp161194
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp161194))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp154275%_
                                                   _%rest154301%_
                                                   (cons (cons _%tmp154332%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e154302%_))
                             '()))
                 _%bind154280%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp154332%_
                                                         _%args154281%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx160650160651%_))
                                             (let ((_%e154309154363%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx160650160651%_))))
                                               (let ((_%tl154311154368%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e154309154363%_)))
                                                     (_%hd154310154366%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e154309154363%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd154310154366%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd154310154366%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl154311154368%_))
                     (let ((_%e154312154371%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl154311154368%_))))
                       (let ((_%tl154314154376%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e154312154371%_)))
                             (_%hd154313154374%_
                              (let ()
                                (declare (not safe))
                                (##car _%e154312154371%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl154314154376%_))
                             (_%__kont160652160653%_)
                             (_%__kont160656160657%_))))
                     (_%__kont160656160657%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd154310154366%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl154311154368%_))
                         (let ((_%e154318154348%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl154311154368%_))))
                           (let ((_%tl154320154353%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e154318154348%_)))
                                 (_%hd154319154351%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e154318154348%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl154320154353%_))
                                 (_%__kont160654160655%_)
                                 (_%__kont160656160657%_))))
                         (_%__kont160656160657%_))
                     (_%__kont160656160657%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont160656160657%_))))
                                             (_%__kont160656160657%_)))))))
                             (if (pair? _%rest154282154290%_)
                                 (let ((_%hd154287154387%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest154282154290%_)))
                                       (_%tl154288154389%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest154282154290%_))))
                                   (let* ((_%e154392%_ _%hd154287154387%_)
                                          (_%rest154394%_ _%tl154288154389%_))
                                     (_%K154286154384%_
                                      _%rest154394%_
                                      _%e154392%_)))
                                 (_%else154284154298%_))))))))
                (_%__kont160702160703%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self154149%_ _%stx154150%_))))
            (let ((_%__match160741160742%_
                   (lambda (_%e154157154194%_
                            _%hd154158154197%_
                            _%tl154159154199%_
                            _%e154160154202%_
                            _%hd154161154205%_
                            _%tl154162154207%_
                            _%e154163154210%_
                            _%hd154164154213%_
                            _%tl154165154215%_
                            _%e154166154218%_
                            _%hd154167154221%_
                            _%tl154168154223%_
                            _%__splice160700160701%_
                            _%target154169154226%_
                            _%tl154171154228%_)
                     (letrec ((_%loop154172154231%_
                               (lambda (_%hd154170154234%_
                                        _%rand154176154236%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd154170154234%_))
                                     (let ((_%e154173154239%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd154170154234%_))))
                                       (let ((_%lp-tl154175154244%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e154173154239%_)))
                                             (_%lp-hd154174154242%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e154173154239%_))))
                                         (_%loop154172154231%_
                                          _%lp-tl154175154244%_
                                          (cons _%lp-hd154174154242%_
                                                _%rand154176154236%_))))
                                     (let ((_%rand154177154247%_
                                            (reverse _%rand154176154236%_)))
                                       (_%__kont160698160699%_
                                        _%rand154177154247%_
                                        _%hd154167154221%_))))))
                       (_%loop154172154231%_ _%target154169154226%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx160696160697%_))
                  (let ((_%e154157154194%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx160696160697%_))))
                    (let ((_%tl154159154199%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e154157154194%_)))
                          (_%hd154158154197%_
                           (let ()
                             (declare (not safe))
                             (##car _%e154157154194%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl154159154199%_))
                          (let ((_%e154160154202%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl154159154199%_))))
                            (let ((_%tl154162154207%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e154160154202%_)))
                                  (_%hd154161154205%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e154160154202%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd154161154205%_))
                                  (let ((_%e154163154210%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd154161154205%_))))
                                    (let ((_%tl154165154215%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e154163154210%_)))
                                          (_%hd154164154213%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e154163154210%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd154164154213%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd154164154213%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl154165154215%_))
                                                  (let ((_%e154166154218%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl154165154215%_))))
                                                    (let ((_%tl154168154223%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e154166154218%_)))
                                                          (_%hd154167154221%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e154166154218%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl154168154223%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl154162154207%_))
                      (let ((_%__splice160700160701%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl154162154207%_
                                '0))))
                        (let ((_%tl154171154228%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice160700160701%_ '1)))
                              (_%target154169154226%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice160700160701%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl154171154228%_))
                              (_%__match160741160742%_
                               _%e154157154194%_
                               _%hd154158154197%_
                               _%tl154159154199%_
                               _%e154160154202%_
                               _%hd154161154205%_
                               _%tl154162154207%_
                               _%e154163154210%_
                               _%hd154164154213%_
                               _%tl154165154215%_
                               _%e154166154218%_
                               _%hd154167154221%_
                               _%tl154168154223%_
                               _%__splice160700160701%_
                               _%target154169154226%_
                               _%tl154171154228%_)
                              (_%__kont160702160703%_))))
                      (_%__kont160702160703%_))
                  (_%__kont160702160703%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont160702160703%_))
                                              (_%__kont160702160703%_))
                                          (_%__kont160702160703%_))))
                                  (_%__kont160702160703%_))))
                          (_%__kont160702160703%_))))
                  (_%__kont160702160703%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self153961%_ _%stx153962%_)
        (letrec ((_%simplify153964%_
                  (lambda (_%code154049%_)
                    (let* ((_%code154050154068%_ _%code154049%_)
                           (_%else154052154076%_ (lambda () _%code154049%_))
                           (_%K154054154112%_
                            (lambda (_%expr154079%_ _%test154080%_)
                              (let* ((_%expr154081154089%_ _%expr154079%_)
                                     (_%else154083154097%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test154080%_
                                                    (cons _%expr154079%_
                                                          '())))))
                                     (_%K154085154102%_
                                      (lambda (_%exprs154100%_)
                                        (cons 'and
                                              (cons _%test154080%_
                                                    _%exprs154100%_)))))
                                (if (pair? _%expr154081154089%_)
                                    (let ((_%hd154086154105%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr154081154089%_)))
                                          (_%tl154087154107%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr154081154089%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd154086154105%_ 'and))
                                          (let ((_%exprs154110%_
                                                 _%tl154087154107%_))
                                            (_%K154085154102%_
                                             _%exprs154110%_))
                                          (_%else154083154097%_)))
                                    (_%else154083154097%_))))))
                      (if (pair? _%code154050154068%_)
                          (let ((_%hd154055154115%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code154050154068%_)))
                                (_%tl154056154117%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code154050154068%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd154055154115%_ 'if))
                                (if (pair? _%tl154056154117%_)
                                    (let ((_%hd154057154120%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl154056154117%_)))
                                          (_%tl154058154122%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl154056154117%_))))
                                      (let ((_%test154125%_
                                             _%hd154057154120%_))
                                        (if (pair? _%tl154058154122%_)
                                            (let ((_%hd154059154127%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl154058154122%_)))
                                                  (_%tl154060154129%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl154058154122%_))))
                                              (let ((_%expr154132%_
                                                     _%hd154059154127%_))
                                                (if (pair? _%tl154060154129%_)
                                                    (let ((_%hd154061154134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl154060154129%_)))
                                                          (_%tl154062154136%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl154060154129%_))))
                                                      (if (pair? _%hd154061154134%_)
                                                          (let ((_%hd154063154139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd154061154134%_)))
                        (_%tl154064154141%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd154061154134%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd154063154139%_ 'quote))
                        (if (pair? _%tl154064154141%_)
                            (let ((_%hd154065154144%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl154064154141%_)))
                                  (_%tl154066154146%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl154064154141%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd154065154144%_ '#f))
                                  (if (null? _%tl154066154146%_)
                                      (if (null? _%tl154062154136%_)
                                          (_%K154054154112%_
                                           _%expr154132%_
                                           _%test154125%_)
                                          (_%else154052154076%_))
                                      (_%else154052154076%_))
                                  (_%else154052154076%_)))
                            (_%else154052154076%_))
                        (_%else154052154076%_)))
                  (_%else154052154076%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else154052154076%_))))
                                            (_%else154052154076%_))))
                                    (_%else154052154076%_))
                                (_%else154052154076%_)))
                          (_%else154052154076%_))))))
          (let* ((_%g153966153987%_
                  (lambda (_%g153967153984%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g153967153984%_))))
                 (_%g153965154046%_
                  (lambda (_%g153967153990%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g153967153990%_))
                        (let ((_%e153971153992%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g153967153990%_))))
                          (let ((_%hd153972153995%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153971153992%_)))
                                (_%tl153973153997%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153971153992%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl153973153997%_))
                                (let ((_%e153974154000%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl153973153997%_))))
                                  (let ((_%hd153975154003%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e153974154000%_)))
                                        (_%tl153976154005%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e153974154000%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153976154005%_))
                                        (let ((_%e153977154008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153976154005%_))))
                                          (let ((_%hd153978154011%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153977154008%_)))
                                                (_%tl153979154013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153977154008%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl153979154013%_))
                                                (let ((_%e153980154016%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl153979154013%_))))
                                                  (let ((_%hd153981154019%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e153980154016%_)))
                                                        (_%tl153982154021%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e153980154016%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl153982154021%_))
                                                        ((lambda (_%L154024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L154025%_
                          _%L154026%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify153964%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self153961%_
                                       _%L154026%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self153961%_
                                             _%L154025%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self153961%_
                                                   _%L154024%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp161196
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self153961%_
                                               _%L154026%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp161196
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self153961%_
                                            _%L154025%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self153961%_
                                                  _%L154024%_))
                                               '()))))))
                 _%hd153981154019%_
                 _%hd153978154011%_
                 _%hd153975154003%_)
                (_%g153966153987%_ _%g153967153990%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g153966153987%_
                                                 _%g153967153990%_))))
                                        (_%g153966153987%_
                                         _%g153967153990%_))))
                                (_%g153966153987%_ _%g153967153990%_))))
                        (_%g153966153987%_ _%g153967153990%_)))))
            (_%g153965154046%_ _%stx153962%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self153909%_ _%stx153910%_)
        (let* ((_%g153912153925%_
                (lambda (_%g153913153922%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153913153922%_))))
               (_%g153911153958%_
                (lambda (_%g153913153928%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153913153928%_))
                      (let ((_%e153915153930%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153913153928%_))))
                        (let ((_%hd153916153933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153915153930%_)))
                              (_%tl153917153935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153915153930%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153917153935%_))
                              (let ((_%e153918153938%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153917153935%_))))
                                (let ((_%hd153919153941%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153918153938%_)))
                                      (_%tl153920153943%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153918153938%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153920153943%_))
                                      ((lambda (_%L153946%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L153946%_)))
                                       _%hd153919153941%_)
                                      (_%g153912153925%_ _%g153913153928%_))))
                              (_%g153912153925%_ _%g153913153928%_))))
                      (_%g153912153925%_ _%g153913153928%_)))))
          (_%g153911153958%_ _%stx153910%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self153841%_ _%stx153842%_)
        (let* ((_%g153844153861%_
                (lambda (_%g153845153858%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153845153858%_))))
               (_%g153843153906%_
                (lambda (_%g153845153864%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153845153864%_))
                      (let ((_%e153848153866%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153845153864%_))))
                        (let ((_%hd153849153869%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153848153866%_)))
                              (_%tl153850153871%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153848153866%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153850153871%_))
                              (let ((_%e153851153874%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153850153871%_))))
                                (let ((_%hd153852153877%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153851153874%_)))
                                      (_%tl153853153879%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153851153874%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153853153879%_))
                                      (let ((_%e153854153882%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153853153879%_))))
                                        (let ((_%hd153855153885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153854153882%_)))
                                              (_%tl153856153887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153854153882%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153856153887%_))
                                              ((lambda (_%L153890%_
                                                        _%L153891%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L153891%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self153841%_ _%L153890%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd153855153885%_
                                               _%hd153852153877%_)
                                              (_%g153844153861%_
                                               _%g153845153864%_))))
                                      (_%g153844153861%_ _%g153845153864%_))))
                              (_%g153844153861%_ _%g153845153864%_))))
                      (_%g153844153861%_ _%g153845153864%_)))))
          (_%g153843153906%_ _%stx153842%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self153652%_ _%stx153653%_)
        (let* ((_%g153655153672%_
                (lambda (_%g153656153669%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153656153669%_))))
               (_%g153654153838%_
                (lambda (_%g153656153675%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153656153675%_))
                      (let ((_%e153659153677%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153656153675%_))))
                        (let ((_%hd153660153680%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153659153677%_)))
                              (_%tl153661153682%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153659153677%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153661153682%_))
                              (let ((_%e153662153685%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153661153682%_))))
                                (let ((_%hd153663153688%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153662153685%_)))
                                      (_%tl153664153690%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153662153685%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153664153690%_))
                                      (let ((_%e153665153693%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153664153690%_))))
                                        (let ((_%hd153666153696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153665153693%_)))
                                              (_%tl153667153698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153665153693%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153667153698%_))
                                              ((lambda (_%L153701%_
                                                        _%L153702%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self153652%_ _%L153701%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self153652%_ _%L153702%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp153717%_ ((_%rest153720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L153702%_ (cons _%L153701%_ '())))
                                (_%bind153722%_ '())
                                (_%args153723%_ '()))
               (let* ((_%rest153724153732%_ _%rest153720%_)
                      (_%else153726153740%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind153722%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args153723%_)
                                                 '()))))))
                      (_%K153728153826%_
                       (lambda (_%rest153743%_ _%e153744%_)
                         (let* ((_%__stx160744160745%_ _%e153744%_)
                                (_%g153749153767%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx160744160745%_)))))
                           (let ((_%__kont160746160747%_
                                  (lambda ()
                                    (_%lp153717%_
                                     _%rest153743%_
                                     _%bind153722%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e153744%_))
                                           _%args153723%_))))
                                 (_%__kont160748160749%_
                                  (lambda ()
                                    (_%lp153717%_
                                     _%rest153743%_
                                     _%bind153722%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e153744%_))
                                           _%args153723%_))))
                                 (_%__kont160750160751%_
                                  (lambda ()
                                    (let ((_%tmp153774%_
                                           (let ((__tmp161197
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp161197))))
                                      (_%lp153717%_
                                       _%rest153743%_
                                       (cons (cons _%tmp153774%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e153744%_))
                                                         '()))
                                             _%bind153722%_)
                                       (cons _%tmp153774%_ _%args153723%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx160744160745%_))
                                 (let ((_%e153751153805%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx160744160745%_))))
                                   (let ((_%tl153753153810%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e153751153805%_)))
                                         (_%hd153752153808%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e153751153805%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd153752153808%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd153752153808%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl153753153810%_))
                                                 (let ((_%e153754153813%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl153753153810%_))))
                                                   (let ((_%tl153756153818%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e153754153813%_)))
                                                         (_%hd153755153816%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e153754153813%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl153756153818%_))
                                                         (_%__kont160746160747%_)
                                                         (_%__kont160750160751%_))))
                                                 (_%__kont160750160751%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd153752153808%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl153753153810%_))
                                                     (let ((_%e153760153790%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl153753153810%_))))
                                                       (let ((_%tl153762153795%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e153760153790%_)))
                     (_%hd153761153793%_
                      (let () (declare (not safe)) (##car _%e153760153790%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl153762153795%_))
                     (_%__kont160748160749%_)
                     (_%__kont160750160751%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont160750160751%_))
                                                 (_%__kont160750160751%_)))
                                         (_%__kont160750160751%_))))
                                 (_%__kont160750160751%_)))))))
                 (if (pair? _%rest153724153732%_)
                     (let ((_%hd153729153829%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest153724153732%_)))
                           (_%tl153730153831%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest153724153732%_))))
                       (let* ((_%e153834%_ _%hd153729153829%_)
                              (_%rest153836%_ _%tl153730153831%_))
                         (_%K153728153826%_ _%rest153836%_ _%e153834%_)))
                     (_%else153726153740%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd153666153696%_
                                               _%hd153663153688%_)
                                              (_%g153655153672%_
                                               _%g153656153675%_))))
                                      (_%g153655153672%_ _%g153656153675%_))))
                              (_%g153655153672%_ _%g153656153675%_))))
                      (_%g153655153672%_ _%g153656153675%_)))))
          (_%g153654153838%_ _%stx153653%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self153463%_ _%stx153464%_)
        (let* ((_%g153466153483%_
                (lambda (_%g153467153480%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153467153480%_))))
               (_%g153465153649%_
                (lambda (_%g153467153486%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153467153486%_))
                      (let ((_%e153470153488%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153467153486%_))))
                        (let ((_%hd153471153491%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153470153488%_)))
                              (_%tl153472153493%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153470153488%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153472153493%_))
                              (let ((_%e153473153496%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153472153493%_))))
                                (let ((_%hd153474153499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153473153496%_)))
                                      (_%tl153475153501%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153473153496%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153475153501%_))
                                      (let ((_%e153476153504%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153475153501%_))))
                                        (let ((_%hd153477153507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153476153504%_)))
                                              (_%tl153478153509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153476153504%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153478153509%_))
                                              ((lambda (_%L153512%_
                                                        _%L153513%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self153463%_ _%L153512%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self153463%_ _%L153513%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp153528%_ ((_%rest153531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L153513%_ (cons _%L153512%_ '())))
                                (_%bind153533%_ '())
                                (_%args153534%_ '()))
               (let* ((_%rest153535153543%_ _%rest153531%_)
                      (_%else153537153551%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind153533%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args153534%_)
                                                 '()))))))
                      (_%K153539153637%_
                       (lambda (_%rest153554%_ _%e153555%_)
                         (let* ((_%__stx160790160791%_ _%e153555%_)
                                (_%g153560153578%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx160790160791%_)))))
                           (let ((_%__kont160792160793%_
                                  (lambda ()
                                    (_%lp153528%_
                                     _%rest153554%_
                                     _%bind153533%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e153555%_))
                                           _%args153534%_))))
                                 (_%__kont160794160795%_
                                  (lambda ()
                                    (_%lp153528%_
                                     _%rest153554%_
                                     _%bind153533%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e153555%_))
                                           _%args153534%_))))
                                 (_%__kont160796160797%_
                                  (lambda ()
                                    (let ((_%tmp153585%_
                                           (let ((__tmp161198
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp161198))))
                                      (_%lp153528%_
                                       _%rest153554%_
                                       (cons (cons _%tmp153585%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e153555%_))
                                                         '()))
                                             _%bind153533%_)
                                       (cons _%tmp153585%_ _%args153534%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx160790160791%_))
                                 (let ((_%e153562153616%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx160790160791%_))))
                                   (let ((_%tl153564153621%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e153562153616%_)))
                                         (_%hd153563153619%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e153562153616%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd153563153619%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd153563153619%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl153564153621%_))
                                                 (let ((_%e153565153624%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl153564153621%_))))
                                                   (let ((_%tl153567153629%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e153565153624%_)))
                                                         (_%hd153566153627%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e153565153624%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl153567153629%_))
                                                         (_%__kont160792160793%_)
                                                         (_%__kont160796160797%_))))
                                                 (_%__kont160796160797%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd153563153619%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl153564153621%_))
                                                     (let ((_%e153571153601%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl153564153621%_))))
                                                       (let ((_%tl153573153606%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e153571153601%_)))
                     (_%hd153572153604%_
                      (let () (declare (not safe)) (##car _%e153571153601%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl153573153606%_))
                     (_%__kont160794160795%_)
                     (_%__kont160796160797%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont160796160797%_))
                                                 (_%__kont160796160797%_)))
                                         (_%__kont160796160797%_))))
                                 (_%__kont160796160797%_)))))))
                 (if (pair? _%rest153535153543%_)
                     (let ((_%hd153540153640%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest153535153543%_)))
                           (_%tl153541153642%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest153535153543%_))))
                       (let* ((_%e153645%_ _%hd153540153640%_)
                              (_%rest153647%_ _%tl153541153642%_))
                         (_%K153539153637%_ _%rest153647%_ _%e153645%_)))
                     (_%else153537153551%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd153477153507%_
                                               _%hd153474153499%_)
                                              (_%g153466153483%_
                                               _%g153467153486%_))))
                                      (_%g153466153483%_ _%g153467153486%_))))
                              (_%g153466153483%_ _%g153467153486%_))))
                      (_%g153466153483%_ _%g153467153486%_)))))
          (_%g153465153649%_ _%stx153464%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self153379%_ _%stx153380%_)
        (let* ((_%g153382153403%_
                (lambda (_%g153383153400%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153383153400%_))))
               (_%g153381153460%_
                (lambda (_%g153383153406%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153383153406%_))
                      (let ((_%e153387153408%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153383153406%_))))
                        (let ((_%hd153388153411%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153387153408%_)))
                              (_%tl153389153413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153387153408%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153389153413%_))
                              (let ((_%e153390153416%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153389153413%_))))
                                (let ((_%hd153391153419%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153390153416%_)))
                                      (_%tl153392153421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153390153416%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153392153421%_))
                                      (let ((_%e153393153424%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153392153421%_))))
                                        (let ((_%hd153394153427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153393153424%_)))
                                              (_%tl153395153429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153393153424%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153395153429%_))
                                              (let ((_%e153396153432%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153395153429%_))))
                                                (let ((_%hd153397153435%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153396153432%_)))
                                                      (_%tl153398153437%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153396153432%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153398153437%_))
                                                      ((lambda (_%L153440%_
                                                                _%L153441%_
                                                                _%L153442%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self153379%_ _%L153440%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self153379%_
                                      _%L153441%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self153379%_
                                            _%L153442%_))
                                         (cons ''#f '()))))))
               _%hd153397153435%_
               _%hd153394153427%_
               _%hd153391153419%_)
              (_%g153382153403%_ _%g153383153406%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153382153403%_
                                               _%g153383153406%_))))
                                      (_%g153382153403%_ _%g153383153406%_))))
                              (_%g153382153403%_ _%g153383153406%_))))
                      (_%g153382153403%_ _%g153383153406%_)))))
          (_%g153381153460%_ _%stx153380%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self153279%_ _%stx153280%_)
        (let* ((_%g153282153307%_
                (lambda (_%g153283153304%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153283153304%_))))
               (_%g153281153376%_
                (lambda (_%g153283153310%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153283153310%_))
                      (let ((_%e153288153312%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153283153310%_))))
                        (let ((_%hd153289153315%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153288153312%_)))
                              (_%tl153290153317%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153288153312%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153290153317%_))
                              (let ((_%e153291153320%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153290153317%_))))
                                (let ((_%hd153292153323%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153291153320%_)))
                                      (_%tl153293153325%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153291153320%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153293153325%_))
                                      (let ((_%e153294153328%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153293153325%_))))
                                        (let ((_%hd153295153331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153294153328%_)))
                                              (_%tl153296153333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153294153328%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153296153333%_))
                                              (let ((_%e153297153336%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153296153333%_))))
                                                (let ((_%hd153298153339%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153297153336%_)))
                                                      (_%tl153299153341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153297153336%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl153299153341%_))
                                                      (let ((_%e153300153344%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl153299153341%_))))
                (let ((_%hd153301153347%_
                       (let () (declare (not safe)) (##car _%e153300153344%_)))
                      (_%tl153302153349%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e153300153344%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl153302153349%_))
                      ((lambda (_%L153352%_
                                _%L153353%_
                                _%L153354%_
                                _%L153355%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self153279%_
                                        _%L153353%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self153279%_
                                              _%L153352%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self153279%_
                                                    _%L153354%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self153279%_
                                                          _%L153355%_))
                                                       (cons ''#f '())))))))
                       _%hd153301153347%_
                       _%hd153298153339%_
                       _%hd153295153331%_
                       _%hd153292153323%_)
                      (_%g153282153307%_ _%g153283153310%_))))
              (_%g153282153307%_ _%g153283153310%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153282153307%_
                                               _%g153283153310%_))))
                                      (_%g153282153307%_ _%g153283153310%_))))
                              (_%g153282153307%_ _%g153283153310%_))))
                      (_%g153282153307%_ _%g153283153310%_)))))
          (_%g153281153376%_ _%stx153280%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self153195%_ _%stx153196%_)
        (let* ((_%g153198153219%_
                (lambda (_%g153199153216%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153199153216%_))))
               (_%g153197153276%_
                (lambda (_%g153199153222%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153199153222%_))
                      (let ((_%e153203153224%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153199153222%_))))
                        (let ((_%hd153204153227%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153203153224%_)))
                              (_%tl153205153229%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153203153224%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153205153229%_))
                              (let ((_%e153206153232%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153205153229%_))))
                                (let ((_%hd153207153235%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153206153232%_)))
                                      (_%tl153208153237%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153206153232%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153208153237%_))
                                      (let ((_%e153209153240%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153208153237%_))))
                                        (let ((_%hd153210153243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153209153240%_)))
                                              (_%tl153211153245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153209153240%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153211153245%_))
                                              (let ((_%e153212153248%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153211153245%_))))
                                                (let ((_%hd153213153251%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153212153248%_)))
                                                      (_%tl153214153253%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153212153248%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153214153253%_))
                                                      ((lambda (_%L153256%_
                                                                _%L153257%_
                                                                _%L153258%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self153195%_ _%L153256%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self153195%_
                                      _%L153257%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self153195%_
                                            _%L153258%_))
                                         (cons ''#f '()))))))
               _%hd153213153251%_
               _%hd153210153243%_
               _%hd153207153235%_)
              (_%g153198153219%_ _%g153199153222%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153198153219%_
                                               _%g153199153222%_))))
                                      (_%g153198153219%_ _%g153199153222%_))))
                              (_%g153198153219%_ _%g153199153222%_))))
                      (_%g153198153219%_ _%g153199153222%_)))))
          (_%g153197153276%_ _%stx153196%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self153095%_ _%stx153096%_)
        (let* ((_%g153098153123%_
                (lambda (_%g153099153120%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153099153120%_))))
               (_%g153097153192%_
                (lambda (_%g153099153126%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153099153126%_))
                      (let ((_%e153104153128%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153099153126%_))))
                        (let ((_%hd153105153131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153104153128%_)))
                              (_%tl153106153133%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153104153128%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153106153133%_))
                              (let ((_%e153107153136%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153106153133%_))))
                                (let ((_%hd153108153139%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153107153136%_)))
                                      (_%tl153109153141%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153107153136%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153109153141%_))
                                      (let ((_%e153110153144%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153109153141%_))))
                                        (let ((_%hd153111153147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153110153144%_)))
                                              (_%tl153112153149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153110153144%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153112153149%_))
                                              (let ((_%e153113153152%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153112153149%_))))
                                                (let ((_%hd153114153155%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153113153152%_)))
                                                      (_%tl153115153157%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153113153152%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl153115153157%_))
                                                      (let ((_%e153116153160%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl153115153157%_))))
                (let ((_%hd153117153163%_
                       (let () (declare (not safe)) (##car _%e153116153160%_)))
                      (_%tl153118153165%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e153116153160%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl153118153165%_))
                      ((lambda (_%L153168%_
                                _%L153169%_
                                _%L153170%_
                                _%L153171%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self153095%_
                                        _%L153169%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self153095%_
                                              _%L153168%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self153095%_
                                                    _%L153170%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self153095%_
                                                          _%L153171%_))
                                                       (cons ''#f '())))))))
                       _%hd153117153163%_
                       _%hd153114153155%_
                       _%hd153111153147%_
                       _%hd153108153139%_)
                      (_%g153098153123%_ _%g153099153126%_))))
              (_%g153098153123%_ _%g153099153126%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153098153123%_
                                               _%g153099153126%_))))
                                      (_%g153098153123%_ _%g153099153126%_))))
                              (_%g153098153123%_ _%g153099153126%_))))
                      (_%g153098153123%_ _%g153099153126%_)))))
          (_%g153097153192%_ _%stx153096%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self152890%_ _%stx152891%_)
        (let* ((_%g152893152914%_
                (lambda (_%g152894152911%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152894152911%_))))
               (_%g152892153092%_
                (lambda (_%g152894152917%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152894152917%_))
                      (let ((_%e152898152919%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152894152917%_))))
                        (let ((_%hd152899152922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152898152919%_)))
                              (_%tl152900152924%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152898152919%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152900152924%_))
                              (let ((_%e152901152927%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152900152924%_))))
                                (let ((_%hd152902152930%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152901152927%_)))
                                      (_%tl152903152932%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152901152927%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152903152932%_))
                                      (let ((_%e152904152935%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152903152932%_))))
                                        (let ((_%hd152905152938%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152904152935%_)))
                                              (_%tl152906152940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152904152935%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl152906152940%_))
                                              (let ((_%e152907152943%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl152906152940%_))))
                                                (let ((_%hd152908152946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e152907152943%_)))
                                                      (_%tl152909152948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e152907152943%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl152909152948%_))
                                                      ((lambda (_%L152951%_
                                                                _%L152952%_
                                                                _%L152953%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self152890%_
                                    _%L152951%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self152890%_
                                          _%L152952%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp152971%_ ((_%rest152974%_
                                         (cons _%L152952%_
                                               (cons _%L152951%_ '())))
                                        (_%bind152976%_ '())
                                        (_%args152977%_ '()))
                       (let* ((_%rest152978152986%_ _%rest152974%_)
                              (_%else152980152994%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind152976%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp161199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp161199 _%args152977%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K152982153080%_
                               (lambda (_%rest152997%_ _%e152998%_)
                                 (let* ((_%__stx160836160837%_ _%e152998%_)
                                        (_%g153003153021%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx160836160837%_)))))
                                   (let ((_%__kont160838160839%_
                                          (lambda ()
                                            (_%lp152971%_
                                             _%rest152997%_
                                             _%bind152976%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e152998%_))
                                                   _%args152977%_))))
                                         (_%__kont160840160841%_
                                          (lambda ()
                                            (_%lp152971%_
                                             _%rest152997%_
                                             _%bind152976%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e152998%_))
                                                   _%args152977%_))))
                                         (_%__kont160842160843%_
                                          (lambda ()
                                            (let ((_%tmp153028%_
                                                   (let ((__tmp161200
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp161200))))
                                              (_%lp152971%_
                                               _%rest152997%_
                                               (cons (cons _%tmp153028%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e152998%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind152976%_)
                                               (cons _%tmp153028%_
                                                     _%args152977%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx160836160837%_))
                                         (let ((_%e153005153059%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx160836160837%_))))
                                           (let ((_%tl153007153064%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e153005153059%_)))
                                                 (_%hd153006153062%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e153005153059%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd153006153062%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd153006153062%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl153007153064%_))
                                                         (let ((_%e153008153067%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl153007153064%_))))
                   (let ((_%tl153010153072%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e153008153067%_)))
                         (_%hd153009153070%_
                          (let ()
                            (declare (not safe))
                            (##car _%e153008153067%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl153010153072%_))
                         (_%__kont160838160839%_)
                         (_%__kont160842160843%_))))
                 (_%__kont160842160843%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd153006153062%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl153007153064%_))
                     (let ((_%e153014153044%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl153007153064%_))))
                       (let ((_%tl153016153049%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e153014153044%_)))
                             (_%hd153015153047%_
                              (let ()
                                (declare (not safe))
                                (##car _%e153014153044%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl153016153049%_))
                             (_%__kont160840160841%_)
                             (_%__kont160842160843%_))))
                     (_%__kont160842160843%_))
                 (_%__kont160842160843%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont160842160843%_))))
                                         (_%__kont160842160843%_)))))))
                         (if (pair? _%rest152978152986%_)
                             (let ((_%hd152983153083%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest152978152986%_)))
                                   (_%tl152984153085%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest152978152986%_))))
                               (let* ((_%e153088%_ _%hd152983153083%_)
                                      (_%rest153090%_ _%tl152984153085%_))
                                 (_%K152982153080%_
                                  _%rest153090%_
                                  _%e153088%_)))
                             (_%else152980152994%_))))))
               _%hd152908152946%_
               _%hd152905152938%_
               _%hd152902152930%_)
              (_%g152893152914%_ _%g152894152917%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g152893152914%_
                                               _%g152894152917%_))))
                                      (_%g152893152914%_ _%g152894152917%_))))
                              (_%g152893152914%_ _%g152894152917%_))))
                      (_%g152893152914%_ _%g152894152917%_)))))
          (_%g152892153092%_ _%stx152891%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self152669%_ _%stx152670%_)
        (let* ((_%g152672152697%_
                (lambda (_%g152673152694%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152673152694%_))))
               (_%g152671152887%_
                (lambda (_%g152673152700%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152673152700%_))
                      (let ((_%e152678152702%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152673152700%_))))
                        (let ((_%hd152679152705%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152678152702%_)))
                              (_%tl152680152707%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152678152702%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152680152707%_))
                              (let ((_%e152681152710%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152680152707%_))))
                                (let ((_%hd152682152713%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152681152710%_)))
                                      (_%tl152683152715%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152681152710%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152683152715%_))
                                      (let ((_%e152684152718%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152683152715%_))))
                                        (let ((_%hd152685152721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152684152718%_)))
                                              (_%tl152686152723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152684152718%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl152686152723%_))
                                              (let ((_%e152687152726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl152686152723%_))))
                                                (let ((_%hd152688152729%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e152687152726%_)))
                                                      (_%tl152689152731%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e152687152726%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl152689152731%_))
                                                      (let ((_%e152690152734%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl152689152731%_))))
                (let ((_%hd152691152737%_
                       (let () (declare (not safe)) (##car _%e152690152734%_)))
                      (_%tl152692152739%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e152690152734%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl152692152739%_))
                      ((lambda (_%L152742%_
                                _%L152743%_
                                _%L152744%_
                                _%L152745%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self152669%_
                                            _%L152743%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self152669%_
                                                  _%L152742%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self152669%_
                                                        _%L152744%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp152766%_ ((_%rest152769%_
                                                 (cons _%L152744%_
                                                       (cons _%L152742%_
                                                             (cons _%L152743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind152771%_ '())
                                                (_%args152772%_ '()))
                               (let* ((_%rest152773152781%_ _%rest152769%_)
                                      (_%else152775152789%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind152771%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp161201 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp161201 _%args152772%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K152777152875%_
                                       (lambda (_%rest152792%_ _%e152793%_)
                                         (let* ((_%__stx160882160883%_
                                                 _%e152793%_)
                                                (_%g152798152816%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx160882160883%_)))))
                                           (let ((_%__kont160884160885%_
                                                  (lambda ()
                                                    (_%lp152766%_
                                                     _%rest152792%_
                                                     _%bind152771%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e152793%_))
                                                           _%args152772%_))))
                                                 (_%__kont160886160887%_
                                                  (lambda ()
                                                    (_%lp152766%_
                                                     _%rest152792%_
                                                     _%bind152771%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e152793%_))
                                                           _%args152772%_))))
                                                 (_%__kont160888160889%_
                                                  (lambda ()
                                                    (let ((_%tmp152823%_
                                                           (let ((__tmp161202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp161202))))
              (_%lp152766%_
               _%rest152792%_
               (cons (cons _%tmp152823%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e152793%_))
                                 '()))
                     _%bind152771%_)
               (cons _%tmp152823%_ _%args152772%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx160882160883%_))
                                                 (let ((_%e152800152854%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx160882160883%_))))
                                                   (let ((_%tl152802152859%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e152800152854%_)))
                                                         (_%hd152801152857%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e152800152854%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd152801152857%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd152801152857%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl152802152859%_))
                         (let ((_%e152803152862%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl152802152859%_))))
                           (let ((_%tl152805152867%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e152803152862%_)))
                                 (_%hd152804152865%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e152803152862%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl152805152867%_))
                                 (_%__kont160884160885%_)
                                 (_%__kont160888160889%_))))
                         (_%__kont160888160889%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd152801152857%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl152802152859%_))
                             (let ((_%e152809152839%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl152802152859%_))))
                               (let ((_%tl152811152844%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e152809152839%_)))
                                     (_%hd152810152842%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e152809152839%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl152811152844%_))
                                     (_%__kont160886160887%_)
                                     (_%__kont160888160889%_))))
                             (_%__kont160888160889%_))
                         (_%__kont160888160889%_)))
                 (_%__kont160888160889%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont160888160889%_)))))))
                                 (if (pair? _%rest152773152781%_)
                                     (let ((_%hd152778152878%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest152773152781%_)))
                                           (_%tl152779152880%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest152773152781%_))))
                                       (let* ((_%e152883%_ _%hd152778152878%_)
                                              (_%rest152885%_
                                               _%tl152779152880%_))
                                         (_%K152777152875%_
                                          _%rest152885%_
                                          _%e152883%_)))
                                     (_%else152775152789%_))))))
                       _%hd152691152737%_
                       _%hd152688152729%_
                       _%hd152685152721%_
                       _%hd152682152713%_)
                      (_%g152672152697%_ _%g152673152700%_))))
              (_%g152672152697%_ _%g152673152700%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g152672152697%_
                                               _%g152673152700%_))))
                                      (_%g152672152697%_ _%g152673152700%_))))
                              (_%g152672152697%_ _%g152673152700%_))))
                      (_%g152672152697%_ _%g152673152700%_)))))
          (_%g152671152887%_ _%stx152670%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self152508%_ _%stx152509%_)
        (letrec ((_%import-set-template152511%_
                  (lambda (_%in152614%_ _%phi152615%_)
                    (let ((_%iphi152617%_
                           (fx+ _%phi152615%_
                                (##direct-structure-ref
                                 _%in152614%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports152618%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in152614%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp152620%_ ((_%rest152622%_ _%imports152618%_)
                                         (_%r152623%_ '()))
                        (let* ((_%rest152624152632%_ _%rest152622%_)
                               (_%else152626152640%_ (lambda () _%r152623%_))
                               (_%K152628152657%_
                                (lambda (_%rest152643%_ _%in152644%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in152644%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi152617%_))
                                          (_%lp152620%_
                                           _%rest152643%_
                                           (cons _%in152644%_ _%r152623%_))
                                          (_%lp152620%_
                                           _%rest152643%_
                                           _%r152623%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in152644%_
                                             'gx#module-import::t))
                                          (let ((_%iphi152648%_
                                                 (fx+ _%phi152615%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in152644%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi152648%_))
                                                (_%lp152620%_
                                                 _%rest152643%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in152644%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r152623%_))
                                                (_%lp152620%_
                                                 _%rest152643%_
                                                 _%r152623%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in152644%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi152651%_
                                                     (fx+ _%iphi152617%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in152644%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi152651%_))
                                                    (_%lp152620%_
                                                     _%rest152643%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in152644%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r152623%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi152651%_))
                                                        (_%lp152620%_
                                                         _%rest152643%_
                                                         (let ((__tmp161203
                                                                (_%import-set-template152511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in152644%_
                         _%iphi152617%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r152623%_ __tmp161203)))
                (_%lp152620%_ _%rest152643%_ _%r152623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp152620%_
                                               _%rest152643%_
                                               _%r152623%_)))))))
                          (if (pair? _%rest152624152632%_)
                              (let ((_%hd152629152660%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest152624152632%_)))
                                    (_%tl152630152662%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest152624152632%_))))
                                (let* ((_%in152665%_ _%hd152629152660%_)
                                       (_%rest152667%_ _%tl152630152662%_))
                                  (_%K152628152657%_
                                   _%rest152667%_
                                   _%in152665%_)))
                              (_%else152626152640%_))))))))
          (let* ((_%g152513152523%_
                  (lambda (_%g152514152520%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g152514152520%_))))
                 (_%g152512152611%_
                  (lambda (_%g152514152526%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g152514152526%_))
                        (let ((_%e152516152528%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g152514152526%_))))
                          (let ((_%hd152517152531%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152516152528%_)))
                                (_%tl152518152533%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152516152528%_))))
                            ((lambda (_%L152536%_)
                               (let ((_%ht152547%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp152549%_ ((_%rest152551%_
                                                     _%L152536%_)
                                                    (_%loads152552%_ '()))
                                   (letrec ((_%K152554%_
                                             (lambda (_%ctx152604%_
                                                      _%rest152605%_)
                                               (let ((_%id152607%_
                                                      (##structure-ref
                                                       _%ctx152604%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht152547%_
                                                        _%id152607%_))
                                                     (_%lp152549%_
                                                      _%rest152605%_
                                                      _%loads152552%_)
                                                     (let ((_%rt152609%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id152607%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht152547%_
                                                          _%id152607%_
                                                          _%rt152609%_))
                                                       (_%lp152549%_
                                                        _%rest152605%_
                                                        (cons _%rt152609%_
                                                              _%loads152552%_))))))))
                                     (let* ((_%rest152555152563%_
                                             _%rest152551%_)
                                            (_%else152557152575%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp161205
                                                            (lambda (_%g152570152572%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g152570152572%_)))
                   (__tmp161204 (reverse _%loads152552%_)))
               (declare (not safe))
               (##map __tmp161205 __tmp161204)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K152559152592%_
                                             (lambda (_%rest152578%_
                                                      _%in152579%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in152579%_
                                                      'gx#module-context::t))
                                                   (_%K152554%_
                                                    _%in152579%_
                                                    _%rest152578%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in152579%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in152579%_
                               '3
                               '#f
                               '#f)))
                   (_%K152554%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in152579%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest152578%_)
                   (_%lp152549%_ _%rest152578%_ _%loads152552%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in152579%_
                      'gx#import-set::t))
                   (let ((_%phi152584%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in152579%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi152584%_)
                         (_%K152554%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in152579%_
                             '1
                             '#f
                             '#f))
                          _%rest152578%_)
                         (if (fxpositive? _%phi152584%_)
                             (let ((_%deps152588%_
                                    (_%import-set-template152511%_
                                     _%in152579%_
                                     '0)))
                               (_%lp152549%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest152578%_
                                   _%deps152588%_))
                                _%loads152552%_))
                             (_%lp152549%_ _%rest152578%_ _%loads152552%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx152509%_
                      _%in152579%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest152555152563%_)
                                           (let ((_%hd152560152595%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest152555152563%_)))
                                                 (_%tl152561152597%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest152555152563%_))))
                                             (let* ((_%in152600%_
                                                     _%hd152560152595%_)
                                                    (_%rest152602%_
                                                     _%tl152561152597%_))
                                               (_%K152559152592%_
                                                _%rest152602%_
                                                _%in152600%_)))
                                           (_%else152557152575%_)))))))
                             _%tl152518152533%_)))
                        (_%g152513152523%_ _%g152514152526%_)))))
            (_%g152512152611%_ _%stx152509%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self152321%_ _%stx152322%_)
        (letrec ((_%add-lift!152324%_
                  (lambda (_%expr152506%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr152506%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote152325%_
                  (lambda (_%id152503%_ _%marks152504%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id152503%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks152504%_
                                                        '()))))))))
                 (_%generate-simple152326%_
                  (lambda (_%stxq152498%_)
                    (let ((_%gid152500%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid152501%_
                           (gxc#generate-runtime-identifier _%stxq152498%_)))
                      (_%add-lift!152324%_
                       (cons 'define
                             (cons _%gid152500%_
                                   (cons (_%generate-syntax-quote152325%_
                                          _%qid152501%_
                                          ''())
                                         '()))))
                      (let ((__tmp161206
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp161206 _%stxq152498%_ _%gid152500%_))
                      _%gid152500%_)))
                 (_%generate-serialized152327%_
                  (lambda (_%stxq152488%_ _%marks152489%_)
                    (let* ((_%mark-refs152491%_
                            (map _%generate-mark152328%_ _%marks152489%_))
                           (_%gid152493%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid152495%_
                            (gxc#generate-runtime-identifier _%stxq152488%_)))
                      (_%add-lift!152324%_
                       (cons 'define
                             (cons _%gid152493%_
                                   (cons (_%generate-syntax-quote152325%_
                                          _%qid152495%_
                                          (cons 'list _%mark-refs152491%_))
                                         '()))))
                      (let ((__tmp161207
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp161207 _%stxq152488%_ _%gid152493%_))
                      _%gid152493%_)))
                 (_%generate-mark152328%_
                  (lambda (_%mark152473%_)
                    (let ((_%$e152475%_
                           (let ((__tmp161208
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp161208 _%mark152473%_))))
                      (if _%$e152475%_
                          _%$e152475%_
                          (let* ((_%gid152479%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr152481%_
                                  (_%serialize-mark152329%_ _%mark152473%_))
                                 (_%ctx152483%_
                                  (let ((__tmp161209
                                         (##structure-ref
                                          _%mark152473%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp161209)))
                                 (_%ctx-ref152485%_
                                  (if (eq? _%ctx152483%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref152330%_
                                                               _%ctx152483%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp161210
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp161210
                               _%mark152473%_
                               _%gid152479%_))
                            (_%add-lift!152324%_
                             (cons 'define
                                   (cons _%gid152479%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr152481%_ '()))
                   (cons _%ctx-ref152485%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid152479%_)))))
                 (_%serialize-mark152329%_
                  (lambda (_%mark152420%_)
                    (letrec ((_%quote-e152422%_
                              (lambda (_%sym152471%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym152471%_))
                                    _%sym152471%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym152471%_))))))
                      (let* ((_%mark152423152432%_ _%mark152420%_)
                             (_%E152425152436%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark152423152432%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K152426152448%_
                              (lambda (_%trace152439%_
                                       _%phi152440%_
                                       _%ctx152441%_
                                       _%subst152442%_)
                                (let ((_%subs152444%_
                                       (if _%subst152442%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst152442%_))
                                           '())))
                                  (cons _%phi152440%_
                                        (let ((__tmp161211
                                               (lambda (_%pair152446%_)
                                                 (cons (_%quote-e152422%_
                                                        (car _%pair152446%_))
                                                       (_%quote-e152422%_
                                                        (cdr _%pair152446%_))))))
                                          (declare (not safe))
                                          (##map __tmp161211
                                                 _%subs152444%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark152423152432%_
                               'gx#expander-mark::t))
                            (let* ((_%e152427152451%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152423152432%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst152454%_ _%e152427152451%_)
                                   (_%e152428152456%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152423152432%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx152459%_ _%e152428152456%_)
                                   (_%e152429152461%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152423152432%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi152464%_ _%e152429152461%_)
                                   (_%e152430152466%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152423152432%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace152469%_ _%e152430152466%_))
                              (_%K152426152448%_
                               _%trace152469%_
                               _%phi152464%_
                               _%ctx152459%_
                               _%subst152454%_))
                            (_%E152425152436%_))))))
                 (_%context-ref152330%_
                  (lambda (_%ctx152407%_)
                    (if (let ((__tmp161212
                               (##structure-ref
                                _%ctx152407%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp161212
                           'gx#module-context::t))
                        (let ((_%ctx-ref152409%_
                               (_%context-ref-nested152332%_ _%ctx152407%_))
                              (_%ctx-origin152410%_
                               (_%context-ref-origin152331%_ _%ctx152407%_))
                              (_%origin152411%_
                               (_%context-ref-origin152331%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin152411%_ _%ctx-origin152410%_)
                              (let ((_%ref152413%_
                                     (_%context-ref-nested152332%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp152415%_ ((_%ref152417%_
                                                    (cdr _%ref152413%_))
                                                   (_%ctx-ref152418%_
                                                    (cdr _%ctx-ref152409%_)))
                                  (if (and (pair? _%ref152417%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref152417%_))
                                                (car _%ctx-ref152418%_)))
                                      (_%lp152415%_
                                       (cdr _%ref152417%_)
                                       (cdr _%ctx-ref152418%_))
                                      (cons '#f _%ctx-ref152418%_))))
                              _%ctx-ref152409%_))
                        (let ((__tmp161213
                               (##structure-ref
                                _%ctx152407%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp161213)))))
                 (_%context-ref-origin152331%_
                  (lambda (_%ctx152399%_)
                    (let _%lp152401%_ ((_%ctx152403%_ _%ctx152399%_))
                      (let ((_%super152405%_
                             (##structure-ref
                              _%ctx152403%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super152405%_
                               'gx#module-context::t))
                            (_%lp152401%_ _%super152405%_)
                            _%ctx152403%_)))))
                 (_%context-ref-nested152332%_
                  (lambda (_%ctx152390%_)
                    (let _%lp152392%_ ((_%ctx152394%_ _%ctx152390%_)
                                       (_%r152395%_ '()))
                      (let ((_%super152397%_
                             (##structure-ref
                              _%ctx152394%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super152397%_
                               'gx#module-context::t))
                            (_%lp152392%_
                             _%super152397%_
                             (cons (car (##structure-ref
                                         _%ctx152394%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r152395%_))
                            (cons (let ((__tmp161214
                                         (##structure-ref
                                          _%ctx152394%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp161214))
                                  _%r152395%_)))))))
          (let* ((_%g152334152347%_
                  (lambda (_%g152335152344%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g152335152344%_))))
                 (_%g152333152387%_
                  (lambda (_%g152335152350%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g152335152350%_))
                        (let ((_%e152337152352%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g152335152350%_))))
                          (let ((_%hd152338152355%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152337152352%_)))
                                (_%tl152339152357%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152337152352%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl152339152357%_))
                                (let ((_%e152340152360%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl152339152357%_))))
                                  (let ((_%hd152341152363%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e152340152360%_)))
                                        (_%tl152342152365%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e152340152360%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl152342152365%_))
                                        ((lambda (_%L152368%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L152368%_))
                                               (let ((_%$e152381%_
                                                      (let ((__tmp161215
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp161215 _%L152368%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e152381%_
                                                     _%$e152381%_
                                                     (let ((_%marks152385%_
                                                            (##direct-structure-ref
                                                             _%L152368%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks152385%_)
                                                           (_%generate-simple152326%_
                                                            _%L152368%_)
                                                           (_%generate-serialized152327%_
                                                            _%L152368%_
                                                            _%marks152385%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L152368%_))))
                                         _%hd152341152363%_)
                                        (_%g152334152347%_
                                         _%g152335152350%_))))
                                (_%g152334152347%_ _%g152335152350%_))))
                        (_%g152334152347%_ _%g152335152350%_)))))
            (_%g152333152387%_ _%stx152322%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self152253%_ _%stx152254%_)
        (let* ((_%g152256152273%_
                (lambda (_%g152257152270%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152257152270%_))))
               (_%g152255152318%_
                (lambda (_%g152257152276%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152257152276%_))
                      (let ((_%e152260152278%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152257152276%_))))
                        (let ((_%hd152261152281%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152260152278%_)))
                              (_%tl152262152283%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152260152278%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152262152283%_))
                              (let ((_%e152263152286%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152262152283%_))))
                                (let ((_%hd152264152289%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152263152286%_)))
                                      (_%tl152265152291%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152263152286%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152265152291%_))
                                      (let ((_%e152266152294%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152265152291%_))))
                                        (let ((_%hd152267152297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152266152294%_)))
                                              (_%tl152268152299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152266152294%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152268152299%_))
                                              ((lambda (_%L152302%_
                                                        _%L152303%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L152303%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self152253%_ _%L152302%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd152267152297%_
                                               _%hd152264152289%_)
                                              (_%g152256152273%_
                                               _%g152257152276%_))))
                                      (_%g152256152273%_ _%g152257152276%_))))
                              (_%g152256152273%_ _%g152257152276%_))))
                      (_%g152256152273%_ _%g152257152276%_)))))
          (_%g152255152318%_ _%stx152254%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self152202%_ _%stx152203%_)
        (let* ((_%g152205152215%_
                (lambda (_%g152206152212%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152206152212%_))))
               (_%g152204152250%_
                (lambda (_%g152206152218%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152206152218%_))
                      (let ((_%e152208152220%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152206152218%_))))
                        (let ((_%hd152209152223%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152208152220%_)))
                              (_%tl152210152225%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152208152220%_))))
                          ((lambda (_%L152228%_)
                             (let* ((_%c-body152242%_
                                     (map (lambda (_%g152237152239%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self152202%_
                                               _%g152237152239%_)))
                                          _%L152228%_))
                                    (_%c-body152247%_
                                     (let ((__tmp161216
                                            (lambda (_%$obj152244%_)
                                              (not (eq? _%$obj152244%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp161216
                                        _%c-body152242%_))))
                               (cons '%#begin _%c-body152247%_)))
                           _%tl152210152225%_)))
                      (_%g152205152215%_ _%g152206152218%_)))))
          (_%g152204152250%_ _%stx152203%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self152107%_ _%stx152108%_)
        (let* ((_%g152110152120%_
                (lambda (_%g152111152117%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152111152117%_))))
               (_%g152109152199%_
                (lambda (_%g152111152123%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152111152123%_))
                      (let ((_%e152113152125%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152111152123%_))))
                        (let ((_%hd152114152128%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152113152125%_)))
                              (_%tl152115152130%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152113152125%_))))
                          ((lambda (_%L152133%_)
                             (let* ((_%phi152143%_
                                     (let ((__tmp161217
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp161217 '1)))
                                    (_%block152145%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self152107%_ 'state))
                                      _%phi152143%_))
                                    (_%compiled152148%_
                                     (let ((__tmp161218
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self152107%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L152133%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp161218
                                        gx#current-expander-phi
                                        _%phi152143%_)))
                                    (_%g152151152161%_
                                     (lambda (_%g152152152158%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g152152152158%_))))
                                    (_%g152150152196%_
                                     (lambda (_%g152152152164%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g152152152164%_))
                                           (let ((_%e152154152166%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g152152152164%_))))
                                             (let ((_%hd152155152169%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e152154152166%_)))
                                                   (_%tl152156152171%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e152154152166%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd152155152169%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd152155152169%_))
                                                       ((lambda (_%L152174%_)
                                                          (let ((_%c-body152191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj152188%_)
                                   (not (eq? _%$obj152188%_ '#!void)))
                                 _%L152174%_)))
                    (if _%block152145%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block152145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body152191%_))
                        (if (null? _%c-body152191%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body152191%_)))))
                _%tl152156152171%_)
               (_%g152151152161%_ _%g152152152164%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g152151152161%_
                                                    _%g152152152164%_))))
                                           (_%g152151152161%_
                                            _%g152152152164%_)))))
                               (_%g152150152196%_ _%compiled152148%_)))
                           _%tl152115152130%_)))
                      (_%g152110152120%_ _%g152111152123%_)))))
          (_%g152109152199%_ _%stx152108%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self152038%_ _%stx152039%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self152038%_ 'state)))
        (let* ((_%g152041152055%_
                (lambda (_%g152042152052%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152042152052%_))))
               (_%g152040152104%_
                (lambda (_%g152042152058%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152042152058%_))
                      (let ((_%e152045152060%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152042152058%_))))
                        (let ((_%hd152046152063%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152045152060%_)))
                              (_%tl152047152065%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152045152060%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152047152065%_))
                              (let ((_%e152048152068%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152047152065%_))))
                                (let ((_%hd152049152071%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152048152068%_)))
                                      (_%tl152050152073%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152048152068%_))))
                                  ((lambda (_%L152076%_ _%L152077%_)
                                     (let ((_%key152090%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L152077%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key152090%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx152039%_
                                              _%L152077%_
                                              _%key152090%_)))
                                       (let* ((_%ctx152092%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L152077%_)))
                                              (_%code152095%_
                                               (let ((__tmp161219
                                                      (lambda ()
                                                        (let ((__tmp161220
                                                               (##structure-ref
                                                                _%ctx152092%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self152038%_
                                                           __tmp161220)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp161219
                                                  gx#current-expander-context
                                                  _%ctx152092%_)))
                                              (_%rt152097%_
                                               (let ((__tmp161221
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp161221
                                                  _%ctx152092%_)))
                                              (_%loader152099%_
                                               (if _%rt152097%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt152097%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid152101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L152077%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self152038%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid152101%_
                                                     (cons _%code152095%_
                                                           _%loader152099%_))))))
                                   _%tl152050152073%_
                                   _%hd152049152071%_)))
                              (_%g152041152055%_ _%g152042152058%_))))
                      (_%g152041152055%_ _%g152042152058%_)))))
          (_%g152040152104%_ _%stx152039%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx152025%_ _%context-chain152026%_)
        (let _%lp152028%_ ((_%ctx152030%_ _%ctx152025%_) (_%path152031%_ '()))
          (let ((_%super152033%_
                 (##structure-ref _%ctx152030%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super152033%_ _%context-chain152026%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx152030%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path152031%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super152033%_
                       'gx#module-context::t))
                    (_%lp152028%_
                     _%super152033%_
                     (cons (car (##structure-ref
                                 _%ctx152030%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path152031%_))
                    (cons (let ((__tmp161222
                                 (##structure-ref
                                  _%ctx152030%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp161222))
                          _%path152031%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp152018%_ ((_%ctx152020%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r152021%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx152020%_ 'gx#module-context::t))
              (_%lp152018%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx152020%_ '3 '#f '#f))
               (cons _%ctx152020%_ _%r152021%_))
              _%r152021%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self151781%_ _%stx151782%_)
        (letrec* ((_%context-chain151784%_ (gxc#current-context-chain))
                  (_%make-import-spec151785%_
                   (lambda (_%in151954%_)
                     (let* ((_%in151955151967%_ _%in151954%_)
                            (_%E151957151971%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in151955151967%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K151958151981%_
                             (lambda (_%phi151974%_
                                      _%name151975%_
                                      _%src-name151976%_
                                      _%src-phi151977%_
                                      _%src-key151978%_
                                      _%src-ctx151979%_)
                               (cons _%phi151974%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name151975%_)
                                           (cons _%src-phi151977%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name151976%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in151955151967%_
                              'gx#module-import::t))
                           (let ((_%e151959151984%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in151955151967%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e151959151984%_
                                    'gx#module-export::t))
                                 (let* ((_%e151962151987%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e151959151984%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx151990%_ _%e151962151987%_)
                                        (_%e151963151992%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e151959151984%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key151995%_ _%e151963151992%_)
                                        (_%e151964151997%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e151959151984%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi152000%_ _%e151964151997%_)
                                        (_%e151965152002%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e151959151984%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name152005%_ _%e151965152002%_)
                                        (_%e151960152007%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in151955151967%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name152010%_ _%e151960152007%_)
                                        (_%e151961152012%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in151955151967%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi152015%_ _%e151961152012%_))
                                   (_%K151958151981%_
                                    _%phi152015%_
                                    _%name152010%_
                                    _%src-name152005%_
                                    _%src-phi152000%_
                                    _%src-key151995%_
                                    _%src-ctx151990%_))
                                 (_%E151957151971%_)))
                           (_%E151957151971%_)))))
                  (_%make-import-path151786%_
                   (lambda (_%ctx151952%_)
                     (gxc#generate-meta-import-path
                      _%ctx151952%_
                      _%context-chain151784%_)))
                  (_%make-import-spec-in151787%_
                   (lambda (_%ctx151949%_ _%in151950%_)
                     (cons 'spec:
                           (cons (_%make-import-path151786%_ _%ctx151949%_)
                                 (reverse _%in151950%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self151781%_ 'state)))
          (let* ((_%g151789151799%_
                  (lambda (_%g151790151796%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151790151796%_))))
                 (_%g151788151946%_
                  (lambda (_%g151790151802%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151790151802%_))
                        (let ((_%e151792151804%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151790151802%_))))
                          (let ((_%hd151793151807%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151792151804%_)))
                                (_%tl151794151809%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151792151804%_))))
                            ((lambda (_%L151812%_)
                               (let _%lp151823%_ ((_%rest151825%_ _%L151812%_)
                                                  (_%current-src151826%_ '#f)
                                                  (_%current-in151827%_ '())
                                                  (_%r151828%_ '()))
                                 (let* ((_%rest151829151837%_ _%rest151825%_)
                                        (_%else151831151847%_
                                         (lambda ()
                                           (let ((_%r151845%_
                                                  (if _%current-src151826%_
                                                      (cons (_%make-import-spec-in151787%_
                                                             _%current-src151826%_
                                                             _%current-in151827%_)
                                                            _%r151828%_)
                                                      _%r151828%_)))
                                             (cons '%#import
                                                   (reverse _%r151845%_)))))
                                        (_%K151833151934%_
                                         (lambda (_%rest151850%_ _%in151851%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in151851%_
                                                  'gx#module-import::t))
                                               (let* ((_%in151853151860%_
                                                       _%in151851%_)
                                                      (_%E151855151864%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in151853151860%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K151856151872%_
               (lambda (_%src-ctx151867%_)
                 (if (eq? _%current-src151826%_ _%src-ctx151867%_)
                     (_%lp151823%_
                      _%rest151850%_
                      _%current-src151826%_
                      (cons (_%make-import-spec151785%_ _%in151851%_)
                            _%current-in151827%_)
                      _%r151828%_)
                     (if _%current-src151826%_
                         (_%lp151823%_
                          _%rest151850%_
                          _%src-ctx151867%_
                          (cons (_%make-import-spec151785%_ _%in151851%_) '())
                          (cons (_%make-import-spec-in151787%_
                                 _%current-src151826%_
                                 _%current-in151827%_)
                                _%r151828%_))
                         (_%lp151823%_
                          _%rest151850%_
                          _%src-ctx151867%_
                          (cons (_%make-import-spec151785%_ _%in151851%_) '())
                          _%r151828%_)))))
              (_%e151857151875%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in151853151860%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e151857151875%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e151858151878%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e151857151875%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx151881%_ _%e151858151878%_))
               (_%K151856151872%_ _%src-ctx151881%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E151855151864%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in151851%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi151884%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in151851%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src151886%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in151851%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in151926%_
                                                           (let* ((_%g151887151896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path151786%_ _%src151886%_))
                          (_%E151890151900%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g151887151896%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K151892151916%_
                            (lambda (_%path151914%_) _%path151914%_))
                           (_%K151891151906%_
                            (lambda (_%path151904%_)
                              (cons 'in: _%path151904%_))))
                       (if (pair? _%g151887151896%_)
                           (let ((_%tl151894151921%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g151887151896%_)))
                                 (_%hd151893151919%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g151887151896%_))))
                             (if (null? _%tl151894151921%_)
                                 (let ((_%path151924%_ _%hd151893151919%_))
                                   (_%K151892151916%_ _%path151924%_))
                                 (let ((_%path151909%_ _%g151887151896%_))
                                   (_%K151891151906%_ _%path151909%_))))
                           (let ((_%path151909%_ _%g151887151896%_))
                             (_%K151891151906%_ _%path151909%_))))))
                  (_%r151928%_
                   (if _%current-src151826%_
                       (cons (_%make-import-spec-in151787%_
                              _%current-src151826%_
                              _%current-in151827%_)
                             _%r151828%_)
                       _%r151828%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp151823%_
                                                      _%rest151850%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi151884%_)
                                                                _%src-in151926%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi151884%_
                                    (cons _%src-in151926%_ '()))))
                    _%r151928%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in151851%_
                                                          'gx#module-context::t))
                                                       (let ((_%r151932%_
                                                              (if _%current-src151826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in151787%_
                                 _%current-src151826%_
                                 _%current-in151827%_)
                                _%r151828%_)
                          _%r151828%_)))
                 (_%lp151823%_
                  _%rest151850%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path151786%_ _%in151851%_))
                        _%r151932%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest151829151837%_)
                                       (let ((_%hd151834151937%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest151829151837%_)))
                                             (_%tl151835151939%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest151829151837%_))))
                                         (let* ((_%in151942%_
                                                 _%hd151834151937%_)
                                                (_%rest151944%_
                                                 _%tl151835151939%_))
                                           (_%K151833151934%_
                                            _%rest151944%_
                                            _%in151942%_)))
                                       (_%else151831151847%_)))))
                             _%tl151794151809%_)))
                        (_%g151789151799%_ _%g151790151802%_)))))
            (_%g151788151946%_ _%stx151782%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self151591%_ _%stx151592%_)
        (letrec* ((_%context-chain151594%_ (gxc#current-context-chain))
                  (_%make-import-path151595%_
                   (lambda (_%ctx151779%_)
                     (gxc#generate-meta-import-path
                      _%ctx151779%_
                      _%context-chain151594%_))))
          (let* ((_%g151597151607%_
                  (lambda (_%g151598151604%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151598151604%_))))
                 (_%g151596151776%_
                  (lambda (_%g151598151610%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151598151610%_))
                        (let ((_%e151600151612%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151598151610%_))))
                          (let ((_%hd151601151615%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151600151612%_)))
                                (_%tl151602151617%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151600151612%_))))
                            ((lambda (_%L151620%_)
                               (let _%lp151631%_ ((_%rest151633%_ _%L151620%_)
                                                  (_%r151634%_ '()))
                                 (let* ((_%rest151635151643%_ _%rest151633%_)
                                        (_%else151637151651%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r151634%_))))
                                        (_%K151639151764%_
                                         (lambda (_%rest151654%_ _%out151655%_)
                                           (let* ((_%out151656151669%_
                                                   _%out151655%_)
                                                  (_%E151659151673%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out151656151669%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K151663151743%_
                                                    (lambda (_%name151739%_
                                                             _%phi151740%_
                                                             _%key151741%_)
                                                      (_%lp151631%_
                                                       _%rest151654%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi151740%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key151741%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name151739%_)
                                             '()))))
                     _%r151634%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K151660151723%_
                                                    (lambda (_%phi151677%_
                                                             _%src151678%_)
                                                      (let* ((_%out151718%_
                                                              (if _%src151678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g151679151688%_
                                              (_%make-import-path151595%_
                                               _%src151678%_))
                                             (_%E151682151692%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g151679151688%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K151684151708%_
                                               (lambda (_%path151706%_)
                                                 _%path151706%_))
                                              (_%K151683151698%_
                                               (lambda (_%path151696%_)
                                                 (cons 'in: _%path151696%_))))
                                          (if (pair? _%g151679151688%_)
                                              (let ((_%tl151686151713%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g151679151688%_)))
                                                    (_%hd151685151711%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g151679151688%_))))
                                                (if (null? _%tl151686151713%_)
                                                    (let ((_%path151716%_
                                                           _%hd151685151711%_))
                                                      (_%K151684151708%_
                                                       _%path151716%_))
                                                    (let ((_%path151701%_
                                                           _%g151679151688%_))
                                                      (_%K151683151698%_
                                                       _%path151701%_))))
                                              (let ((_%path151701%_
                                                     _%g151679151688%_))
                                                (_%K151683151698%_
                                                 _%path151701%_)))))
                                      '()))
                          '#t))
                     (_%out151720%_
                      (if (fxzero? _%phi151677%_)
                          _%out151718%_
                          (cons 'phi:
                                (cons _%phi151677%_
                                      (cons _%out151718%_ '()))))))
                (_%lp151631%_
                 _%rest151654%_
                 (cons _%out151720%_ _%r151634%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match151658151736%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out151656151669%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e151661151726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out151656151669%_
                               '1
                               '#f
                               '#f)))
                           (_%e151662151731%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out151656151669%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src151729%_ _%e151661151726%_)
                            (_%phi151734%_ _%e151662151731%_))
                        (_%K151660151723%_ _%phi151734%_ _%src151729%_)))
                    (_%E151659151673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out151656151669%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e151664151746%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out151656151669%_
                        '1
                        '#f
                        '#f)))
                    (_%e151665151749%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out151656151669%_
                        '2
                        '#f
                        '#f)))
                    (_%e151666151754%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out151656151669%_
                        '3
                        '#f
                        '#f)))
                    (_%e151667151759%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out151656151669%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key151752%_ _%e151665151749%_)
                     (_%phi151757%_ _%e151666151754%_)
                     (_%name151762%_ _%e151667151759%_))
                 (_%K151663151743%_
                  _%name151762%_
                  _%phi151757%_
                  _%key151752%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match151658151736%_))))))))
                                   (if (pair? _%rest151635151643%_)
                                       (let ((_%hd151640151767%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest151635151643%_)))
                                             (_%tl151641151769%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest151635151643%_))))
                                         (let* ((_%out151772%_
                                                 _%hd151640151767%_)
                                                (_%rest151774%_
                                                 _%tl151641151769%_))
                                           (_%K151639151764%_
                                            _%rest151774%_
                                            _%out151772%_)))
                                       (_%else151637151651%_)))))
                             _%tl151602151617%_)))
                        (_%g151597151607%_ _%g151598151610%_)))))
            (_%g151596151776%_ _%stx151592%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self151552%_ _%stx151553%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self151552%_ 'state)))
        (let* ((_%g151555151565%_
                (lambda (_%g151556151562%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151556151562%_))))
               (_%g151554151588%_
                (lambda (_%g151556151568%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151556151568%_))
                      (let ((_%e151558151570%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151556151568%_))))
                        (let ((_%hd151559151573%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151558151570%_)))
                              (_%tl151560151575%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151558151570%_))))
                          ((lambda (_%L151578%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L151578%_)))
                           _%tl151560151575%_)))
                      (_%g151555151565%_ _%g151556151568%_)))))
          (_%g151554151588%_ _%stx151553%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self151423%_ _%stx151424%_)
        (letrec ((_%generate1151426%_
                  (lambda (_%id151547%_ _%eid151548%_)
                    (let ((_%eid151550%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid151548%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid151550%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx151424%_
                             _%eid151550%_)))
                      (cons (gxc#generate-runtime-identifier _%id151547%_)
                            (cons _%eid151550%_ '()))))))
          (let* ((_%g151428151456%_
                  (lambda (_%g151429151453%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151429151453%_))))
                 (_%g151427151544%_
                  (lambda (_%g151429151459%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151429151459%_))
                        (let ((_%e151432151461%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151429151459%_))))
                          (let ((_%hd151433151464%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151432151461%_)))
                                (_%tl151434151466%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151432151461%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl151434151466%_))
                                (let ((_g161223_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl151434151466%_
                                          '0))))
                                  (begin
                                    (let ((_g161224_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g161223_)
                                                 (##values-length _g161223_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g161224_ 2)))
                                          (error "Context expects 2 values"
                                                 _g161224_)))
                                    (let ((_%target151435151469%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161223_ 0)))
                                          (_%tl151437151471%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161223_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl151437151471%_))
                                          (letrec ((_%loop151438151474%_
                                                    (lambda (_%hd151436151477%_
                                                             _%eid151442151479%_
                                                             _%id151443151481%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd151436151477%_))
                                                          (let ((_%e151439151484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd151436151477%_))))
                    (let ((_%lp-hd151440151487%_
                           (let ()
                             (declare (not safe))
                             (##car _%e151439151484%_)))
                          (_%lp-tl151441151489%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e151439151484%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd151440151487%_))
                          (let ((_%e151446151492%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd151440151487%_))))
                            (let ((_%hd151447151495%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e151446151492%_)))
                                  (_%tl151448151497%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e151446151492%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl151448151497%_))
                                  (let ((_%e151449151500%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl151448151497%_))))
                                    (let ((_%hd151450151503%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e151449151500%_)))
                                          (_%tl151451151505%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e151449151500%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl151451151505%_))
                                          (_%loop151438151474%_
                                           _%lp-tl151441151489%_
                                           (cons _%hd151450151503%_
                                                 _%eid151442151479%_)
                                           (cons _%hd151447151495%_
                                                 _%id151443151481%_))
                                          (_%g151428151456%_
                                           _%g151429151459%_))))
                                  (_%g151428151456%_ _%g151429151459%_))))
                          (_%g151428151456%_ _%g151429151459%_))))
                  (let ((_%eid151444151508%_ (reverse _%eid151442151479%_))
                        (_%id151445151510%_ (reverse _%id151443151481%_)))
                    ((lambda (_%L151513%_ _%L151514%_)
                       (cons '%#extern
                             (map _%generate1151426%_
                                  (let ((__tmp161225
                                         (lambda (_%g151529151532%_
                                                  _%g151530151534%_)
                                           (cons _%g151529151532%_
                                                 _%g151530151534%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp161225 '() _%L151514%_))
                                  (let ((__tmp161226
                                         (lambda (_%g151536151539%_
                                                  _%g151537151541%_)
                                           (cons _%g151536151539%_
                                                 _%g151537151541%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp161226 '() _%L151513%_)))))
                     _%eid151444151508%_
                     _%id151445151510%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop151438151474%_
                                             _%target151435151469%_
                                             '()
                                             '()))
                                          (_%g151428151456%_
                                           _%g151429151459%_)))))
                                (_%g151428151456%_ _%g151429151459%_))))
                        (_%g151428151456%_ _%g151429151459%_)))))
            (_%g151427151544%_ _%stx151424%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self151213%_ _%stx151214%_)
        (letrec ((_%generate1151216%_
                  (lambda (_%id151418%_)
                    (let ((_%eid151420%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id151418%_)))
                          (_%ident151421%_
                           (gxc#generate-runtime-identifier _%id151418%_)))
                      (cons '%#define-runtime
                            (cons _%ident151421%_ (cons _%eid151420%_ '()))))))
                 (_%generate*151217%_
                  (lambda (_%all151386%_)
                    (let* ((_%all151387151395%_ _%all151386%_)
                           (_%else151389151403%_
                            (lambda () (cons '%#begin _%all151386%_)))
                           (_%K151391151408%_
                            (lambda (_%one151406%_) _%one151406%_)))
                      (if (pair? _%all151387151395%_)
                          (let ((_%hd151392151411%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all151387151395%_)))
                                (_%tl151393151413%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all151387151395%_))))
                            (let ((_%one151416%_ _%hd151392151411%_))
                              (if (null? _%tl151393151413%_)
                                  (_%K151391151408%_ _%one151416%_)
                                  (_%else151389151403%_))))
                          (_%else151389151403%_))))))
          (let* ((_%g151219151236%_
                  (lambda (_%g151220151233%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151220151233%_))))
                 (_%g151218151383%_
                  (lambda (_%g151220151239%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151220151239%_))
                        (let ((_%e151223151241%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151220151239%_))))
                          (let ((_%hd151224151244%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151223151241%_)))
                                (_%tl151225151246%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151223151241%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151225151246%_))
                                (let ((_%e151226151249%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151225151246%_))))
                                  (let ((_%hd151227151252%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151226151249%_)))
                                        (_%tl151228151254%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151226151249%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl151228151254%_))
                                        (let ((_%e151229151257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl151228151254%_))))
                                          (let ((_%hd151230151260%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151229151257%_)))
                                                (_%tl151231151262%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151229151257%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151231151262%_))
                                                ((lambda (_%L151265%_
                                                          _%L151266%_)
                                                   (let _%lp151282%_ ((_%rest151284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L151266%_)
                              (_%r151285%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx160961160962%_
                                                             _%rest151284%_)
                                                            (_%g151290151307%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx160961160962%_)))))
               (let ((_%__kont160963160964%_
                      (lambda (_%L151370%_)
                        (_%lp151282%_ _%L151370%_ _%r151285%_)))
                     (_%__kont160965160966%_
                      (lambda (_%L151343%_ _%L151344%_)
                        (_%lp151282%_
                         _%L151343%_
                         (cons (_%generate1151216%_ _%L151344%_)
                               _%r151285%_))))
                     (_%__kont160967160968%_
                      (lambda (_%L151319%_)
                        (_%generate*151217%_
                         (let ((__tmp161227
                                (cons (_%generate1151216%_ _%L151319%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp161227 _%r151285%_)))))
                     (_%__kont160969160970%_
                      (lambda () (_%generate*151217%_ (reverse _%r151285%_)))))
                 (let ((_%g151288151330%_
                        (lambda ()
                          (let ((_%L151319%_ _%__stx160961160962%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L151319%_))
                                (_%__kont160967160968%_ _%L151319%_)
                                (_%__kont160969160970%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx160961160962%_))
                       (let ((_%e151293151359%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx160961160962%_))))
                         (let ((_%tl151295151364%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e151293151359%_)))
                               (_%hd151294151362%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e151293151359%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd151294151362%_))
                               (let ((_%e151296151367%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd151294151362%_))))
                                 (if (equal? _%e151296151367%_ '#f)
                                     (_%__kont160963160964%_
                                      _%tl151295151364%_)
                                     (_%__kont160965160966%_
                                      _%tl151295151364%_
                                      _%hd151294151362%_)))
                               (_%__kont160965160966%_
                                _%tl151295151364%_
                                _%hd151294151362%_))))
                       (let () (declare (not safe)) (_%g151288151330%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd151230151260%_
                                                 _%hd151227151252%_)
                                                (_%g151219151236%_
                                                 _%g151220151239%_))))
                                        (_%g151219151236%_
                                         _%g151220151239%_))))
                                (_%g151219151236%_ _%g151220151239%_))))
                        (_%g151219151236%_ _%g151220151239%_)))))
            (_%g151218151383%_ _%stx151214%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self151110%_ _%stx151111%_)
        (let* ((_%g151113151130%_
                (lambda (_%g151114151127%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151114151127%_))))
               (_%g151112151210%_
                (lambda (_%g151114151133%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151114151133%_))
                      (let ((_%e151117151135%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151114151133%_))))
                        (let ((_%hd151118151138%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151117151135%_)))
                              (_%tl151119151140%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151117151135%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151119151140%_))
                              (let ((_%e151120151143%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151119151140%_))))
                                (let ((_%hd151121151146%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151120151143%_)))
                                      (_%tl151122151148%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151120151143%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151122151148%_))
                                      (let ((_%e151123151151%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151122151148%_))))
                                        (let ((_%hd151124151154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151123151151%_)))
                                              (_%tl151125151156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151123151151%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151125151156%_))
                                              ((lambda (_%L151159%_
                                                        _%L151160%_)
                                                 (let* ((_%eid151175%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L151160%_)))
                                                        (_%phi151177%_
                                                         (let ((__tmp161228
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp161228 '1)))
                (_%block151179%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self151110%_ 'state))
                  _%phi151177%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g151182151189%_
                                                           (lambda (_%g151183151186%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g151183151186%_))))
                  (_%g151181151207%_
                   (lambda (_%g151183151192%_)
                     ((lambda (_%L151194%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self151110%_ 'state))
                         _%phi151177%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L151194%_ (cons _%L151159%_ '())))))
                      _%g151183151192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g151181151207%_
                                                      _%eid151175%_))
                                                   (if _%block151179%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block151179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L151160%_)
                                             (cons _%eid151175%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L151160%_)
                           (cons _%eid151175%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd151124151154%_
                                               _%hd151121151146%_)
                                              (_%g151113151130%_
                                               _%g151114151133%_))))
                                      (_%g151113151130%_ _%g151114151133%_))))
                              (_%g151113151130%_ _%g151114151133%_))))
                      (_%g151113151130%_ _%g151114151133%_)))))
          (_%g151112151210%_ _%stx151111%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self151042%_ _%stx151043%_)
        (let* ((_%g151045151062%_
                (lambda (_%g151046151059%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151046151059%_))))
               (_%g151044151107%_
                (lambda (_%g151046151065%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151046151065%_))
                      (let ((_%e151049151067%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151046151065%_))))
                        (let ((_%hd151050151070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151049151067%_)))
                              (_%tl151051151072%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151049151067%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151051151072%_))
                              (let ((_%e151052151075%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151051151072%_))))
                                (let ((_%hd151053151078%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151052151075%_)))
                                      (_%tl151054151080%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151052151075%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151054151080%_))
                                      (let ((_%e151055151083%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151054151080%_))))
                                        (let ((_%hd151056151086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151055151083%_)))
                                              (_%tl151057151088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151055151083%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151057151088%_))
                                              ((lambda (_%L151091%_
                                                        _%L151092%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L151092%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L151091%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd151056151086%_
                                               _%hd151053151078%_)
                                              (_%g151045151062%_
                                               _%g151046151065%_))))
                                      (_%g151045151062%_ _%g151046151065%_))))
                              (_%g151045151062%_ _%g151046151065%_))))
                      (_%g151045151062%_ _%g151046151065%_)))))
          (_%g151044151107%_ _%stx151043%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self151039%_ _%stx151040%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self151039%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx151040%_)
        (gxc#generate-meta-define-values% _%self151039%_ _%stx151040%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self151036%_ _%stx151037%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self151036%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx151037%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp161230 (list)) (__tmp161229 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp161230
         '(src n open blocks)
         __tmp161229
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args151033%_
        (apply make-instance gxc#meta-state::t _%$args151033%_)))
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
      (lambda (_%self151019%_ _%ctx151020%_)
        (let ((_%self151023%_ _%self151019%_))
          (if (let ((__tmp161231
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self151023%_))))
                (declare (not safe))
                (##fx< '4 __tmp161231))
              (begin
                (let ((__tmp161232
                       (let ((__tmp161233
                              (##structure-ref
                               _%ctx151020%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp161233))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self151023%_
                   __tmp161232
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self151023%_ '1 '2 '#f '#f))
                (let ((__tmp161234
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self151023%_
                   __tmp161234
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self151023%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp161235
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self151023%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self151023%_
                       '4
                       __tmp161235))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp161237 (list)) (__tmp161236 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp161237
         '(ctx phi n code)
         __tmp161236
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args150894%_
        (apply make-instance gxc#meta-state-block::t _%$args150894%_)))
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
      (lambda (_%state150853%_ _%phi150854%_)
        (let* ((_%state150855150863%_ _%state150853%_)
               (_%E150857150867%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state150855150863%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K150858150876%_
                (lambda (_%open150870%_ _%n150871%_ _%src150872%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open150870%_ _%phi150854%_))
                      '#f
                      (let ((_%block-ref150874%_
                             (let ((__tmp161238 (number->string _%n150871%_)))
                               (declare (not safe))
                               (##string-append
                                _%src150872%_
                                '"~"
                                __tmp161238))))
                        (##structure-set!
                         _%state150853%_
                         (let () (declare (not safe)) (##fx+ _%n150871%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp161239
                               (let ((__tmp161240
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp161240
                                  _%phi150854%_
                                  _%n150871%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open150870%_ _%phi150854%_ __tmp161239))
                        _%block-ref150874%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state150855150863%_
                 'gxc#meta-state::t))
              (let* ((_%e150859150879%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state150855150863%_
                         '1
                         '#f
                         '#f)))
                     (_%src150882%_ _%e150859150879%_)
                     (_%e150860150884%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state150855150863%_
                         '2
                         '#f
                         '#f)))
                     (_%n150887%_ _%e150860150884%_)
                     (_%e150861150889%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state150855150863%_
                         '3
                         '#f
                         '#f)))
                     (_%open150892%_ _%e150861150889%_))
                (_%K150858150876%_ _%open150892%_ _%n150887%_ _%src150882%_))
              (_%E150857150867%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state150847%_ _%phi150848%_ _%stx150849%_)
        (let ((_%block150851%_
               (let ((__tmp161241
                      (##structure-ref
                       _%state150847%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp161241 _%phi150848%_))))
          (##structure-set!
           _%block150851%_
           (cons _%stx150849%_
                 (##structure-ref
                  _%block150851%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state150841%_)
        (##structure-set!
         _%state150841%_
         (let ((__tmp161244
                (lambda (_%_150843%_ _%block150844%_ _%r150845%_)
                  (cons _%block150844%_ _%r150845%_)))
               (__tmp161243
                (##structure-ref _%state150841%_ '4 gxc#meta-state::t '#f))
               (__tmp161242
                (##structure-ref _%state150841%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp161244 __tmp161243 __tmp161242))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state150841%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state150793%_)
        (gxc#meta-state-end-phi! _%state150793%_)
        (let ((__tmp161246
               (lambda (_%block150795%_ _%r150796%_)
                 (let* ((_%block150797150806%_ _%block150795%_)
                        (_%E150799150810%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block150797150806%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K150800150818%_
                         (lambda (_%code150813%_
                                  _%n150814%_
                                  _%phi150815%_
                                  _%ctx150816%_)
                           (if (null? _%code150813%_)
                               _%r150796%_
                               (cons (cons _%ctx150816%_
                                           (cons _%phi150815%_
                                                 (cons _%n150814%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code150813%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r150796%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block150797150806%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e150801150821%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block150797150806%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx150824%_ _%e150801150821%_)
                              (_%e150802150826%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block150797150806%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi150829%_ _%e150802150826%_)
                              (_%e150803150831%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block150797150806%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n150834%_ _%e150803150831%_)
                              (_%e150804150836%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block150797150806%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code150839%_ _%e150804150836%_))
                         (_%K150800150818%_
                          _%code150839%_
                          _%n150834%_
                          _%phi150829%_
                          _%ctx150824%_))
                       (_%E150799150810%_)))))
              (__tmp161245
               (##structure-ref _%state150793%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp161246 '() __tmp161245))))
    (define gxc#collect-expression-refs
      (lambda (_%stx150789%_)
        (let ((_%ht150791%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht150791%_ _%stx150789%_)
          _%ht150791%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self150732%_ _%stx150733%_)
        (let* ((_%g150735150748%_
                (lambda (_%g150736150745%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150736150745%_))))
               (_%g150734150786%_
                (lambda (_%g150736150751%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150736150751%_))
                      (let ((_%e150738150753%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150736150751%_))))
                        (let ((_%hd150739150756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150738150753%_)))
                              (_%tl150740150758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150738150753%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150740150758%_))
                              (let ((_%e150741150761%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150740150758%_))))
                                (let ((_%hd150742150764%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150741150761%_)))
                                      (_%tl150743150766%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150741150761%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150743150766%_))
                                      ((lambda (_%L150769%_)
                                         (let* ((_%bind150781%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L150769%_)))
                                                (_%eid150783%_
                                                 (if _%bind150781%_
                                                     (##structure-ref
                                                      _%bind150781%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L150769%_))))
                                                (__tmp161247
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self150732%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp161247
                                            _%eid150783%_
                                            _%eid150783%_)))
                                       _%hd150742150764%_)
                                      (_%g150735150748%_ _%g150736150751%_))))
                              (_%g150735150748%_ _%g150736150751%_))))
                      (_%g150735150748%_ _%g150736150751%_)))))
          (_%g150734150786%_ _%stx150733%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self150659%_ _%stx150660%_)
        (let* ((_%g150662150679%_
                (lambda (_%g150663150676%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150663150676%_))))
               (_%g150661150729%_
                (lambda (_%g150663150682%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150663150682%_))
                      (let ((_%e150666150684%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150663150682%_))))
                        (let ((_%hd150667150687%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150666150684%_)))
                              (_%tl150668150689%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150666150684%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150668150689%_))
                              (let ((_%e150669150692%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150668150689%_))))
                                (let ((_%hd150670150695%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150669150692%_)))
                                      (_%tl150671150697%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150669150692%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150671150697%_))
                                      (let ((_%e150672150700%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150671150697%_))))
                                        (let ((_%hd150673150703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150672150700%_)))
                                              (_%tl150674150705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150672150700%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150674150705%_))
                                              ((lambda (_%L150708%_
                                                        _%L150709%_)
                                                 (let* ((_%bind150724%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L150709%_)))
                                                        (_%eid150726%_
                                                         (if _%bind150724%_
                                                             (##structure-ref
                                                              _%bind150724%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L150709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp161248
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self150659%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp161248
                                                      _%eid150726%_
                                                      _%eid150726%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self150659%_
                                                      _%L150708%_))))
                                               _%hd150673150703%_
                                               _%hd150670150695%_)
                                              (_%g150662150679%_
                                               _%g150663150682%_))))
                                      (_%g150662150679%_ _%g150663150682%_))))
                              (_%g150662150679%_ _%g150663150682%_))))
                      (_%g150662150679%_ _%g150663150682%_)))))
          (_%g150661150729%_ _%stx150660%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self150616%_ _%stx150617%_)
        (let* ((_%g150619150629%_
                (lambda (_%g150620150626%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150620150626%_))))
               (_%g150618150656%_
                (lambda (_%g150620150632%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150620150632%_))
                      (let ((_%e150622150634%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150620150632%_))))
                        (let ((_%hd150623150637%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150622150634%_)))
                              (_%tl150624150639%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150622150634%_))))
                          ((lambda (_%L150642%_)
                             (let ((__tmp161249
                                    (lambda (_%g150651150653%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self150616%_
                                         _%g150651150653%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp161249 _%L150642%_)))
                           _%tl150624150639%_)))
                      (_%g150619150629%_ _%g150620150632%_)))))
          (_%g150618150656%_ _%stx150617%_))))
    (define gxc#count-values-single%
      (lambda (_%self150613%_ _%stx150614%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self150479%_ _%stx150480%_)
        (let* ((_%__stx160991160992%_ _%stx150480%_)
               (_%g150483150512%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx160991160992%_)))))
          (let ((_%__kont160993160994%_
                 (lambda (_%L150580%_ _%L150581%_)
                   (length (let ((__tmp161250
                                  (lambda (_%g150602150605%_ _%g150603150607%_)
                                    (cons _%g150602150605%_
                                          _%g150603150607%_))))
                             (declare (not safe))
                             (__foldr1 __tmp161250 '() _%L150580%_)))))
                (_%__kont160997160998%_ (lambda () '#f)))
            (let ((_%__match161036161037%_
                   (lambda (_%e150487150524%_
                            _%hd150488150527%_
                            _%tl150489150529%_
                            _%e150490150532%_
                            _%hd150491150535%_
                            _%tl150492150537%_
                            _%e150493150540%_
                            _%hd150494150543%_
                            _%tl150495150545%_
                            _%e150496150548%_
                            _%hd150497150551%_
                            _%tl150498150553%_
                            _%__splice160995160996%_
                            _%target150499150556%_
                            _%tl150501150558%_)
                     (letrec ((_%loop150502150561%_
                               (lambda (_%hd150500150564%_
                                        _%rand150506150566%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd150500150564%_))
                                     (let ((_%e150503150569%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd150500150564%_))))
                                       (let ((_%lp-tl150505150574%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e150503150569%_)))
                                             (_%lp-hd150504150572%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e150503150569%_))))
                                         (_%loop150502150561%_
                                          _%lp-tl150505150574%_
                                          (cons _%lp-hd150504150572%_
                                                _%rand150506150566%_))))
                                     (let ((_%rand150507150577%_
                                            (reverse _%rand150506150566%_)))
                                       (let ((_%L150580%_ _%rand150507150577%_)
                                             (_%L150581%_ _%hd150497150551%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L150581%_
                                                'values))
                                             (_%__kont160993160994%_
                                              _%L150580%_
                                              _%L150581%_)
                                             (_%__kont160997160998%_))))))))
                       (_%loop150502150561%_ _%target150499150556%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx160991160992%_))
                  (let ((_%e150487150524%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx160991160992%_))))
                    (let ((_%tl150489150529%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150487150524%_)))
                          (_%hd150488150527%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150487150524%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl150489150529%_))
                          (let ((_%e150490150532%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl150489150529%_))))
                            (let ((_%tl150492150537%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150490150532%_)))
                                  (_%hd150491150535%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150490150532%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd150491150535%_))
                                  (let ((_%e150493150540%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd150491150535%_))))
                                    (let ((_%tl150495150545%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150493150540%_)))
                                          (_%hd150494150543%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150493150540%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd150494150543%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd150494150543%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150495150545%_))
                                                  (let ((_%e150496150548%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150495150545%_))))
                                                    (let ((_%tl150498150553%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150496150548%_)))
                                                          (_%hd150497150551%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150496150548%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl150498150553%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl150492150537%_))
                      (let ((_%__splice160995160996%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl150492150537%_
                                '0))))
                        (let ((_%tl150501150558%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice160995160996%_ '1)))
                              (_%target150499150556%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice160995160996%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl150501150558%_))
                              (_%__match161036161037%_
                               _%e150487150524%_
                               _%hd150488150527%_
                               _%tl150489150529%_
                               _%e150490150532%_
                               _%hd150491150535%_
                               _%tl150492150537%_
                               _%e150493150540%_
                               _%hd150494150543%_
                               _%tl150495150545%_
                               _%e150496150548%_
                               _%hd150497150551%_
                               _%tl150498150553%_
                               _%__splice160995160996%_
                               _%target150499150556%_
                               _%tl150501150558%_)
                              (_%__kont160997160998%_))))
                      (_%__kont160997160998%_))
                  (_%__kont160997160998%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont160997160998%_))
                                              (_%__kont160997160998%_))
                                          (_%__kont160997160998%_))))
                                  (_%__kont160997160998%_))))
                          (_%__kont160997160998%_))))
                  (_%__kont160997160998%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self150382%_ _%stx150383%_)
        (let* ((_%g150385150406%_
                (lambda (_%g150386150403%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150386150403%_))))
               (_%g150384150476%_
                (lambda (_%g150386150409%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150386150409%_))
                      (let ((_%e150390150411%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150386150409%_))))
                        (let ((_%hd150391150414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150390150411%_)))
                              (_%tl150392150416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150390150411%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150392150416%_))
                              (let ((_%e150393150419%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150392150416%_))))
                                (let ((_%hd150394150422%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150393150419%_)))
                                      (_%tl150395150424%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150393150419%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150395150424%_))
                                      (let ((_%e150396150427%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150395150424%_))))
                                        (let ((_%hd150397150430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150396150427%_)))
                                              (_%tl150398150432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150396150427%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl150398150432%_))
                                              (let ((_%e150399150435%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl150398150432%_))))
                                                (let ((_%hd150400150438%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e150399150435%_)))
                                                      (_%tl150401150440%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e150399150435%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150401150440%_))
                                                      ((lambda (_%L150443%_
                                                                _%L150444%_
                                                                _%L150445%_)
                                                         (let ((_%c1150462150464%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self150382%_ _%L150444%_))))
                   (if _%c1150462150464%_
                       (let* ((_%c1150467%_ _%c1150462150464%_)
                              (_%c2150468150470%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self150382%_
                                  _%L150443%_))))
                         (if _%c2150468150470%_
                             (let ((_%c2150473%_ _%c2150468150470%_))
                               (if (fx= _%c1150467%_ _%c2150473%_)
                                   _%c1150467%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd150400150438%_
               _%hd150397150430%_
               _%hd150394150422%_)
              (_%g150385150406%_ _%g150386150409%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g150385150406%_
                                               _%g150386150409%_))))
                                      (_%g150385150406%_ _%g150386150409%_))))
                              (_%g150385150406%_ _%g150386150409%_))))
                      (_%g150385150406%_ _%g150386150409%_)))))
          (_%g150384150476%_ _%stx150383%_))))))
