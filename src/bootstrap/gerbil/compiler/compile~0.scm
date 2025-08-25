(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1756142920)
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
        (letrec ((_%hash-e154884%_
                  (lambda (_%id154886%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id154886%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e154884%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp156271 (list gxc#::void::t))
            (__tmp156270 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp156271
         '()
         __tmp156270
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args154880%_
        (apply make-instance gxc#::collect-bindings::t _%$args154880%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp156272
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
        (__make-promise __tmp156272)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx154872%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self154875%_
                (let ((__obj156246
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj156246))
               (__tmp156273
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self154875%_ _%stx154872%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp156273
           gxc#current-compile-method
           _%self154875%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp156275 (list gxc#::void::t))
            (__tmp156274 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp156275
         '(modules)
         __tmp156274
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args154869%_
        (apply make-instance gxc#::lift-modules::t _%$args154869%_)))
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
      (let ((__tmp156276
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
        (__make-promise __tmp156276)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords154843%_ _%modules154840154844%_ _%stx154846%_)
        (let ((_%modules154849%_
               (if (eq? _%modules154840154844%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules154840154844%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self154851%_
                  (let ((__obj156248
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj156248
                       _%modules154849%_
                       '1
                       '#f
                       '#f))
                    __obj156248))
                 (__tmp156277
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154851%_ _%stx154846%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp156277
             gxc#current-compile-method
             _%self154851%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords154858%_ . _%args154859%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords154858%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154858%_
                  'modules:
                  absent-value))
               _%args154859%_)))
    (define gxc#apply-lift-modules
      (lambda _%args154841154865%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args154841154865%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp156279 (list)) (__tmp156278 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp156279
         '()
         __tmp156278
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args154836%_
        (apply make-instance gxc#::find-runtime-code::t _%$args154836%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp156280
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
        (__make-promise __tmp156280)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx154828%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self154831%_
                (let ((__obj156250
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj156250))
               (__tmp156281
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self154831%_ _%stx154828%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp156281
           gxc#current-compile-method
           _%self154831%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp156283 (list gxc#::false::t))
            (__tmp156282 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp156283
         '()
         __tmp156282
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args154825%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args154825%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp156284
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
        (__make-promise __tmp156284)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx154817%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self154820%_
                (let ((__obj156252
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj156252))
               (__tmp156285
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self154820%_ _%stx154817%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp156285
           gxc#current-compile-method
           _%self154820%_))))
    (define gxc#::count-values::t
      (let ((__tmp156287 (list gxc#::false-expression::t))
            (__tmp156286 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp156287
         '()
         __tmp156286
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args154814%_
        (apply make-instance gxc#::count-values::t _%$args154814%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp156288
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
        (__make-promise __tmp156288)))
    (define gxc#apply-count-values
      (lambda (_%stx154806%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self154809%_
                (let ((__obj156254
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj156254))
               (__tmp156289
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self154809%_ _%stx154806%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp156289
           gxc#current-compile-method
           _%self154809%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp156290 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp156290
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args154803%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args154803%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp156291
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
        (__make-promise __tmp156291)))
    (define gxc#::generate-loader::t
      (let ((__tmp156293 (list gxc#::generate-runtime-empty::t))
            (__tmp156292 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp156293
         '()
         __tmp156292
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args154799%_
        (apply make-instance gxc#::generate-loader::t _%$args154799%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp156294
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
        (__make-promise __tmp156294)))
    (define gxc#apply-generate-loader
      (lambda (_%stx154791%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self154794%_
                (let ((__obj156257
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj156257))
               (__tmp156295
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self154794%_ _%stx154791%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp156295
           gxc#current-compile-method
           _%self154794%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp156296 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp156296
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args154788%_
        (apply make-instance gxc#::generate-runtime::t _%$args154788%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp156297
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
        (__make-promise __tmp156297)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx154780%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self154783%_
                (let ((__obj156259
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj156259))
               (__tmp156298
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self154783%_ _%stx154780%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp156298
           gxc#current-compile-method
           _%self154783%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp156300 (list gxc#::generate-runtime::t))
            (__tmp156299 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp156300
         '()
         __tmp156299
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args154777%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args154777%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp156301
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
        (__make-promise __tmp156301)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx154769%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self154772%_
                (let ((__obj156261
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj156261))
               (__tmp156302
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self154772%_ _%stx154769%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp156302
           gxc#current-compile-method
           _%self154772%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp156303 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp156303
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args154766%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args154766%_)))
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
      (let ((__tmp156304
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
        (__make-promise __tmp156304)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords154740%_ _%table154737154741%_ _%stx154743%_)
        (let ((_%table154746%_
               (if (eq? _%table154737154741%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table154737154741%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self154748%_
                  (let ((__obj156263
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj156263
                       _%table154746%_
                       '1
                       '#f
                       '#f))
                    __obj156263))
                 (__tmp156305
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154748%_ _%stx154743%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp156305
             gxc#current-compile-method
             _%self154748%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords154755%_ . _%args154756%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords154755%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154755%_
                  'table:
                  absent-value))
               _%args154756%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args154738154762%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args154738154762%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp156307 (list gxc#::void-expression::t))
            (__tmp156306 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp156307
         '(state)
         __tmp156306
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args154733%_
        (apply make-instance gxc#::generate-meta::t _%$args154733%_)))
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
      (let ((__tmp156308
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
        (__make-promise __tmp156308)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords154707%_ _%state154704154708%_ _%stx154710%_)
        (let ((_%state154713%_
               (if (eq? _%state154704154708%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state154704154708%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self154715%_
                  (let ((__obj156265
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj156265
                       _%state154713%_
                       '1
                       '#f
                       '#f))
                    __obj156265))
                 (__tmp156309
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154715%_ _%stx154710%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp156309
             gxc#current-compile-method
             _%self154715%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords154722%_ . _%args154723%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords154722%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154722%_
                  'state:
                  absent-value))
               _%args154723%_)))
    (define gxc#apply-generate-meta
      (lambda _%args154705154729%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args154705154729%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp156311 (list)) (__tmp156310 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp156311
         '(state)
         __tmp156310
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args154700%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args154700%_)))
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
      (let ((__tmp156312
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
        (__make-promise __tmp156312)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords154674%_ _%state154671154675%_ _%stx154677%_)
        (let ((_%state154680%_
               (if (eq? _%state154671154675%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state154671154675%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self154682%_
                  (let ((__obj156267
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj156267
                       _%state154680%_
                       '1
                       '#f
                       '#f))
                    __obj156267))
                 (__tmp156313
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154682%_ _%stx154677%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp156313
             gxc#current-compile-method
             _%self154682%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords154689%_ . _%args154690%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords154689%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154689%_
                  'state:
                  absent-value))
               _%args154690%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args154672154696%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args154672154696%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self154600%_ _%stx154601%_)
        (let* ((_%g154603154620%_
                (lambda (_%g154604154617%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154604154617%_))))
               (_%g154602154667%_
                (lambda (_%g154604154623%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154604154623%_))
                      (let ((_%e154607154625%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154604154623%_))))
                        (let ((_%hd154608154628%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154607154625%_)))
                              (_%tl154609154630%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154607154625%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154609154630%_))
                              (let ((_%e154610154633%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154609154630%_))))
                                (let ((_%hd154611154636%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154610154633%_)))
                                      (_%tl154612154638%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154610154633%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154612154638%_))
                                      (let ((_%e154613154641%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154612154638%_))))
                                        (let ((_%hd154614154644%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154613154641%_)))
                                              (_%tl154615154646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154613154641%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154615154646%_))
                                              ((lambda (_%L154649%_
                                                        _%L154650%_)
                                                 (let ((__tmp156314
                                                        (lambda (_%bind154665%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind154665%_))
                      (gxc#add-module-binding! _%bind154665%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp156314
                                                    _%L154650%_)))
                                               _%hd154614154644%_
                                               _%hd154611154636%_)
                                              (_%g154603154620%_
                                               _%g154604154623%_))))
                                      (_%g154603154620%_ _%g154604154623%_))))
                              (_%g154603154620%_ _%g154604154623%_))))
                      (_%g154603154620%_ _%g154604154623%_)))))
          (_%g154602154667%_ _%stx154601%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self154532%_ _%stx154533%_)
        (let* ((_%g154535154552%_
                (lambda (_%g154536154549%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154536154549%_))))
               (_%g154534154597%_
                (lambda (_%g154536154555%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154536154555%_))
                      (let ((_%e154539154557%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154536154555%_))))
                        (let ((_%hd154540154560%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154539154557%_)))
                              (_%tl154541154562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154539154557%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154541154562%_))
                              (let ((_%e154542154565%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154541154562%_))))
                                (let ((_%hd154543154568%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154542154565%_)))
                                      (_%tl154544154570%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154542154565%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154544154570%_))
                                      (let ((_%e154545154573%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154544154570%_))))
                                        (let ((_%hd154546154576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154545154573%_)))
                                              (_%tl154547154578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154545154573%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154547154578%_))
                                              ((lambda (_%L154581%_
                                                        _%L154582%_)
                                                 (gxc#add-module-binding!
                                                  _%L154582%_
                                                  '#t))
                                               _%hd154546154576%_
                                               _%hd154543154568%_)
                                              (_%g154535154552%_
                                               _%g154536154555%_))))
                                      (_%g154535154552%_ _%g154536154555%_))))
                              (_%g154535154552%_ _%g154536154555%_))))
                      (_%g154535154552%_ _%g154536154555%_)))))
          (_%g154534154597%_ _%stx154533%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self154474%_ _%stx154475%_)
        (let* ((_%g154477154491%_
                (lambda (_%g154478154488%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154478154488%_))))
               (_%g154476154529%_
                (lambda (_%g154478154494%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154478154494%_))
                      (let ((_%e154481154496%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154478154494%_))))
                        (let ((_%hd154482154499%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154481154496%_)))
                              (_%tl154483154501%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154481154496%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154483154501%_))
                              (let ((_%e154484154504%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154483154501%_))))
                                (let ((_%hd154485154507%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154484154504%_)))
                                      (_%tl154486154509%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154484154504%_))))
                                  ((lambda (_%L154512%_ _%L154513%_)
                                     (let ((_%ctx154526%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L154513%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self154474%_
                                           'modules))
                                        (cons _%ctx154526%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self154474%_
                                                        'modules)))))
                                       (let ((__tmp156315
                                              (lambda ()
                                                (let ((__tmp156316
                                                       (##structure-ref
                                                        _%ctx154526%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self154474%_
                                                   __tmp156316)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp156315
                                          gx#current-expander-context
                                          _%ctx154526%_))))
                                   _%tl154486154509%_
                                   _%hd154485154507%_)))
                              (_%g154477154491%_ _%g154478154494%_))))
                      (_%g154477154491%_ _%g154478154494%_)))))
          (_%g154476154529%_ _%stx154475%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls154427154429%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls154427154429%_
              (let ((_%decls154432%_ _%decls154427154429%_))
                (let _%lp154434%_ ((_%rest154436%_ _%decls154432%_))
                  (let* ((_%rest154437154445%_ _%rest154436%_)
                         (_%else154439154453%_ (lambda () '#f))
                         (_%K154441154462%_
                          (lambda (_%decls154456%_ _%decl154457%_)
                            (if (equal? _%decl154457%_ '(not safe))
                                '#t
                                (if (equal? _%decl154457%_ '(safe))
                                    '#f
                                    (_%lp154434%_ _%decls154456%_))))))
                    (if (pair? _%rest154437154445%_)
                        (let ((_%hd154442154465%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest154437154445%_)))
                              (_%tl154443154467%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest154437154445%_))))
                          (let* ((_%decl154470%_ _%hd154442154465%_)
                                 (_%decls154472%_ _%tl154443154467%_))
                            (_%K154441154462%_
                             _%decls154472%_
                             _%decl154470%_)))
                        (_%else154439154453%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id154421%_ _%syntax?154422%_)
        (let ((_%eid154424%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id154421%_))
                '1
                gx#binding::t
                '#f))
              (_%ht154425%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid154424%_))
              '#!void
              (let ((__tmp156317
                     (let ((__tmp156318
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid154424%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp156318 _%syntax?154422%_))))
                (declare (not safe))
                (hash-put! _%ht154425%_ _%eid154424%_ __tmp156317))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id154419%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id154419%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key154374%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key154374%_))
            _%key154374%_
            (if (uninterned-symbol? _%key154374%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key154374%_))
                (let* ((_%key154378154385%_ _%key154374%_)
                       (_%E154380154389%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key154378154385%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K154381154407%_
                        (lambda (_%mark154392%_ _%eid154393%_)
                          (let ((_%$e154395%_
                                 (##structure-ref
                                  _%mark154392%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e154395%_
                                ((lambda (_%ht154398%_)
                                   (let ((_%$e154400%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht154398%_
                                             _%eid154393%_))))
                                     (if _%$e154400%_
                                         ((lambda (_%id154403%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id154403%_))
                                                _%id154403%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id154403%_))))
                                          _%$e154400%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid154393%_))))
                                 _%$e154395%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid154393%_))))))
                  (if (pair? _%key154378154385%_)
                      (let ((_%hd154382154410%_
                             (let ()
                               (declare (not safe))
                               (##car _%key154378154385%_)))
                            (_%tl154383154412%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key154378154385%_))))
                        (let* ((_%eid154415%_ _%hd154382154410%_)
                               (_%mark154417%_ _%tl154383154412%_))
                          (_%K154381154407%_ _%mark154417%_ _%eid154415%_)))
                      (_%E154380154389%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self154371%_ _%stx154372%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self154218%_ _%stx154219%_)
        (letrec ((_%simplify154221%_
                  (lambda (_%body154269%_)
                    (let _%lp154271%_ ((_%rest154273%_ _%body154269%_)
                                       (_%r154274%_ '()))
                      (let* ((_%rest154275154283%_ _%rest154273%_)
                             (_%else154277154291%_
                              (lambda () (reverse _%r154274%_)))
                             (_%K154279154359%_
                              (lambda (_%rest154294%_ _%hd154295%_)
                                (let* ((_%hd154296154312%_ _%hd154295%_)
                                       (_%else154300154320%_
                                        (lambda ()
                                          (_%lp154271%_
                                           _%rest154294%_
                                           (cons _%hd154295%_ _%r154274%_)))))
                                  (let ((_%K154308154349%_
                                         (lambda (_%exprs154347%_)
                                           (_%lp154271%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest154294%_
                                               _%exprs154347%_))
                                            _%r154274%_)))
                                        (_%K154303154333%_
                                         (lambda ()
                                           (if (null? _%rest154294%_)
                                               (_%lp154271%_
                                                _%rest154294%_
                                                (cons _%hd154295%_
                                                      _%r154274%_))
                                               (_%lp154271%_
                                                _%rest154294%_
                                                _%r154274%_))))
                                        (_%K154302154325%_
                                         (lambda ()
                                           (if (null? _%rest154294%_)
                                               (_%lp154271%_
                                                _%rest154294%_
                                                (cons _%hd154295%_
                                                      _%r154274%_))
                                               (_%lp154271%_
                                                _%rest154294%_
                                                _%r154274%_)))))
                                    (let ((_%try-match154299154328%_
                                           (lambda ()
                                             (if (symbol? _%hd154296154312%_)
                                                 (_%K154302154325%_)
                                                 (_%else154300154320%_)))))
                                      (if (pair? _%hd154296154312%_)
                                          (let ((_%tl154310154354%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd154296154312%_)))
                                                (_%hd154309154352%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd154296154312%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd154309154352%_
                                                         'begin))
                                                (let ((_%exprs154357%_
                                                       _%tl154310154354%_))
                                                  (_%K154308154349%_
                                                   _%exprs154357%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd154309154352%_
                                                             'quote))
                                                    (if (pair? _%tl154310154354%_)
                                                        (let ((_%tl154307154341%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl154310154354%_))))
                  (if (null? _%tl154307154341%_)
                      (_%K154303154333%_)
                      (_%try-match154299154328%_)))
                (_%try-match154299154328%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match154299154328%_))))
                                          (_%try-match154299154328%_))))))))
                        (if (pair? _%rest154275154283%_)
                            (let ((_%hd154280154362%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest154275154283%_)))
                                  (_%tl154281154364%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest154275154283%_))))
                              (let* ((_%hd154367%_ _%hd154280154362%_)
                                     (_%rest154369%_ _%tl154281154364%_))
                                (_%K154279154359%_
                                 _%rest154369%_
                                 _%hd154367%_)))
                            (_%else154277154291%_)))))))
          (let* ((_%g154223154233%_
                  (lambda (_%g154224154230%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g154224154230%_))))
                 (_%g154222154266%_
                  (lambda (_%g154224154236%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g154224154236%_))
                        (let ((_%e154226154238%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g154224154236%_))))
                          (let ((_%hd154227154241%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154226154238%_)))
                                (_%tl154228154243%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154226154238%_))))
                            ((lambda (_%L154246%_)
                               (let* ((_%body154261%_
                                       (map (lambda (_%g154256154258%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self154218%_
                                                 _%g154256154258%_)))
                                            _%L154246%_))
                                      (_%body154263%_
                                       (_%simplify154221%_ _%body154261%_)))
                                 (if (let ((__tmp156319
                                            (length _%body154263%_)))
                                       (declare (not safe))
                                       (##fx= __tmp156319 '1))
                                     (car _%body154263%_)
                                     (cons 'begin _%body154263%_))))
                             _%tl154228154243%_)))
                        (_%g154223154233%_ _%g154224154236%_)))))
            (_%g154222154266%_ _%stx154219%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self154179%_ _%stx154180%_)
        (let* ((_%g154182154192%_
                (lambda (_%g154183154189%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154183154189%_))))
               (_%g154181154215%_
                (lambda (_%g154183154195%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154183154195%_))
                      (let ((_%e154185154197%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154183154195%_))))
                        (let ((_%hd154186154200%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154185154197%_)))
                              (_%tl154187154202%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154185154197%_))))
                          ((lambda (_%L154205%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L154205%_))))
                           _%tl154187154202%_)))
                      (_%g154182154192%_ _%g154183154195%_)))))
          (_%g154181154215%_ _%stx154180%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self153943%_ _%stx153944%_)
        (let* ((_%__stx154909154910%_ _%stx153944%_)
               (_%g153948154000%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx154909154910%_)))))
          (let ((_%__kont154911154912%_
                 (lambda (_%L154161%_ _%L154162%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self153943%_ _%L154161%_))))
                (_%__kont154913154914%_
                 (lambda (_%L154109%_ _%L154110%_ _%L154111%_)
                   (if (let ((__tmp156320
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L154111%_))))
                         (declare (not safe))
                         (##memq __tmp156320 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self153943%_ _%L154109%_)))))
                (_%__kont154917154918%_
                 (lambda (_%L154029%_ _%L154030%_)
                   (let ((_%decls154045%_ (map gx#syntax->datum _%L154030%_)))
                     (let ((__tmp156323
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls154045%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self153943%_
                                                   _%L154029%_))
                                                '())))))
                           (__tmp156321
                            (let ((__tmp156322
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp156322 _%decls154045%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp156323
                        gxc#current-compile-decls
                        __tmp156321))))))
            (let* ((_%__match154964154965%_
                    (lambda (_%e153964154053%_
                             _%hd153965154056%_
                             _%tl153966154058%_
                             _%e153967154061%_
                             _%hd153968154064%_
                             _%tl153969154066%_
                             _%e153970154069%_
                             _%hd153971154072%_
                             _%tl153972154074%_
                             _%__splice154915154916%_
                             _%target153973154077%_
                             _%tl153975154079%_)
                      (letrec ((_%loop153976154082%_
                                (lambda (_%hd153974154085%_
                                         _%param153980154087%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd153974154085%_))
                                      (let ((_%e153977154090%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd153974154085%_))))
                                        (let ((_%lp-tl153979154095%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153977154090%_)))
                                              (_%lp-hd153978154093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153977154090%_))))
                                          (_%loop153976154082%_
                                           _%lp-tl153979154095%_
                                           (cons _%lp-hd153978154093%_
                                                 _%param153980154087%_))))
                                      (let ((_%param153981154098%_
                                             (reverse _%param153980154087%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl153969154066%_))
                                            (let ((_%e153982154101%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl153969154066%_))))
                                              (let ((_%tl153984154106%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e153982154101%_)))
                                                    (_%hd153983154104%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e153982154101%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl153984154106%_))
                                                    (let ((_%L154109%_
                                                           _%hd153983154104%_)
                                                          (_%L154110%_
                                                           _%param153981154098%_)
                                                          (_%L154111%_
                                                           _%hd153971154072%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L154111%_))
                       (not (let ((__tmp156324
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L154111%_))))
                              (declare (not safe))
                              (##memq __tmp156324 gxc#gambit-annotations))))
                  (_%__kont154913154914%_ _%L154109%_ _%L154110%_ _%L154111%_)
                  (_%__kont154917154918%_
                   _%hd153983154104%_
                   _%hd153968154064%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g153948154000%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g153948154000%_))))))))
                        (_%loop153976154082%_ _%target153973154077%_ '()))))
                   (_%__match154938154939%_
                    (lambda (_%e153952154137%_
                             _%hd153953154140%_
                             _%tl153954154142%_
                             _%e153955154145%_
                             _%hd153956154148%_
                             _%tl153957154150%_
                             _%e153958154153%_
                             _%hd153959154156%_
                             _%tl153960154158%_)
                      (let ((_%L154161%_ _%hd153959154156%_)
                            (_%L154162%_ _%hd153956154148%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L154162%_))
                            (_%__kont154911154912%_ _%L154161%_ _%L154162%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd153956154148%_))
                                (let ((_%e153970154069%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd153956154148%_))))
                                  (let ((_%tl153972154074%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e153970154069%_)))
                                        (_%hd153971154072%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e153970154069%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl153972154074%_))
                                        (let ((_%__splice154915154916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl153972154074%_
                                                  '0))))
                                          (let ((_%tl153975154079%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice154915154916%_
                                                    '1)))
                                                (_%target153973154077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice154915154916%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl153975154079%_))
                                                (_%__match154964154965%_
                                                 _%e153952154137%_
                                                 _%hd153953154140%_
                                                 _%tl153954154142%_
                                                 _%e153955154145%_
                                                 _%hd153956154148%_
                                                 _%tl153957154150%_
                                                 _%e153970154069%_
                                                 _%hd153971154072%_
                                                 _%tl153972154074%_
                                                 _%__splice154915154916%_
                                                 _%target153973154077%_
                                                 _%tl153975154079%_)
                                                (_%__kont154917154918%_
                                                 _%hd153959154156%_
                                                 _%hd153956154148%_))))
                                        (_%__kont154917154918%_
                                         _%hd153959154156%_
                                         _%hd153956154148%_))))
                                (_%__kont154917154918%_
                                 _%hd153959154156%_
                                 _%hd153956154148%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx154909154910%_))
                  (let ((_%e153952154137%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx154909154910%_))))
                    (let ((_%tl153954154142%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e153952154137%_)))
                          (_%hd153953154140%_
                           (let ()
                             (declare (not safe))
                             (##car _%e153952154137%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl153954154142%_))
                          (let ((_%e153955154145%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl153954154142%_))))
                            (let ((_%tl153957154150%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e153955154145%_)))
                                  (_%hd153956154148%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e153955154145%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl153957154150%_))
                                  (let ((_%e153958154153%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl153957154150%_))))
                                    (let ((_%tl153960154158%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e153958154153%_)))
                                          (_%hd153959154156%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e153958154153%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl153960154158%_))
                                          (_%__match154938154939%_
                                           _%e153952154137%_
                                           _%hd153953154140%_
                                           _%tl153954154142%_
                                           _%e153955154145%_
                                           _%hd153956154148%_
                                           _%tl153957154150%_
                                           _%e153958154153%_
                                           _%hd153959154156%_
                                           _%tl153960154158%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd153956154148%_))
                                              (let ((_%e153970154069%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd153956154148%_))))
                                                (let ((_%tl153972154074%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153970154069%_)))
                                                      (_%hd153971154072%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153970154069%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl153972154074%_))
                                                      (let ((_%__splice154915154916%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl153972154074%_
                        '0))))
                (let ((_%tl153975154079%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice154915154916%_ '1)))
                      (_%target153973154077%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice154915154916%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl153975154079%_))
                      (_%__match154964154965%_
                       _%e153952154137%_
                       _%hd153953154140%_
                       _%tl153954154142%_
                       _%e153955154145%_
                       _%hd153956154148%_
                       _%tl153957154150%_
                       _%e153970154069%_
                       _%hd153971154072%_
                       _%tl153972154074%_
                       _%__splice154915154916%_
                       _%target153973154077%_
                       _%tl153975154079%_)
                      (let () (declare (not safe)) (_%g153948154000%_)))))
              (let () (declare (not safe)) (_%g153948154000%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g153948154000%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd153956154148%_))
                                      (let ((_%e153970154069%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd153956154148%_))))
                                        (let ((_%tl153972154074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153970154069%_)))
                                              (_%hd153971154072%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153970154069%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl153972154074%_))
                                              (let ((_%__splice154915154916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl153972154074%_
                                                        '0))))
                                                (let ((_%tl153975154079%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice154915154916%_
                                                          '1)))
                                                      (_%target153973154077%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice154915154916%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153975154079%_))
                                                      (_%__match154964154965%_
                                                       _%e153952154137%_
                                                       _%hd153953154140%_
                                                       _%tl153954154142%_
                                                       _%e153955154145%_
                                                       _%hd153956154148%_
                                                       _%tl153957154150%_
                                                       _%e153970154069%_
                                                       _%hd153971154072%_
                                                       _%tl153972154074%_
                                                       _%__splice154915154916%_
                                                       _%target153973154077%_
                                                       _%tl153975154079%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g153948154000%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g153948154000%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g153948154000%_))))))
                          (let () (declare (not safe)) (_%g153948154000%_)))))
                  (let () (declare (not safe)) (_%g153948154000%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self153902%_ _%stx153903%_)
        (let* ((_%g153905153915%_
                (lambda (_%g153906153912%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153906153912%_))))
               (_%g153904153940%_
                (lambda (_%g153906153918%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153906153918%_))
                      (let ((_%e153908153920%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153906153918%_))))
                        (let ((_%hd153909153923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153908153920%_)))
                              (_%tl153910153925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153908153920%_))))
                          ((lambda (_%L153928%_)
                             (let ((_%decls153938%_
                                    (map gx#syntax->datum _%L153928%_)))
                               (let ((__tmp156325
                                      (let ((__tmp156326
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp156326
                                         _%decls153938%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp156325))
                               (cons 'declare _%decls153938%_)))
                           _%tl153910153925%_)))
                      (_%g153905153915%_ _%g153906153918%_)))))
          (_%g153904153940%_ _%stx153903%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self153648%_ _%stx153649%_)
        (let* ((_%g153651153668%_
                (lambda (_%g153652153665%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153652153665%_))))
               (_%g153650153899%_
                (lambda (_%g153652153671%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153652153671%_))
                      (let ((_%e153655153673%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153652153671%_))))
                        (let ((_%hd153656153676%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153655153673%_)))
                              (_%tl153657153678%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153655153673%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153657153678%_))
                              (let ((_%e153658153681%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153657153678%_))))
                                (let ((_%hd153659153684%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153658153681%_)))
                                      (_%tl153660153686%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153658153681%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153660153686%_))
                                      (let ((_%e153661153689%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153660153686%_))))
                                        (let ((_%hd153662153692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153661153689%_)))
                                              (_%tl153663153694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153661153689%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153663153694%_))
                                              ((lambda (_%L153697%_
                                                        _%L153698%_)
                                                 (let* ((_%__stx155017155018%_
                                                         _%L153698%_)
                                                        (_%g153715153729%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx155017155018%_)))))
                                                   (let ((_%__kont155019155020%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self153648%_
                                                               _%L153697%_))))
                                                         (_%__kont155021155022%_
                                                          (lambda (_%L153861%_)
                                                            (let ((_%eid153870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L153861%_))))
                      (let ((_%lambda-expr153871153873%_
                             (gxc#apply-find-lambda-expression _%L153697%_)))
                        (if _%lambda-expr153871153873%_
                            (let* ((_%lambda-expr153876%_
                                    _%lambda-expr153871153873%_)
                                   (__tmp156327
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp156327
                               _%lambda-expr153876%_
                               _%eid153870%_))
                            '#f))
                      (cons 'define
                            (cons _%eid153870%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self153648%_
                                           _%L153697%_))
                                        '()))))))
                 (_%__kont155023155024%_
                  (lambda ()
                    (let* ((_%tmp153736%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body153845%_
                            (let _%lp153738%_ ((_%rest153740%_ _%L153698%_)
                                               (_%k153741%_ '0)
                                               (_%r153742%_ '()))
                              (let* ((_%__stx154987154988%_ _%rest153740%_)
                                     (_%g153747153764%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx154987154988%_)))))
                                (let ((_%__kont154989154990%_
                                       (lambda (_%L153832%_)
                                         (_%lp153738%_
                                          _%L153832%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k153741%_ '1))
                                          _%r153742%_)))
                                      (_%__kont154991154992%_
                                       (lambda (_%L153805%_ _%L153806%_)
                                         (_%lp153738%_
                                          _%L153805%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k153741%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L153806%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp153736%_
                           _%k153741%_
                           _%L153805%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r153742%_))))
                                      (_%__kont154993154994%_
                                       (lambda (_%L153776%_)
                                         (let ((__tmp156328
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L153776%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp153736%_
                                 _%k153741%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp156328
                                            _%r153742%_))))
                                      (_%__kont154995154996%_
                                       (lambda () (reverse _%r153742%_))))
                                  (let ((_%g153745153792%_
                                         (lambda ()
                                           (let ((_%L153776%_
                                                  _%__stx154987154988%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L153776%_))
                                                 (_%__kont154993154994%_
                                                  _%L153776%_)
                                                 (_%__kont154995154996%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx154987154988%_))
                                        (let ((_%e153750153821%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx154987154988%_))))
                                          (let ((_%tl153752153826%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153750153821%_)))
                                                (_%hd153751153824%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153750153821%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd153751153824%_))
                                                (let ((_%e153753153829%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd153751153824%_))))
                                                  (if (equal? _%e153753153829%_
                                                              '#f)
                                                      (_%__kont154989154990%_
                                                       _%tl153752153826%_)
                                                      (_%__kont154991154992%_
                                                       _%tl153752153826%_
                                                       _%hd153751153824%_)))
                                                (_%__kont154991154992%_
                                                 _%tl153752153826%_
                                                 _%hd153751153824%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g153745153792%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp153736%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self153648%_
                                                       _%L153697%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp153736%_
                                         _%L153698%_
                                         _%L153697%_)
                                        _%body153845%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx155017155018%_))
                                                         (let ((_%e153717153883%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx155017155018%_))))
                   (let ((_%tl153719153888%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e153717153883%_)))
                         (_%hd153718153886%_
                          (let ()
                            (declare (not safe))
                            (##car _%e153717153883%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd153718153886%_))
                         (let ((_%e153720153891%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd153718153886%_))))
                           (if (equal? _%e153720153891%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl153719153888%_))
                                   (_%__kont155019155020%_)
                                   (_%__kont155023155024%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl153719153888%_))
                                   (_%__kont155021155022%_ _%hd153718153886%_)
                                   (_%__kont155023155024%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl153719153888%_))
                             (_%__kont155021155022%_ _%hd153718153886%_)
                             (_%__kont155023155024%_)))))
                 (_%__kont155023155024%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd153662153692%_
                                               _%hd153659153684%_)
                                              (_%g153651153668%_
                                               _%g153652153671%_))))
                                      (_%g153651153668%_ _%g153652153671%_))))
                              (_%g153651153668%_ _%g153652153671%_))))
                      (_%g153651153668%_ _%g153652153671%_)))))
          (_%g153650153899%_ _%stx153649%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals153623%_ _%hd153624%_ _%expr153625%_)
        (let ((_%$e153627%_ (gxc#apply-count-values _%expr153625%_)))
          (if _%$e153627%_
              ((lambda (_%count153630%_)
                 (let ((_%len153632%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd153624%_)))
                       (_%cmp153633%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd153624%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len153632%_ '0))
                           (_%cmp153633%_ _%count153630%_ _%len153632%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr153625%_
                          _%hd153624%_)))))
               _%$e153627%_)
              (let* ((_%len153639%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd153624%_)))
                     (_%cmp153641%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd153624%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg153643%_
                      (let ((__tmp156330
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd153624%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp156329 (number->string _%len153639%_)))
                        (declare (not safe))
                        (##string-append __tmp156330 __tmp156329 '" values")))
                     (_%count153645%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd153624%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len153639%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count153645%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals153623%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp153641%_
                                (cons _%count153645%_
                                      (cons _%len153639%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp153641%_
                                                        (cons _%count153645%_
                                                              (cons _%len153639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg153643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count153645%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var153618%_)
        (letrec ((_%generate-inline153620%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var153618%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var153618%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline153620%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline153620%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var153611%_ _%i153612%_ _%rest153613%_)
        (letrec ((_%generate-inline153615%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i153612%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest153613%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var153611%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var153611%_
                                                      (cons '0 '())))
                                          (cons _%var153611%_ '()))))
                        (cons '##values-ref
                              (cons _%var153611%_ (cons _%i153612%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline153615%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline153615%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var153605%_ _%i153606%_)
        (if (let () (declare (not safe)) (##fx= _%i153606%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var153605%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var153605%_ '()))
                                  (cons (cons 'list (cons _%var153605%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var153605%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var153605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var153605%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i153606%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var153605%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var153605%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var153605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var153605%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var153605%_ '()))
                                (cons _%i153606%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var153605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i153606%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self153537%_ _%stx153538%_)
        (let* ((_%g153540153557%_
                (lambda (_%g153541153554%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153541153554%_))))
               (_%g153539153602%_
                (lambda (_%g153541153560%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153541153560%_))
                      (let ((_%e153544153562%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153541153560%_))))
                        (let ((_%hd153545153565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153544153562%_)))
                              (_%tl153546153567%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153544153562%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153546153567%_))
                              (let ((_%e153547153570%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153546153567%_))))
                                (let ((_%hd153548153573%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153547153570%_)))
                                      (_%tl153549153575%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153547153570%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153549153575%_))
                                      (let ((_%e153550153578%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153549153575%_))))
                                        (let ((_%hd153551153581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153550153578%_)))
                                              (_%tl153552153583%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153550153578%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153552153583%_))
                                              ((lambda (_%L153586%_
                                                        _%L153587%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self153537%_
                                                  _%L153587%_
                                                  _%L153586%_))
                                               _%hd153551153581%_
                                               _%hd153548153573%_)
                                              (_%g153540153557%_
                                               _%g153541153560%_))))
                                      (_%g153540153557%_ _%g153541153560%_))))
                              (_%g153540153557%_ _%g153541153560%_))))
                      (_%g153540153557%_ _%g153541153560%_)))))
          (_%g153539153602%_ _%stx153538%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self153496%_ _%hd153497%_ _%body153498%_)
        (let* ((_%hd153500%_ (gxc#generate-runtime-lambda-head _%hd153497%_))
               (_%body153502%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self153496%_ _%body153498%_)))
               (_%body153534%_
                (let* ((_%body153503153511%_ _%body153502%_)
                       (_%else153505153519%_
                        (lambda () (cons _%body153502%_ '())))
                       (_%K153507153524%_
                        (lambda (_%exprs153522%_) _%exprs153522%_)))
                  (if (pair? _%body153503153511%_)
                      (let ((_%hd153508153527%_
                             (let ()
                               (declare (not safe))
                               (##car _%body153503153511%_)))
                            (_%tl153509153529%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body153503153511%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd153508153527%_ 'begin))
                            (let ((_%exprs153532%_ _%tl153509153529%_))
                              (_%K153507153524%_ _%exprs153532%_))
                            (_%else153505153519%_)))
                      (_%else153505153519%_)))))
          (cons 'lambda (cons _%hd153500%_ _%body153534%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd153494%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd153494%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self152033%_ _%stx152034%_)
        (letrec ((_%dispatch-case?152036%_
                  (lambda (_%hd152724%_ _%body152725%_)
                    (let* ((_%form152727%_
                            (cons _%hd152724%_ (cons _%body152725%_ '())))
                           (_%__stx155049155050%_ _%form152727%_)
                           (_%g152732152889%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx155049155050%_)))))
                      (let ((_%__kont155051155052%_
                             (lambda (_%L153414%_ _%L153415%_ _%L153416%_)
                               '#t))
                            (_%__kont155057155058%_
                             (lambda (_%L153202%_
                                      _%L153203%_
                                      _%L153204%_
                                      _%L153205%_
                                      _%L153206%_
                                      _%L153207%_)
                               '#t))
                            (_%__kont155063155064%_
                             (lambda (_%L152997%_
                                      _%L152998%_
                                      _%L152999%_
                                      _%L153000%_)
                               '#t))
                            (_%__kont155065155066%_ (lambda () '#f)))
                        (let* ((_%__match155190155191%_
                                (lambda (_%e152849152901%_
                                         _%hd152850152904%_
                                         _%tl152851152906%_
                                         _%e152852152909%_
                                         _%hd152853152912%_
                                         _%tl152854152914%_
                                         _%e152855152917%_
                                         _%hd152856152920%_
                                         _%tl152857152922%_
                                         _%e152858152925%_
                                         _%hd152859152928%_
                                         _%tl152860152930%_
                                         _%e152861152933%_
                                         _%hd152862152936%_
                                         _%tl152863152938%_
                                         _%e152864152941%_
                                         _%hd152865152944%_
                                         _%tl152866152946%_
                                         _%e152867152949%_
                                         _%hd152868152952%_
                                         _%tl152869152954%_
                                         _%e152870152957%_
                                         _%hd152871152960%_
                                         _%tl152872152962%_
                                         _%e152873152965%_
                                         _%hd152874152968%_
                                         _%tl152875152970%_
                                         _%e152876152973%_
                                         _%hd152877152976%_
                                         _%tl152878152978%_
                                         _%e152879152981%_
                                         _%hd152880152984%_
                                         _%tl152881152986%_
                                         _%e152882152989%_
                                         _%hd152883152992%_
                                         _%tl152884152994%_)
                                  (let ((_%L152997%_ _%hd152883152992%_)
                                        (_%L152998%_ _%hd152874152968%_)
                                        (_%L152999%_ _%hd152865152944%_)
                                        (_%L153000%_ _%hd152850152904%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L153000%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L152999%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L153000%_
                                                _%L152997%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L152998%_
                                                     _%L153000%_))))
                                        (_%__kont155063155064%_
                                         _%L152997%_
                                         _%L152998%_
                                         _%L152999%_
                                         _%L153000%_)
                                        (_%__kont155065155066%_)))))
                               (_%__match155162155163%_
                                (lambda (_%e152849152901%_
                                         _%hd152850152904%_
                                         _%tl152851152906%_
                                         _%e152852152909%_
                                         _%hd152853152912%_
                                         _%tl152854152914%_
                                         _%e152855152917%_
                                         _%hd152856152920%_
                                         _%tl152857152922%_
                                         _%e152858152925%_
                                         _%hd152859152928%_
                                         _%tl152860152930%_
                                         _%e152861152933%_
                                         _%hd152862152936%_
                                         _%tl152863152938%_
                                         _%e152864152941%_
                                         _%hd152865152944%_
                                         _%tl152866152946%_
                                         _%e152867152949%_
                                         _%hd152868152952%_
                                         _%tl152869152954%_
                                         _%e152870152957%_
                                         _%hd152871152960%_
                                         _%tl152872152962%_
                                         _%e152873152965%_
                                         _%hd152874152968%_
                                         _%tl152875152970%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152869152954%_))
                                      (let ((_%e152876152973%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152869152954%_))))
                                        (let ((_%tl152878152978%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152876152973%_)))
                                              (_%hd152877152976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152876152973%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd152877152976%_))
                                              (let ((_%e152879152981%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd152877152976%_))))
                                                (let ((_%tl152881152986%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e152879152981%_)))
                                                      (_%hd152880152984%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e152879152981%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd152880152984%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd152880152984%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl152881152986%_))
                      (let ((_%e152882152989%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl152881152986%_))))
                        (let ((_%tl152884152994%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152882152989%_)))
                              (_%hd152883152992%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152882152989%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl152884152994%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl152878152978%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl152854152914%_))
                                      (_%__match155190155191%_
                                       _%e152849152901%_
                                       _%hd152850152904%_
                                       _%tl152851152906%_
                                       _%e152852152909%_
                                       _%hd152853152912%_
                                       _%tl152854152914%_
                                       _%e152855152917%_
                                       _%hd152856152920%_
                                       _%tl152857152922%_
                                       _%e152858152925%_
                                       _%hd152859152928%_
                                       _%tl152860152930%_
                                       _%e152861152933%_
                                       _%hd152862152936%_
                                       _%tl152863152938%_
                                       _%e152864152941%_
                                       _%hd152865152944%_
                                       _%tl152866152946%_
                                       _%e152867152949%_
                                       _%hd152868152952%_
                                       _%tl152869152954%_
                                       _%e152870152957%_
                                       _%hd152871152960%_
                                       _%tl152872152962%_
                                       _%e152873152965%_
                                       _%hd152874152968%_
                                       _%tl152875152970%_
                                       _%e152876152973%_
                                       _%hd152877152976%_
                                       _%tl152878152978%_
                                       _%e152879152981%_
                                       _%hd152880152984%_
                                       _%tl152881152986%_
                                       _%e152882152989%_
                                       _%hd152883152992%_
                                       _%tl152884152994%_)
                                      (_%__kont155065155066%_))
                                  (_%__kont155065155066%_))
                              (_%__kont155065155066%_))))
                      (_%__kont155065155066%_))
                  (_%__kont155065155066%_))
              (_%__kont155065155066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont155065155066%_))))
                                      (_%__kont155065155066%_))))
                               (_%__match155092155093%_
                                (lambda (_%e152785153042%_
                                         _%hd152786153045%_
                                         _%tl152787153047%_
                                         _%__splice155059155060%_
                                         _%target152788153050%_
                                         _%tl152790153052%_)
                                  (letrec ((_%loop152791153055%_
                                            (lambda (_%hd152789153058%_
                                                     _%arg152795153060%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd152789153058%_))
                                                  (let ((_%e152792153063%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd152789153058%_))))
                                                    (let ((_%lp-tl152794153068%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e152792153063%_)))
                                                          (_%lp-hd152793153066%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e152792153063%_))))
                                                      (_%loop152791153055%_
                                                       _%lp-tl152794153068%_
                                                       (cons _%lp-hd152793153066%_
                                                             _%arg152795153060%_))))
                                                  (let ((_%arg152796153071%_
                                                         (reverse _%arg152795153060%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl152787153047%_))
                                                        (let ((_%e152797153074%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl152787153047%_))))
                  (let ((_%tl152799153079%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e152797153074%_)))
                        (_%hd152798153077%_
                         (let ()
                           (declare (not safe))
                           (##car _%e152797153074%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd152798153077%_))
                        (let ((_%e152800153082%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd152798153077%_))))
                          (let ((_%tl152802153087%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152800153082%_)))
                                (_%hd152801153085%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152800153082%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd152801153085%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd152801153085%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl152802153087%_))
                                        (let ((_%e152803153090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl152802153087%_))))
                                          (let ((_%tl152805153095%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e152803153090%_)))
                                                (_%hd152804153093%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e152803153090%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd152804153093%_))
                                                (let ((_%e152806153098%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd152804153093%_))))
                                                  (let ((_%tl152808153103%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e152806153098%_)))
                                                        (_%hd152807153101%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e152806153098%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd152807153101%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd152807153101%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl152808153103%_))
                        (let ((_%e152809153106%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl152808153103%_))))
                          (let ((_%tl152811153111%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152809153106%_)))
                                (_%hd152810153109%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152809153106%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl152811153111%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl152805153095%_))
                                    (let ((_%e152812153114%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl152805153095%_))))
                                      (let ((_%tl152814153119%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e152812153114%_)))
                                            (_%hd152813153117%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e152812153114%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd152813153117%_))
                                            (let ((_%e152815153122%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd152813153117%_))))
                                              (let ((_%tl152817153127%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e152815153122%_)))
                                                    (_%hd152816153125%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e152815153122%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd152816153125%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd152816153125%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl152817153127%_))
                                                            (let ((_%e152818153130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl152817153127%_))))
                      (let ((_%tl152820153135%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e152818153130%_)))
                            (_%hd152819153133%_
                             (let ()
                               (declare (not safe))
                               (##car _%e152818153130%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl152820153135%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl152814153119%_))
                                (if (let ((__tmp156331
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl152814153119%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp156331 '1))
                                    (let ((_%__splice155061155062%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl152814153119%_
                                              '1))))
                                      (let ((_%tl152823153140%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice155061155062%_
                                                '1)))
                                            (_%target152821153138%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice155061155062%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl152823153140%_))
                                            (let ((_%e152830153143%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl152823153140%_))))
                                              (let ((_%tl152832153148%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e152830153143%_)))
                                                    (_%hd152831153146%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e152830153143%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd152831153146%_))
                                                    (let ((_%e152833153151%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd152831153146%_))))
                                                      (let ((_%tl152835153156%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e152833153151%_)))
                    (_%hd152834153154%_
                     (let () (declare (not safe)) (##car _%e152833153151%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd152834153154%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd152834153154%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl152835153156%_))
                            (let ((_%e152836153159%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl152835153156%_))))
                              (let ((_%tl152838153164%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e152836153159%_)))
                                    (_%hd152837153162%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e152836153159%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl152838153164%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl152832153148%_))
                                        (letrec ((_%loop152824153167%_
                                                  (lambda (_%hd152822153170%_
                                                           _%xarg152828153172%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd152822153170%_))
                                                        (let ((_%e152825153175%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd152822153170%_))))
                  (let ((_%lp-tl152827153180%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e152825153175%_)))
                        (_%lp-hd152826153178%_
                         (let ()
                           (declare (not safe))
                           (##car _%e152825153175%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd152826153178%_))
                        (let ((_%e152839153183%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd152826153178%_))))
                          (let ((_%tl152841153188%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152839153183%_)))
                                (_%hd152840153186%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152839153183%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd152840153186%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd152840153186%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl152841153188%_))
                                        (let ((_%e152842153191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl152841153188%_))))
                                          (let ((_%tl152844153196%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e152842153191%_)))
                                                (_%hd152843153194%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e152842153191%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl152844153196%_))
                                                (_%loop152824153167%_
                                                 _%lp-tl152827153180%_
                                                 (cons _%hd152843153194%_
                                                       _%xarg152828153172%_))
                                                (_%__match155162155163%_
                                                 _%e152785153042%_
                                                 _%hd152786153045%_
                                                 _%tl152787153047%_
                                                 _%e152797153074%_
                                                 _%hd152798153077%_
                                                 _%tl152799153079%_
                                                 _%e152800153082%_
                                                 _%hd152801153085%_
                                                 _%tl152802153087%_
                                                 _%e152803153090%_
                                                 _%hd152804153093%_
                                                 _%tl152805153095%_
                                                 _%e152806153098%_
                                                 _%hd152807153101%_
                                                 _%tl152808153103%_
                                                 _%e152809153106%_
                                                 _%hd152810153109%_
                                                 _%tl152811153111%_
                                                 _%e152812153114%_
                                                 _%hd152813153117%_
                                                 _%tl152814153119%_
                                                 _%e152815153122%_
                                                 _%hd152816153125%_
                                                 _%tl152817153127%_
                                                 _%e152818153130%_
                                                 _%hd152819153133%_
                                                 _%tl152820153135%_))))
                                        (_%__match155162155163%_
                                         _%e152785153042%_
                                         _%hd152786153045%_
                                         _%tl152787153047%_
                                         _%e152797153074%_
                                         _%hd152798153077%_
                                         _%tl152799153079%_
                                         _%e152800153082%_
                                         _%hd152801153085%_
                                         _%tl152802153087%_
                                         _%e152803153090%_
                                         _%hd152804153093%_
                                         _%tl152805153095%_
                                         _%e152806153098%_
                                         _%hd152807153101%_
                                         _%tl152808153103%_
                                         _%e152809153106%_
                                         _%hd152810153109%_
                                         _%tl152811153111%_
                                         _%e152812153114%_
                                         _%hd152813153117%_
                                         _%tl152814153119%_
                                         _%e152815153122%_
                                         _%hd152816153125%_
                                         _%tl152817153127%_
                                         _%e152818153130%_
                                         _%hd152819153133%_
                                         _%tl152820153135%_))
                                    (_%__match155162155163%_
                                     _%e152785153042%_
                                     _%hd152786153045%_
                                     _%tl152787153047%_
                                     _%e152797153074%_
                                     _%hd152798153077%_
                                     _%tl152799153079%_
                                     _%e152800153082%_
                                     _%hd152801153085%_
                                     _%tl152802153087%_
                                     _%e152803153090%_
                                     _%hd152804153093%_
                                     _%tl152805153095%_
                                     _%e152806153098%_
                                     _%hd152807153101%_
                                     _%tl152808153103%_
                                     _%e152809153106%_
                                     _%hd152810153109%_
                                     _%tl152811153111%_
                                     _%e152812153114%_
                                     _%hd152813153117%_
                                     _%tl152814153119%_
                                     _%e152815153122%_
                                     _%hd152816153125%_
                                     _%tl152817153127%_
                                     _%e152818153130%_
                                     _%hd152819153133%_
                                     _%tl152820153135%_))
                                (_%__match155162155163%_
                                 _%e152785153042%_
                                 _%hd152786153045%_
                                 _%tl152787153047%_
                                 _%e152797153074%_
                                 _%hd152798153077%_
                                 _%tl152799153079%_
                                 _%e152800153082%_
                                 _%hd152801153085%_
                                 _%tl152802153087%_
                                 _%e152803153090%_
                                 _%hd152804153093%_
                                 _%tl152805153095%_
                                 _%e152806153098%_
                                 _%hd152807153101%_
                                 _%tl152808153103%_
                                 _%e152809153106%_
                                 _%hd152810153109%_
                                 _%tl152811153111%_
                                 _%e152812153114%_
                                 _%hd152813153117%_
                                 _%tl152814153119%_
                                 _%e152815153122%_
                                 _%hd152816153125%_
                                 _%tl152817153127%_
                                 _%e152818153130%_
                                 _%hd152819153133%_
                                 _%tl152820153135%_))))
                        (_%__match155162155163%_
                         _%e152785153042%_
                         _%hd152786153045%_
                         _%tl152787153047%_
                         _%e152797153074%_
                         _%hd152798153077%_
                         _%tl152799153079%_
                         _%e152800153082%_
                         _%hd152801153085%_
                         _%tl152802153087%_
                         _%e152803153090%_
                         _%hd152804153093%_
                         _%tl152805153095%_
                         _%e152806153098%_
                         _%hd152807153101%_
                         _%tl152808153103%_
                         _%e152809153106%_
                         _%hd152810153109%_
                         _%tl152811153111%_
                         _%e152812153114%_
                         _%hd152813153117%_
                         _%tl152814153119%_
                         _%e152815153122%_
                         _%hd152816153125%_
                         _%tl152817153127%_
                         _%e152818153130%_
                         _%hd152819153133%_
                         _%tl152820153135%_))))
                (let ((_%xarg152829153199%_ (reverse _%xarg152828153172%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl152799153079%_))
                      (let ((_%L153202%_ _%hd152837153162%_)
                            (_%L153203%_ _%xarg152829153199%_)
                            (_%L153204%_ _%hd152819153133%_)
                            (_%L153205%_ _%hd152810153109%_)
                            (_%L153206%_ _%tl152790153052%_)
                            (_%L153207%_ _%arg152796153071%_))
                        (if (and (let ((__tmp156332
                                        (let ((__tmp156333
                                               (lambda (_%g153250153253%_
                                                        _%g153251153255%_)
                                                 (cons _%g153250153253%_
                                                       _%g153251153255%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp156333
                                           '()
                                           _%L153207%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp156332))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L153206%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L153205%_
                                    'apply))
                                 (let ((__tmp156336
                                        (length (let ((__tmp156337
                                                       (lambda (_%g153257153260%_
                                                                _%g153258153262%_)
                                                         (cons _%g153257153260%_
                                                               _%g153258153262%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp156337
                                                   '()
                                                   _%L153207%_))))
                                       (__tmp156334
                                        (length (let ((__tmp156335
                                                       (lambda (_%g153264153267%_
                                                                _%g153265153269%_)
                                                         (cons _%g153264153267%_
                                                               _%g153265153269%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp156335
                                                   '()
                                                   _%L153203%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp156336 __tmp156334))
                                 (let ((__tmp156340
                                        (let ((__tmp156341
                                               (lambda (_%g153271153274%_
                                                        _%g153272153276%_)
                                                 (cons _%g153271153274%_
                                                       _%g153272153276%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp156341
                                           '()
                                           _%L153207%_)))
                                       (__tmp156338
                                        (let ((__tmp156339
                                               (lambda (_%g153278153281%_
                                                        _%g153279153283%_)
                                                 (cons _%g153278153281%_
                                                       _%g153279153283%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp156339
                                           '()
                                           _%L153203%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp156340
                                    __tmp156338))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L153206%_
                                    _%L153202%_))
                                 (not (let ((__tmp156345
                                             (lambda (_%g153285153287%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g153285153287%_
                                                  _%L153204%_))))
                                            (__tmp156342
                                             (let ((__tmp156344
                                                    (lambda (_%g153289153292%_
                                                             _%g153290153294%_)
                                                      (cons _%g153289153292%_
                                                            _%g153290153294%_)))
                                                   (__tmp156343
                                                    (cons _%L153206%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp156344
                                                __tmp156343
                                                _%L153207%_))))
                                        (declare (not safe))
                                        (__find __tmp156345 __tmp156342))))
                            (_%__kont155057155058%_
                             _%L153202%_
                             _%L153203%_
                             _%L153204%_
                             _%L153205%_
                             _%L153206%_
                             _%L153207%_)
                            (_%__match155162155163%_
                             _%e152785153042%_
                             _%hd152786153045%_
                             _%tl152787153047%_
                             _%e152797153074%_
                             _%hd152798153077%_
                             _%tl152799153079%_
                             _%e152800153082%_
                             _%hd152801153085%_
                             _%tl152802153087%_
                             _%e152803153090%_
                             _%hd152804153093%_
                             _%tl152805153095%_
                             _%e152806153098%_
                             _%hd152807153101%_
                             _%tl152808153103%_
                             _%e152809153106%_
                             _%hd152810153109%_
                             _%tl152811153111%_
                             _%e152812153114%_
                             _%hd152813153117%_
                             _%tl152814153119%_
                             _%e152815153122%_
                             _%hd152816153125%_
                             _%tl152817153127%_
                             _%e152818153130%_
                             _%hd152819153133%_
                             _%tl152820153135%_)))
                      (_%__match155162155163%_
                       _%e152785153042%_
                       _%hd152786153045%_
                       _%tl152787153047%_
                       _%e152797153074%_
                       _%hd152798153077%_
                       _%tl152799153079%_
                       _%e152800153082%_
                       _%hd152801153085%_
                       _%tl152802153087%_
                       _%e152803153090%_
                       _%hd152804153093%_
                       _%tl152805153095%_
                       _%e152806153098%_
                       _%hd152807153101%_
                       _%tl152808153103%_
                       _%e152809153106%_
                       _%hd152810153109%_
                       _%tl152811153111%_
                       _%e152812153114%_
                       _%hd152813153117%_
                       _%tl152814153119%_
                       _%e152815153122%_
                       _%hd152816153125%_
                       _%tl152817153127%_
                       _%e152818153130%_
                       _%hd152819153133%_
                       _%tl152820153135%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop152824153167%_
                                           _%target152821153138%_
                                           '()))
                                        (_%__match155162155163%_
                                         _%e152785153042%_
                                         _%hd152786153045%_
                                         _%tl152787153047%_
                                         _%e152797153074%_
                                         _%hd152798153077%_
                                         _%tl152799153079%_
                                         _%e152800153082%_
                                         _%hd152801153085%_
                                         _%tl152802153087%_
                                         _%e152803153090%_
                                         _%hd152804153093%_
                                         _%tl152805153095%_
                                         _%e152806153098%_
                                         _%hd152807153101%_
                                         _%tl152808153103%_
                                         _%e152809153106%_
                                         _%hd152810153109%_
                                         _%tl152811153111%_
                                         _%e152812153114%_
                                         _%hd152813153117%_
                                         _%tl152814153119%_
                                         _%e152815153122%_
                                         _%hd152816153125%_
                                         _%tl152817153127%_
                                         _%e152818153130%_
                                         _%hd152819153133%_
                                         _%tl152820153135%_))
                                    (_%__match155162155163%_
                                     _%e152785153042%_
                                     _%hd152786153045%_
                                     _%tl152787153047%_
                                     _%e152797153074%_
                                     _%hd152798153077%_
                                     _%tl152799153079%_
                                     _%e152800153082%_
                                     _%hd152801153085%_
                                     _%tl152802153087%_
                                     _%e152803153090%_
                                     _%hd152804153093%_
                                     _%tl152805153095%_
                                     _%e152806153098%_
                                     _%hd152807153101%_
                                     _%tl152808153103%_
                                     _%e152809153106%_
                                     _%hd152810153109%_
                                     _%tl152811153111%_
                                     _%e152812153114%_
                                     _%hd152813153117%_
                                     _%tl152814153119%_
                                     _%e152815153122%_
                                     _%hd152816153125%_
                                     _%tl152817153127%_
                                     _%e152818153130%_
                                     _%hd152819153133%_
                                     _%tl152820153135%_))))
                            (_%__match155162155163%_
                             _%e152785153042%_
                             _%hd152786153045%_
                             _%tl152787153047%_
                             _%e152797153074%_
                             _%hd152798153077%_
                             _%tl152799153079%_
                             _%e152800153082%_
                             _%hd152801153085%_
                             _%tl152802153087%_
                             _%e152803153090%_
                             _%hd152804153093%_
                             _%tl152805153095%_
                             _%e152806153098%_
                             _%hd152807153101%_
                             _%tl152808153103%_
                             _%e152809153106%_
                             _%hd152810153109%_
                             _%tl152811153111%_
                             _%e152812153114%_
                             _%hd152813153117%_
                             _%tl152814153119%_
                             _%e152815153122%_
                             _%hd152816153125%_
                             _%tl152817153127%_
                             _%e152818153130%_
                             _%hd152819153133%_
                             _%tl152820153135%_))
                        (_%__match155162155163%_
                         _%e152785153042%_
                         _%hd152786153045%_
                         _%tl152787153047%_
                         _%e152797153074%_
                         _%hd152798153077%_
                         _%tl152799153079%_
                         _%e152800153082%_
                         _%hd152801153085%_
                         _%tl152802153087%_
                         _%e152803153090%_
                         _%hd152804153093%_
                         _%tl152805153095%_
                         _%e152806153098%_
                         _%hd152807153101%_
                         _%tl152808153103%_
                         _%e152809153106%_
                         _%hd152810153109%_
                         _%tl152811153111%_
                         _%e152812153114%_
                         _%hd152813153117%_
                         _%tl152814153119%_
                         _%e152815153122%_
                         _%hd152816153125%_
                         _%tl152817153127%_
                         _%e152818153130%_
                         _%hd152819153133%_
                         _%tl152820153135%_))
                    (_%__match155162155163%_
                     _%e152785153042%_
                     _%hd152786153045%_
                     _%tl152787153047%_
                     _%e152797153074%_
                     _%hd152798153077%_
                     _%tl152799153079%_
                     _%e152800153082%_
                     _%hd152801153085%_
                     _%tl152802153087%_
                     _%e152803153090%_
                     _%hd152804153093%_
                     _%tl152805153095%_
                     _%e152806153098%_
                     _%hd152807153101%_
                     _%tl152808153103%_
                     _%e152809153106%_
                     _%hd152810153109%_
                     _%tl152811153111%_
                     _%e152812153114%_
                     _%hd152813153117%_
                     _%tl152814153119%_
                     _%e152815153122%_
                     _%hd152816153125%_
                     _%tl152817153127%_
                     _%e152818153130%_
                     _%hd152819153133%_
                     _%tl152820153135%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match155162155163%_
                                                     _%e152785153042%_
                                                     _%hd152786153045%_
                                                     _%tl152787153047%_
                                                     _%e152797153074%_
                                                     _%hd152798153077%_
                                                     _%tl152799153079%_
                                                     _%e152800153082%_
                                                     _%hd152801153085%_
                                                     _%tl152802153087%_
                                                     _%e152803153090%_
                                                     _%hd152804153093%_
                                                     _%tl152805153095%_
                                                     _%e152806153098%_
                                                     _%hd152807153101%_
                                                     _%tl152808153103%_
                                                     _%e152809153106%_
                                                     _%hd152810153109%_
                                                     _%tl152811153111%_
                                                     _%e152812153114%_
                                                     _%hd152813153117%_
                                                     _%tl152814153119%_
                                                     _%e152815153122%_
                                                     _%hd152816153125%_
                                                     _%tl152817153127%_
                                                     _%e152818153130%_
                                                     _%hd152819153133%_
                                                     _%tl152820153135%_))))
                                            (_%__match155162155163%_
                                             _%e152785153042%_
                                             _%hd152786153045%_
                                             _%tl152787153047%_
                                             _%e152797153074%_
                                             _%hd152798153077%_
                                             _%tl152799153079%_
                                             _%e152800153082%_
                                             _%hd152801153085%_
                                             _%tl152802153087%_
                                             _%e152803153090%_
                                             _%hd152804153093%_
                                             _%tl152805153095%_
                                             _%e152806153098%_
                                             _%hd152807153101%_
                                             _%tl152808153103%_
                                             _%e152809153106%_
                                             _%hd152810153109%_
                                             _%tl152811153111%_
                                             _%e152812153114%_
                                             _%hd152813153117%_
                                             _%tl152814153119%_
                                             _%e152815153122%_
                                             _%hd152816153125%_
                                             _%tl152817153127%_
                                             _%e152818153130%_
                                             _%hd152819153133%_
                                             _%tl152820153135%_))))
                                    (_%__match155162155163%_
                                     _%e152785153042%_
                                     _%hd152786153045%_
                                     _%tl152787153047%_
                                     _%e152797153074%_
                                     _%hd152798153077%_
                                     _%tl152799153079%_
                                     _%e152800153082%_
                                     _%hd152801153085%_
                                     _%tl152802153087%_
                                     _%e152803153090%_
                                     _%hd152804153093%_
                                     _%tl152805153095%_
                                     _%e152806153098%_
                                     _%hd152807153101%_
                                     _%tl152808153103%_
                                     _%e152809153106%_
                                     _%hd152810153109%_
                                     _%tl152811153111%_
                                     _%e152812153114%_
                                     _%hd152813153117%_
                                     _%tl152814153119%_
                                     _%e152815153122%_
                                     _%hd152816153125%_
                                     _%tl152817153127%_
                                     _%e152818153130%_
                                     _%hd152819153133%_
                                     _%tl152820153135%_))
                                (_%__match155162155163%_
                                 _%e152785153042%_
                                 _%hd152786153045%_
                                 _%tl152787153047%_
                                 _%e152797153074%_
                                 _%hd152798153077%_
                                 _%tl152799153079%_
                                 _%e152800153082%_
                                 _%hd152801153085%_
                                 _%tl152802153087%_
                                 _%e152803153090%_
                                 _%hd152804153093%_
                                 _%tl152805153095%_
                                 _%e152806153098%_
                                 _%hd152807153101%_
                                 _%tl152808153103%_
                                 _%e152809153106%_
                                 _%hd152810153109%_
                                 _%tl152811153111%_
                                 _%e152812153114%_
                                 _%hd152813153117%_
                                 _%tl152814153119%_
                                 _%e152815153122%_
                                 _%hd152816153125%_
                                 _%tl152817153127%_
                                 _%e152818153130%_
                                 _%hd152819153133%_
                                 _%tl152820153135%_))
                            (_%__kont155065155066%_))))
                    (_%__kont155065155066%_))
                (_%__kont155065155066%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont155065155066%_))))
                                            (_%__kont155065155066%_))))
                                    (_%__kont155065155066%_))
                                (_%__kont155065155066%_))))
                        (_%__kont155065155066%_))
                    (_%__kont155065155066%_))
                (_%__kont155065155066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont155065155066%_))))
                                        (_%__kont155065155066%_))
                                    (_%__kont155065155066%_))
                                (_%__kont155065155066%_))))
                        (_%__kont155065155066%_))))
                (_%__kont155065155066%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop152791153055%_
                                     _%target152788153050%_
                                     '()))))
                               (_%__match155080155081%_
                                (lambda (_%e152737153302%_
                                         _%hd152738153305%_
                                         _%tl152739153307%_
                                         _%__splice155053155054%_
                                         _%target152740153310%_
                                         _%tl152742153312%_)
                                  (letrec ((_%loop152743153315%_
                                            (lambda (_%hd152741153318%_
                                                     _%arg152747153320%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd152741153318%_))
                                                  (let ((_%e152744153323%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd152741153318%_))))
                                                    (let ((_%lp-tl152746153328%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e152744153323%_)))
                                                          (_%lp-hd152745153326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e152744153323%_))))
                                                      (_%loop152743153315%_
                                                       _%lp-tl152746153328%_
                                                       (cons _%lp-hd152745153326%_
                                                             _%arg152747153320%_))))
                                                  (let ((_%arg152748153331%_
                                                         (reverse _%arg152747153320%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl152739153307%_))
                                                        (let ((_%e152749153334%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl152739153307%_))))
                  (let ((_%tl152751153339%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e152749153334%_)))
                        (_%hd152750153337%_
                         (let ()
                           (declare (not safe))
                           (##car _%e152749153334%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd152750153337%_))
                        (let ((_%e152752153342%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd152750153337%_))))
                          (let ((_%tl152754153347%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152752153342%_)))
                                (_%hd152753153345%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152752153342%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd152753153345%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd152753153345%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl152754153347%_))
                                        (let ((_%e152755153350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl152754153347%_))))
                                          (let ((_%tl152757153355%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e152755153350%_)))
                                                (_%hd152756153353%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e152755153350%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd152756153353%_))
                                                (let ((_%e152758153358%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd152756153353%_))))
                                                  (let ((_%tl152760153363%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e152758153358%_)))
                                                        (_%hd152759153361%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e152758153358%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd152759153361%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd152759153361%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl152760153363%_))
                        (let ((_%e152761153366%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl152760153363%_))))
                          (let ((_%tl152763153371%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152761153366%_)))
                                (_%hd152762153369%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152761153366%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl152763153371%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl152757153355%_))
                                    (let ((_%__splice155055155056%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl152757153355%_
                                              '0))))
                                      (let ((_%tl152766153376%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice155055155056%_
                                                '1)))
                                            (_%target152764153374%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice155055155056%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl152766153376%_))
                                            (letrec ((_%loop152767153379%_
                                                      (lambda (_%hd152765153382%_
                                                               _%xarg152771153384%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd152765153382%_))
                                                            (let ((_%e152768153387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd152765153382%_))))
                      (let ((_%lp-tl152770153392%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e152768153387%_)))
                            (_%lp-hd152769153390%_
                             (let ()
                               (declare (not safe))
                               (##car _%e152768153387%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd152769153390%_))
                            (let ((_%e152773153395%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd152769153390%_))))
                              (let ((_%tl152775153400%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e152773153395%_)))
                                    (_%hd152774153398%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e152773153395%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd152774153398%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd152774153398%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl152775153400%_))
                                            (let ((_%e152776153403%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl152775153400%_))))
                                              (let ((_%tl152778153408%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e152776153403%_)))
                                                    (_%hd152777153406%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e152776153403%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl152778153408%_))
                                                    (_%loop152767153379%_
                                                     _%lp-tl152770153392%_
                                                     (cons _%hd152777153406%_
                                                           _%xarg152771153384%_))
                                                    (_%__match155092155093%_
                                                     _%e152737153302%_
                                                     _%hd152738153305%_
                                                     _%tl152739153307%_
                                                     _%__splice155053155054%_
                                                     _%target152740153310%_
                                                     _%tl152742153312%_))))
                                            (_%__match155092155093%_
                                             _%e152737153302%_
                                             _%hd152738153305%_
                                             _%tl152739153307%_
                                             _%__splice155053155054%_
                                             _%target152740153310%_
                                             _%tl152742153312%_))
                                        (_%__match155092155093%_
                                         _%e152737153302%_
                                         _%hd152738153305%_
                                         _%tl152739153307%_
                                         _%__splice155053155054%_
                                         _%target152740153310%_
                                         _%tl152742153312%_))
                                    (_%__match155092155093%_
                                     _%e152737153302%_
                                     _%hd152738153305%_
                                     _%tl152739153307%_
                                     _%__splice155053155054%_
                                     _%target152740153310%_
                                     _%tl152742153312%_))))
                            (_%__match155092155093%_
                             _%e152737153302%_
                             _%hd152738153305%_
                             _%tl152739153307%_
                             _%__splice155053155054%_
                             _%target152740153310%_
                             _%tl152742153312%_))))
                    (let ((_%xarg152772153411%_
                           (reverse _%xarg152771153384%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl152751153339%_))
                          (let ((_%L153414%_ _%xarg152772153411%_)
                                (_%L153415%_ _%hd152762153369%_)
                                (_%L153416%_ _%arg152748153331%_))
                            (if (and (let ((__tmp156346
                                            (let ((__tmp156347
                                                   (lambda (_%g153444153447%_
                                                            _%g153445153449%_)
                                                     (cons _%g153444153447%_
                                                           _%g153445153449%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp156347
                                               '()
                                               _%L153416%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp156346))
                                     (let ((__tmp156350
                                            (length (let ((__tmp156351
                                                           (lambda (_%g153451153454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g153452153456%_)
                     (cons _%g153451153454%_ _%g153452153456%_))))
              (declare (not safe))
              (__foldr1 __tmp156351 '() _%L153416%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp156348
                                            (length (let ((__tmp156349
                                                           (lambda (_%g153458153461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g153459153463%_)
                     (cons _%g153458153461%_ _%g153459153463%_))))
              (declare (not safe))
              (__foldr1 __tmp156349 '() _%L153414%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp156350 __tmp156348))
                                     (let ((__tmp156354
                                            (let ((__tmp156355
                                                   (lambda (_%g153465153468%_
                                                            _%g153466153470%_)
                                                     (cons _%g153465153468%_
                                                           _%g153466153470%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp156355
                                               '()
                                               _%L153416%_)))
                                           (__tmp156352
                                            (let ((__tmp156353
                                                   (lambda (_%g153472153475%_
                                                            _%g153473153477%_)
                                                     (cons _%g153472153475%_
                                                           _%g153473153477%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp156353
                                               '()
                                               _%L153414%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp156354
                                        __tmp156352))
                                     (not (let ((__tmp156358
                                                 (lambda (_%g153479153481%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g153479153481%_
                                                      _%L153415%_))))
                                                (__tmp156356
                                                 (let ((__tmp156357
                                                        (lambda (_%g153483153486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g153484153488%_)
                  (cons _%g153483153486%_ _%g153484153488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp156357
                                                    '()
                                                    _%L153416%_))))
                                            (declare (not safe))
                                            (__find __tmp156358 __tmp156356))))
                                (_%__kont155051155052%_
                                 _%L153414%_
                                 _%L153415%_
                                 _%L153416%_)
                                (_%__match155092155093%_
                                 _%e152737153302%_
                                 _%hd152738153305%_
                                 _%tl152739153307%_
                                 _%__splice155053155054%_
                                 _%target152740153310%_
                                 _%tl152742153312%_)))
                          (_%__match155092155093%_
                           _%e152737153302%_
                           _%hd152738153305%_
                           _%tl152739153307%_
                           _%__splice155053155054%_
                           _%target152740153310%_
                           _%tl152742153312%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop152767153379%_
                                               _%target152764153374%_
                                               '()))
                                            (_%__match155092155093%_
                                             _%e152737153302%_
                                             _%hd152738153305%_
                                             _%tl152739153307%_
                                             _%__splice155053155054%_
                                             _%target152740153310%_
                                             _%tl152742153312%_))))
                                    (_%__match155092155093%_
                                     _%e152737153302%_
                                     _%hd152738153305%_
                                     _%tl152739153307%_
                                     _%__splice155053155054%_
                                     _%target152740153310%_
                                     _%tl152742153312%_))
                                (_%__match155092155093%_
                                 _%e152737153302%_
                                 _%hd152738153305%_
                                 _%tl152739153307%_
                                 _%__splice155053155054%_
                                 _%target152740153310%_
                                 _%tl152742153312%_))))
                        (_%__match155092155093%_
                         _%e152737153302%_
                         _%hd152738153305%_
                         _%tl152739153307%_
                         _%__splice155053155054%_
                         _%target152740153310%_
                         _%tl152742153312%_))
                    (_%__match155092155093%_
                     _%e152737153302%_
                     _%hd152738153305%_
                     _%tl152739153307%_
                     _%__splice155053155054%_
                     _%target152740153310%_
                     _%tl152742153312%_))
                (_%__match155092155093%_
                 _%e152737153302%_
                 _%hd152738153305%_
                 _%tl152739153307%_
                 _%__splice155053155054%_
                 _%target152740153310%_
                 _%tl152742153312%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match155092155093%_
                                                 _%e152737153302%_
                                                 _%hd152738153305%_
                                                 _%tl152739153307%_
                                                 _%__splice155053155054%_
                                                 _%target152740153310%_
                                                 _%tl152742153312%_))))
                                        (_%__match155092155093%_
                                         _%e152737153302%_
                                         _%hd152738153305%_
                                         _%tl152739153307%_
                                         _%__splice155053155054%_
                                         _%target152740153310%_
                                         _%tl152742153312%_))
                                    (_%__match155092155093%_
                                     _%e152737153302%_
                                     _%hd152738153305%_
                                     _%tl152739153307%_
                                     _%__splice155053155054%_
                                     _%target152740153310%_
                                     _%tl152742153312%_))
                                (_%__match155092155093%_
                                 _%e152737153302%_
                                 _%hd152738153305%_
                                 _%tl152739153307%_
                                 _%__splice155053155054%_
                                 _%target152740153310%_
                                 _%tl152742153312%_))))
                        (_%__match155092155093%_
                         _%e152737153302%_
                         _%hd152738153305%_
                         _%tl152739153307%_
                         _%__splice155053155054%_
                         _%target152740153310%_
                         _%tl152742153312%_))))
                (_%__match155092155093%_
                 _%e152737153302%_
                 _%hd152738153305%_
                 _%tl152739153307%_
                 _%__splice155053155054%_
                 _%target152740153310%_
                 _%tl152742153312%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop152743153315%_
                                     _%target152740153310%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx155049155050%_))
                              (let ((_%e152737153302%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx155049155050%_))))
                                (let ((_%tl152739153307%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152737153302%_)))
                                      (_%hd152738153305%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152737153302%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd152738153305%_))
                                      (let ((_%__splice155053155054%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd152738153305%_
                                                '0))))
                                        (let ((_%tl152742153312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice155053155054%_
                                                  '1)))
                                              (_%target152740153310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice155053155054%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152742153312%_))
                                              (_%__match155080155081%_
                                               _%e152737153302%_
                                               _%hd152738153305%_
                                               _%tl152739153307%_
                                               _%__splice155053155054%_
                                               _%target152740153310%_
                                               _%tl152742153312%_)
                                              (_%__match155092155093%_
                                               _%e152737153302%_
                                               _%hd152738153305%_
                                               _%tl152739153307%_
                                               _%__splice155053155054%_
                                               _%target152740153310%_
                                               _%tl152742153312%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl152739153307%_))
                                          (let ((_%e152852152909%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl152739153307%_))))
                                            (let ((_%tl152854152914%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e152852152909%_)))
                                                  (_%hd152853152912%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e152852152909%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd152853152912%_))
                                                  (let ((_%e152855152917%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd152853152912%_))))
                                                    (let ((_%tl152857152922%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e152855152917%_)))
                                                          (_%hd152856152920%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e152855152917%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd152856152920%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd152856152920%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl152857152922%_))
                          (let ((_%e152858152925%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl152857152922%_))))
                            (let ((_%tl152860152930%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e152858152925%_)))
                                  (_%hd152859152928%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e152858152925%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd152859152928%_))
                                  (let ((_%e152861152933%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd152859152928%_))))
                                    (let ((_%tl152863152938%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e152861152933%_)))
                                          (_%hd152862152936%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e152861152933%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd152862152936%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd152862152936%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl152863152938%_))
                                                  (let ((_%e152864152941%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl152863152938%_))))
                                                    (let ((_%tl152866152946%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e152864152941%_)))
                                                          (_%hd152865152944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e152864152941%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl152866152946%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl152860152930%_))
                      (let ((_%e152867152949%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl152860152930%_))))
                        (let ((_%tl152869152954%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152867152949%_)))
                              (_%hd152868152952%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152867152949%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd152868152952%_))
                              (let ((_%e152870152957%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd152868152952%_))))
                                (let ((_%tl152872152962%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152870152957%_)))
                                      (_%hd152871152960%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152870152957%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd152871152960%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd152871152960%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl152872152962%_))
                                              (let ((_%e152873152965%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl152872152962%_))))
                                                (let ((_%tl152875152970%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e152873152965%_)))
                                                      (_%hd152874152968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e152873152965%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl152875152970%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl152869152954%_))
                                                          (let ((_%e152876152973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl152869152954%_))))
                    (let ((_%tl152878152978%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e152876152973%_)))
                          (_%hd152877152976%_
                           (let ()
                             (declare (not safe))
                             (##car _%e152876152973%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd152877152976%_))
                          (let ((_%e152879152981%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd152877152976%_))))
                            (let ((_%tl152881152986%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e152879152981%_)))
                                  (_%hd152880152984%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e152879152981%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd152880152984%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd152880152984%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl152881152986%_))
                                          (let ((_%e152882152989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl152881152986%_))))
                                            (let ((_%tl152884152994%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e152882152989%_)))
                                                  (_%hd152883152992%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e152882152989%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl152884152994%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl152878152978%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl152854152914%_))
                                                          (_%__match155190155191%_
                                                           _%e152737153302%_
                                                           _%hd152738153305%_
                                                           _%tl152739153307%_
                                                           _%e152852152909%_
                                                           _%hd152853152912%_
                                                           _%tl152854152914%_
                                                           _%e152855152917%_
                                                           _%hd152856152920%_
                                                           _%tl152857152922%_
                                                           _%e152858152925%_
                                                           _%hd152859152928%_
                                                           _%tl152860152930%_
                                                           _%e152861152933%_
                                                           _%hd152862152936%_
                                                           _%tl152863152938%_
                                                           _%e152864152941%_
                                                           _%hd152865152944%_
                                                           _%tl152866152946%_
                                                           _%e152867152949%_
                                                           _%hd152868152952%_
                                                           _%tl152869152954%_
                                                           _%e152870152957%_
                                                           _%hd152871152960%_
                                                           _%tl152872152962%_
                                                           _%e152873152965%_
                                                           _%hd152874152968%_
                                                           _%tl152875152970%_
                                                           _%e152876152973%_
                                                           _%hd152877152976%_
                                                           _%tl152878152978%_
                                                           _%e152879152981%_
                                                           _%hd152880152984%_
                                                           _%tl152881152986%_
                                                           _%e152882152989%_
                                                           _%hd152883152992%_
                                                           _%tl152884152994%_)
                                                          (_%__kont155065155066%_))
                                                      (_%__kont155065155066%_))
                                                  (_%__kont155065155066%_))))
                                          (_%__kont155065155066%_))
                                      (_%__kont155065155066%_))
                                  (_%__kont155065155066%_))))
                          (_%__kont155065155066%_))))
                  (_%__kont155065155066%_))
              (_%__kont155065155066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont155065155066%_))
                                          (_%__kont155065155066%_))
                                      (_%__kont155065155066%_))))
                              (_%__kont155065155066%_))))
                      (_%__kont155065155066%_))
                  (_%__kont155065155066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont155065155066%_))
                                              (_%__kont155065155066%_))
                                          (_%__kont155065155066%_))))
                                  (_%__kont155065155066%_))))
                          (_%__kont155065155066%_))
                      (_%__kont155065155066%_))
                  (_%__kont155065155066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont155065155066%_))))
                                          (_%__kont155065155066%_)))))
                              (_%__kont155065155066%_)))))))
                 (_%dispatch-case-e152037%_
                  (lambda (_%hd152188%_ _%body152189%_)
                    (let* ((_%form152191%_
                            (cons _%hd152188%_ (cons _%body152189%_ '())))
                           (_%__stx155193155194%_ _%form152191%_)
                           (_%g152195152319%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx155193155194%_)))))
                      (let ((_%__kont155195155196%_
                             (lambda (_%L152690%_ _%L152691%_ _%L152692%_)
                               (let ((__tmp156359
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L152691%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self152033%_
                                  __tmp156359))))
                            (_%__kont155201155202%_
                             (lambda (_%L152538%_
                                      _%L152539%_
                                      _%L152540%_
                                      _%L152541%_)
                               (let ((__tmp156360
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L152538%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self152033%_
                                  __tmp156360))))
                            (_%__kont155205155206%_
                             (lambda (_%L152404%_ _%L152405%_ _%L152406%_)
                               (let ((__tmp156361
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L152404%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self152033%_
                                  __tmp156361)))))
                        (let* ((_%__match155302155303%_
                                (lambda (_%e152285152324%_
                                         _%hd152286152327%_
                                         _%tl152287152329%_
                                         _%e152288152332%_
                                         _%hd152289152335%_
                                         _%tl152290152337%_
                                         _%e152291152340%_
                                         _%hd152292152343%_
                                         _%tl152293152345%_
                                         _%e152294152348%_
                                         _%hd152295152351%_
                                         _%tl152296152353%_
                                         _%e152297152356%_
                                         _%hd152298152359%_
                                         _%tl152299152361%_
                                         _%e152300152364%_
                                         _%hd152301152367%_
                                         _%tl152302152369%_
                                         _%e152303152372%_
                                         _%hd152304152375%_
                                         _%tl152305152377%_
                                         _%e152306152380%_
                                         _%hd152307152383%_
                                         _%tl152308152385%_
                                         _%e152309152388%_
                                         _%hd152310152391%_
                                         _%tl152311152393%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152305152377%_))
                                      (let ((_%e152312152396%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152305152377%_))))
                                        (let ((_%tl152314152401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152312152396%_)))
                                              (_%hd152313152399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152312152396%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152314152401%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl152290152337%_))
                                                  (_%__kont155205155206%_
                                                   _%hd152310152391%_
                                                   _%hd152301152367%_
                                                   _%hd152286152327%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g152195152319%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g152195152319%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g152195152319%_)))))
                               (_%__match155232155233%_
                                (lambda (_%e152246152442%_
                                         _%hd152247152445%_
                                         _%tl152248152447%_
                                         _%__splice155203155204%_
                                         _%target152249152450%_
                                         _%tl152251152452%_)
                                  (letrec ((_%loop152252152455%_
                                            (lambda (_%hd152250152458%_
                                                     _%arg152256152460%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd152250152458%_))
                                                  (let ((_%e152253152463%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd152250152458%_))))
                                                    (let ((_%lp-tl152255152468%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e152253152463%_)))
                                                          (_%lp-hd152254152466%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e152253152463%_))))
                                                      (_%loop152252152455%_
                                                       _%lp-tl152255152468%_
                                                       (cons _%lp-hd152254152466%_
                                                             _%arg152256152460%_))))
                                                  (let ((_%arg152257152471%_
                                                         (reverse _%arg152256152460%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl152248152447%_))
                                                        (let ((_%e152258152474%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl152248152447%_))))
                  (let ((_%tl152260152479%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e152258152474%_)))
                        (_%hd152259152477%_
                         (let ()
                           (declare (not safe))
                           (##car _%e152258152474%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd152259152477%_))
                        (let ((_%e152261152482%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd152259152477%_))))
                          (let ((_%tl152263152487%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152261152482%_)))
                                (_%hd152262152485%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152261152482%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd152262152485%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd152262152485%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl152263152487%_))
                                        (let ((_%e152264152490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl152263152487%_))))
                                          (let ((_%tl152266152495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e152264152490%_)))
                                                (_%hd152265152493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e152264152490%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd152265152493%_))
                                                (let ((_%e152267152498%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd152265152493%_))))
                                                  (let ((_%tl152269152503%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e152267152498%_)))
                                                        (_%hd152268152501%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e152267152498%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd152268152501%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd152268152501%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl152269152503%_))
                        (let ((_%e152270152506%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl152269152503%_))))
                          (let ((_%tl152272152511%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152270152506%_)))
                                (_%hd152271152509%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152270152506%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl152272152511%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl152266152495%_))
                                    (let ((_%e152273152514%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl152266152495%_))))
                                      (let ((_%tl152275152519%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e152273152514%_)))
                                            (_%hd152274152517%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e152273152514%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd152274152517%_))
                                            (let ((_%e152276152522%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd152274152517%_))))
                                              (let ((_%tl152278152527%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e152276152522%_)))
                                                    (_%hd152277152525%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e152276152522%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd152277152525%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd152277152525%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl152278152527%_))
                                                            (let ((_%e152279152530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl152278152527%_))))
                      (let ((_%tl152281152535%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e152279152530%_)))
                            (_%hd152280152533%_
                             (let ()
                               (declare (not safe))
                               (##car _%e152279152530%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl152281152535%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl152260152479%_))
                                (_%__kont155201155202%_
                                 _%hd152280152533%_
                                 _%hd152271152509%_
                                 _%tl152251152452%_
                                 _%arg152257152471%_)
                                (_%__match155302155303%_
                                 _%e152246152442%_
                                 _%hd152247152445%_
                                 _%tl152248152447%_
                                 _%e152258152474%_
                                 _%hd152259152477%_
                                 _%tl152260152479%_
                                 _%e152261152482%_
                                 _%hd152262152485%_
                                 _%tl152263152487%_
                                 _%e152264152490%_
                                 _%hd152265152493%_
                                 _%tl152266152495%_
                                 _%e152267152498%_
                                 _%hd152268152501%_
                                 _%tl152269152503%_
                                 _%e152270152506%_
                                 _%hd152271152509%_
                                 _%tl152272152511%_
                                 _%e152273152514%_
                                 _%hd152274152517%_
                                 _%tl152275152519%_
                                 _%e152276152522%_
                                 _%hd152277152525%_
                                 _%tl152278152527%_
                                 _%e152279152530%_
                                 _%hd152280152533%_
                                 _%tl152281152535%_))
                            (let ()
                              (declare (not safe))
                              (_%g152195152319%_)))))
                    (let () (declare (not safe)) (_%g152195152319%_)))
                (let () (declare (not safe)) (_%g152195152319%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g152195152319%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g152195152319%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g152195152319%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g152195152319%_)))))
                        (let () (declare (not safe)) (_%g152195152319%_)))
                    (let () (declare (not safe)) (_%g152195152319%_)))
                (let () (declare (not safe)) (_%g152195152319%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g152195152319%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g152195152319%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g152195152319%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g152195152319%_)))))
                        (let () (declare (not safe)) (_%g152195152319%_)))))
                (let () (declare (not safe)) (_%g152195152319%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop152252152455%_
                                     _%target152249152450%_
                                     '()))))
                               (_%__match155220155221%_
                                (lambda (_%e152200152578%_
                                         _%hd152201152581%_
                                         _%tl152202152583%_
                                         _%__splice155197155198%_
                                         _%target152203152586%_
                                         _%tl152205152588%_)
                                  (letrec ((_%loop152206152591%_
                                            (lambda (_%hd152204152594%_
                                                     _%arg152210152596%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd152204152594%_))
                                                  (let ((_%e152207152599%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd152204152594%_))))
                                                    (let ((_%lp-tl152209152604%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e152207152599%_)))
                                                          (_%lp-hd152208152602%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e152207152599%_))))
                                                      (_%loop152206152591%_
                                                       _%lp-tl152209152604%_
                                                       (cons _%lp-hd152208152602%_
                                                             _%arg152210152596%_))))
                                                  (let ((_%arg152211152607%_
                                                         (reverse _%arg152210152596%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl152202152583%_))
                                                        (let ((_%e152212152610%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl152202152583%_))))
                  (let ((_%tl152214152615%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e152212152610%_)))
                        (_%hd152213152613%_
                         (let ()
                           (declare (not safe))
                           (##car _%e152212152610%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd152213152613%_))
                        (let ((_%e152215152618%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd152213152613%_))))
                          (let ((_%tl152217152623%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152215152618%_)))
                                (_%hd152216152621%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152215152618%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd152216152621%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd152216152621%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl152217152623%_))
                                        (let ((_%e152218152626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl152217152623%_))))
                                          (let ((_%tl152220152631%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e152218152626%_)))
                                                (_%hd152219152629%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e152218152626%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd152219152629%_))
                                                (let ((_%e152221152634%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd152219152629%_))))
                                                  (let ((_%tl152223152639%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e152221152634%_)))
                                                        (_%hd152222152637%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e152221152634%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd152222152637%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd152222152637%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl152223152639%_))
                        (let ((_%e152224152642%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl152223152639%_))))
                          (let ((_%tl152226152647%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152224152642%_)))
                                (_%hd152225152645%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152224152642%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl152226152647%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl152220152631%_))
                                    (let ((_%__splice155199155200%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl152220152631%_
                                              '0))))
                                      (let ((_%tl152229152652%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice155199155200%_
                                                '1)))
                                            (_%target152227152650%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice155199155200%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl152229152652%_))
                                            (letrec ((_%loop152230152655%_
                                                      (lambda (_%hd152228152658%_
                                                               _%xarg152234152660%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd152228152658%_))
                                                            (let ((_%e152231152663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd152228152658%_))))
                      (let ((_%lp-tl152233152668%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e152231152663%_)))
                            (_%lp-hd152232152666%_
                             (let ()
                               (declare (not safe))
                               (##car _%e152231152663%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd152232152666%_))
                            (let ((_%e152236152671%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd152232152666%_))))
                              (let ((_%tl152238152676%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e152236152671%_)))
                                    (_%hd152237152674%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e152236152671%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd152237152674%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd152237152674%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl152238152676%_))
                                            (let ((_%e152239152679%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl152238152676%_))))
                                              (let ((_%tl152241152684%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e152239152679%_)))
                                                    (_%hd152240152682%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e152239152679%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl152241152684%_))
                                                    (_%loop152230152655%_
                                                     _%lp-tl152233152668%_
                                                     (cons _%hd152240152682%_
                                                           _%xarg152234152660%_))
                                                    (_%__match155232155233%_
                                                     _%e152200152578%_
                                                     _%hd152201152581%_
                                                     _%tl152202152583%_
                                                     _%__splice155197155198%_
                                                     _%target152203152586%_
                                                     _%tl152205152588%_))))
                                            (_%__match155232155233%_
                                             _%e152200152578%_
                                             _%hd152201152581%_
                                             _%tl152202152583%_
                                             _%__splice155197155198%_
                                             _%target152203152586%_
                                             _%tl152205152588%_))
                                        (_%__match155232155233%_
                                         _%e152200152578%_
                                         _%hd152201152581%_
                                         _%tl152202152583%_
                                         _%__splice155197155198%_
                                         _%target152203152586%_
                                         _%tl152205152588%_))
                                    (_%__match155232155233%_
                                     _%e152200152578%_
                                     _%hd152201152581%_
                                     _%tl152202152583%_
                                     _%__splice155197155198%_
                                     _%target152203152586%_
                                     _%tl152205152588%_))))
                            (_%__match155232155233%_
                             _%e152200152578%_
                             _%hd152201152581%_
                             _%tl152202152583%_
                             _%__splice155197155198%_
                             _%target152203152586%_
                             _%tl152205152588%_))))
                    (let ((_%xarg152235152687%_
                           (reverse _%xarg152234152660%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl152214152615%_))
                          (_%__kont155195155196%_
                           _%xarg152235152687%_
                           _%hd152225152645%_
                           _%arg152211152607%_)
                          (_%__match155232155233%_
                           _%e152200152578%_
                           _%hd152201152581%_
                           _%tl152202152583%_
                           _%__splice155197155198%_
                           _%target152203152586%_
                           _%tl152205152588%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop152230152655%_
                                               _%target152227152650%_
                                               '()))
                                            (_%__match155232155233%_
                                             _%e152200152578%_
                                             _%hd152201152581%_
                                             _%tl152202152583%_
                                             _%__splice155197155198%_
                                             _%target152203152586%_
                                             _%tl152205152588%_))))
                                    (_%__match155232155233%_
                                     _%e152200152578%_
                                     _%hd152201152581%_
                                     _%tl152202152583%_
                                     _%__splice155197155198%_
                                     _%target152203152586%_
                                     _%tl152205152588%_))
                                (_%__match155232155233%_
                                 _%e152200152578%_
                                 _%hd152201152581%_
                                 _%tl152202152583%_
                                 _%__splice155197155198%_
                                 _%target152203152586%_
                                 _%tl152205152588%_))))
                        (_%__match155232155233%_
                         _%e152200152578%_
                         _%hd152201152581%_
                         _%tl152202152583%_
                         _%__splice155197155198%_
                         _%target152203152586%_
                         _%tl152205152588%_))
                    (_%__match155232155233%_
                     _%e152200152578%_
                     _%hd152201152581%_
                     _%tl152202152583%_
                     _%__splice155197155198%_
                     _%target152203152586%_
                     _%tl152205152588%_))
                (_%__match155232155233%_
                 _%e152200152578%_
                 _%hd152201152581%_
                 _%tl152202152583%_
                 _%__splice155197155198%_
                 _%target152203152586%_
                 _%tl152205152588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match155232155233%_
                                                 _%e152200152578%_
                                                 _%hd152201152581%_
                                                 _%tl152202152583%_
                                                 _%__splice155197155198%_
                                                 _%target152203152586%_
                                                 _%tl152205152588%_))))
                                        (_%__match155232155233%_
                                         _%e152200152578%_
                                         _%hd152201152581%_
                                         _%tl152202152583%_
                                         _%__splice155197155198%_
                                         _%target152203152586%_
                                         _%tl152205152588%_))
                                    (_%__match155232155233%_
                                     _%e152200152578%_
                                     _%hd152201152581%_
                                     _%tl152202152583%_
                                     _%__splice155197155198%_
                                     _%target152203152586%_
                                     _%tl152205152588%_))
                                (_%__match155232155233%_
                                 _%e152200152578%_
                                 _%hd152201152581%_
                                 _%tl152202152583%_
                                 _%__splice155197155198%_
                                 _%target152203152586%_
                                 _%tl152205152588%_))))
                        (_%__match155232155233%_
                         _%e152200152578%_
                         _%hd152201152581%_
                         _%tl152202152583%_
                         _%__splice155197155198%_
                         _%target152203152586%_
                         _%tl152205152588%_))))
                (_%__match155232155233%_
                 _%e152200152578%_
                 _%hd152201152581%_
                 _%tl152202152583%_
                 _%__splice155197155198%_
                 _%target152203152586%_
                 _%tl152205152588%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop152206152591%_
                                     _%target152203152586%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx155193155194%_))
                              (let ((_%e152200152578%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx155193155194%_))))
                                (let ((_%tl152202152583%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152200152578%_)))
                                      (_%hd152201152581%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152200152578%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd152201152581%_))
                                      (let ((_%__splice155197155198%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd152201152581%_
                                                '0))))
                                        (let ((_%tl152205152588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice155197155198%_
                                                  '1)))
                                              (_%target152203152586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice155197155198%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152205152588%_))
                                              (_%__match155220155221%_
                                               _%e152200152578%_
                                               _%hd152201152581%_
                                               _%tl152202152583%_
                                               _%__splice155197155198%_
                                               _%target152203152586%_
                                               _%tl152205152588%_)
                                              (_%__match155232155233%_
                                               _%e152200152578%_
                                               _%hd152201152581%_
                                               _%tl152202152583%_
                                               _%__splice155197155198%_
                                               _%target152203152586%_
                                               _%tl152205152588%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl152202152583%_))
                                          (let ((_%e152288152332%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl152202152583%_))))
                                            (let ((_%tl152290152337%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e152288152332%_)))
                                                  (_%hd152289152335%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e152288152332%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd152289152335%_))
                                                  (let ((_%e152291152340%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd152289152335%_))))
                                                    (let ((_%tl152293152345%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e152291152340%_)))
                                                          (_%hd152292152343%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e152291152340%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd152292152343%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd152292152343%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl152293152345%_))
                          (let ((_%e152294152348%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl152293152345%_))))
                            (let ((_%tl152296152353%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e152294152348%_)))
                                  (_%hd152295152351%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e152294152348%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd152295152351%_))
                                  (let ((_%e152297152356%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd152295152351%_))))
                                    (let ((_%tl152299152361%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e152297152356%_)))
                                          (_%hd152298152359%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e152297152356%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd152298152359%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd152298152359%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl152299152361%_))
                                                  (let ((_%e152300152364%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl152299152361%_))))
                                                    (let ((_%tl152302152369%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e152300152364%_)))
                                                          (_%hd152301152367%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e152300152364%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl152302152369%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl152296152353%_))
                      (let ((_%e152303152372%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl152296152353%_))))
                        (let ((_%tl152305152377%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152303152372%_)))
                              (_%hd152304152375%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152303152372%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd152304152375%_))
                              (let ((_%e152306152380%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd152304152375%_))))
                                (let ((_%tl152308152385%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152306152380%_)))
                                      (_%hd152307152383%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152306152380%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd152307152383%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd152307152383%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl152308152385%_))
                                              (let ((_%e152309152388%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl152308152385%_))))
                                                (let ((_%tl152311152393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e152309152388%_)))
                                                      (_%hd152310152391%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e152309152388%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl152311152393%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl152305152377%_))
                                                          (let ((_%e152312152396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl152305152377%_))))
                    (let ((_%tl152314152401%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e152312152396%_)))
                          (_%hd152313152399%_
                           (let ()
                             (declare (not safe))
                             (##car _%e152312152396%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl152314152401%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl152290152337%_))
                              (_%__kont155205155206%_
                               _%hd152310152391%_
                               _%hd152301152367%_
                               _%hd152201152581%_)
                              (let ()
                                (declare (not safe))
                                (_%g152195152319%_)))
                          (let () (declare (not safe)) (_%g152195152319%_)))))
                  (let () (declare (not safe)) (_%g152195152319%_)))
              (let () (declare (not safe)) (_%g152195152319%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g152195152319%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g152195152319%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g152195152319%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g152195152319%_)))))
                      (let () (declare (not safe)) (_%g152195152319%_)))
                  (let () (declare (not safe)) (_%g152195152319%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g152195152319%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g152195152319%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g152195152319%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g152195152319%_)))))
                          (let () (declare (not safe)) (_%g152195152319%_)))
                      (let () (declare (not safe)) (_%g152195152319%_)))
                  (let () (declare (not safe)) (_%g152195152319%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g152195152319%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g152195152319%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g152195152319%_))))))))
                 (_%generate1152038%_
                  (lambda (_%args152173%_
                           _%arglen152174%_
                           _%hd152175%_
                           _%body152176%_)
                    (let* ((_%len152178%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd152175%_)))
                           (_%condition152183%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd152175%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen152174%_
                                                (cons _%len152178%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen152174%_ (cons _%len152178%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len152178%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen152174%_
                                                    (cons _%len152178%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen152174%_ (cons _%len152178%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch152185%_
                            (if (_%dispatch-case?152036%_
                                 _%hd152175%_
                                 _%body152176%_)
                                (_%dispatch-case-e152037%_
                                 _%hd152175%_
                                 _%body152176%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self152033%_
                                 _%hd152175%_
                                 _%body152176%_))))
                      (cons _%condition152183%_
                            (cons (cons 'apply
                                        (cons _%dispatch152185%_
                                              (cons _%args152173%_ '())))
                                  '()))))))
          (let* ((_%g152040152068%_
                  (lambda (_%g152041152065%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g152041152065%_))))
                 (_%g152039152170%_
                  (lambda (_%g152041152071%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g152041152071%_))
                        (let ((_%e152044152073%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g152041152071%_))))
                          (let ((_%hd152045152076%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152044152073%_)))
                                (_%tl152046152078%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152044152073%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl152046152078%_))
                                (let ((_g156362_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl152046152078%_
                                          '0))))
                                  (begin
                                    (let ((_g156363_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156362_)
                                                 (##values-length _g156362_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156363_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156363_)))
                                    (let ((_%target152047152081%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156362_ 0)))
                                          (_%tl152049152083%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156362_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl152049152083%_))
                                          (letrec ((_%loop152050152086%_
                                                    (lambda (_%hd152048152089%_
                                                             _%body152054152091%_
                                                             _%hd152055152093%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd152048152089%_))
                                                          (let ((_%e152051152096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd152048152089%_))))
                    (let ((_%lp-hd152052152099%_
                           (let ()
                             (declare (not safe))
                             (##car _%e152051152096%_)))
                          (_%lp-tl152053152101%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e152051152096%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd152052152099%_))
                          (let ((_%e152058152104%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd152052152099%_))))
                            (let ((_%hd152059152107%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e152058152104%_)))
                                  (_%tl152060152109%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e152058152104%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl152060152109%_))
                                  (let ((_%e152061152112%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl152060152109%_))))
                                    (let ((_%hd152062152115%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e152061152112%_)))
                                          (_%tl152063152117%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e152061152112%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl152063152117%_))
                                          (_%loop152050152086%_
                                           _%lp-tl152053152101%_
                                           (cons _%hd152062152115%_
                                                 _%body152054152091%_)
                                           (cons _%hd152059152107%_
                                                 _%hd152055152093%_))
                                          (_%g152040152068%_
                                           _%g152041152071%_))))
                                  (_%g152040152068%_ _%g152041152071%_))))
                          (_%g152040152068%_ _%g152041152071%_))))
                  (let ((_%body152056152120%_ (reverse _%body152054152091%_))
                        (_%hd152057152122%_ (reverse _%hd152055152093%_)))
                    ((lambda (_%L152125%_ _%L152126%_)
                       (let ((_%args152145%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen152146%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name152147%_
                              (let ((_%$e152142%_
                                     (let ((__tmp156364
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp156364 _%stx152034%_))))
                                (if _%$e152142%_
                                    _%$e152142%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args152145%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen152146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args152145%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args152145%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp156368
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name152147%_
                                                                (cons _%args152145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp156365
                                  (map (lambda (_%g152148152151%_
                                                _%g152149152153%_)
                                         (_%generate1152038%_
                                          _%args152145%_
                                          _%arglen152146%_
                                          _%g152148152151%_
                                          _%g152149152153%_))
                                       (let ((__tmp156366
                                              (lambda (_%g152155152158%_
                                                       _%g152156152160%_)
                                                (cons _%g152155152158%_
                                                      _%g152156152160%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp156366
                                          '()
                                          _%L152126%_))
                                       (let ((__tmp156367
                                              (lambda (_%g152162152165%_
                                                       _%g152163152167%_)
                                                (cons _%g152162152165%_
                                                      _%g152163152167%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp156367
                                          '()
                                          _%L152125%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp156368 __tmp156365)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body152056152120%_
                     _%hd152057152122%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop152050152086%_
                                             _%target152047152081%_
                                             '()
                                             '()))
                                          (_%g152040152068%_
                                           _%g152041152071%_)))))
                                (_%g152040152068%_ _%g152041152071%_))))
                        (_%g152040152068%_ _%g152041152071%_)))))
            (_%g152039152170%_ _%stx152034%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self151270%_ _%stx151271%_ _%compiled-body?151272%_)
        (letrec ((_%generate-simple151274%_
                  (lambda (_%hd152018%_ _%body152019%_)
                    (_%coalesce-boolean151275%_
                     (_%simplify-let151276%_
                      (gxc#generate-runtime-simple-let
                       _%self151270%_
                       'let
                       _%hd152018%_
                       _%body152019%_
                       _%compiled-body?151272%_)))))
                 (_%coalesce-boolean151275%_
                  (lambda (_%code151879%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code151880151906%_ _%code151879%_)
                               (_%else151882151914%_
                                (lambda () _%code151879%_))
                               (_%K151884151951%_
                                (lambda (_%expr2151917%_
                                         _%expr1151918%_
                                         _%id151919%_)
                                  (let* ((_%expr2151920151928%_
                                          _%expr2151917%_)
                                         (_%else151922151936%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1151918%_
                                                        (cons _%expr2151917%_
                                                              '())))))
                                         (_%K151924151941%_
                                          (lambda (_%exprs151939%_)
                                            (cons 'or
                                                  (cons _%expr1151918%_
                                                        _%exprs151939%_)))))
                                    (if (pair? _%expr2151920151928%_)
                                        (let ((_%hd151925151944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2151920151928%_)))
                                              (_%tl151926151946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2151920151928%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd151925151944%_ 'or))
                                              (let ((_%exprs151949%_
                                                     _%tl151926151946%_))
                                                (_%K151924151941%_
                                                 _%exprs151949%_))
                                              (_%else151922151936%_)))
                                        (_%else151922151936%_))))))
                          (if (pair? _%code151880151906%_)
                              (let ((_%hd151885151954%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code151880151906%_)))
                                    (_%tl151886151956%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code151880151906%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd151885151954%_ 'let))
                                    (if (pair? _%tl151886151956%_)
                                        (let ((_%hd151887151959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl151886151956%_)))
                                              (_%tl151888151961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl151886151956%_))))
                                          (if (pair? _%hd151887151959%_)
                                              (let ((_%hd151899151964%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd151887151959%_)))
                                                    (_%tl151900151966%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd151887151959%_))))
                                                (if (pair? _%hd151899151964%_)
                                                    (let ((_%hd151901151969%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd151899151964%_)))
                                                          (_%tl151902151971%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd151899151964%_))))
                                                      (let ((_%id151974%_
                                                             _%hd151901151969%_))
                                                        (if (pair? _%tl151902151971%_)
                                                            (let ((_%hd151903151976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl151902151971%_)))
                          (_%tl151904151978%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl151902151971%_))))
                      (let ((_%expr1151981%_ _%hd151903151976%_))
                        (if (null? _%tl151904151978%_)
                            (if (null? _%tl151900151966%_)
                                (if (pair? _%tl151888151961%_)
                                    (let ((_%hd151889151983%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl151888151961%_)))
                                          (_%tl151890151985%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl151888151961%_))))
                                      (if (pair? _%hd151889151983%_)
                                          (let ((_%hd151891151988%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd151889151983%_)))
                                                (_%tl151892151990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd151889151983%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd151891151988%_
                                                         'if))
                                                (if (pair? _%tl151892151990%_)
                                                    (let ((_%hd151893151993%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl151892151990%_)))
                                                          (_%tl151894151995%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl151892151990%_))))
                                                      (if ((lambda (_%g151997151999%_)
                                                             (eq? _%g151997151999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id151974%_))
                   _%hd151893151993%_)
                  (if (pair? _%tl151894151995%_)
                      (let ((_%hd151895152002%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl151894151995%_)))
                            (_%tl151896152004%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl151894151995%_))))
                        (if ((lambda (_%g152006152008%_)
                               (eq? _%g152006152008%_ _%id151974%_))
                             _%hd151895152002%_)
                            (if (pair? _%tl151896152004%_)
                                (let ((_%hd151897152011%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl151896152004%_)))
                                      (_%tl151898152013%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl151896152004%_))))
                                  (let ((_%expr2152016%_ _%hd151897152011%_))
                                    (if (null? _%tl151898152013%_)
                                        (if (null? _%tl151890151985%_)
                                            (_%K151884151951%_
                                             _%expr2152016%_
                                             _%expr1151981%_
                                             _%id151974%_)
                                            (_%else151882151914%_))
                                        (_%else151882151914%_))))
                                (_%else151882151914%_))
                            (_%else151882151914%_)))
                      (_%else151882151914%_))
                  (_%else151882151914%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else151882151914%_))
                                                (_%else151882151914%_)))
                                          (_%else151882151914%_)))
                                    (_%else151882151914%_))
                                (_%else151882151914%_))
                            (_%else151882151914%_))))
                    (_%else151882151914%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else151882151914%_)))
                                              (_%else151882151914%_)))
                                        (_%else151882151914%_))
                                    (_%else151882151914%_)))
                              (_%else151882151914%_)))
                        _%code151879%_)))
                 (_%simplify-let151276%_
                  (lambda (_%code151578%_)
                    (let* ((_%code151579151651%_ _%code151578%_)
                           (_%else151584151659%_ (lambda () _%code151578%_)))
                      (let ((_%K151643151859%_
                             (lambda (_%expr151857%_) _%expr151857%_))
                            (_%K151626151805%_
                             (lambda (_%body151801%_
                                      _%expr151802%_
                                      _%id151803%_)
                               (cons 'let
                                     (cons (cons (cons _%id151803%_
                                                       (cons _%expr151802%_
                                                             '()))
                                                 '())
                                           _%body151801%_))))
                            (_%K151603151729%_
                             (lambda (_%body151723%_
                                      _%expr2151724%_
                                      _%id2151725%_
                                      _%expr1151726%_
                                      _%id1151727%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1151727%_
                                                       (cons _%expr1151726%_
                                                             '()))
                                                 (cons (cons _%id2151725%_
                                                             (cons _%expr2151724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body151723%_))))
                            (_%K151586151668%_
                             (lambda (_%body151663%_
                                      _%bind151664%_
                                      _%expr1151665%_
                                      _%id1151666%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1151666%_
                                                       (cons _%expr1151665%_
                                                             '()))
                                                 _%bind151664%_)
                                           _%body151663%_)))))
                        (if (pair? _%code151579151651%_)
                            (let ((_%tl151645151864%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code151579151651%_)))
                                  (_%hd151644151862%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code151579151651%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd151644151862%_ 'let))
                                  (if (pair? _%tl151645151864%_)
                                      (let ((_%tl151647151869%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl151645151864%_)))
                                            (_%hd151646151867%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl151645151864%_))))
                                        (if (null? _%hd151646151867%_)
                                            (if (pair? _%tl151647151869%_)
                                                (let ((_%tl151649151874%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl151647151869%_)))
                                                      (_%hd151648151872%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl151647151869%_))))
                                                  (if (null? _%tl151649151874%_)
                                                      (let ((_%expr151877%_
                                                             _%hd151648151872%_))
                                                        (_%K151643151859%_
                                                         _%expr151877%_))
                                                      (_%else151584151659%_)))
                                                (_%else151584151659%_))
                                            (if (pair? _%hd151646151867%_)
                                                (let ((_%tl151638151820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd151646151867%_)))
                                                      (_%hd151637151818%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd151646151867%_))))
                                                  (if (pair? _%hd151637151818%_)
                                                      (let ((_%tl151640151825%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd151637151818%_)))
                    (_%hd151639151823%_
                     (let () (declare (not safe)) (##car _%hd151637151818%_))))
                (if (pair? _%tl151640151825%_)
                    (let ((_%tl151642151832%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl151640151825%_)))
                          (_%hd151641151830%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl151640151825%_))))
                      (if (null? _%tl151642151832%_)
                          (if (null? _%tl151638151820%_)
                              (if (pair? _%tl151647151869%_)
                                  (let ((_%tl151632151839%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl151647151869%_)))
                                        (_%hd151631151837%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl151647151869%_))))
                                    (if (pair? _%hd151631151837%_)
                                        (let ((_%tl151634151844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd151631151837%_)))
                                              (_%hd151633151842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd151631151837%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd151633151842%_
                                                       'let))
                                              (if (pair? _%tl151634151844%_)
                                                  (let ((_%tl151636151849%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl151634151844%_)))
                                                        (_%hd151635151847%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl151634151844%_))))
                                                    (if (null? _%hd151635151847%_)
                                                        (if (null? _%tl151632151839%_)
                                                            (let ((_%id151828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd151639151823%_)
                          (_%expr151835%_ _%hd151641151830%_)
                          (_%body151852%_ _%tl151636151849%_))
                      (_%K151626151805%_
                       _%body151852%_
                       _%expr151835%_
                       _%id151828%_))
                    (_%else151584151659%_))
                (if (pair? _%hd151635151847%_)
                    (let ((_%tl151615151778%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd151635151847%_)))
                          (_%hd151614151776%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd151635151847%_))))
                      (if (pair? _%hd151614151776%_)
                          (let ((_%tl151617151783%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd151614151776%_)))
                                (_%hd151616151781%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd151614151776%_))))
                            (if (pair? _%tl151617151783%_)
                                (let ((_%tl151619151790%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl151617151783%_)))
                                      (_%hd151618151788%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl151617151783%_))))
                                  (if (null? _%tl151619151790%_)
                                      (if (null? _%tl151615151778%_)
                                          (if (null? _%tl151632151839%_)
                                              (let ((_%id1151752%_
                                                     _%hd151639151823%_)
                                                    (_%expr1151759%_
                                                     _%hd151641151830%_)
                                                    (_%id2151786%_
                                                     _%hd151616151781%_)
                                                    (_%expr2151793%_
                                                     _%hd151618151788%_)
                                                    (_%body151795%_
                                                     _%tl151636151849%_))
                                                (_%K151603151729%_
                                                 _%body151795%_
                                                 _%expr2151793%_
                                                 _%id2151786%_
                                                 _%expr1151759%_
                                                 _%id1151752%_))
                                              (_%else151584151659%_))
                                          (_%else151584151659%_))
                                      (_%else151584151659%_)))
                                (_%else151584151659%_)))
                          (_%else151584151659%_)))
                    (_%else151584151659%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else151584151659%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd151633151842%_
                                                           'let*))
                                                  (if (pair? _%tl151634151844%_)
                                                      (let ((_%tl151596151712%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl151634151844%_)))
                    (_%hd151595151710%_
                     (let () (declare (not safe)) (##car _%tl151634151844%_))))
                (if (null? _%tl151632151839%_)
                    (let ((_%id1151691%_ _%hd151639151823%_)
                          (_%expr1151698%_ _%hd151641151830%_)
                          (_%bind151715%_ _%hd151595151710%_)
                          (_%body151717%_ _%tl151596151712%_))
                      (_%K151586151668%_
                       _%body151717%_
                       _%bind151715%_
                       _%expr1151698%_
                       _%id1151691%_))
                    (_%else151584151659%_)))
              (_%else151584151659%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else151584151659%_))))
                                        (_%else151584151659%_)))
                                  (_%else151584151659%_))
                              (_%else151584151659%_))
                          (_%else151584151659%_)))
                    (_%else151584151659%_)))
              (_%else151584151659%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else151584151659%_))))
                                      (_%else151584151659%_))
                                  (_%else151584151659%_)))
                            (_%else151584151659%_))))))
                 (_%generate-values151277%_
                  (lambda (_%hd151391%_ _%body151392%_)
                    (let _%lp151394%_ ((_%rest151396%_ _%hd151391%_)
                                       (_%bind151397%_ '())
                                       (_%check151398%_ '())
                                       (_%post151399%_ '()))
                      (let* ((_%__stx155522155523%_ _%rest151396%_)
                             (_%g151402151413%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx155522155523%_)))))
                        (let ((_%__kont155524155525%_
                               (lambda (_%L151440%_ _%L151441%_)
                                 (let* ((_%__stx155478155479%_ _%L151441%_)
                                        (_%g151456151481%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx155478155479%_)))))
                                   (let ((_%__kont155480155481%_
                                          (lambda (_%L151554%_ _%L151555%_)
                                            (let ((_%eid151569%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L151555%_)))
                                                  (_%expr151570%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151270%_
                                                      _%L151554%_))))
                                              (_%lp151394%_
                                               _%L151440%_
                                               (cons (cons _%eid151569%_
                                                           (cons _%expr151570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind151397%_)
                                               _%check151398%_
                                               _%post151399%_))))
                                         (_%__kont155482155483%_
                                          (lambda (_%L151502%_ _%L151503%_)
                                            (let* ((_%vals151516%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values151518%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals151516%_
                                                     _%L151503%_
                                                     _%L151502%_))
                                                   (_%refs151520%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals151516%_
                                                     _%L151503%_))
                                                   (_%expr151522%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self151270%_
                                                       _%L151502%_))))
                                              (_%lp151394%_
                                               _%L151440%_
                                               (cons (cons _%vals151516%_
                                                           (cons _%expr151522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind151397%_)
                                               (cons _%check-values151518%_
                                                     _%check151398%_)
                                               (cons _%refs151520%_
                                                     _%post151399%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx155478155479%_))
                                         (let ((_%e151460151530%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx155478155479%_))))
                                           (let ((_%tl151462151535%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e151460151530%_)))
                                                 (_%hd151461151533%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e151460151530%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd151461151533%_))
                                                 (let ((_%e151463151538%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd151461151533%_))))
                                                   (let ((_%tl151465151543%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e151463151538%_)))
                                                         (_%hd151464151541%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e151463151538%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl151465151543%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl151462151535%_))
                     (let ((_%e151466151546%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl151462151535%_))))
                       (let ((_%tl151468151551%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e151466151546%_)))
                             (_%hd151467151549%_
                              (let ()
                                (declare (not safe))
                                (##car _%e151466151546%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl151468151551%_))
                             (_%__kont155480155481%_
                              _%hd151467151549%_
                              _%hd151464151541%_)
                             (let ()
                               (declare (not safe))
                               (_%g151456151481%_)))))
                     (let () (declare (not safe)) (_%g151456151481%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl151462151535%_))
                     (let ((_%e151474151494%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl151462151535%_))))
                       (let ((_%tl151476151499%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e151474151494%_)))
                             (_%hd151475151497%_
                              (let ()
                                (declare (not safe))
                                (##car _%e151474151494%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl151476151499%_))
                             (_%__kont155482155483%_
                              _%hd151475151497%_
                              _%hd151461151533%_)
                             (let ()
                               (declare (not safe))
                               (_%g151456151481%_)))))
                     (let () (declare (not safe)) (_%g151456151481%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl151462151535%_))
                                                     (let ((_%e151474151494%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl151462151535%_))))
                                                       (let ((_%tl151476151499%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e151474151494%_)))
                     (_%hd151475151497%_
                      (let () (declare (not safe)) (##car _%e151474151494%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl151476151499%_))
                     (_%__kont155482155483%_
                      _%hd151475151497%_
                      _%hd151461151533%_)
                     (let () (declare (not safe)) (_%g151456151481%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g151456151481%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g151456151481%_)))))))
                              (_%__kont155526155527%_
                               (lambda ()
                                 (let* ((_%body151420%_
                                         (if _%compiled-body?151272%_
                                             _%body151392%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self151270%_
                                                _%body151392%_))))
                                        (_%body151422%_
                                         (_%generate-values-post151278%_
                                          _%post151399%_
                                          _%body151420%_))
                                        (_%body151424%_
                                         (_%generate-values-check151279%_
                                          _%check151398%_
                                          _%body151422%_)))
                                   (cons 'let
                                         (cons (reverse _%bind151397%_)
                                               (cons _%body151424%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx155522155523%_))
                              (let ((_%e151406151432%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx155522155523%_))))
                                (let ((_%tl151408151437%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151406151432%_)))
                                      (_%hd151407151435%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151406151432%_))))
                                  (_%__kont155524155525%_
                                   _%tl151408151437%_
                                   _%hd151407151435%_)))
                              (_%__kont155526155527%_)))))))
                 (_%generate-values-post151278%_
                  (lambda (_%post151350%_ _%body151351%_)
                    (let _%lp151353%_ ((_%rest151355%_ _%post151350%_)
                                       (_%body151356%_ _%body151351%_))
                      (let* ((_%rest151357151365%_ _%rest151355%_)
                             (_%else151359151373%_ (lambda () _%body151356%_))
                             (_%K151361151379%_
                              (lambda (_%rest151376%_ _%bind151377%_)
                                (_%lp151353%_
                                 _%rest151376%_
                                 (cons 'let
                                       (cons _%bind151377%_
                                             (cons _%body151356%_ '())))))))
                        (if (pair? _%rest151357151365%_)
                            (let ((_%hd151362151382%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest151357151365%_)))
                                  (_%tl151363151384%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest151357151365%_))))
                              (let* ((_%bind151387%_ _%hd151362151382%_)
                                     (_%rest151389%_ _%tl151363151384%_))
                                (_%K151361151379%_
                                 _%rest151389%_
                                 _%bind151387%_)))
                            (_%else151359151373%_))))))
                 (_%generate-values-check151279%_
                  (lambda (_%check151347%_ _%body151348%_)
                    (cons 'begin
                          (let ((__tmp156370 (cons _%body151348%_ '()))
                                (__tmp156369 (reverse _%check151347%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp156370 __tmp156369))))))
          (let* ((_%g151281151298%_
                  (lambda (_%g151282151295%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151282151295%_))))
                 (_%g151280151344%_
                  (lambda (_%g151282151301%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151282151301%_))
                        (let ((_%e151285151303%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151282151301%_))))
                          (let ((_%hd151286151306%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151285151303%_)))
                                (_%tl151287151308%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151285151303%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151287151308%_))
                                (let ((_%e151288151311%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151287151308%_))))
                                  (let ((_%hd151289151314%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151288151311%_)))
                                        (_%tl151290151316%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151288151311%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl151290151316%_))
                                        (let ((_%e151291151319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl151290151316%_))))
                                          (let ((_%hd151292151322%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151291151319%_)))
                                                (_%tl151293151324%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151291151319%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151293151324%_))
                                                ((lambda (_%L151327%_
                                                          _%L151328%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L151328%_)
                                                       (_%generate-simple151274%_
                                                        _%L151328%_
                                                        _%L151327%_)
                                                       (_%generate-values151277%_
                                                        _%L151328%_
                                                        _%L151327%_)))
                                                 _%hd151292151322%_
                                                 _%hd151289151314%_)
                                                (_%g151281151298%_
                                                 _%g151282151301%_))))
                                        (_%g151281151298%_
                                         _%g151282151301%_))))
                                (_%g151281151298%_ _%g151282151301%_))))
                        (_%g151281151298%_ _%g151282151301%_)))))
            (_%g151280151344%_ _%stx151271%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self152024%_ _%stx152025%_)
        (let ((_%compiled-body?152027%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self152024%_
           _%stx152025%_
           _%compiled-body?152027%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g156371_
        (let ((_g156372_ (let () (declare (not safe)) (##length _g156371_))))
          (cond ((let () (declare (not safe)) (##fx= _g156372_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g156371_))
                ((let () (declare (not safe)) (##fx= _g156372_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g156371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g156371_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals151164%_ _%hd151165%_)
        (let _%lp151167%_ ((_%rest151169%_ _%hd151165%_)
                           (_%k151170%_ '0)
                           (_%r151171%_ '()))
          (let* ((_%__stx155536155537%_ _%rest151169%_)
                 (_%g151176151193%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx155536155537%_)))))
            (let ((_%__kont155538155539%_
                   (lambda (_%L151256%_)
                     (_%lp151167%_
                      _%L151256%_
                      (let () (declare (not safe)) (##fx+ _%k151170%_ '1))
                      _%r151171%_)))
                  (_%__kont155540155541%_
                   (lambda (_%L151229%_ _%L151230%_)
                     (_%lp151167%_
                      _%L151229%_
                      (let () (declare (not safe)) (##fx+ _%k151170%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L151230%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals151164%_
                                         _%k151170%_
                                         _%L151229%_)
                                        '()))
                            _%r151171%_))))
                  (_%__kont155542155543%_
                   (lambda (_%L151205%_)
                     (let ((__tmp156373
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L151205%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals151164%_
                                               _%k151170%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp156373 _%r151171%_))))
                  (_%__kont155544155545%_ (lambda () (reverse _%r151171%_))))
              (let ((_%g151174151216%_
                     (lambda ()
                       (let ((_%L151205%_ _%__stx155536155537%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L151205%_))
                             (_%__kont155542155543%_ _%L151205%_)
                             (_%__kont155544155545%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx155536155537%_))
                    (let ((_%e151179151245%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx155536155537%_))))
                      (let ((_%tl151181151250%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e151179151245%_)))
                            (_%hd151180151248%_
                             (let ()
                               (declare (not safe))
                               (##car _%e151179151245%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd151180151248%_))
                            (let ((_%e151182151253%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd151180151248%_))))
                              (if (equal? _%e151182151253%_ '#f)
                                  (_%__kont155538155539%_ _%tl151181151250%_)
                                  (_%__kont155540155541%_
                                   _%tl151181151250%_
                                   _%hd151180151248%_)))
                            (_%__kont155540155541%_
                             _%tl151181151250%_
                             _%hd151180151248%_))))
                    (let () (declare (not safe)) (_%g151174151216%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self150843%_ _%stx150844%_ _%compiled-body?150845%_)
        (letrec ((_%generate-simple150847%_
                  (lambda (_%hd151149%_ _%body151150%_)
                    (gxc#generate-runtime-simple-let
                     _%self150843%_
                     'letrec
                     _%hd151149%_
                     _%body151150%_
                     _%compiled-body?150845%_)))
                 (_%generate-values150848%_
                  (lambda (_%hd150928%_ _%body150929%_)
                    (let _%lp150931%_ ((_%rest150933%_ _%hd150928%_)
                                       (_%bind150934%_ '())
                                       (_%check150935%_ '())
                                       (_%post150936%_ '()))
                      (let* ((_%__stx155610155611%_ _%rest150933%_)
                             (_%g150939150950%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx155610155611%_)))))
                        (let ((_%__kont155612155613%_
                               (lambda (_%L150977%_ _%L150978%_)
                                 (let* ((_%__stx155566155567%_ _%L150978%_)
                                        (_%g150993151018%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx155566155567%_)))))
                                   (let ((_%__kont155568155569%_
                                          (lambda (_%L151125%_ _%L151126%_)
                                            (let ((_%eid151140%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L151126%_)))
                                                  (_%expr151141%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self150843%_
                                                      _%L151125%_))))
                                              (_%lp150931%_
                                               _%L150977%_
                                               (cons (cons _%eid151140%_
                                                           (cons _%expr151141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind150934%_)
                                               _%check150935%_
                                               _%post150936%_))))
                                         (_%__kont155570155571%_
                                          (lambda (_%L151039%_ _%L151040%_)
                                            (let* ((_%vals151053%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values151055%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals151053%_
                                                     _%L151040%_
                                                     _%L151039%_))
                                                   (_%refs151057%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals151053%_
                                                     _%L151040%_))
                                                   (_%expr151059%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self150843%_
                                                       _%L151039%_))))
                                              (_%lp150931%_
                                               _%L150977%_
                                               (let ((__tmp156375
                                                      (cons (cons _%vals151053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr151059%_ '()))
                    _%bind150934%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp156374
                                                      (map (lambda (_%e151061151063%_)
                                                             (let* ((_%g151065151074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e151061151063%_)
                            (_%E151067151078%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g151065151074%_
                                        '([eid _])))
                               '#!void))
                            (_%K151068151083%_
                             (lambda (_%eid151081%_)
                               (cons _%eid151081%_ (cons '#!void '())))))
                       (if (pair? _%g151065151074%_)
                           (let ((_%hd151069151086%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g151065151074%_)))
                                 (_%tl151070151088%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g151065151074%_))))
                             (let ((_%eid151091%_ _%hd151069151086%_))
                               (if (pair? _%tl151070151088%_)
                                   (let ((_%tl151072151093%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl151070151088%_))))
                                     (if (null? _%tl151072151093%_)
                                         (_%K151068151083%_ _%eid151091%_)
                                         (_%E151067151078%_)))
                                   (_%E151067151078%_))))
                           (_%E151067151078%_))))
                   _%refs151057%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp156375
                                                  __tmp156374))
                                               (cons _%check-values151055%_
                                                     _%check150935%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs151057%_
                                                  _%post150936%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx155566155567%_))
                                         (let ((_%e150997151101%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx155566155567%_))))
                                           (let ((_%tl150999151106%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e150997151101%_)))
                                                 (_%hd150998151104%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e150997151101%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd150998151104%_))
                                                 (let ((_%e151000151109%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd150998151104%_))))
                                                   (let ((_%tl151002151114%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e151000151109%_)))
                                                         (_%hd151001151112%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e151000151109%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl151002151114%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl150999151106%_))
                     (let ((_%e151003151117%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl150999151106%_))))
                       (let ((_%tl151005151122%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e151003151117%_)))
                             (_%hd151004151120%_
                              (let ()
                                (declare (not safe))
                                (##car _%e151003151117%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl151005151122%_))
                             (_%__kont155568155569%_
                              _%hd151004151120%_
                              _%hd151001151112%_)
                             (let ()
                               (declare (not safe))
                               (_%g150993151018%_)))))
                     (let () (declare (not safe)) (_%g150993151018%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl150999151106%_))
                     (let ((_%e151011151031%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl150999151106%_))))
                       (let ((_%tl151013151036%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e151011151031%_)))
                             (_%hd151012151034%_
                              (let ()
                                (declare (not safe))
                                (##car _%e151011151031%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl151013151036%_))
                             (_%__kont155570155571%_
                              _%hd151012151034%_
                              _%hd150998151104%_)
                             (let ()
                               (declare (not safe))
                               (_%g150993151018%_)))))
                     (let () (declare (not safe)) (_%g150993151018%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl150999151106%_))
                                                     (let ((_%e151011151031%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl150999151106%_))))
                                                       (let ((_%tl151013151036%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e151011151031%_)))
                     (_%hd151012151034%_
                      (let () (declare (not safe)) (##car _%e151011151031%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl151013151036%_))
                     (_%__kont155570155571%_
                      _%hd151012151034%_
                      _%hd150998151104%_)
                     (let () (declare (not safe)) (_%g150993151018%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g150993151018%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g150993151018%_)))))))
                              (_%__kont155614155615%_
                               (lambda ()
                                 (let* ((_%body150957%_
                                         (if _%compiled-body?150845%_
                                             _%body150929%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self150843%_
                                                _%body150929%_))))
                                        (_%body150959%_
                                         (_%generate-values-post150850%_
                                          _%post150936%_
                                          _%body150957%_))
                                        (_%body150961%_
                                         (_%generate-values-check150849%_
                                          _%check150935%_
                                          _%body150959%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind150934%_)
                                               (cons _%body150961%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx155610155611%_))
                              (let ((_%e150943150969%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx155610155611%_))))
                                (let ((_%tl150945150974%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150943150969%_)))
                                      (_%hd150944150972%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150943150969%_))))
                                  (_%__kont155612155613%_
                                   _%tl150945150974%_
                                   _%hd150944150972%_)))
                              (_%__kont155614155615%_)))))))
                 (_%generate-values-check150849%_
                  (lambda (_%check150925%_ _%body150926%_)
                    (cons 'begin
                          (let ((__tmp156377 (cons _%body150926%_ '()))
                                (__tmp156376 (reverse _%check150925%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp156377 __tmp156376)))))
                 (_%generate-values-post150850%_
                  (lambda (_%post150918%_ _%body150919%_)
                    (cons 'begin
                          (let ((__tmp156381 (cons _%body150919%_ '()))
                                (__tmp156378
                                 (let ((__tmp156380
                                        (lambda (_%g150920150922%_)
                                          (cons 'set! _%g150920150922%_)))
                                       (__tmp156379 (reverse _%post150918%_)))
                                   (declare (not safe))
                                   (##map __tmp156380 __tmp156379))))
                            (declare (not safe))
                            (__foldr1 cons __tmp156381 __tmp156378))))))
          (let* ((_%g150852150869%_
                  (lambda (_%g150853150866%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g150853150866%_))))
                 (_%g150851150915%_
                  (lambda (_%g150853150872%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g150853150872%_))
                        (let ((_%e150856150874%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g150853150872%_))))
                          (let ((_%hd150857150877%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150856150874%_)))
                                (_%tl150858150879%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150856150874%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl150858150879%_))
                                (let ((_%e150859150882%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl150858150879%_))))
                                  (let ((_%hd150860150885%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e150859150882%_)))
                                        (_%tl150861150887%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e150859150882%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl150861150887%_))
                                        (let ((_%e150862150890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl150861150887%_))))
                                          (let ((_%hd150863150893%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e150862150890%_)))
                                                (_%tl150864150895%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e150862150890%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl150864150895%_))
                                                ((lambda (_%L150898%_
                                                          _%L150899%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L150899%_)
                                                       (_%generate-simple150847%_
                                                        _%L150899%_
                                                        _%L150898%_)
                                                       (_%generate-values150848%_
                                                        _%L150899%_
                                                        _%L150898%_)))
                                                 _%hd150863150893%_
                                                 _%hd150860150885%_)
                                                (_%g150852150869%_
                                                 _%g150853150872%_))))
                                        (_%g150852150869%_
                                         _%g150853150872%_))))
                                (_%g150852150869%_ _%g150853150872%_))))
                        (_%g150852150869%_ _%g150853150872%_)))))
            (_%g150851150915%_ _%stx150844%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self151155%_ _%stx151156%_)
        (let ((_%compiled-body?151158%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self151155%_
           _%stx151156%_
           _%compiled-body?151158%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g156382_
        (let ((_g156383_ (let () (declare (not safe)) (##length _g156382_))))
          (cond ((let () (declare (not safe)) (##fx= _g156383_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g156382_))
                ((let () (declare (not safe)) (##fx= _g156383_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g156382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g156382_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self150424%_ _%stx150425%_)
        (letrec ((_%generate-values150427%_
                  (lambda (_%hd150670%_ _%body150671%_)
                    (let _%lp150673%_ ((_%rest150675%_ _%hd150670%_)
                                       (_%bind150676%_ '()))
                      (let* ((_%rest150677150685%_ _%rest150675%_)
                             (_%else150679150696%_
                              (lambda ()
                                (let ((_%bind150693%_ (reverse _%bind150676%_))
                                      (_%body150694%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self150424%_
                                          _%body150671%_))))
                                  (cons 'letrec*
                                        (cons _%bind150693%_
                                              (cons _%body150694%_ '()))))))
                             (_%K150681150830%_
                              (lambda (_%rest150699%_ _%hd-bind150700%_)
                                (let* ((_%__stx155624155625%_
                                        _%hd-bind150700%_)
                                       (_%g150703150728%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx155624155625%_)))))
                                  (let ((_%__kont155626155627%_
                                         (lambda (_%L150809%_ _%L150810%_)
                                           (let ((_%eid150824%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L150810%_)))
                                                 (_%expr150825%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self150424%_
                                                     _%L150809%_))))
                                             (_%lp150673%_
                                              _%rest150699%_
                                              (cons (cons _%eid150824%_
                                                          (cons _%expr150825%_
                                                                '()))
                                                    _%bind150676%_)))))
                                        (_%__kont155628155629%_
                                         (lambda (_%L150749%_ _%L150750%_)
                                           (let* ((_%vals150769%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp150771%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values150773%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp150771%_
                                                    _%L150750%_
                                                    _%L150749%_))
                                                  (_%refs150775%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals150769%_
                                                    _%L150750%_))
                                                  (_%expr150777%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self150424%_
                                                      _%L150749%_))))
                                             (_%lp150673%_
                                              _%rest150699%_
                                              (let ((__tmp156384
                                                     (cons (cons _%vals150769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp150771%_
                                                       (cons _%expr150777%_
                                                             '()))
                                                 '())
                                           (cons _%check-values150773%_
                                                 (cons _%tmp150771%_ '()))))
                               '()))
                   _%bind150676%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp156384
                                                 _%refs150775%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx155624155625%_))
                                        (let ((_%e150707150785%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx155624155625%_))))
                                          (let ((_%tl150709150790%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e150707150785%_)))
                                                (_%hd150708150788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e150707150785%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd150708150788%_))
                                                (let ((_%e150710150793%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd150708150788%_))))
                                                  (let ((_%tl150712150798%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e150710150793%_)))
                                                        (_%hd150711150796%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e150710150793%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl150712150798%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl150709150790%_))
                                                            (let ((_%e150713150801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl150709150790%_))))
                      (let ((_%tl150715150806%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e150713150801%_)))
                            (_%hd150714150804%_
                             (let ()
                               (declare (not safe))
                               (##car _%e150713150801%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl150715150806%_))
                            (_%__kont155626155627%_
                             _%hd150714150804%_
                             _%hd150711150796%_)
                            (let ()
                              (declare (not safe))
                              (_%g150703150728%_)))))
                    (let () (declare (not safe)) (_%g150703150728%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl150709150790%_))
                    (let ((_%e150721150741%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl150709150790%_))))
                      (let ((_%tl150723150746%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e150721150741%_)))
                            (_%hd150722150744%_
                             (let ()
                               (declare (not safe))
                               (##car _%e150721150741%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl150723150746%_))
                            (_%__kont155628155629%_
                             _%hd150722150744%_
                             _%hd150708150788%_)
                            (let ()
                              (declare (not safe))
                              (_%g150703150728%_)))))
                    (let () (declare (not safe)) (_%g150703150728%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl150709150790%_))
                                                    (let ((_%e150721150741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl150709150790%_))))
                                                      (let ((_%tl150723150746%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e150721150741%_)))
                    (_%hd150722150744%_
                     (let () (declare (not safe)) (##car _%e150721150741%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl150723150746%_))
                    (_%__kont155628155629%_
                     _%hd150722150744%_
                     _%hd150708150788%_)
                    (let () (declare (not safe)) (_%g150703150728%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g150703150728%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g150703150728%_))))))))
                        (if (pair? _%rest150677150685%_)
                            (let ((_%hd150682150833%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest150677150685%_)))
                                  (_%tl150683150835%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest150677150685%_))))
                              (let* ((_%hd-bind150838%_ _%hd150682150833%_)
                                     (_%rest150840%_ _%tl150683150835%_))
                                (_%K150681150830%_
                                 _%rest150840%_
                                 _%hd-bind150838%_)))
                            (_%else150679150696%_))))))
                 (_%generate-letrec?150428%_
                  (lambda (_%hd150560%_)
                    (let _%lp150562%_ ((_%rest150564%_ _%hd150560%_))
                      (let* ((_%rest150565150573%_ _%rest150564%_)
                             (_%else150567150581%_ (lambda () '#t))
                             (_%K150569150658%_
                              (lambda (_%rest150584%_ _%hd-bind150585%_)
                                (let* ((_%g150587150604%_
                                        (lambda (_%g150588150601%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g150588150601%_))))
                                       (_%g150586150655%_
                                        (lambda (_%g150588150607%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g150588150607%_))
                                              (let ((_%e150591150609%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g150588150607%_))))
                                                (let ((_%hd150592150612%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e150591150609%_)))
                                                      (_%tl150593150614%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e150591150609%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd150592150612%_))
                                                      (let ((_%e150594150617%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd150592150612%_))))
                (let ((_%hd150595150620%_
                       (let () (declare (not safe)) (##car _%e150594150617%_)))
                      (_%tl150596150622%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e150594150617%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl150596150622%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl150593150614%_))
                          (let ((_%e150597150625%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl150593150614%_))))
                            (let ((_%hd150598150628%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150597150625%_)))
                                  (_%tl150599150630%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150597150625%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl150599150630%_))
                                  ((lambda (_%L150633%_ _%L150634%_)
                                     (if (_%is-lambda-expr?150429%_
                                          _%L150633%_)
                                         (_%lp150562%_ _%rest150584%_)
                                         '#f))
                                   _%hd150598150628%_
                                   _%hd150595150620%_)
                                  (_%g150587150604%_ _%g150588150607%_))))
                          (_%g150587150604%_ _%g150588150607%_))
                      (_%g150587150604%_ _%g150588150607%_))))
              (_%g150587150604%_ _%g150588150607%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g150587150604%_
                                               _%g150588150607%_)))))
                                  (_%g150586150655%_ _%hd-bind150585%_)))))
                        (if (pair? _%rest150565150573%_)
                            (let ((_%hd150570150661%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest150565150573%_)))
                                  (_%tl150571150663%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest150565150573%_))))
                              (let* ((_%hd-bind150666%_ _%hd150570150661%_)
                                     (_%rest150668%_ _%tl150571150663%_))
                                (_%K150569150658%_
                                 _%rest150668%_
                                 _%hd-bind150666%_)))
                            (_%else150567150581%_))))))
                 (_%is-lambda-expr?150429%_
                  (lambda (_%expr150497%_)
                    (let* ((_%__stx155668155669%_ _%expr150497%_)
                           (_%g150500150514%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx155668155669%_)))))
                      (let ((_%__kont155670155671%_
                             (lambda (_%L150542%_ _%L150543%_) '#t))
                            (_%__kont155672155673%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx155668155669%_))
                            (let ((_%e150504150526%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx155668155669%_))))
                              (let ((_%tl150506150531%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e150504150526%_)))
                                    (_%hd150505150529%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e150504150526%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd150505150529%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd150505150529%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl150506150531%_))
                                            (let ((_%e150507150534%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl150506150531%_))))
                                              (let ((_%tl150509150539%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e150507150534%_)))
                                                    (_%hd150508150537%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e150507150534%_))))
                                                (_%__kont155670155671%_
                                                 _%tl150509150539%_
                                                 _%hd150508150537%_)))
                                            (_%__kont155672155673%_))
                                        (_%__kont155672155673%_))
                                    (_%__kont155672155673%_))))
                            (_%__kont155672155673%_)))))))
          (let* ((_%g150431150448%_
                  (lambda (_%g150432150445%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g150432150445%_))))
                 (_%g150430150494%_
                  (lambda (_%g150432150451%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g150432150451%_))
                        (let ((_%e150435150453%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g150432150451%_))))
                          (let ((_%hd150436150456%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150435150453%_)))
                                (_%tl150437150458%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150435150453%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl150437150458%_))
                                (let ((_%e150438150461%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl150437150458%_))))
                                  (let ((_%hd150439150464%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e150438150461%_)))
                                        (_%tl150440150466%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e150438150461%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl150440150466%_))
                                        (let ((_%e150441150469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl150440150466%_))))
                                          (let ((_%hd150442150472%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e150441150469%_)))
                                                (_%tl150443150474%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e150441150469%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl150443150474%_))
                                                ((lambda (_%L150477%_
                                                          _%L150478%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L150478%_)
                                                       (if (_%generate-letrec?150428%_
                                                            _%L150478%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self150424%_
                                                            'letrec
                                                            _%L150478%_
                                                            _%L150477%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self150424%_
                                                            'letrec*
                                                            _%L150478%_
                                                            _%L150477%_
                                                            '#f))
                                                       (_%generate-values150427%_
                                                        _%L150478%_
                                                        _%L150477%_)))
                                                 _%hd150442150472%_
                                                 _%hd150439150464%_)
                                                (_%g150431150448%_
                                                 _%g150432150451%_))))
                                        (_%g150431150448%_
                                         _%g150432150451%_))))
                                (_%g150431150448%_ _%g150432150451%_))))
                        (_%g150431150448%_ _%g150432150451%_)))))
            (_%g150430150494%_ _%stx150425%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd150361%_)
        (let _%lp150363%_ ((_%rest150365%_ _%hd150361%_))
          (let* ((_%rest150366150382%_ _%rest150365%_)
                 (_%else150369150390%_ (lambda () '#f)))
            (let ((_%K150372150403%_
                   (lambda (_%rest150401%_) (_%lp150363%_ _%rest150401%_)))
                  (_%K150371150395%_ (lambda () '#t)))
              (let ((_%try-match150368150398%_
                     (lambda ()
                       (if (null? _%rest150366150382%_)
                           (_%K150371150395%_)
                           (_%else150369150390%_)))))
                (if (pair? _%rest150366150382%_)
                    (let ((_%tl150374150408%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest150366150382%_)))
                          (_%hd150373150406%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest150366150382%_))))
                      (if (pair? _%hd150373150406%_)
                          (let ((_%tl150376150413%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd150373150406%_)))
                                (_%hd150375150411%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd150373150406%_))))
                            (if (pair? _%hd150375150411%_)
                                (let ((_%tl150380150416%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd150375150411%_))))
                                  (if (null? _%tl150380150416%_)
                                      (if (pair? _%tl150376150413%_)
                                          (let ((_%tl150378150419%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl150376150413%_))))
                                            (if (null? _%tl150378150419%_)
                                                (let ((_%rest150422%_
                                                       _%tl150374150408%_))
                                                  (_%lp150363%_
                                                   _%rest150422%_))
                                                (_%else150369150390%_)))
                                          (_%else150369150390%_))
                                      (_%else150369150390%_)))
                                (_%else150369150390%_)))
                          (_%else150369150390%_)))
                    (_%try-match150368150398%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self150272%_
               _%form150273%_
               _%hd150274%_
               _%body150275%_
               _%compiled-body?150276%_)
        (letrec ((_%generate1150278%_
                  (lambda (_%bind150317%_)
                    (let* ((_%bind150318150329%_ _%bind150317%_)
                           (_%E150320150333%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind150318150329%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K150321150339%_
                            (lambda (_%expr150336%_ _%id150337%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id150337%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self150272%_
                                             _%expr150336%_))
                                          '())))))
                      (if (pair? _%bind150318150329%_)
                          (let ((_%hd150322150342%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind150318150329%_)))
                                (_%tl150323150344%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind150318150329%_))))
                            (if (pair? _%hd150322150342%_)
                                (let ((_%hd150326150347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd150322150342%_)))
                                      (_%tl150327150349%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd150322150342%_))))
                                  (let ((_%id150352%_ _%hd150326150347%_))
                                    (if (null? _%tl150327150349%_)
                                        (if (pair? _%tl150323150344%_)
                                            (let ((_%hd150324150354%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl150323150344%_)))
                                                  (_%tl150325150356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl150323150344%_))))
                                              (let ((_%expr150359%_
                                                     _%hd150324150354%_))
                                                (if (null? _%tl150325150356%_)
                                                    (_%K150321150339%_
                                                     _%expr150359%_
                                                     _%id150352%_)
                                                    (_%E150320150333%_))))
                                            (_%E150320150333%_))
                                        (_%E150320150333%_))))
                                (_%E150320150333%_)))
                          (_%E150320150333%_))))))
          (let* ((_%bind150280%_ (map _%generate1150278%_ _%hd150274%_))
                 (_%body150282%_
                  (if _%compiled-body?150276%_
                      _%body150275%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self150272%_ _%body150275%_))))
                 (_%body150314%_
                  (let* ((_%body150283150291%_ _%body150282%_)
                         (_%else150285150299%_
                          (lambda () (cons _%body150282%_ '())))
                         (_%K150287150304%_
                          (lambda (_%exprs150302%_) _%exprs150302%_)))
                    (if (pair? _%body150283150291%_)
                        (let ((_%hd150288150307%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body150283150291%_)))
                              (_%tl150289150309%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body150283150291%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd150288150307%_ 'begin))
                              (let ((_%exprs150312%_ _%tl150289150309%_))
                                (_%K150287150304%_ _%exprs150312%_))
                              (_%else150285150299%_)))
                        (_%else150285150299%_)))))
            (cons _%form150273%_ (cons _%bind150280%_ _%body150314%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self150172%_ _%stx150173%_)
        (letrec ((_%generate1150175%_
                  (lambda (_%datum150227%_)
                    (if (or (null? _%datum150227%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum150227%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum150227%_))
                            (eof-object? _%datum150227%_))
                        _%datum150227%_
                        (if (uninterned-symbol? _%datum150227%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum150227%_
                               '#t))
                            (if (pair? _%datum150227%_)
                                (cons (_%generate1150175%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum150227%_)))
                                      (_%generate1150175%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum150227%_))))
                                (if (box? _%datum150227%_)
                                    (box (_%generate1150175%_
                                          (unbox _%datum150227%_)))
                                    (if (vector? _%datum150227%_)
                                        (vector-map
                                         _%generate1150175%_
                                         _%datum150227%_)
                                        (if (or (s8vector? _%datum150227%_)
                                                (u8vector? _%datum150227%_)
                                                (s16vector? _%datum150227%_)
                                                (u16vector? _%datum150227%_)
                                                (s32vector? _%datum150227%_)
                                                (u32vector? _%datum150227%_)
                                                (s64vector? _%datum150227%_)
                                                (u64vector? _%datum150227%_)
                                                (f32vector? _%datum150227%_)
                                                (f64vector? _%datum150227%_))
                                            _%datum150227%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx150173%_)))))))))))
          (let* ((_%g150177150190%_
                  (lambda (_%g150178150187%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g150178150187%_))))
                 (_%g150176150224%_
                  (lambda (_%g150178150193%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g150178150193%_))
                        (let ((_%e150180150195%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g150178150193%_))))
                          (let ((_%hd150181150198%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150180150195%_)))
                                (_%tl150182150200%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150180150195%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl150182150200%_))
                                (let ((_%e150183150203%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl150182150200%_))))
                                  (let ((_%hd150184150206%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e150183150203%_)))
                                        (_%tl150185150208%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e150183150203%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl150185150208%_))
                                        ((lambda (_%L150211%_)
                                           (cons 'quote
                                                 (cons (_%generate1150175%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L150211%_)))
                                                       '())))
                                         _%hd150184150206%_)
                                        (_%g150177150190%_
                                         _%g150178150193%_))))
                                (_%g150177150190%_ _%g150178150193%_))))
                        (_%g150177150190%_ _%g150178150193%_)))))
            (_%g150176150224%_ _%stx150173%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self149613%_ _%stx149614%_)
        (letrec ((_%compile-call149616%_
                  (lambda (_%rator149905%_ _%rands149906%_)
                    (let ((_%rator149912%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self149613%_
                              _%rator149905%_)))
                          (_%rands149913%_
                           (map (lambda (_%g149907149909%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self149613%_
                                     _%g149907149909%_)))
                                _%rands149906%_)))
                      (let* ((_%__stx155715155716%_ _%rator149912%_)
                             (_%g149916149968%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx155715155716%_)))))
                        (let ((_%__kont155717155718%_
                               (lambda (_%L150092%_
                                        _%L150093%_
                                        _%L150094%_
                                        _%L150095%_)
                                 (if (let ((__tmp156387
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands149913%_)))
                                           (__tmp156385
                                            (length (let ((__tmp156386
                                                           (lambda (_%g150131150134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g150132150136%_)
                     (cons _%g150131150134%_ _%g150132150136%_))))
              (declare (not safe))
              (__foldr1 __tmp156386 '() _%L150094%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp156387 __tmp156385))
                                     (let* ((_%id150139%_ _%L150095%_)
                                            (_%args150148%_
                                             (let ((__tmp156388
                                                    (lambda (_%g150140150143%_
                                                             _%g150141150145%_)
                                                      (cons _%g150140150143%_
                                                            _%g150141150145%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp156388
                                                '()
                                                _%L150094%_)))
                                            (_%body150157%_
                                             (let ((__tmp156389
                                                    (lambda (_%g150149150152%_
                                                             _%g150150150154%_)
                                                      (cons _%g150149150152%_
                                                            _%g150150150154%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp156389
                                                '()
                                                _%L150093%_)))
                                            (_%init150159%_
                                             (map list
                                                  _%args150148%_
                                                  _%rands149913%_)))
                                       (cons 'let
                                             (cons _%id150139%_
                                                   (cons _%init150159%_
                                                         _%body150157%_))))
                                     (let ((__tmp156390
                                            (let ((__tmp156391
                                                   (lambda (_%g150161150164%_
                                                            _%g150162150166%_)
                                                     (cons _%g150161150164%_
                                                           _%g150162150166%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp156391
                                               '()
                                               _%L150094%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx149614%_
                                        __tmp156390
                                        _%rands149913%_)))))
                              (_%__kont155723155724%_
                               (lambda ()
                                 (cons _%rator149912%_ _%rands149913%_))))
                          (let ((_%__match155782155783%_
                                 (lambda (_%e149922149980%_
                                          _%hd149923149983%_
                                          _%tl149924149985%_
                                          _%e149925149988%_
                                          _%hd149926149991%_
                                          _%tl149927149993%_
                                          _%e149928149996%_
                                          _%hd149929149999%_
                                          _%tl149930150001%_
                                          _%e149931150004%_
                                          _%hd149932150007%_
                                          _%tl149933150009%_
                                          _%e149934150012%_
                                          _%hd149935150015%_
                                          _%tl149936150017%_
                                          _%e149937150020%_
                                          _%hd149938150023%_
                                          _%tl149939150025%_
                                          _%e149940150028%_
                                          _%hd149941150031%_
                                          _%tl149942150033%_
                                          _%__splice155719155720%_
                                          _%target149943150036%_
                                          _%tl149945150038%_)
                                   (letrec ((_%loop149946150041%_
                                             (lambda (_%hd149944150044%_
                                                      _%arg149950150046%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd149944150044%_))
                                                   (let ((_%e149947150049%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd149944150044%_))))
                                                     (let ((_%lp-tl149949150054%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e149947150049%_)))
                                                           (_%lp-hd149948150052%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e149947150049%_))))
                                                       (_%loop149946150041%_
                                                        _%lp-tl149949150054%_
                                                        (cons _%lp-hd149948150052%_
                                                              _%arg149950150046%_))))
                                                   (let ((_%arg149951150057%_
                                                          (reverse _%arg149950150046%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl149942150033%_))
                                                         (let ((_%__splice155721155722%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl149942150033%_
                           '0))))
                   (let ((_%tl149954150062%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice155721155722%_ '1)))
                         (_%target149952150060%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice155721155722%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl149954150062%_))
                         (letrec ((_%loop149955150065%_
                                   (lambda (_%hd149953150068%_
                                            _%body149959150070%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd149953150068%_))
                                         (let ((_%e149956150073%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd149953150068%_))))
                                           (let ((_%lp-tl149958150078%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e149956150073%_)))
                                                 (_%lp-hd149957150076%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e149956150073%_))))
                                             (_%loop149955150065%_
                                              _%lp-tl149958150078%_
                                              (cons _%lp-hd149957150076%_
                                                    _%body149959150070%_))))
                                         (let ((_%body149960150081%_
                                                (reverse _%body149959150070%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl149936150017%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl149930150001%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl149927149993%_))
                                                       (let ((_%e149961150084%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl149927149993%_))))
                 (let ((_%tl149963150089%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e149961150084%_)))
                       (_%hd149962150087%_
                        (let ()
                          (declare (not safe))
                          (##car _%e149961150084%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl149963150089%_))
                       (let ((_%L150092%_ _%hd149962150087%_)
                             (_%L150093%_ _%body149960150081%_)
                             (_%L150094%_ _%arg149951150057%_)
                             (_%L150095%_ _%hd149932150007%_))
                         (if (eq? _%L150095%_ _%L150092%_)
                             (_%__kont155717155718%_
                              _%L150092%_
                              _%L150093%_
                              _%L150094%_
                              _%L150095%_)
                             (_%__kont155723155724%_)))
                       (_%__kont155723155724%_))))
               (_%__kont155723155724%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont155723155724%_))
                                               (_%__kont155723155724%_)))))))
                           (_%loop149955150065%_ _%target149952150060%_ '()))
                         (_%__kont155723155724%_))))
                 (_%__kont155723155724%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop149946150041%_
                                      _%target149943150036%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx155715155716%_))
                                (let ((_%e149922149980%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx155715155716%_))))
                                  (let ((_%tl149924149985%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149922149980%_)))
                                        (_%hd149923149983%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149922149980%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd149923149983%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd149923149983%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl149924149985%_))
                                                (let ((_%e149925149988%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl149924149985%_))))
                                                  (let ((_%tl149927149993%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e149925149988%_)))
                                                        (_%hd149926149991%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e149925149988%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149926149991%_))
                                                        (let ((_%e149928149996%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149926149991%_))))
                  (let ((_%tl149930150001%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149928149996%_)))
                        (_%hd149929149999%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149928149996%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd149929149999%_))
                        (let ((_%e149931150004%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd149929149999%_))))
                          (let ((_%tl149933150009%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149931150004%_)))
                                (_%hd149932150007%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149931150004%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl149933150009%_))
                                (let ((_%e149934150012%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl149933150009%_))))
                                  (let ((_%tl149936150017%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149934150012%_)))
                                        (_%hd149935150015%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149934150012%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd149935150015%_))
                                        (let ((_%e149937150020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd149935150015%_))))
                                          (let ((_%tl149939150025%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e149937150020%_)))
                                                (_%hd149938150023%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e149937150020%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd149938150023%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd149938150023%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl149939150025%_))
                                                        (let ((_%e149940150028%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl149939150025%_))))
                  (let ((_%tl149942150033%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149940150028%_)))
                        (_%hd149941150031%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149940150028%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd149941150031%_))
                        (let ((_%__splice155719155720%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd149941150031%_
                                  '0))))
                          (let ((_%tl149945150038%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice155719155720%_ '1)))
                                (_%target149943150036%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice155719155720%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl149945150038%_))
                                (_%__match155782155783%_
                                 _%e149922149980%_
                                 _%hd149923149983%_
                                 _%tl149924149985%_
                                 _%e149925149988%_
                                 _%hd149926149991%_
                                 _%tl149927149993%_
                                 _%e149928149996%_
                                 _%hd149929149999%_
                                 _%tl149930150001%_
                                 _%e149931150004%_
                                 _%hd149932150007%_
                                 _%tl149933150009%_
                                 _%e149934150012%_
                                 _%hd149935150015%_
                                 _%tl149936150017%_
                                 _%e149937150020%_
                                 _%hd149938150023%_
                                 _%tl149939150025%_
                                 _%e149940150028%_
                                 _%hd149941150031%_
                                 _%tl149942150033%_
                                 _%__splice155719155720%_
                                 _%target149943150036%_
                                 _%tl149945150038%_)
                                (_%__kont155723155724%_))))
                        (_%__kont155723155724%_))))
                (_%__kont155723155724%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont155723155724%_))
                                                (_%__kont155723155724%_))))
                                        (_%__kont155723155724%_))))
                                (_%__kont155723155724%_))))
                        (_%__kont155723155724%_))))
                (_%__kont155723155724%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont155723155724%_))
                                            (_%__kont155723155724%_))
                                        (_%__kont155723155724%_))))
                                (_%__kont155723155724%_)))))))))
          (let* ((_%g149618149641%_
                  (lambda (_%g149619149638%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g149619149638%_))))
                 (_%g149617149902%_
                  (lambda (_%g149619149644%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g149619149644%_))
                        (let ((_%e149622149646%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g149619149644%_))))
                          (let ((_%hd149623149649%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149622149646%_)))
                                (_%tl149624149651%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149622149646%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl149624149651%_))
                                (let ((_%e149625149654%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl149624149651%_))))
                                  (let ((_%hd149626149657%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149625149654%_)))
                                        (_%tl149627149659%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149625149654%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl149627149659%_))
                                        (let ((_g156392_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl149627149659%_
                                                  '0))))
                                          (begin
                                            (let ((_g156393_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g156392_)
                                                         (##values-length
                                                          _g156392_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g156393_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g156393_)))
                                            (let ((_%target149628149662%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g156392_
                                                      0)))
                                                  (_%tl149630149664%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g156392_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl149630149664%_))
                                                  (letrec ((_%loop149631149667%_
                                                            (lambda (_%hd149629149670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand149635149672%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd149629149670%_))
                          (let ((_%e149632149675%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd149629149670%_))))
                            (let ((_%lp-hd149633149678%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149632149675%_)))
                                  (_%lp-tl149634149680%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149632149675%_))))
                              (_%loop149631149667%_
                               _%lp-tl149634149680%_
                               (cons _%lp-hd149633149678%_
                                     _%rand149635149672%_))))
                          (let ((_%rand149636149683%_
                                 (reverse _%rand149635149672%_)))
                            ((lambda (_%L149686%_ _%L149687%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call149616%_
                                    _%L149687%_
                                    (let ((__tmp156394
                                           (lambda (_%g149704149707%_
                                                    _%g149705149709%_)
                                             (cons _%g149704149707%_
                                                   _%g149705149709%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp156394 '() _%L149686%_)))
                                   (let* ((_%__stx155831155832%_ _%L149687%_)
                                          (_%g149713149725%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx155831155832%_)))))
                                     (let ((_%__kont155833155834%_
                                            (lambda ()
                                              (let ((_%f149762%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self149613%_
                                                        _%L149687%_))))
                                                (if (and (let ((__tmp156395
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f149762%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp156395))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f149762%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp149764%_ ((_%rest149767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp156397
                                                (lambda (_%g149884149887%_
                                                         _%g149885149889%_)
                                                  (cons _%g149884149887%_
                                                        _%g149885149889%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp156397
                                            '()
                                            _%L149686%_))))
                               (_%bind149769%_ '())
                               (_%args149770%_ '()))
              (let* ((_%rest149771149779%_ _%rest149767%_)
                     (_%else149773149787%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind149769%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f149762%_
                                                      _%args149770%_)
                                                '()))))))
                     (_%K149775149873%_
                      (lambda (_%rest149790%_ _%e149791%_)
                        (let* ((_%__stx155785155786%_ _%e149791%_)
                               (_%g149796149814%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx155785155786%_)))))
                          (let ((_%__kont155787155788%_
                                 (lambda ()
                                   (_%lp149764%_
                                    _%rest149790%_
                                    _%bind149769%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e149791%_))
                                          _%args149770%_))))
                                (_%__kont155789155790%_
                                 (lambda ()
                                   (_%lp149764%_
                                    _%rest149790%_
                                    _%bind149769%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e149791%_))
                                          _%args149770%_))))
                                (_%__kont155791155792%_
                                 (lambda ()
                                   (let ((_%tmp149821%_
                                          (let ((__tmp156396
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp156396))))
                                     (_%lp149764%_
                                      _%rest149790%_
                                      (cons (cons _%tmp149821%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e149791%_))
                                                        '()))
                                            _%bind149769%_)
                                      (cons _%tmp149821%_ _%args149770%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx155785155786%_))
                                (let ((_%e149798149852%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx155785155786%_))))
                                  (let ((_%tl149800149857%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149798149852%_)))
                                        (_%hd149799149855%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149798149852%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd149799149855%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd149799149855%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl149800149857%_))
                                                (let ((_%e149801149860%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl149800149857%_))))
                                                  (let ((_%tl149803149865%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e149801149860%_)))
                                                        (_%hd149802149863%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e149801149860%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl149803149865%_))
                                                        (_%__kont155787155788%_)
                                                        (_%__kont155791155792%_))))
                                                (_%__kont155791155792%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd149799149855%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl149800149857%_))
                                                    (let ((_%e149807149837%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl149800149857%_))))
                                                      (let ((_%tl149809149842%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e149807149837%_)))
                    (_%hd149808149840%_
                     (let () (declare (not safe)) (##car _%e149807149837%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl149809149842%_))
                    (_%__kont155789155790%_)
                    (_%__kont155791155792%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont155791155792%_))
                                                (_%__kont155791155792%_)))
                                        (_%__kont155791155792%_))))
                                (_%__kont155791155792%_)))))))
                (if (pair? _%rest149771149779%_)
                    (let ((_%hd149776149876%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest149771149779%_)))
                          (_%tl149777149878%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest149771149779%_))))
                      (let* ((_%e149881%_ _%hd149776149876%_)
                             (_%rest149883%_ _%tl149777149878%_))
                        (_%K149775149873%_ _%rest149883%_ _%e149881%_)))
                    (_%else149773149787%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call149616%_
                                                     _%L149687%_
                                                     (let ((__tmp156398
                                                            (lambda (_%g149891149894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g149892149896%_)
                      (cons _%g149891149894%_ _%g149892149896%_))))
               (declare (not safe))
               (__foldr1 __tmp156398 '() _%L149686%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont155835155836%_
                                            (lambda ()
                                              (_%compile-call149616%_
                                               _%L149687%_
                                               (let ((__tmp156399
                                                      (lambda (_%g149731149734%_
                                                               _%g149732149736%_)
                                                        (cons _%g149731149734%_
                                                              _%g149732149736%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp156399
                                                  '()
                                                  _%L149686%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx155831155832%_))
                                           (let ((_%e149715149744%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx155831155832%_))))
                                             (let ((_%tl149717149749%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e149715149744%_)))
                                                   (_%hd149716149747%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e149715149744%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd149716149747%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd149716149747%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl149717149749%_))
                                                           (let ((_%e149718149752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl149717149749%_))))
                     (let ((_%tl149720149757%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e149718149752%_)))
                           (_%hd149719149755%_
                            (let ()
                              (declare (not safe))
                              (##car _%e149718149752%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl149720149757%_))
                           (_%__kont155833155834%_)
                           (_%__kont155835155836%_))))
                   (_%__kont155835155836%_))
               (_%__kont155835155836%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont155835155836%_))))
                                           (_%__kont155835155836%_))))))
                             _%rand149636149683%_
                             _%hd149626149657%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop149631149667%_
                                                     _%target149628149662%_
                                                     '()))
                                                  (_%g149618149641%_
                                                   _%g149619149644%_)))))
                                        (_%g149618149641%_
                                         _%g149619149644%_))))
                                (_%g149618149641%_ _%g149619149644%_))))
                        (_%g149618149641%_ _%g149619149644%_)))))
            (_%g149617149902%_ _%stx149614%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self149356%_ _%stx149357%_)
        (let* ((_%__stx155903155904%_ _%stx149357%_)
               (_%g149360149389%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx155903155904%_)))))
          (let ((_%__kont155905155906%_
                 (lambda (_%L149457%_ _%L149458%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self149356%_
                        _%stx149357%_)
                       (let ((_%f149480%_
                              (let ((__tmp156400
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L149458%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self149356%_
                                 __tmp156400))))
                         (let _%lp149482%_ ((_%rest149485%_
                                             (reverse (let ((__tmp156402
                                                             (lambda (_%g149602149605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g149603149607%_)
                       (cons _%g149602149605%_ _%g149603149607%_))))
                (declare (not safe))
                (__foldr1 __tmp156402 '() _%L149457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind149487%_ '())
                                            (_%args149488%_ '()))
                           (let* ((_%rest149489149497%_ _%rest149485%_)
                                  (_%else149491149505%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind149487%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f149480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args149488%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K149493149591%_
                                   (lambda (_%rest149508%_ _%e149509%_)
                                     (let* ((_%__stx155857155858%_ _%e149509%_)
                                            (_%g149514149532%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx155857155858%_)))))
                                       (let ((_%__kont155859155860%_
                                              (lambda ()
                                                (_%lp149482%_
                                                 _%rest149508%_
                                                 _%bind149487%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e149509%_))
                                                       _%args149488%_))))
                                             (_%__kont155861155862%_
                                              (lambda ()
                                                (_%lp149482%_
                                                 _%rest149508%_
                                                 _%bind149487%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e149509%_))
                                                       _%args149488%_))))
                                             (_%__kont155863155864%_
                                              (lambda ()
                                                (let ((_%tmp149539%_
                                                       (let ((__tmp156401
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp156401))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp149482%_
                                                   _%rest149508%_
                                                   (cons (cons _%tmp149539%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e149509%_))
                             '()))
                 _%bind149487%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp149539%_
                                                         _%args149488%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx155857155858%_))
                                             (let ((_%e149516149570%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx155857155858%_))))
                                               (let ((_%tl149518149575%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e149516149570%_)))
                                                     (_%hd149517149573%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e149516149570%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd149517149573%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd149517149573%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl149518149575%_))
                     (let ((_%e149519149578%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl149518149575%_))))
                       (let ((_%tl149521149583%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e149519149578%_)))
                             (_%hd149520149581%_
                              (let ()
                                (declare (not safe))
                                (##car _%e149519149578%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl149521149583%_))
                             (_%__kont155859155860%_)
                             (_%__kont155863155864%_))))
                     (_%__kont155863155864%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd149517149573%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl149518149575%_))
                         (let ((_%e149525149555%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl149518149575%_))))
                           (let ((_%tl149527149560%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e149525149555%_)))
                                 (_%hd149526149558%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e149525149555%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl149527149560%_))
                                 (_%__kont155861155862%_)
                                 (_%__kont155863155864%_))))
                         (_%__kont155863155864%_))
                     (_%__kont155863155864%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont155863155864%_))))
                                             (_%__kont155863155864%_)))))))
                             (if (pair? _%rest149489149497%_)
                                 (let ((_%hd149494149594%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest149489149497%_)))
                                       (_%tl149495149596%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest149489149497%_))))
                                   (let* ((_%e149599%_ _%hd149494149594%_)
                                          (_%rest149601%_ _%tl149495149596%_))
                                     (_%K149493149591%_
                                      _%rest149601%_
                                      _%e149599%_)))
                                 (_%else149491149505%_))))))))
                (_%__kont155909155910%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self149356%_ _%stx149357%_))))
            (let ((_%__match155948155949%_
                   (lambda (_%e149364149401%_
                            _%hd149365149404%_
                            _%tl149366149406%_
                            _%e149367149409%_
                            _%hd149368149412%_
                            _%tl149369149414%_
                            _%e149370149417%_
                            _%hd149371149420%_
                            _%tl149372149422%_
                            _%e149373149425%_
                            _%hd149374149428%_
                            _%tl149375149430%_
                            _%__splice155907155908%_
                            _%target149376149433%_
                            _%tl149378149435%_)
                     (letrec ((_%loop149379149438%_
                               (lambda (_%hd149377149441%_
                                        _%rand149383149443%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd149377149441%_))
                                     (let ((_%e149380149446%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd149377149441%_))))
                                       (let ((_%lp-tl149382149451%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e149380149446%_)))
                                             (_%lp-hd149381149449%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e149380149446%_))))
                                         (_%loop149379149438%_
                                          _%lp-tl149382149451%_
                                          (cons _%lp-hd149381149449%_
                                                _%rand149383149443%_))))
                                     (let ((_%rand149384149454%_
                                            (reverse _%rand149383149443%_)))
                                       (_%__kont155905155906%_
                                        _%rand149384149454%_
                                        _%hd149374149428%_))))))
                       (_%loop149379149438%_ _%target149376149433%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx155903155904%_))
                  (let ((_%e149364149401%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx155903155904%_))))
                    (let ((_%tl149366149406%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149364149401%_)))
                          (_%hd149365149404%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149364149401%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl149366149406%_))
                          (let ((_%e149367149409%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl149366149406%_))))
                            (let ((_%tl149369149414%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149367149409%_)))
                                  (_%hd149368149412%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149367149409%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd149368149412%_))
                                  (let ((_%e149370149417%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd149368149412%_))))
                                    (let ((_%tl149372149422%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149370149417%_)))
                                          (_%hd149371149420%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149370149417%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd149371149420%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd149371149420%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149372149422%_))
                                                  (let ((_%e149373149425%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149372149422%_))))
                                                    (let ((_%tl149375149430%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149373149425%_)))
                                                          (_%hd149374149428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149373149425%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl149375149430%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl149369149414%_))
                      (let ((_%__splice155907155908%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl149369149414%_
                                '0))))
                        (let ((_%tl149378149435%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice155907155908%_ '1)))
                              (_%target149376149433%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice155907155908%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl149378149435%_))
                              (_%__match155948155949%_
                               _%e149364149401%_
                               _%hd149365149404%_
                               _%tl149366149406%_
                               _%e149367149409%_
                               _%hd149368149412%_
                               _%tl149369149414%_
                               _%e149370149417%_
                               _%hd149371149420%_
                               _%tl149372149422%_
                               _%e149373149425%_
                               _%hd149374149428%_
                               _%tl149375149430%_
                               _%__splice155907155908%_
                               _%target149376149433%_
                               _%tl149378149435%_)
                              (_%__kont155909155910%_))))
                      (_%__kont155909155910%_))
                  (_%__kont155909155910%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont155909155910%_))
                                              (_%__kont155909155910%_))
                                          (_%__kont155909155910%_))))
                                  (_%__kont155909155910%_))))
                          (_%__kont155909155910%_))))
                  (_%__kont155909155910%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self149168%_ _%stx149169%_)
        (letrec ((_%simplify149171%_
                  (lambda (_%code149256%_)
                    (let* ((_%code149257149275%_ _%code149256%_)
                           (_%else149259149283%_ (lambda () _%code149256%_))
                           (_%K149261149319%_
                            (lambda (_%expr149286%_ _%test149287%_)
                              (let* ((_%expr149288149296%_ _%expr149286%_)
                                     (_%else149290149304%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test149287%_
                                                    (cons _%expr149286%_
                                                          '())))))
                                     (_%K149292149309%_
                                      (lambda (_%exprs149307%_)
                                        (cons 'and
                                              (cons _%test149287%_
                                                    _%exprs149307%_)))))
                                (if (pair? _%expr149288149296%_)
                                    (let ((_%hd149293149312%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr149288149296%_)))
                                          (_%tl149294149314%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr149288149296%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd149293149312%_ 'and))
                                          (let ((_%exprs149317%_
                                                 _%tl149294149314%_))
                                            (_%K149292149309%_
                                             _%exprs149317%_))
                                          (_%else149290149304%_)))
                                    (_%else149290149304%_))))))
                      (if (pair? _%code149257149275%_)
                          (let ((_%hd149262149322%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code149257149275%_)))
                                (_%tl149263149324%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code149257149275%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd149262149322%_ 'if))
                                (if (pair? _%tl149263149324%_)
                                    (let ((_%hd149264149327%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl149263149324%_)))
                                          (_%tl149265149329%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl149263149324%_))))
                                      (let ((_%test149332%_
                                             _%hd149264149327%_))
                                        (if (pair? _%tl149265149329%_)
                                            (let ((_%hd149266149334%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl149265149329%_)))
                                                  (_%tl149267149336%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl149265149329%_))))
                                              (let ((_%expr149339%_
                                                     _%hd149266149334%_))
                                                (if (pair? _%tl149267149336%_)
                                                    (let ((_%hd149268149341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl149267149336%_)))
                                                          (_%tl149269149343%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl149267149336%_))))
                                                      (if (pair? _%hd149268149341%_)
                                                          (let ((_%hd149270149346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd149268149341%_)))
                        (_%tl149271149348%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd149268149341%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd149270149346%_ 'quote))
                        (if (pair? _%tl149271149348%_)
                            (let ((_%hd149272149351%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl149271149348%_)))
                                  (_%tl149273149353%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl149271149348%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd149272149351%_ '#f))
                                  (if (null? _%tl149273149353%_)
                                      (if (null? _%tl149269149343%_)
                                          (_%K149261149319%_
                                           _%expr149339%_
                                           _%test149332%_)
                                          (_%else149259149283%_))
                                      (_%else149259149283%_))
                                  (_%else149259149283%_)))
                            (_%else149259149283%_))
                        (_%else149259149283%_)))
                  (_%else149259149283%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else149259149283%_))))
                                            (_%else149259149283%_))))
                                    (_%else149259149283%_))
                                (_%else149259149283%_)))
                          (_%else149259149283%_))))))
          (let* ((_%g149173149194%_
                  (lambda (_%g149174149191%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g149174149191%_))))
                 (_%g149172149253%_
                  (lambda (_%g149174149197%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g149174149197%_))
                        (let ((_%e149178149199%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g149174149197%_))))
                          (let ((_%hd149179149202%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149178149199%_)))
                                (_%tl149180149204%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149178149199%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl149180149204%_))
                                (let ((_%e149181149207%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl149180149204%_))))
                                  (let ((_%hd149182149210%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149181149207%_)))
                                        (_%tl149183149212%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149181149207%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl149183149212%_))
                                        (let ((_%e149184149215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl149183149212%_))))
                                          (let ((_%hd149185149218%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e149184149215%_)))
                                                (_%tl149186149220%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e149184149215%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl149186149220%_))
                                                (let ((_%e149187149223%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl149186149220%_))))
                                                  (let ((_%hd149188149226%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e149187149223%_)))
                                                        (_%tl149189149228%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e149187149223%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl149189149228%_))
                                                        ((lambda (_%L149231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L149232%_
                          _%L149233%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify149171%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self149168%_
                                       _%L149233%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self149168%_
                                             _%L149232%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self149168%_
                                                   _%L149231%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp156403
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self149168%_
                                               _%L149233%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp156403
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self149168%_
                                            _%L149232%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self149168%_
                                                  _%L149231%_))
                                               '()))))))
                 _%hd149188149226%_
                 _%hd149185149218%_
                 _%hd149182149210%_)
                (_%g149173149194%_ _%g149174149197%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g149173149194%_
                                                 _%g149174149197%_))))
                                        (_%g149173149194%_
                                         _%g149174149197%_))))
                                (_%g149173149194%_ _%g149174149197%_))))
                        (_%g149173149194%_ _%g149174149197%_)))))
            (_%g149172149253%_ _%stx149169%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self149116%_ _%stx149117%_)
        (let* ((_%g149119149132%_
                (lambda (_%g149120149129%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149120149129%_))))
               (_%g149118149165%_
                (lambda (_%g149120149135%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149120149135%_))
                      (let ((_%e149122149137%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149120149135%_))))
                        (let ((_%hd149123149140%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149122149137%_)))
                              (_%tl149124149142%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149122149137%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149124149142%_))
                              (let ((_%e149125149145%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149124149142%_))))
                                (let ((_%hd149126149148%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149125149145%_)))
                                      (_%tl149127149150%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149125149145%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149127149150%_))
                                      ((lambda (_%L149153%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L149153%_)))
                                       _%hd149126149148%_)
                                      (_%g149119149132%_ _%g149120149135%_))))
                              (_%g149119149132%_ _%g149120149135%_))))
                      (_%g149119149132%_ _%g149120149135%_)))))
          (_%g149118149165%_ _%stx149117%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self149048%_ _%stx149049%_)
        (let* ((_%g149051149068%_
                (lambda (_%g149052149065%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149052149065%_))))
               (_%g149050149113%_
                (lambda (_%g149052149071%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149052149071%_))
                      (let ((_%e149055149073%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149052149071%_))))
                        (let ((_%hd149056149076%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149055149073%_)))
                              (_%tl149057149078%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149055149073%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149057149078%_))
                              (let ((_%e149058149081%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149057149078%_))))
                                (let ((_%hd149059149084%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149058149081%_)))
                                      (_%tl149060149086%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149058149081%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149060149086%_))
                                      (let ((_%e149061149089%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149060149086%_))))
                                        (let ((_%hd149062149092%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149061149089%_)))
                                              (_%tl149063149094%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149061149089%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149063149094%_))
                                              ((lambda (_%L149097%_
                                                        _%L149098%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L149098%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self149048%_ _%L149097%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd149062149092%_
                                               _%hd149059149084%_)
                                              (_%g149051149068%_
                                               _%g149052149071%_))))
                                      (_%g149051149068%_ _%g149052149071%_))))
                              (_%g149051149068%_ _%g149052149071%_))))
                      (_%g149051149068%_ _%g149052149071%_)))))
          (_%g149050149113%_ _%stx149049%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self148859%_ _%stx148860%_)
        (let* ((_%g148862148879%_
                (lambda (_%g148863148876%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148863148876%_))))
               (_%g148861149045%_
                (lambda (_%g148863148882%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148863148882%_))
                      (let ((_%e148866148884%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148863148882%_))))
                        (let ((_%hd148867148887%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148866148884%_)))
                              (_%tl148868148889%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148866148884%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148868148889%_))
                              (let ((_%e148869148892%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148868148889%_))))
                                (let ((_%hd148870148895%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148869148892%_)))
                                      (_%tl148871148897%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148869148892%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148871148897%_))
                                      (let ((_%e148872148900%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148871148897%_))))
                                        (let ((_%hd148873148903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148872148900%_)))
                                              (_%tl148874148905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148872148900%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148874148905%_))
                                              ((lambda (_%L148908%_
                                                        _%L148909%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self148859%_ _%L148908%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self148859%_ _%L148909%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp148924%_ ((_%rest148927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L148909%_ (cons _%L148908%_ '())))
                                (_%bind148929%_ '())
                                (_%args148930%_ '()))
               (let* ((_%rest148931148939%_ _%rest148927%_)
                      (_%else148933148947%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind148929%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args148930%_)
                                                 '()))))))
                      (_%K148935149033%_
                       (lambda (_%rest148950%_ _%e148951%_)
                         (let* ((_%__stx155951155952%_ _%e148951%_)
                                (_%g148956148974%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx155951155952%_)))))
                           (let ((_%__kont155953155954%_
                                  (lambda ()
                                    (_%lp148924%_
                                     _%rest148950%_
                                     _%bind148929%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e148951%_))
                                           _%args148930%_))))
                                 (_%__kont155955155956%_
                                  (lambda ()
                                    (_%lp148924%_
                                     _%rest148950%_
                                     _%bind148929%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e148951%_))
                                           _%args148930%_))))
                                 (_%__kont155957155958%_
                                  (lambda ()
                                    (let ((_%tmp148981%_
                                           (let ((__tmp156404
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp156404))))
                                      (_%lp148924%_
                                       _%rest148950%_
                                       (cons (cons _%tmp148981%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e148951%_))
                                                         '()))
                                             _%bind148929%_)
                                       (cons _%tmp148981%_ _%args148930%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx155951155952%_))
                                 (let ((_%e148958149012%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx155951155952%_))))
                                   (let ((_%tl148960149017%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e148958149012%_)))
                                         (_%hd148959149015%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e148958149012%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd148959149015%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd148959149015%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl148960149017%_))
                                                 (let ((_%e148961149020%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl148960149017%_))))
                                                   (let ((_%tl148963149025%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e148961149020%_)))
                                                         (_%hd148962149023%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e148961149020%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl148963149025%_))
                                                         (_%__kont155953155954%_)
                                                         (_%__kont155957155958%_))))
                                                 (_%__kont155957155958%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd148959149015%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl148960149017%_))
                                                     (let ((_%e148967148997%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl148960149017%_))))
                                                       (let ((_%tl148969149002%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e148967148997%_)))
                     (_%hd148968149000%_
                      (let () (declare (not safe)) (##car _%e148967148997%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl148969149002%_))
                     (_%__kont155955155956%_)
                     (_%__kont155957155958%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont155957155958%_))
                                                 (_%__kont155957155958%_)))
                                         (_%__kont155957155958%_))))
                                 (_%__kont155957155958%_)))))))
                 (if (pair? _%rest148931148939%_)
                     (let ((_%hd148936149036%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest148931148939%_)))
                           (_%tl148937149038%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest148931148939%_))))
                       (let* ((_%e149041%_ _%hd148936149036%_)
                              (_%rest149043%_ _%tl148937149038%_))
                         (_%K148935149033%_ _%rest149043%_ _%e149041%_)))
                     (_%else148933148947%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd148873148903%_
                                               _%hd148870148895%_)
                                              (_%g148862148879%_
                                               _%g148863148882%_))))
                                      (_%g148862148879%_ _%g148863148882%_))))
                              (_%g148862148879%_ _%g148863148882%_))))
                      (_%g148862148879%_ _%g148863148882%_)))))
          (_%g148861149045%_ _%stx148860%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self148670%_ _%stx148671%_)
        (let* ((_%g148673148690%_
                (lambda (_%g148674148687%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148674148687%_))))
               (_%g148672148856%_
                (lambda (_%g148674148693%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148674148693%_))
                      (let ((_%e148677148695%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148674148693%_))))
                        (let ((_%hd148678148698%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148677148695%_)))
                              (_%tl148679148700%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148677148695%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148679148700%_))
                              (let ((_%e148680148703%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148679148700%_))))
                                (let ((_%hd148681148706%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148680148703%_)))
                                      (_%tl148682148708%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148680148703%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148682148708%_))
                                      (let ((_%e148683148711%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148682148708%_))))
                                        (let ((_%hd148684148714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148683148711%_)))
                                              (_%tl148685148716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148683148711%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148685148716%_))
                                              ((lambda (_%L148719%_
                                                        _%L148720%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self148670%_ _%L148719%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self148670%_ _%L148720%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp148735%_ ((_%rest148738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L148720%_ (cons _%L148719%_ '())))
                                (_%bind148740%_ '())
                                (_%args148741%_ '()))
               (let* ((_%rest148742148750%_ _%rest148738%_)
                      (_%else148744148758%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind148740%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args148741%_)
                                                 '()))))))
                      (_%K148746148844%_
                       (lambda (_%rest148761%_ _%e148762%_)
                         (let* ((_%__stx155997155998%_ _%e148762%_)
                                (_%g148767148785%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx155997155998%_)))))
                           (let ((_%__kont155999156000%_
                                  (lambda ()
                                    (_%lp148735%_
                                     _%rest148761%_
                                     _%bind148740%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e148762%_))
                                           _%args148741%_))))
                                 (_%__kont156001156002%_
                                  (lambda ()
                                    (_%lp148735%_
                                     _%rest148761%_
                                     _%bind148740%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e148762%_))
                                           _%args148741%_))))
                                 (_%__kont156003156004%_
                                  (lambda ()
                                    (let ((_%tmp148792%_
                                           (let ((__tmp156405
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp156405))))
                                      (_%lp148735%_
                                       _%rest148761%_
                                       (cons (cons _%tmp148792%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e148762%_))
                                                         '()))
                                             _%bind148740%_)
                                       (cons _%tmp148792%_ _%args148741%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx155997155998%_))
                                 (let ((_%e148769148823%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx155997155998%_))))
                                   (let ((_%tl148771148828%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e148769148823%_)))
                                         (_%hd148770148826%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e148769148823%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd148770148826%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd148770148826%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl148771148828%_))
                                                 (let ((_%e148772148831%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl148771148828%_))))
                                                   (let ((_%tl148774148836%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e148772148831%_)))
                                                         (_%hd148773148834%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e148772148831%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl148774148836%_))
                                                         (_%__kont155999156000%_)
                                                         (_%__kont156003156004%_))))
                                                 (_%__kont156003156004%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd148770148826%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl148771148828%_))
                                                     (let ((_%e148778148808%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl148771148828%_))))
                                                       (let ((_%tl148780148813%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e148778148808%_)))
                     (_%hd148779148811%_
                      (let () (declare (not safe)) (##car _%e148778148808%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl148780148813%_))
                     (_%__kont156001156002%_)
                     (_%__kont156003156004%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont156003156004%_))
                                                 (_%__kont156003156004%_)))
                                         (_%__kont156003156004%_))))
                                 (_%__kont156003156004%_)))))))
                 (if (pair? _%rest148742148750%_)
                     (let ((_%hd148747148847%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest148742148750%_)))
                           (_%tl148748148849%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest148742148750%_))))
                       (let* ((_%e148852%_ _%hd148747148847%_)
                              (_%rest148854%_ _%tl148748148849%_))
                         (_%K148746148844%_ _%rest148854%_ _%e148852%_)))
                     (_%else148744148758%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd148684148714%_
                                               _%hd148681148706%_)
                                              (_%g148673148690%_
                                               _%g148674148693%_))))
                                      (_%g148673148690%_ _%g148674148693%_))))
                              (_%g148673148690%_ _%g148674148693%_))))
                      (_%g148673148690%_ _%g148674148693%_)))))
          (_%g148672148856%_ _%stx148671%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self148586%_ _%stx148587%_)
        (let* ((_%g148589148610%_
                (lambda (_%g148590148607%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148590148607%_))))
               (_%g148588148667%_
                (lambda (_%g148590148613%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148590148613%_))
                      (let ((_%e148594148615%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148590148613%_))))
                        (let ((_%hd148595148618%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148594148615%_)))
                              (_%tl148596148620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148594148615%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148596148620%_))
                              (let ((_%e148597148623%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148596148620%_))))
                                (let ((_%hd148598148626%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148597148623%_)))
                                      (_%tl148599148628%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148597148623%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148599148628%_))
                                      (let ((_%e148600148631%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148599148628%_))))
                                        (let ((_%hd148601148634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148600148631%_)))
                                              (_%tl148602148636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148600148631%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl148602148636%_))
                                              (let ((_%e148603148639%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl148602148636%_))))
                                                (let ((_%hd148604148642%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e148603148639%_)))
                                                      (_%tl148605148644%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e148603148639%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl148605148644%_))
                                                      ((lambda (_%L148647%_
                                                                _%L148648%_
                                                                _%L148649%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self148586%_ _%L148647%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self148586%_
                                      _%L148648%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self148586%_
                                            _%L148649%_))
                                         (cons ''#f '()))))))
               _%hd148604148642%_
               _%hd148601148634%_
               _%hd148598148626%_)
              (_%g148589148610%_ _%g148590148613%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g148589148610%_
                                               _%g148590148613%_))))
                                      (_%g148589148610%_ _%g148590148613%_))))
                              (_%g148589148610%_ _%g148590148613%_))))
                      (_%g148589148610%_ _%g148590148613%_)))))
          (_%g148588148667%_ _%stx148587%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self148486%_ _%stx148487%_)
        (let* ((_%g148489148514%_
                (lambda (_%g148490148511%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148490148511%_))))
               (_%g148488148583%_
                (lambda (_%g148490148517%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148490148517%_))
                      (let ((_%e148495148519%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148490148517%_))))
                        (let ((_%hd148496148522%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148495148519%_)))
                              (_%tl148497148524%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148495148519%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148497148524%_))
                              (let ((_%e148498148527%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148497148524%_))))
                                (let ((_%hd148499148530%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148498148527%_)))
                                      (_%tl148500148532%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148498148527%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148500148532%_))
                                      (let ((_%e148501148535%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148500148532%_))))
                                        (let ((_%hd148502148538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148501148535%_)))
                                              (_%tl148503148540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148501148535%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl148503148540%_))
                                              (let ((_%e148504148543%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl148503148540%_))))
                                                (let ((_%hd148505148546%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e148504148543%_)))
                                                      (_%tl148506148548%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e148504148543%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl148506148548%_))
                                                      (let ((_%e148507148551%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl148506148548%_))))
                (let ((_%hd148508148554%_
                       (let () (declare (not safe)) (##car _%e148507148551%_)))
                      (_%tl148509148556%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e148507148551%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl148509148556%_))
                      ((lambda (_%L148559%_
                                _%L148560%_
                                _%L148561%_
                                _%L148562%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self148486%_
                                        _%L148560%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self148486%_
                                              _%L148559%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self148486%_
                                                    _%L148561%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self148486%_
                                                          _%L148562%_))
                                                       (cons ''#f '())))))))
                       _%hd148508148554%_
                       _%hd148505148546%_
                       _%hd148502148538%_
                       _%hd148499148530%_)
                      (_%g148489148514%_ _%g148490148517%_))))
              (_%g148489148514%_ _%g148490148517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g148489148514%_
                                               _%g148490148517%_))))
                                      (_%g148489148514%_ _%g148490148517%_))))
                              (_%g148489148514%_ _%g148490148517%_))))
                      (_%g148489148514%_ _%g148490148517%_)))))
          (_%g148488148583%_ _%stx148487%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self148402%_ _%stx148403%_)
        (let* ((_%g148405148426%_
                (lambda (_%g148406148423%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148406148423%_))))
               (_%g148404148483%_
                (lambda (_%g148406148429%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148406148429%_))
                      (let ((_%e148410148431%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148406148429%_))))
                        (let ((_%hd148411148434%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148410148431%_)))
                              (_%tl148412148436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148410148431%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148412148436%_))
                              (let ((_%e148413148439%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148412148436%_))))
                                (let ((_%hd148414148442%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148413148439%_)))
                                      (_%tl148415148444%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148413148439%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148415148444%_))
                                      (let ((_%e148416148447%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148415148444%_))))
                                        (let ((_%hd148417148450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148416148447%_)))
                                              (_%tl148418148452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148416148447%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl148418148452%_))
                                              (let ((_%e148419148455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl148418148452%_))))
                                                (let ((_%hd148420148458%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e148419148455%_)))
                                                      (_%tl148421148460%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e148419148455%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl148421148460%_))
                                                      ((lambda (_%L148463%_
                                                                _%L148464%_
                                                                _%L148465%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self148402%_ _%L148463%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self148402%_
                                      _%L148464%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self148402%_
                                            _%L148465%_))
                                         (cons ''#f '()))))))
               _%hd148420148458%_
               _%hd148417148450%_
               _%hd148414148442%_)
              (_%g148405148426%_ _%g148406148429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g148405148426%_
                                               _%g148406148429%_))))
                                      (_%g148405148426%_ _%g148406148429%_))))
                              (_%g148405148426%_ _%g148406148429%_))))
                      (_%g148405148426%_ _%g148406148429%_)))))
          (_%g148404148483%_ _%stx148403%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self148302%_ _%stx148303%_)
        (let* ((_%g148305148330%_
                (lambda (_%g148306148327%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148306148327%_))))
               (_%g148304148399%_
                (lambda (_%g148306148333%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148306148333%_))
                      (let ((_%e148311148335%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148306148333%_))))
                        (let ((_%hd148312148338%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148311148335%_)))
                              (_%tl148313148340%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148311148335%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148313148340%_))
                              (let ((_%e148314148343%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148313148340%_))))
                                (let ((_%hd148315148346%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148314148343%_)))
                                      (_%tl148316148348%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148314148343%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148316148348%_))
                                      (let ((_%e148317148351%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148316148348%_))))
                                        (let ((_%hd148318148354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148317148351%_)))
                                              (_%tl148319148356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148317148351%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl148319148356%_))
                                              (let ((_%e148320148359%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl148319148356%_))))
                                                (let ((_%hd148321148362%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e148320148359%_)))
                                                      (_%tl148322148364%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e148320148359%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl148322148364%_))
                                                      (let ((_%e148323148367%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl148322148364%_))))
                (let ((_%hd148324148370%_
                       (let () (declare (not safe)) (##car _%e148323148367%_)))
                      (_%tl148325148372%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e148323148367%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl148325148372%_))
                      ((lambda (_%L148375%_
                                _%L148376%_
                                _%L148377%_
                                _%L148378%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self148302%_
                                        _%L148376%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self148302%_
                                              _%L148375%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self148302%_
                                                    _%L148377%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self148302%_
                                                          _%L148378%_))
                                                       (cons ''#f '())))))))
                       _%hd148324148370%_
                       _%hd148321148362%_
                       _%hd148318148354%_
                       _%hd148315148346%_)
                      (_%g148305148330%_ _%g148306148333%_))))
              (_%g148305148330%_ _%g148306148333%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g148305148330%_
                                               _%g148306148333%_))))
                                      (_%g148305148330%_ _%g148306148333%_))))
                              (_%g148305148330%_ _%g148306148333%_))))
                      (_%g148305148330%_ _%g148306148333%_)))))
          (_%g148304148399%_ _%stx148303%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self148097%_ _%stx148098%_)
        (let* ((_%g148100148121%_
                (lambda (_%g148101148118%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148101148118%_))))
               (_%g148099148299%_
                (lambda (_%g148101148124%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148101148124%_))
                      (let ((_%e148105148126%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148101148124%_))))
                        (let ((_%hd148106148129%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148105148126%_)))
                              (_%tl148107148131%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148105148126%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148107148131%_))
                              (let ((_%e148108148134%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148107148131%_))))
                                (let ((_%hd148109148137%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148108148134%_)))
                                      (_%tl148110148139%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148108148134%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148110148139%_))
                                      (let ((_%e148111148142%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148110148139%_))))
                                        (let ((_%hd148112148145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148111148142%_)))
                                              (_%tl148113148147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148111148142%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl148113148147%_))
                                              (let ((_%e148114148150%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl148113148147%_))))
                                                (let ((_%hd148115148153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e148114148150%_)))
                                                      (_%tl148116148155%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e148114148150%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl148116148155%_))
                                                      ((lambda (_%L148158%_
                                                                _%L148159%_
                                                                _%L148160%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self148097%_
                                    _%L148158%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self148097%_
                                          _%L148159%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp148178%_ ((_%rest148181%_
                                         (cons _%L148159%_
                                               (cons _%L148158%_ '())))
                                        (_%bind148183%_ '())
                                        (_%args148184%_ '()))
                       (let* ((_%rest148185148193%_ _%rest148181%_)
                              (_%else148187148201%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind148183%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp156406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp156406 _%args148184%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K148189148287%_
                               (lambda (_%rest148204%_ _%e148205%_)
                                 (let* ((_%__stx156043156044%_ _%e148205%_)
                                        (_%g148210148228%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx156043156044%_)))))
                                   (let ((_%__kont156045156046%_
                                          (lambda ()
                                            (_%lp148178%_
                                             _%rest148204%_
                                             _%bind148183%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e148205%_))
                                                   _%args148184%_))))
                                         (_%__kont156047156048%_
                                          (lambda ()
                                            (_%lp148178%_
                                             _%rest148204%_
                                             _%bind148183%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e148205%_))
                                                   _%args148184%_))))
                                         (_%__kont156049156050%_
                                          (lambda ()
                                            (let ((_%tmp148235%_
                                                   (let ((__tmp156407
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp156407))))
                                              (_%lp148178%_
                                               _%rest148204%_
                                               (cons (cons _%tmp148235%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e148205%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind148183%_)
                                               (cons _%tmp148235%_
                                                     _%args148184%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx156043156044%_))
                                         (let ((_%e148212148266%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx156043156044%_))))
                                           (let ((_%tl148214148271%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e148212148266%_)))
                                                 (_%hd148213148269%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e148212148266%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd148213148269%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd148213148269%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl148214148271%_))
                                                         (let ((_%e148215148274%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl148214148271%_))))
                   (let ((_%tl148217148279%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e148215148274%_)))
                         (_%hd148216148277%_
                          (let ()
                            (declare (not safe))
                            (##car _%e148215148274%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl148217148279%_))
                         (_%__kont156045156046%_)
                         (_%__kont156049156050%_))))
                 (_%__kont156049156050%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd148213148269%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl148214148271%_))
                     (let ((_%e148221148251%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl148214148271%_))))
                       (let ((_%tl148223148256%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e148221148251%_)))
                             (_%hd148222148254%_
                              (let ()
                                (declare (not safe))
                                (##car _%e148221148251%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl148223148256%_))
                             (_%__kont156047156048%_)
                             (_%__kont156049156050%_))))
                     (_%__kont156049156050%_))
                 (_%__kont156049156050%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont156049156050%_))))
                                         (_%__kont156049156050%_)))))))
                         (if (pair? _%rest148185148193%_)
                             (let ((_%hd148190148290%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest148185148193%_)))
                                   (_%tl148191148292%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest148185148193%_))))
                               (let* ((_%e148295%_ _%hd148190148290%_)
                                      (_%rest148297%_ _%tl148191148292%_))
                                 (_%K148189148287%_
                                  _%rest148297%_
                                  _%e148295%_)))
                             (_%else148187148201%_))))))
               _%hd148115148153%_
               _%hd148112148145%_
               _%hd148109148137%_)
              (_%g148100148121%_ _%g148101148124%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g148100148121%_
                                               _%g148101148124%_))))
                                      (_%g148100148121%_ _%g148101148124%_))))
                              (_%g148100148121%_ _%g148101148124%_))))
                      (_%g148100148121%_ _%g148101148124%_)))))
          (_%g148099148299%_ _%stx148098%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self147876%_ _%stx147877%_)
        (let* ((_%g147879147904%_
                (lambda (_%g147880147901%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147880147901%_))))
               (_%g147878148094%_
                (lambda (_%g147880147907%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147880147907%_))
                      (let ((_%e147885147909%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147880147907%_))))
                        (let ((_%hd147886147912%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147885147909%_)))
                              (_%tl147887147914%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147885147909%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147887147914%_))
                              (let ((_%e147888147917%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147887147914%_))))
                                (let ((_%hd147889147920%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147888147917%_)))
                                      (_%tl147890147922%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147888147917%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147890147922%_))
                                      (let ((_%e147891147925%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147890147922%_))))
                                        (let ((_%hd147892147928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147891147925%_)))
                                              (_%tl147893147930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147891147925%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl147893147930%_))
                                              (let ((_%e147894147933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl147893147930%_))))
                                                (let ((_%hd147895147936%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e147894147933%_)))
                                                      (_%tl147896147938%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e147894147933%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl147896147938%_))
                                                      (let ((_%e147897147941%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl147896147938%_))))
                (let ((_%hd147898147944%_
                       (let () (declare (not safe)) (##car _%e147897147941%_)))
                      (_%tl147899147946%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e147897147941%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl147899147946%_))
                      ((lambda (_%L147949%_
                                _%L147950%_
                                _%L147951%_
                                _%L147952%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self147876%_
                                            _%L147950%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self147876%_
                                                  _%L147949%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self147876%_
                                                        _%L147951%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp147973%_ ((_%rest147976%_
                                                 (cons _%L147951%_
                                                       (cons _%L147949%_
                                                             (cons _%L147950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind147978%_ '())
                                                (_%args147979%_ '()))
                               (let* ((_%rest147980147988%_ _%rest147976%_)
                                      (_%else147982147996%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind147978%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp156408 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp156408 _%args147979%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K147984148082%_
                                       (lambda (_%rest147999%_ _%e148000%_)
                                         (let* ((_%__stx156089156090%_
                                                 _%e148000%_)
                                                (_%g148005148023%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx156089156090%_)))))
                                           (let ((_%__kont156091156092%_
                                                  (lambda ()
                                                    (_%lp147973%_
                                                     _%rest147999%_
                                                     _%bind147978%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e148000%_))
                                                           _%args147979%_))))
                                                 (_%__kont156093156094%_
                                                  (lambda ()
                                                    (_%lp147973%_
                                                     _%rest147999%_
                                                     _%bind147978%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e148000%_))
                                                           _%args147979%_))))
                                                 (_%__kont156095156096%_
                                                  (lambda ()
                                                    (let ((_%tmp148030%_
                                                           (let ((__tmp156409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp156409))))
              (_%lp147973%_
               _%rest147999%_
               (cons (cons _%tmp148030%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e148000%_))
                                 '()))
                     _%bind147978%_)
               (cons _%tmp148030%_ _%args147979%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx156089156090%_))
                                                 (let ((_%e148007148061%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx156089156090%_))))
                                                   (let ((_%tl148009148066%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e148007148061%_)))
                                                         (_%hd148008148064%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e148007148061%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd148008148064%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd148008148064%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl148009148066%_))
                         (let ((_%e148010148069%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl148009148066%_))))
                           (let ((_%tl148012148074%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e148010148069%_)))
                                 (_%hd148011148072%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e148010148069%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl148012148074%_))
                                 (_%__kont156091156092%_)
                                 (_%__kont156095156096%_))))
                         (_%__kont156095156096%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd148008148064%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl148009148066%_))
                             (let ((_%e148016148046%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl148009148066%_))))
                               (let ((_%tl148018148051%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e148016148046%_)))
                                     (_%hd148017148049%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e148016148046%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl148018148051%_))
                                     (_%__kont156093156094%_)
                                     (_%__kont156095156096%_))))
                             (_%__kont156095156096%_))
                         (_%__kont156095156096%_)))
                 (_%__kont156095156096%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont156095156096%_)))))))
                                 (if (pair? _%rest147980147988%_)
                                     (let ((_%hd147985148085%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest147980147988%_)))
                                           (_%tl147986148087%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest147980147988%_))))
                                       (let* ((_%e148090%_ _%hd147985148085%_)
                                              (_%rest148092%_
                                               _%tl147986148087%_))
                                         (_%K147984148082%_
                                          _%rest148092%_
                                          _%e148090%_)))
                                     (_%else147982147996%_))))))
                       _%hd147898147944%_
                       _%hd147895147936%_
                       _%hd147892147928%_
                       _%hd147889147920%_)
                      (_%g147879147904%_ _%g147880147907%_))))
              (_%g147879147904%_ _%g147880147907%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g147879147904%_
                                               _%g147880147907%_))))
                                      (_%g147879147904%_ _%g147880147907%_))))
                              (_%g147879147904%_ _%g147880147907%_))))
                      (_%g147879147904%_ _%g147880147907%_)))))
          (_%g147878148094%_ _%stx147877%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self147715%_ _%stx147716%_)
        (letrec ((_%import-set-template147718%_
                  (lambda (_%in147821%_ _%phi147822%_)
                    (let ((_%iphi147824%_
                           (fx+ _%phi147822%_
                                (##direct-structure-ref
                                 _%in147821%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports147825%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in147821%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp147827%_ ((_%rest147829%_ _%imports147825%_)
                                         (_%r147830%_ '()))
                        (let* ((_%rest147831147839%_ _%rest147829%_)
                               (_%else147833147847%_ (lambda () _%r147830%_))
                               (_%K147835147864%_
                                (lambda (_%rest147850%_ _%in147851%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in147851%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi147824%_))
                                          (_%lp147827%_
                                           _%rest147850%_
                                           (cons _%in147851%_ _%r147830%_))
                                          (_%lp147827%_
                                           _%rest147850%_
                                           _%r147830%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in147851%_
                                             'gx#module-import::t))
                                          (let ((_%iphi147855%_
                                                 (fx+ _%phi147822%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in147851%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi147855%_))
                                                (_%lp147827%_
                                                 _%rest147850%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in147851%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r147830%_))
                                                (_%lp147827%_
                                                 _%rest147850%_
                                                 _%r147830%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in147851%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi147858%_
                                                     (fx+ _%iphi147824%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in147851%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi147858%_))
                                                    (_%lp147827%_
                                                     _%rest147850%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in147851%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r147830%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi147858%_))
                                                        (_%lp147827%_
                                                         _%rest147850%_
                                                         (let ((__tmp156410
                                                                (_%import-set-template147718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in147851%_
                         _%iphi147824%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r147830%_ __tmp156410)))
                (_%lp147827%_ _%rest147850%_ _%r147830%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp147827%_
                                               _%rest147850%_
                                               _%r147830%_)))))))
                          (if (pair? _%rest147831147839%_)
                              (let ((_%hd147836147867%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest147831147839%_)))
                                    (_%tl147837147869%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest147831147839%_))))
                                (let* ((_%in147872%_ _%hd147836147867%_)
                                       (_%rest147874%_ _%tl147837147869%_))
                                  (_%K147835147864%_
                                   _%rest147874%_
                                   _%in147872%_)))
                              (_%else147833147847%_))))))))
          (let* ((_%g147720147730%_
                  (lambda (_%g147721147727%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g147721147727%_))))
                 (_%g147719147818%_
                  (lambda (_%g147721147733%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g147721147733%_))
                        (let ((_%e147723147735%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g147721147733%_))))
                          (let ((_%hd147724147738%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147723147735%_)))
                                (_%tl147725147740%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147723147735%_))))
                            ((lambda (_%L147743%_)
                               (let ((_%ht147754%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp147756%_ ((_%rest147758%_
                                                     _%L147743%_)
                                                    (_%loads147759%_ '()))
                                   (letrec ((_%K147761%_
                                             (lambda (_%ctx147811%_
                                                      _%rest147812%_)
                                               (let ((_%id147814%_
                                                      (##structure-ref
                                                       _%ctx147811%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht147754%_
                                                        _%id147814%_))
                                                     (_%lp147756%_
                                                      _%rest147812%_
                                                      _%loads147759%_)
                                                     (let ((_%rt147816%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id147814%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht147754%_
                                                          _%id147814%_
                                                          _%rt147816%_))
                                                       (_%lp147756%_
                                                        _%rest147812%_
                                                        (cons _%rt147816%_
                                                              _%loads147759%_))))))))
                                     (let* ((_%rest147762147770%_
                                             _%rest147758%_)
                                            (_%else147764147782%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp156412
                                                            (lambda (_%g147777147779%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g147777147779%_)))
                   (__tmp156411 (reverse _%loads147759%_)))
               (declare (not safe))
               (##map __tmp156412 __tmp156411)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K147766147799%_
                                             (lambda (_%rest147785%_
                                                      _%in147786%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in147786%_
                                                      'gx#module-context::t))
                                                   (_%K147761%_
                                                    _%in147786%_
                                                    _%rest147785%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in147786%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in147786%_
                               '3
                               '#f
                               '#f)))
                   (_%K147761%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in147786%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest147785%_)
                   (_%lp147756%_ _%rest147785%_ _%loads147759%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in147786%_
                      'gx#import-set::t))
                   (let ((_%phi147791%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in147786%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi147791%_)
                         (_%K147761%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in147786%_
                             '1
                             '#f
                             '#f))
                          _%rest147785%_)
                         (if (fxpositive? _%phi147791%_)
                             (let ((_%deps147795%_
                                    (_%import-set-template147718%_
                                     _%in147786%_
                                     '0)))
                               (_%lp147756%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest147785%_
                                   _%deps147795%_))
                                _%loads147759%_))
                             (_%lp147756%_ _%rest147785%_ _%loads147759%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx147716%_
                      _%in147786%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest147762147770%_)
                                           (let ((_%hd147767147802%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest147762147770%_)))
                                                 (_%tl147768147804%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest147762147770%_))))
                                             (let* ((_%in147807%_
                                                     _%hd147767147802%_)
                                                    (_%rest147809%_
                                                     _%tl147768147804%_))
                                               (_%K147766147799%_
                                                _%rest147809%_
                                                _%in147807%_)))
                                           (_%else147764147782%_)))))))
                             _%tl147725147740%_)))
                        (_%g147720147730%_ _%g147721147733%_)))))
            (_%g147719147818%_ _%stx147716%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self147528%_ _%stx147529%_)
        (letrec ((_%add-lift!147531%_
                  (lambda (_%expr147713%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr147713%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote147532%_
                  (lambda (_%id147710%_ _%marks147711%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id147710%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks147711%_
                                                        '()))))))))
                 (_%generate-simple147533%_
                  (lambda (_%stxq147705%_)
                    (let ((_%gid147707%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid147708%_
                           (gxc#generate-runtime-identifier _%stxq147705%_)))
                      (_%add-lift!147531%_
                       (cons 'define
                             (cons _%gid147707%_
                                   (cons (_%generate-syntax-quote147532%_
                                          _%qid147708%_
                                          ''())
                                         '()))))
                      (let ((__tmp156413
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp156413 _%stxq147705%_ _%gid147707%_))
                      _%gid147707%_)))
                 (_%generate-serialized147534%_
                  (lambda (_%stxq147695%_ _%marks147696%_)
                    (let* ((_%mark-refs147698%_
                            (map _%generate-mark147535%_ _%marks147696%_))
                           (_%gid147700%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid147702%_
                            (gxc#generate-runtime-identifier _%stxq147695%_)))
                      (_%add-lift!147531%_
                       (cons 'define
                             (cons _%gid147700%_
                                   (cons (_%generate-syntax-quote147532%_
                                          _%qid147702%_
                                          (cons 'list _%mark-refs147698%_))
                                         '()))))
                      (let ((__tmp156414
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp156414 _%stxq147695%_ _%gid147700%_))
                      _%gid147700%_)))
                 (_%generate-mark147535%_
                  (lambda (_%mark147680%_)
                    (let ((_%$e147682%_
                           (let ((__tmp156415
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp156415 _%mark147680%_))))
                      (if _%$e147682%_
                          _%$e147682%_
                          (let* ((_%gid147686%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr147688%_
                                  (_%serialize-mark147536%_ _%mark147680%_))
                                 (_%ctx147690%_
                                  (let ((__tmp156416
                                         (##structure-ref
                                          _%mark147680%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp156416)))
                                 (_%ctx-ref147692%_
                                  (if (eq? _%ctx147690%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref147537%_
                                                               _%ctx147690%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp156417
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp156417
                               _%mark147680%_
                               _%gid147686%_))
                            (_%add-lift!147531%_
                             (cons 'define
                                   (cons _%gid147686%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr147688%_ '()))
                   (cons _%ctx-ref147692%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid147686%_)))))
                 (_%serialize-mark147536%_
                  (lambda (_%mark147627%_)
                    (letrec ((_%quote-e147629%_
                              (lambda (_%sym147678%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym147678%_))
                                    _%sym147678%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym147678%_))))))
                      (let* ((_%mark147630147639%_ _%mark147627%_)
                             (_%E147632147643%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark147630147639%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K147633147655%_
                              (lambda (_%trace147646%_
                                       _%phi147647%_
                                       _%ctx147648%_
                                       _%subst147649%_)
                                (let ((_%subs147651%_
                                       (if _%subst147649%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst147649%_))
                                           '())))
                                  (cons _%phi147647%_
                                        (map (lambda (_%pair147653%_)
                                               (cons (_%quote-e147629%_
                                                      (car _%pair147653%_))
                                                     (_%quote-e147629%_
                                                      (cdr _%pair147653%_))))
                                             _%subs147651%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark147630147639%_
                               'gx#expander-mark::t))
                            (let* ((_%e147634147658%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark147630147639%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst147661%_ _%e147634147658%_)
                                   (_%e147635147663%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark147630147639%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx147666%_ _%e147635147663%_)
                                   (_%e147636147668%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark147630147639%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi147671%_ _%e147636147668%_)
                                   (_%e147637147673%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark147630147639%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace147676%_ _%e147637147673%_))
                              (_%K147633147655%_
                               _%trace147676%_
                               _%phi147671%_
                               _%ctx147666%_
                               _%subst147661%_))
                            (_%E147632147643%_))))))
                 (_%context-ref147537%_
                  (lambda (_%ctx147614%_)
                    (if (let ((__tmp156418
                               (##structure-ref
                                _%ctx147614%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp156418
                           'gx#module-context::t))
                        (let ((_%ctx-ref147616%_
                               (_%context-ref-nested147539%_ _%ctx147614%_))
                              (_%ctx-origin147617%_
                               (_%context-ref-origin147538%_ _%ctx147614%_))
                              (_%origin147618%_
                               (_%context-ref-origin147538%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin147618%_ _%ctx-origin147617%_)
                              (let ((_%ref147620%_
                                     (_%context-ref-nested147539%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp147622%_ ((_%ref147624%_
                                                    (cdr _%ref147620%_))
                                                   (_%ctx-ref147625%_
                                                    (cdr _%ctx-ref147616%_)))
                                  (if (and (pair? _%ref147624%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref147624%_))
                                                (car _%ctx-ref147625%_)))
                                      (_%lp147622%_
                                       (cdr _%ref147624%_)
                                       (cdr _%ctx-ref147625%_))
                                      (cons '#f _%ctx-ref147625%_))))
                              _%ctx-ref147616%_))
                        (let ((__tmp156419
                               (##structure-ref
                                _%ctx147614%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp156419)))))
                 (_%context-ref-origin147538%_
                  (lambda (_%ctx147606%_)
                    (let _%lp147608%_ ((_%ctx147610%_ _%ctx147606%_))
                      (let ((_%super147612%_
                             (##structure-ref
                              _%ctx147610%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super147612%_
                               'gx#module-context::t))
                            (_%lp147608%_ _%super147612%_)
                            _%ctx147610%_)))))
                 (_%context-ref-nested147539%_
                  (lambda (_%ctx147597%_)
                    (let _%lp147599%_ ((_%ctx147601%_ _%ctx147597%_)
                                       (_%r147602%_ '()))
                      (let ((_%super147604%_
                             (##structure-ref
                              _%ctx147601%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super147604%_
                               'gx#module-context::t))
                            (_%lp147599%_
                             _%super147604%_
                             (cons (car (##structure-ref
                                         _%ctx147601%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r147602%_))
                            (cons (let ((__tmp156420
                                         (##structure-ref
                                          _%ctx147601%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp156420))
                                  _%r147602%_)))))))
          (let* ((_%g147541147554%_
                  (lambda (_%g147542147551%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g147542147551%_))))
                 (_%g147540147594%_
                  (lambda (_%g147542147557%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g147542147557%_))
                        (let ((_%e147544147559%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g147542147557%_))))
                          (let ((_%hd147545147562%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147544147559%_)))
                                (_%tl147546147564%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147544147559%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl147546147564%_))
                                (let ((_%e147547147567%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl147546147564%_))))
                                  (let ((_%hd147548147570%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147547147567%_)))
                                        (_%tl147549147572%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147547147567%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl147549147572%_))
                                        ((lambda (_%L147575%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L147575%_))
                                               (let ((_%$e147588%_
                                                      (let ((__tmp156421
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp156421 _%L147575%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e147588%_
                                                     _%$e147588%_
                                                     (let ((_%marks147592%_
                                                            (##direct-structure-ref
                                                             _%L147575%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks147592%_)
                                                           (_%generate-simple147533%_
                                                            _%L147575%_)
                                                           (_%generate-serialized147534%_
                                                            _%L147575%_
                                                            _%marks147592%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L147575%_))))
                                         _%hd147548147570%_)
                                        (_%g147541147554%_
                                         _%g147542147557%_))))
                                (_%g147541147554%_ _%g147542147557%_))))
                        (_%g147541147554%_ _%g147542147557%_)))))
            (_%g147540147594%_ _%stx147529%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self147460%_ _%stx147461%_)
        (let* ((_%g147463147480%_
                (lambda (_%g147464147477%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147464147477%_))))
               (_%g147462147525%_
                (lambda (_%g147464147483%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147464147483%_))
                      (let ((_%e147467147485%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147464147483%_))))
                        (let ((_%hd147468147488%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147467147485%_)))
                              (_%tl147469147490%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147467147485%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147469147490%_))
                              (let ((_%e147470147493%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147469147490%_))))
                                (let ((_%hd147471147496%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147470147493%_)))
                                      (_%tl147472147498%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147470147493%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147472147498%_))
                                      (let ((_%e147473147501%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147472147498%_))))
                                        (let ((_%hd147474147504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147473147501%_)))
                                              (_%tl147475147506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147473147501%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147475147506%_))
                                              ((lambda (_%L147509%_
                                                        _%L147510%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L147510%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self147460%_ _%L147509%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd147474147504%_
                                               _%hd147471147496%_)
                                              (_%g147463147480%_
                                               _%g147464147483%_))))
                                      (_%g147463147480%_ _%g147464147483%_))))
                              (_%g147463147480%_ _%g147464147483%_))))
                      (_%g147463147480%_ _%g147464147483%_)))))
          (_%g147462147525%_ _%stx147461%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self147409%_ _%stx147410%_)
        (let* ((_%g147412147422%_
                (lambda (_%g147413147419%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147413147419%_))))
               (_%g147411147457%_
                (lambda (_%g147413147425%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147413147425%_))
                      (let ((_%e147415147427%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147413147425%_))))
                        (let ((_%hd147416147430%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147415147427%_)))
                              (_%tl147417147432%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147415147427%_))))
                          ((lambda (_%L147435%_)
                             (let* ((_%c-body147449%_
                                     (map (lambda (_%g147444147446%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self147409%_
                                               _%g147444147446%_)))
                                          _%L147435%_))
                                    (_%c-body147454%_
                                     (let ((__tmp156422
                                            (lambda (_%$obj147451%_)
                                              (not (eq? _%$obj147451%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp156422
                                        _%c-body147449%_))))
                               (cons '%#begin _%c-body147454%_)))
                           _%tl147417147432%_)))
                      (_%g147412147422%_ _%g147413147425%_)))))
          (_%g147411147457%_ _%stx147410%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self147314%_ _%stx147315%_)
        (let* ((_%g147317147327%_
                (lambda (_%g147318147324%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147318147324%_))))
               (_%g147316147406%_
                (lambda (_%g147318147330%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147318147330%_))
                      (let ((_%e147320147332%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147318147330%_))))
                        (let ((_%hd147321147335%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147320147332%_)))
                              (_%tl147322147337%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147320147332%_))))
                          ((lambda (_%L147340%_)
                             (let* ((_%phi147350%_
                                     (let ((__tmp156423
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp156423 '1)))
                                    (_%block147352%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self147314%_ 'state))
                                      _%phi147350%_))
                                    (_%compiled147355%_
                                     (let ((__tmp156424
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self147314%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L147340%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp156424
                                        gx#current-expander-phi
                                        _%phi147350%_)))
                                    (_%g147358147368%_
                                     (lambda (_%g147359147365%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g147359147365%_))))
                                    (_%g147357147403%_
                                     (lambda (_%g147359147371%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g147359147371%_))
                                           (let ((_%e147361147373%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g147359147371%_))))
                                             (let ((_%hd147362147376%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e147361147373%_)))
                                                   (_%tl147363147378%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e147361147373%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd147362147376%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd147362147376%_))
                                                       ((lambda (_%L147381%_)
                                                          (let ((_%c-body147398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj147395%_)
                                   (not (eq? _%$obj147395%_ '#!void)))
                                 _%L147381%_)))
                    (if _%block147352%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block147352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body147398%_))
                        (if (null? _%c-body147398%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body147398%_)))))
                _%tl147363147378%_)
               (_%g147358147368%_ _%g147359147371%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g147358147368%_
                                                    _%g147359147371%_))))
                                           (_%g147358147368%_
                                            _%g147359147371%_)))))
                               (_%g147357147403%_ _%compiled147355%_)))
                           _%tl147322147337%_)))
                      (_%g147317147327%_ _%g147318147330%_)))))
          (_%g147316147406%_ _%stx147315%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self147245%_ _%stx147246%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self147245%_ 'state)))
        (let* ((_%g147248147262%_
                (lambda (_%g147249147259%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147249147259%_))))
               (_%g147247147311%_
                (lambda (_%g147249147265%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147249147265%_))
                      (let ((_%e147252147267%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147249147265%_))))
                        (let ((_%hd147253147270%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147252147267%_)))
                              (_%tl147254147272%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147252147267%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147254147272%_))
                              (let ((_%e147255147275%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147254147272%_))))
                                (let ((_%hd147256147278%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147255147275%_)))
                                      (_%tl147257147280%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147255147275%_))))
                                  ((lambda (_%L147283%_ _%L147284%_)
                                     (let ((_%key147297%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L147284%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key147297%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx147246%_
                                              _%L147284%_
                                              _%key147297%_)))
                                       (let* ((_%ctx147299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L147284%_)))
                                              (_%code147302%_
                                               (let ((__tmp156425
                                                      (lambda ()
                                                        (let ((__tmp156426
                                                               (##structure-ref
                                                                _%ctx147299%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self147245%_
                                                           __tmp156426)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp156425
                                                  gx#current-expander-context
                                                  _%ctx147299%_)))
                                              (_%rt147304%_
                                               (let ((__tmp156427
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp156427
                                                  _%ctx147299%_)))
                                              (_%loader147306%_
                                               (if _%rt147304%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt147304%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid147308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L147284%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self147245%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid147308%_
                                                     (cons _%code147302%_
                                                           _%loader147306%_))))))
                                   _%tl147257147280%_
                                   _%hd147256147278%_)))
                              (_%g147248147262%_ _%g147249147265%_))))
                      (_%g147248147262%_ _%g147249147265%_)))))
          (_%g147247147311%_ _%stx147246%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx147232%_ _%context-chain147233%_)
        (let _%lp147235%_ ((_%ctx147237%_ _%ctx147232%_) (_%path147238%_ '()))
          (let ((_%super147240%_
                 (##structure-ref _%ctx147237%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super147240%_ _%context-chain147233%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx147237%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path147238%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super147240%_
                       'gx#module-context::t))
                    (_%lp147235%_
                     _%super147240%_
                     (cons (car (##structure-ref
                                 _%ctx147237%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path147238%_))
                    (cons (let ((__tmp156428
                                 (##structure-ref
                                  _%ctx147237%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp156428))
                          _%path147238%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp147225%_ ((_%ctx147227%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r147228%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx147227%_ 'gx#module-context::t))
              (_%lp147225%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx147227%_ '3 '#f '#f))
               (cons _%ctx147227%_ _%r147228%_))
              _%r147228%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self146988%_ _%stx146989%_)
        (letrec* ((_%context-chain146991%_ (gxc#current-context-chain))
                  (_%make-import-spec146992%_
                   (lambda (_%in147161%_)
                     (let* ((_%in147162147174%_ _%in147161%_)
                            (_%E147164147178%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in147162147174%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K147165147188%_
                             (lambda (_%phi147181%_
                                      _%name147182%_
                                      _%src-name147183%_
                                      _%src-phi147184%_
                                      _%src-key147185%_
                                      _%src-ctx147186%_)
                               (cons _%phi147181%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name147182%_)
                                           (cons _%src-phi147184%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name147183%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in147162147174%_
                              'gx#module-import::t))
                           (let ((_%e147166147191%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in147162147174%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e147166147191%_
                                    'gx#module-export::t))
                                 (let* ((_%e147169147194%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e147166147191%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx147197%_ _%e147169147194%_)
                                        (_%e147170147199%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e147166147191%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key147202%_ _%e147170147199%_)
                                        (_%e147171147204%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e147166147191%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi147207%_ _%e147171147204%_)
                                        (_%e147172147209%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e147166147191%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name147212%_ _%e147172147209%_)
                                        (_%e147167147214%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in147162147174%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name147217%_ _%e147167147214%_)
                                        (_%e147168147219%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in147162147174%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi147222%_ _%e147168147219%_))
                                   (_%K147165147188%_
                                    _%phi147222%_
                                    _%name147217%_
                                    _%src-name147212%_
                                    _%src-phi147207%_
                                    _%src-key147202%_
                                    _%src-ctx147197%_))
                                 (_%E147164147178%_)))
                           (_%E147164147178%_)))))
                  (_%make-import-path146993%_
                   (lambda (_%ctx147159%_)
                     (gxc#generate-meta-import-path
                      _%ctx147159%_
                      _%context-chain146991%_)))
                  (_%make-import-spec-in146994%_
                   (lambda (_%ctx147156%_ _%in147157%_)
                     (cons 'spec:
                           (cons (_%make-import-path146993%_ _%ctx147156%_)
                                 (reverse _%in147157%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self146988%_ 'state)))
          (let* ((_%g146996147006%_
                  (lambda (_%g146997147003%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g146997147003%_))))
                 (_%g146995147153%_
                  (lambda (_%g146997147009%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g146997147009%_))
                        (let ((_%e146999147011%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g146997147009%_))))
                          (let ((_%hd147000147014%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146999147011%_)))
                                (_%tl147001147016%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146999147011%_))))
                            ((lambda (_%L147019%_)
                               (let _%lp147030%_ ((_%rest147032%_ _%L147019%_)
                                                  (_%current-src147033%_ '#f)
                                                  (_%current-in147034%_ '())
                                                  (_%r147035%_ '()))
                                 (let* ((_%rest147036147044%_ _%rest147032%_)
                                        (_%else147038147054%_
                                         (lambda ()
                                           (let ((_%r147052%_
                                                  (if _%current-src147033%_
                                                      (cons (_%make-import-spec-in146994%_
                                                             _%current-src147033%_
                                                             _%current-in147034%_)
                                                            _%r147035%_)
                                                      _%r147035%_)))
                                             (cons '%#import
                                                   (reverse _%r147052%_)))))
                                        (_%K147040147141%_
                                         (lambda (_%rest147057%_ _%in147058%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in147058%_
                                                  'gx#module-import::t))
                                               (let* ((_%in147060147067%_
                                                       _%in147058%_)
                                                      (_%E147062147071%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in147060147067%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K147063147079%_
               (lambda (_%src-ctx147074%_)
                 (if (eq? _%current-src147033%_ _%src-ctx147074%_)
                     (_%lp147030%_
                      _%rest147057%_
                      _%current-src147033%_
                      (cons (_%make-import-spec146992%_ _%in147058%_)
                            _%current-in147034%_)
                      _%r147035%_)
                     (if _%current-src147033%_
                         (_%lp147030%_
                          _%rest147057%_
                          _%src-ctx147074%_
                          (cons (_%make-import-spec146992%_ _%in147058%_) '())
                          (cons (_%make-import-spec-in146994%_
                                 _%current-src147033%_
                                 _%current-in147034%_)
                                _%r147035%_))
                         (_%lp147030%_
                          _%rest147057%_
                          _%src-ctx147074%_
                          (cons (_%make-import-spec146992%_ _%in147058%_) '())
                          _%r147035%_)))))
              (_%e147064147082%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in147060147067%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e147064147082%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e147065147085%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e147064147082%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx147088%_ _%e147065147085%_))
               (_%K147063147079%_ _%src-ctx147088%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E147062147071%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in147058%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi147091%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in147058%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src147093%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in147058%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in147133%_
                                                           (let* ((_%g147094147103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path146993%_ _%src147093%_))
                          (_%E147097147107%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g147094147103%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K147099147123%_
                            (lambda (_%path147121%_) _%path147121%_))
                           (_%K147098147113%_
                            (lambda (_%path147111%_)
                              (cons 'in: _%path147111%_))))
                       (if (pair? _%g147094147103%_)
                           (let ((_%tl147101147128%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g147094147103%_)))
                                 (_%hd147100147126%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g147094147103%_))))
                             (if (null? _%tl147101147128%_)
                                 (let ((_%path147131%_ _%hd147100147126%_))
                                   (_%K147099147123%_ _%path147131%_))
                                 (let ((_%path147116%_ _%g147094147103%_))
                                   (_%K147098147113%_ _%path147116%_))))
                           (let ((_%path147116%_ _%g147094147103%_))
                             (_%K147098147113%_ _%path147116%_))))))
                  (_%r147135%_
                   (if _%current-src147033%_
                       (cons (_%make-import-spec-in146994%_
                              _%current-src147033%_
                              _%current-in147034%_)
                             _%r147035%_)
                       _%r147035%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp147030%_
                                                      _%rest147057%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi147091%_)
                                                                _%src-in147133%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi147091%_
                                    (cons _%src-in147133%_ '()))))
                    _%r147135%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in147058%_
                                                          'gx#module-context::t))
                                                       (let ((_%r147139%_
                                                              (if _%current-src147033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in146994%_
                                 _%current-src147033%_
                                 _%current-in147034%_)
                                _%r147035%_)
                          _%r147035%_)))
                 (_%lp147030%_
                  _%rest147057%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path146993%_ _%in147058%_))
                        _%r147139%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest147036147044%_)
                                       (let ((_%hd147041147144%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest147036147044%_)))
                                             (_%tl147042147146%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest147036147044%_))))
                                         (let* ((_%in147149%_
                                                 _%hd147041147144%_)
                                                (_%rest147151%_
                                                 _%tl147042147146%_))
                                           (_%K147040147141%_
                                            _%rest147151%_
                                            _%in147149%_)))
                                       (_%else147038147054%_)))))
                             _%tl147001147016%_)))
                        (_%g146996147006%_ _%g146997147009%_)))))
            (_%g146995147153%_ _%stx146989%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self146798%_ _%stx146799%_)
        (letrec* ((_%context-chain146801%_ (gxc#current-context-chain))
                  (_%make-import-path146802%_
                   (lambda (_%ctx146986%_)
                     (gxc#generate-meta-import-path
                      _%ctx146986%_
                      _%context-chain146801%_))))
          (let* ((_%g146804146814%_
                  (lambda (_%g146805146811%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g146805146811%_))))
                 (_%g146803146983%_
                  (lambda (_%g146805146817%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g146805146817%_))
                        (let ((_%e146807146819%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g146805146817%_))))
                          (let ((_%hd146808146822%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146807146819%_)))
                                (_%tl146809146824%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146807146819%_))))
                            ((lambda (_%L146827%_)
                               (let _%lp146838%_ ((_%rest146840%_ _%L146827%_)
                                                  (_%r146841%_ '()))
                                 (let* ((_%rest146842146850%_ _%rest146840%_)
                                        (_%else146844146858%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r146841%_))))
                                        (_%K146846146971%_
                                         (lambda (_%rest146861%_ _%out146862%_)
                                           (let* ((_%out146863146876%_
                                                   _%out146862%_)
                                                  (_%E146866146880%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out146863146876%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K146870146950%_
                                                    (lambda (_%name146946%_
                                                             _%phi146947%_
                                                             _%key146948%_)
                                                      (_%lp146838%_
                                                       _%rest146861%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi146947%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key146948%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name146946%_)
                                             '()))))
                     _%r146841%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K146867146930%_
                                                    (lambda (_%phi146884%_
                                                             _%src146885%_)
                                                      (let* ((_%out146925%_
                                                              (if _%src146885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g146886146895%_
                                              (_%make-import-path146802%_
                                               _%src146885%_))
                                             (_%E146889146899%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g146886146895%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K146891146915%_
                                               (lambda (_%path146913%_)
                                                 _%path146913%_))
                                              (_%K146890146905%_
                                               (lambda (_%path146903%_)
                                                 (cons 'in: _%path146903%_))))
                                          (if (pair? _%g146886146895%_)
                                              (let ((_%tl146893146920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g146886146895%_)))
                                                    (_%hd146892146918%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g146886146895%_))))
                                                (if (null? _%tl146893146920%_)
                                                    (let ((_%path146923%_
                                                           _%hd146892146918%_))
                                                      (_%K146891146915%_
                                                       _%path146923%_))
                                                    (let ((_%path146908%_
                                                           _%g146886146895%_))
                                                      (_%K146890146905%_
                                                       _%path146908%_))))
                                              (let ((_%path146908%_
                                                     _%g146886146895%_))
                                                (_%K146890146905%_
                                                 _%path146908%_)))))
                                      '()))
                          '#t))
                     (_%out146927%_
                      (if (fxzero? _%phi146884%_)
                          _%out146925%_
                          (cons 'phi:
                                (cons _%phi146884%_
                                      (cons _%out146925%_ '()))))))
                (_%lp146838%_
                 _%rest146861%_
                 (cons _%out146927%_ _%r146841%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match146865146943%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out146863146876%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e146868146933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out146863146876%_
                               '1
                               '#f
                               '#f)))
                           (_%e146869146938%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out146863146876%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src146936%_ _%e146868146933%_)
                            (_%phi146941%_ _%e146869146938%_))
                        (_%K146867146930%_ _%phi146941%_ _%src146936%_)))
                    (_%E146866146880%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out146863146876%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e146871146953%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out146863146876%_
                        '1
                        '#f
                        '#f)))
                    (_%e146872146956%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out146863146876%_
                        '2
                        '#f
                        '#f)))
                    (_%e146873146961%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out146863146876%_
                        '3
                        '#f
                        '#f)))
                    (_%e146874146966%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out146863146876%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key146959%_ _%e146872146956%_)
                     (_%phi146964%_ _%e146873146961%_)
                     (_%name146969%_ _%e146874146966%_))
                 (_%K146870146950%_
                  _%name146969%_
                  _%phi146964%_
                  _%key146959%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match146865146943%_))))))))
                                   (if (pair? _%rest146842146850%_)
                                       (let ((_%hd146847146974%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest146842146850%_)))
                                             (_%tl146848146976%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest146842146850%_))))
                                         (let* ((_%out146979%_
                                                 _%hd146847146974%_)
                                                (_%rest146981%_
                                                 _%tl146848146976%_))
                                           (_%K146846146971%_
                                            _%rest146981%_
                                            _%out146979%_)))
                                       (_%else146844146858%_)))))
                             _%tl146809146824%_)))
                        (_%g146804146814%_ _%g146805146817%_)))))
            (_%g146803146983%_ _%stx146799%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self146759%_ _%stx146760%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self146759%_ 'state)))
        (let* ((_%g146762146772%_
                (lambda (_%g146763146769%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146763146769%_))))
               (_%g146761146795%_
                (lambda (_%g146763146775%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146763146775%_))
                      (let ((_%e146765146777%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146763146775%_))))
                        (let ((_%hd146766146780%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146765146777%_)))
                              (_%tl146767146782%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146765146777%_))))
                          ((lambda (_%L146785%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L146785%_)))
                           _%tl146767146782%_)))
                      (_%g146762146772%_ _%g146763146775%_)))))
          (_%g146761146795%_ _%stx146760%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self146630%_ _%stx146631%_)
        (letrec ((_%generate1146633%_
                  (lambda (_%id146754%_ _%eid146755%_)
                    (let ((_%eid146757%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid146755%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid146757%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx146631%_
                             _%eid146757%_)))
                      (cons (gxc#generate-runtime-identifier _%id146754%_)
                            (cons _%eid146757%_ '()))))))
          (let* ((_%g146635146663%_
                  (lambda (_%g146636146660%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g146636146660%_))))
                 (_%g146634146751%_
                  (lambda (_%g146636146666%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g146636146666%_))
                        (let ((_%e146639146668%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g146636146666%_))))
                          (let ((_%hd146640146671%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146639146668%_)))
                                (_%tl146641146673%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146639146668%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl146641146673%_))
                                (let ((_g156429_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl146641146673%_
                                          '0))))
                                  (begin
                                    (let ((_g156430_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g156429_)
                                                 (##values-length _g156429_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g156430_ 2)))
                                          (error "Context expects 2 values"
                                                 _g156430_)))
                                    (let ((_%target146642146676%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156429_ 0)))
                                          (_%tl146644146678%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g156429_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl146644146678%_))
                                          (letrec ((_%loop146645146681%_
                                                    (lambda (_%hd146643146684%_
                                                             _%eid146649146686%_
                                                             _%id146650146688%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd146643146684%_))
                                                          (let ((_%e146646146691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd146643146684%_))))
                    (let ((_%lp-hd146647146694%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146646146691%_)))
                          (_%lp-tl146648146696%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146646146691%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd146647146694%_))
                          (let ((_%e146653146699%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd146647146694%_))))
                            (let ((_%hd146654146702%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146653146699%_)))
                                  (_%tl146655146704%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146653146699%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl146655146704%_))
                                  (let ((_%e146656146707%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl146655146704%_))))
                                    (let ((_%hd146657146710%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146656146707%_)))
                                          (_%tl146658146712%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146656146707%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl146658146712%_))
                                          (_%loop146645146681%_
                                           _%lp-tl146648146696%_
                                           (cons _%hd146657146710%_
                                                 _%eid146649146686%_)
                                           (cons _%hd146654146702%_
                                                 _%id146650146688%_))
                                          (_%g146635146663%_
                                           _%g146636146666%_))))
                                  (_%g146635146663%_ _%g146636146666%_))))
                          (_%g146635146663%_ _%g146636146666%_))))
                  (let ((_%eid146651146715%_ (reverse _%eid146649146686%_))
                        (_%id146652146717%_ (reverse _%id146650146688%_)))
                    ((lambda (_%L146720%_ _%L146721%_)
                       (cons '%#extern
                             (map _%generate1146633%_
                                  (let ((__tmp156431
                                         (lambda (_%g146736146739%_
                                                  _%g146737146741%_)
                                           (cons _%g146736146739%_
                                                 _%g146737146741%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp156431 '() _%L146721%_))
                                  (let ((__tmp156432
                                         (lambda (_%g146743146746%_
                                                  _%g146744146748%_)
                                           (cons _%g146743146746%_
                                                 _%g146744146748%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp156432 '() _%L146720%_)))))
                     _%eid146651146715%_
                     _%id146652146717%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop146645146681%_
                                             _%target146642146676%_
                                             '()
                                             '()))
                                          (_%g146635146663%_
                                           _%g146636146666%_)))))
                                (_%g146635146663%_ _%g146636146666%_))))
                        (_%g146635146663%_ _%g146636146666%_)))))
            (_%g146634146751%_ _%stx146631%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self146420%_ _%stx146421%_)
        (letrec ((_%generate1146423%_
                  (lambda (_%id146625%_)
                    (let ((_%eid146627%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id146625%_)))
                          (_%ident146628%_
                           (gxc#generate-runtime-identifier _%id146625%_)))
                      (cons '%#define-runtime
                            (cons _%ident146628%_ (cons _%eid146627%_ '()))))))
                 (_%generate*146424%_
                  (lambda (_%all146593%_)
                    (let* ((_%all146594146602%_ _%all146593%_)
                           (_%else146596146610%_
                            (lambda () (cons '%#begin _%all146593%_)))
                           (_%K146598146615%_
                            (lambda (_%one146613%_) _%one146613%_)))
                      (if (pair? _%all146594146602%_)
                          (let ((_%hd146599146618%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all146594146602%_)))
                                (_%tl146600146620%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all146594146602%_))))
                            (let ((_%one146623%_ _%hd146599146618%_))
                              (if (null? _%tl146600146620%_)
                                  (_%K146598146615%_ _%one146623%_)
                                  (_%else146596146610%_))))
                          (_%else146596146610%_))))))
          (let* ((_%g146426146443%_
                  (lambda (_%g146427146440%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g146427146440%_))))
                 (_%g146425146590%_
                  (lambda (_%g146427146446%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g146427146446%_))
                        (let ((_%e146430146448%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g146427146446%_))))
                          (let ((_%hd146431146451%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146430146448%_)))
                                (_%tl146432146453%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146430146448%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl146432146453%_))
                                (let ((_%e146433146456%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl146432146453%_))))
                                  (let ((_%hd146434146459%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e146433146456%_)))
                                        (_%tl146435146461%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e146433146456%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146435146461%_))
                                        (let ((_%e146436146464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146435146461%_))))
                                          (let ((_%hd146437146467%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146436146464%_)))
                                                (_%tl146438146469%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146436146464%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl146438146469%_))
                                                ((lambda (_%L146472%_
                                                          _%L146473%_)
                                                   (let _%lp146489%_ ((_%rest146491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L146473%_)
                              (_%r146492%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx156168156169%_
                                                             _%rest146491%_)
                                                            (_%g146497146514%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx156168156169%_)))))
               (let ((_%__kont156170156171%_
                      (lambda (_%L146577%_)
                        (_%lp146489%_ _%L146577%_ _%r146492%_)))
                     (_%__kont156172156173%_
                      (lambda (_%L146550%_ _%L146551%_)
                        (_%lp146489%_
                         _%L146550%_
                         (cons (_%generate1146423%_ _%L146551%_)
                               _%r146492%_))))
                     (_%__kont156174156175%_
                      (lambda (_%L146526%_)
                        (_%generate*146424%_
                         (let ((__tmp156433
                                (cons (_%generate1146423%_ _%L146526%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp156433 _%r146492%_)))))
                     (_%__kont156176156177%_
                      (lambda () (_%generate*146424%_ (reverse _%r146492%_)))))
                 (let ((_%g146495146537%_
                        (lambda ()
                          (let ((_%L146526%_ _%__stx156168156169%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L146526%_))
                                (_%__kont156174156175%_ _%L146526%_)
                                (_%__kont156176156177%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx156168156169%_))
                       (let ((_%e146500146566%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx156168156169%_))))
                         (let ((_%tl146502146571%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e146500146566%_)))
                               (_%hd146501146569%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e146500146566%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd146501146569%_))
                               (let ((_%e146503146574%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd146501146569%_))))
                                 (if (equal? _%e146503146574%_ '#f)
                                     (_%__kont156170156171%_
                                      _%tl146502146571%_)
                                     (_%__kont156172156173%_
                                      _%tl146502146571%_
                                      _%hd146501146569%_)))
                               (_%__kont156172156173%_
                                _%tl146502146571%_
                                _%hd146501146569%_))))
                       (let () (declare (not safe)) (_%g146495146537%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd146437146467%_
                                                 _%hd146434146459%_)
                                                (_%g146426146443%_
                                                 _%g146427146446%_))))
                                        (_%g146426146443%_
                                         _%g146427146446%_))))
                                (_%g146426146443%_ _%g146427146446%_))))
                        (_%g146426146443%_ _%g146427146446%_)))))
            (_%g146425146590%_ _%stx146421%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self146317%_ _%stx146318%_)
        (let* ((_%g146320146337%_
                (lambda (_%g146321146334%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146321146334%_))))
               (_%g146319146417%_
                (lambda (_%g146321146340%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146321146340%_))
                      (let ((_%e146324146342%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146321146340%_))))
                        (let ((_%hd146325146345%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146324146342%_)))
                              (_%tl146326146347%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146324146342%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146326146347%_))
                              (let ((_%e146327146350%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146326146347%_))))
                                (let ((_%hd146328146353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146327146350%_)))
                                      (_%tl146329146355%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146327146350%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146329146355%_))
                                      (let ((_%e146330146358%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146329146355%_))))
                                        (let ((_%hd146331146361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146330146358%_)))
                                              (_%tl146332146363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146330146358%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146332146363%_))
                                              ((lambda (_%L146366%_
                                                        _%L146367%_)
                                                 (let* ((_%eid146382%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L146367%_)))
                                                        (_%phi146384%_
                                                         (let ((__tmp156434
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp156434 '1)))
                (_%block146386%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self146317%_ 'state))
                  _%phi146384%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g146389146396%_
                                                           (lambda (_%g146390146393%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g146390146393%_))))
                  (_%g146388146414%_
                   (lambda (_%g146390146399%_)
                     ((lambda (_%L146401%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self146317%_ 'state))
                         _%phi146384%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L146401%_ (cons _%L146366%_ '())))))
                      _%g146390146399%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g146388146414%_
                                                      _%eid146382%_))
                                                   (if _%block146386%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block146386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L146367%_)
                                             (cons _%eid146382%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L146367%_)
                           (cons _%eid146382%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd146331146361%_
                                               _%hd146328146353%_)
                                              (_%g146320146337%_
                                               _%g146321146340%_))))
                                      (_%g146320146337%_ _%g146321146340%_))))
                              (_%g146320146337%_ _%g146321146340%_))))
                      (_%g146320146337%_ _%g146321146340%_)))))
          (_%g146319146417%_ _%stx146318%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self146249%_ _%stx146250%_)
        (let* ((_%g146252146269%_
                (lambda (_%g146253146266%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146253146266%_))))
               (_%g146251146314%_
                (lambda (_%g146253146272%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146253146272%_))
                      (let ((_%e146256146274%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146253146272%_))))
                        (let ((_%hd146257146277%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146256146274%_)))
                              (_%tl146258146279%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146256146274%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146258146279%_))
                              (let ((_%e146259146282%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146258146279%_))))
                                (let ((_%hd146260146285%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146259146282%_)))
                                      (_%tl146261146287%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146259146282%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146261146287%_))
                                      (let ((_%e146262146290%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146261146287%_))))
                                        (let ((_%hd146263146293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146262146290%_)))
                                              (_%tl146264146295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146262146290%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146264146295%_))
                                              ((lambda (_%L146298%_
                                                        _%L146299%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L146299%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L146298%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd146263146293%_
                                               _%hd146260146285%_)
                                              (_%g146252146269%_
                                               _%g146253146272%_))))
                                      (_%g146252146269%_ _%g146253146272%_))))
                              (_%g146252146269%_ _%g146253146272%_))))
                      (_%g146252146269%_ _%g146253146272%_)))))
          (_%g146251146314%_ _%stx146250%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self146246%_ _%stx146247%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self146246%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx146247%_)
        (gxc#generate-meta-define-values% _%self146246%_ _%stx146247%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self146243%_ _%stx146244%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self146243%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx146244%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp156436 (list)) (__tmp156435 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp156436
         '(src n open blocks)
         __tmp156435
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args146240%_
        (apply make-instance gxc#meta-state::t _%$args146240%_)))
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
      (lambda (_%self146226%_ _%ctx146227%_)
        (let ((_%self146230%_ _%self146226%_))
          (if (let ((__tmp156437
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self146230%_))))
                (declare (not safe))
                (##fx< '4 __tmp156437))
              (begin
                (let ((__tmp156438
                       (let ((__tmp156439
                              (##structure-ref
                               _%ctx146227%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp156439))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self146230%_
                   __tmp156438
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self146230%_ '1 '2 '#f '#f))
                (let ((__tmp156440
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self146230%_
                   __tmp156440
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self146230%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp156441
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self146230%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self146230%_
                       '4
                       __tmp156441))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp156443 (list)) (__tmp156442 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp156443
         '(ctx phi n code)
         __tmp156442
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args146101%_
        (apply make-instance gxc#meta-state-block::t _%$args146101%_)))
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
      (lambda (_%state146060%_ _%phi146061%_)
        (let* ((_%state146062146070%_ _%state146060%_)
               (_%E146064146074%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state146062146070%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K146065146083%_
                (lambda (_%open146077%_ _%n146078%_ _%src146079%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open146077%_ _%phi146061%_))
                      '#f
                      (let ((_%block-ref146081%_
                             (let ((__tmp156444 (number->string _%n146078%_)))
                               (declare (not safe))
                               (##string-append
                                _%src146079%_
                                '"~"
                                __tmp156444))))
                        (##structure-set!
                         _%state146060%_
                         (let () (declare (not safe)) (##fx+ _%n146078%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp156445
                               (let ((__tmp156446
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp156446
                                  _%phi146061%_
                                  _%n146078%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open146077%_ _%phi146061%_ __tmp156445))
                        _%block-ref146081%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state146062146070%_
                 'gxc#meta-state::t))
              (let* ((_%e146066146086%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state146062146070%_
                         '1
                         '#f
                         '#f)))
                     (_%src146089%_ _%e146066146086%_)
                     (_%e146067146091%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state146062146070%_
                         '2
                         '#f
                         '#f)))
                     (_%n146094%_ _%e146067146091%_)
                     (_%e146068146096%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state146062146070%_
                         '3
                         '#f
                         '#f)))
                     (_%open146099%_ _%e146068146096%_))
                (_%K146065146083%_ _%open146099%_ _%n146094%_ _%src146089%_))
              (_%E146064146074%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state146054%_ _%phi146055%_ _%stx146056%_)
        (let ((_%block146058%_
               (let ((__tmp156447
                      (##structure-ref
                       _%state146054%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp156447 _%phi146055%_))))
          (##structure-set!
           _%block146058%_
           (cons _%stx146056%_
                 (##structure-ref
                  _%block146058%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state146048%_)
        (##structure-set!
         _%state146048%_
         (let ((__tmp156450
                (lambda (_%_146050%_ _%block146051%_ _%r146052%_)
                  (cons _%block146051%_ _%r146052%_)))
               (__tmp156449
                (##structure-ref _%state146048%_ '4 gxc#meta-state::t '#f))
               (__tmp156448
                (##structure-ref _%state146048%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp156450 __tmp156449 __tmp156448))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state146048%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state146000%_)
        (gxc#meta-state-end-phi! _%state146000%_)
        (let ((__tmp156452
               (lambda (_%block146002%_ _%r146003%_)
                 (let* ((_%block146004146013%_ _%block146002%_)
                        (_%E146006146017%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block146004146013%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K146007146025%_
                         (lambda (_%code146020%_
                                  _%n146021%_
                                  _%phi146022%_
                                  _%ctx146023%_)
                           (if (null? _%code146020%_)
                               _%r146003%_
                               (cons (cons _%ctx146023%_
                                           (cons _%phi146022%_
                                                 (cons _%n146021%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code146020%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r146003%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block146004146013%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e146008146028%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block146004146013%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx146031%_ _%e146008146028%_)
                              (_%e146009146033%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block146004146013%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi146036%_ _%e146009146033%_)
                              (_%e146010146038%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block146004146013%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n146041%_ _%e146010146038%_)
                              (_%e146011146043%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block146004146013%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code146046%_ _%e146011146043%_))
                         (_%K146007146025%_
                          _%code146046%_
                          _%n146041%_
                          _%phi146036%_
                          _%ctx146031%_))
                       (_%E146006146017%_)))))
              (__tmp156451
               (##structure-ref _%state146000%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp156452 '() __tmp156451))))
    (define gxc#collect-expression-refs
      (lambda (_%stx145996%_)
        (let ((_%ht145998%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht145998%_ _%stx145996%_)
          _%ht145998%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self145939%_ _%stx145940%_)
        (let* ((_%g145942145955%_
                (lambda (_%g145943145952%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145943145952%_))))
               (_%g145941145993%_
                (lambda (_%g145943145958%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145943145958%_))
                      (let ((_%e145945145960%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145943145958%_))))
                        (let ((_%hd145946145963%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145945145960%_)))
                              (_%tl145947145965%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145945145960%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145947145965%_))
                              (let ((_%e145948145968%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145947145965%_))))
                                (let ((_%hd145949145971%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145948145968%_)))
                                      (_%tl145950145973%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145948145968%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145950145973%_))
                                      ((lambda (_%L145976%_)
                                         (let* ((_%bind145988%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L145976%_)))
                                                (_%eid145990%_
                                                 (if _%bind145988%_
                                                     (##structure-ref
                                                      _%bind145988%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L145976%_))))
                                                (__tmp156453
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self145939%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp156453
                                            _%eid145990%_
                                            _%eid145990%_)))
                                       _%hd145949145971%_)
                                      (_%g145942145955%_ _%g145943145958%_))))
                              (_%g145942145955%_ _%g145943145958%_))))
                      (_%g145942145955%_ _%g145943145958%_)))))
          (_%g145941145993%_ _%stx145940%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self145866%_ _%stx145867%_)
        (let* ((_%g145869145886%_
                (lambda (_%g145870145883%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145870145883%_))))
               (_%g145868145936%_
                (lambda (_%g145870145889%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145870145889%_))
                      (let ((_%e145873145891%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145870145889%_))))
                        (let ((_%hd145874145894%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145873145891%_)))
                              (_%tl145875145896%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145873145891%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145875145896%_))
                              (let ((_%e145876145899%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145875145896%_))))
                                (let ((_%hd145877145902%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145876145899%_)))
                                      (_%tl145878145904%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145876145899%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145878145904%_))
                                      (let ((_%e145879145907%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145878145904%_))))
                                        (let ((_%hd145880145910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145879145907%_)))
                                              (_%tl145881145912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145879145907%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145881145912%_))
                                              ((lambda (_%L145915%_
                                                        _%L145916%_)
                                                 (let* ((_%bind145931%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L145916%_)))
                                                        (_%eid145933%_
                                                         (if _%bind145931%_
                                                             (##structure-ref
                                                              _%bind145931%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L145916%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp156454
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self145866%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp156454
                                                      _%eid145933%_
                                                      _%eid145933%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self145866%_
                                                      _%L145915%_))))
                                               _%hd145880145910%_
                                               _%hd145877145902%_)
                                              (_%g145869145886%_
                                               _%g145870145889%_))))
                                      (_%g145869145886%_ _%g145870145889%_))))
                              (_%g145869145886%_ _%g145870145889%_))))
                      (_%g145869145886%_ _%g145870145889%_)))))
          (_%g145868145936%_ _%stx145867%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self145823%_ _%stx145824%_)
        (let* ((_%g145826145836%_
                (lambda (_%g145827145833%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145827145833%_))))
               (_%g145825145863%_
                (lambda (_%g145827145839%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145827145839%_))
                      (let ((_%e145829145841%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145827145839%_))))
                        (let ((_%hd145830145844%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145829145841%_)))
                              (_%tl145831145846%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145829145841%_))))
                          ((lambda (_%L145849%_)
                             (let ((__tmp156455
                                    (lambda (_%g145858145860%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self145823%_
                                         _%g145858145860%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp156455 _%L145849%_)))
                           _%tl145831145846%_)))
                      (_%g145826145836%_ _%g145827145839%_)))))
          (_%g145825145863%_ _%stx145824%_))))
    (define gxc#count-values-single%
      (lambda (_%self145820%_ _%stx145821%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self145686%_ _%stx145687%_)
        (let* ((_%__stx156198156199%_ _%stx145687%_)
               (_%g145690145719%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx156198156199%_)))))
          (let ((_%__kont156200156201%_
                 (lambda (_%L145787%_ _%L145788%_)
                   (length (let ((__tmp156456
                                  (lambda (_%g145809145812%_ _%g145810145814%_)
                                    (cons _%g145809145812%_
                                          _%g145810145814%_))))
                             (declare (not safe))
                             (__foldr1 __tmp156456 '() _%L145787%_)))))
                (_%__kont156204156205%_ (lambda () '#f)))
            (let ((_%__match156243156244%_
                   (lambda (_%e145694145731%_
                            _%hd145695145734%_
                            _%tl145696145736%_
                            _%e145697145739%_
                            _%hd145698145742%_
                            _%tl145699145744%_
                            _%e145700145747%_
                            _%hd145701145750%_
                            _%tl145702145752%_
                            _%e145703145755%_
                            _%hd145704145758%_
                            _%tl145705145760%_
                            _%__splice156202156203%_
                            _%target145706145763%_
                            _%tl145708145765%_)
                     (letrec ((_%loop145709145768%_
                               (lambda (_%hd145707145771%_
                                        _%rand145713145773%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd145707145771%_))
                                     (let ((_%e145710145776%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd145707145771%_))))
                                       (let ((_%lp-tl145712145781%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e145710145776%_)))
                                             (_%lp-hd145711145779%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e145710145776%_))))
                                         (_%loop145709145768%_
                                          _%lp-tl145712145781%_
                                          (cons _%lp-hd145711145779%_
                                                _%rand145713145773%_))))
                                     (let ((_%rand145714145784%_
                                            (reverse _%rand145713145773%_)))
                                       (let ((_%L145787%_ _%rand145714145784%_)
                                             (_%L145788%_ _%hd145704145758%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L145788%_
                                                'values))
                                             (_%__kont156200156201%_
                                              _%L145787%_
                                              _%L145788%_)
                                             (_%__kont156204156205%_))))))))
                       (_%loop145709145768%_ _%target145706145763%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx156198156199%_))
                  (let ((_%e145694145731%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx156198156199%_))))
                    (let ((_%tl145696145736%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145694145731%_)))
                          (_%hd145695145734%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145694145731%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl145696145736%_))
                          (let ((_%e145697145739%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl145696145736%_))))
                            (let ((_%tl145699145744%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145697145739%_)))
                                  (_%hd145698145742%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145697145739%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd145698145742%_))
                                  (let ((_%e145700145747%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd145698145742%_))))
                                    (let ((_%tl145702145752%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145700145747%_)))
                                          (_%hd145701145750%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145700145747%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd145701145750%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd145701145750%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl145702145752%_))
                                                  (let ((_%e145703145755%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl145702145752%_))))
                                                    (let ((_%tl145705145760%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145703145755%_)))
                                                          (_%hd145704145758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145703145755%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl145705145760%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl145699145744%_))
                      (let ((_%__splice156202156203%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl145699145744%_
                                '0))))
                        (let ((_%tl145708145765%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice156202156203%_ '1)))
                              (_%target145706145763%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice156202156203%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl145708145765%_))
                              (_%__match156243156244%_
                               _%e145694145731%_
                               _%hd145695145734%_
                               _%tl145696145736%_
                               _%e145697145739%_
                               _%hd145698145742%_
                               _%tl145699145744%_
                               _%e145700145747%_
                               _%hd145701145750%_
                               _%tl145702145752%_
                               _%e145703145755%_
                               _%hd145704145758%_
                               _%tl145705145760%_
                               _%__splice156202156203%_
                               _%target145706145763%_
                               _%tl145708145765%_)
                              (_%__kont156204156205%_))))
                      (_%__kont156204156205%_))
                  (_%__kont156204156205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont156204156205%_))
                                              (_%__kont156204156205%_))
                                          (_%__kont156204156205%_))))
                                  (_%__kont156204156205%_))))
                          (_%__kont156204156205%_))))
                  (_%__kont156204156205%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self145589%_ _%stx145590%_)
        (let* ((_%g145592145613%_
                (lambda (_%g145593145610%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145593145610%_))))
               (_%g145591145683%_
                (lambda (_%g145593145616%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145593145616%_))
                      (let ((_%e145597145618%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145593145616%_))))
                        (let ((_%hd145598145621%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145597145618%_)))
                              (_%tl145599145623%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145597145618%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145599145623%_))
                              (let ((_%e145600145626%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145599145623%_))))
                                (let ((_%hd145601145629%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145600145626%_)))
                                      (_%tl145602145631%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145600145626%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145602145631%_))
                                      (let ((_%e145603145634%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145602145631%_))))
                                        (let ((_%hd145604145637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145603145634%_)))
                                              (_%tl145605145639%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145603145634%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl145605145639%_))
                                              (let ((_%e145606145642%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl145605145639%_))))
                                                (let ((_%hd145607145645%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145606145642%_)))
                                                      (_%tl145608145647%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145606145642%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145608145647%_))
                                                      ((lambda (_%L145650%_
                                                                _%L145651%_
                                                                _%L145652%_)
                                                         (let ((_%c1145669145671%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self145589%_ _%L145651%_))))
                   (if _%c1145669145671%_
                       (let* ((_%c1145674%_ _%c1145669145671%_)
                              (_%c2145675145677%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self145589%_
                                  _%L145650%_))))
                         (if _%c2145675145677%_
                             (let ((_%c2145680%_ _%c2145675145677%_))
                               (if (fx= _%c1145674%_ _%c2145680%_)
                                   _%c1145674%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd145607145645%_
               _%hd145604145637%_
               _%hd145601145629%_)
              (_%g145592145613%_ _%g145593145616%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g145592145613%_
                                               _%g145593145616%_))))
                                      (_%g145592145613%_ _%g145593145616%_))))
                              (_%g145592145613%_ _%g145593145616%_))))
                      (_%g145592145613%_ _%g145593145616%_)))))
          (_%g145591145683%_ _%stx145590%_))))))
