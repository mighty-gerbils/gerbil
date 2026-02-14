(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1771104510)
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
      (let ((__tmp206257 (list gxc#::void::t))
            (__tmp206256 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp206257
         '()
         __tmp206256
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args204871%_
        (apply make-instance gxc#::collect-bindings::t _%$args204871%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp206258
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
        (__make-atomic-promise __tmp206258)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx204863%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self204866%_
                (let ((__obj206232
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj206232))
               (__tmp206259
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204866%_ _%stx204863%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206259
           gxc#current-compile-method
           _%self204866%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp206261 (list gxc#::void::t))
            (__tmp206260 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp206261
         '(modules)
         __tmp206260
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args204860%_
        (apply make-instance gxc#::lift-modules::t _%$args204860%_)))
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
      (let ((__tmp206262
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
        (__make-atomic-promise __tmp206262)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords204835%_ _%modules204832204836%_ _%stx204837%_)
        (let ((_%modules204840%_
               (if (eq? _%modules204832204836%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules204832204836%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self204842%_
                  (let ((__obj206234
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206234
                       _%modules204840%_
                       '1
                       '#f
                       '#f))
                    __obj206234))
                 (__tmp206263
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204842%_ _%stx204837%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206263
             gxc#current-compile-method
             _%self204842%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords204849%_ . _%args204850%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords204849%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204849%_
                  'modules:
                  absent-value))
               _%args204850%_)))
    (define gxc#apply-lift-modules
      (lambda _%args204833204856%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args204833204856%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp206265 (list)) (__tmp206264 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp206265
         '()
         __tmp206264
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args204828%_
        (apply make-instance gxc#::find-runtime-code::t _%$args204828%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp206266
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
        (__make-atomic-promise __tmp206266)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx204820%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self204823%_
                (let ((__obj206236
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj206236))
               (__tmp206267
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204823%_ _%stx204820%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206267
           gxc#current-compile-method
           _%self204823%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp206269 (list gxc#::false::t))
            (__tmp206268 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp206269
         '()
         __tmp206268
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args204817%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args204817%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp206270
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
        (__make-atomic-promise __tmp206270)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx204809%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self204812%_
                (let ((__obj206238
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj206238))
               (__tmp206271
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204812%_ _%stx204809%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206271
           gxc#current-compile-method
           _%self204812%_))))
    (define gxc#::count-values::t
      (let ((__tmp206273 (list gxc#::false-expression::t))
            (__tmp206272 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp206273
         '()
         __tmp206272
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args204806%_
        (apply make-instance gxc#::count-values::t _%$args204806%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp206274
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
        (__make-atomic-promise __tmp206274)))
    (define gxc#apply-count-values
      (lambda (_%stx204798%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self204801%_
                (let ((__obj206240
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj206240))
               (__tmp206275
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204801%_ _%stx204798%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206275
           gxc#current-compile-method
           _%self204801%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp206276 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp206276
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args204795%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args204795%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp206277
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
        (__make-atomic-promise __tmp206277)))
    (define gxc#::generate-loader::t
      (let ((__tmp206279 (list gxc#::generate-runtime-empty::t))
            (__tmp206278 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp206279
         '()
         __tmp206278
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args204791%_
        (apply make-instance gxc#::generate-loader::t _%$args204791%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp206280
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
        (__make-atomic-promise __tmp206280)))
    (define gxc#apply-generate-loader
      (lambda (_%stx204783%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self204786%_
                (let ((__obj206243
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj206243))
               (__tmp206281
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204786%_ _%stx204783%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206281
           gxc#current-compile-method
           _%self204786%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp206282 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp206282
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args204780%_
        (apply make-instance gxc#::generate-runtime::t _%$args204780%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp206283
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
        (__make-atomic-promise __tmp206283)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx204772%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self204775%_
                (let ((__obj206245
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj206245))
               (__tmp206284
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204775%_ _%stx204772%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206284
           gxc#current-compile-method
           _%self204775%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp206286 (list gxc#::generate-runtime::t))
            (__tmp206285 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp206286
         '()
         __tmp206285
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args204769%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args204769%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp206287
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
        (__make-atomic-promise __tmp206287)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx204761%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self204764%_
                (let ((__obj206247
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj206247))
               (__tmp206288
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self204764%_ _%stx204761%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206288
           gxc#current-compile-method
           _%self204764%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp206289 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp206289
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args204758%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args204758%_)))
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
      (let ((__tmp206290
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
        (__make-atomic-promise __tmp206290)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords204733%_ _%table204730204734%_ _%stx204735%_)
        (let ((_%table204738%_
               (if (eq? _%table204730204734%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table204730204734%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self204740%_
                  (let ((__obj206249
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206249
                       _%table204738%_
                       '1
                       '#f
                       '#f))
                    __obj206249))
                 (__tmp206291
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204740%_ _%stx204735%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206291
             gxc#current-compile-method
             _%self204740%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords204747%_ . _%args204748%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords204747%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204747%_
                  'table:
                  absent-value))
               _%args204748%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args204731204754%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args204731204754%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp206293 (list gxc#::void-expression::t))
            (__tmp206292 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp206293
         '(state)
         __tmp206292
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args204726%_
        (apply make-instance gxc#::generate-meta::t _%$args204726%_)))
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
      (let ((__tmp206294
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
        (__make-atomic-promise __tmp206294)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords204701%_ _%state204698204702%_ _%stx204703%_)
        (let ((_%state204706%_
               (if (eq? _%state204698204702%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state204698204702%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self204708%_
                  (let ((__obj206251
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206251
                       _%state204706%_
                       '1
                       '#f
                       '#f))
                    __obj206251))
                 (__tmp206295
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204708%_ _%stx204703%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206295
             gxc#current-compile-method
             _%self204708%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords204715%_ . _%args204716%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords204715%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204715%_
                  'state:
                  absent-value))
               _%args204716%_)))
    (define gxc#apply-generate-meta
      (lambda _%args204699204722%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args204699204722%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp206297 (list)) (__tmp206296 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp206297
         '(state)
         __tmp206296
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args204694%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args204694%_)))
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
      (let ((__tmp206298
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
        (__make-atomic-promise __tmp206298)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords204669%_ _%state204666204670%_ _%stx204671%_)
        (let ((_%state204674%_
               (if (eq? _%state204666204670%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state204666204670%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self204676%_
                  (let ((__obj206253
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206253
                       _%state204674%_
                       '1
                       '#f
                       '#f))
                    __obj206253))
                 (__tmp206299
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self204676%_ _%stx204671%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206299
             gxc#current-compile-method
             _%self204676%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords204683%_ . _%args204684%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords204683%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204683%_
                  'state:
                  absent-value))
               _%args204684%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args204667204690%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args204667204690%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self204595%_ _%stx204596%_)
        (let* ((_%g204598204615%_
                (lambda (_%g204599204612%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204599204612%_))))
               (_%g204597204662%_
                (lambda (_%g204599204618%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204599204618%_))
                      (let ((_%e204602204620%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204599204618%_))))
                        (let ((_%hd204603204623%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204602204620%_)))
                              (_%tl204604204625%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204602204620%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204604204625%_))
                              (let ((_%e204605204628%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204604204625%_))))
                                (let ((_%hd204606204631%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204605204628%_)))
                                      (_%tl204607204633%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204605204628%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204607204633%_))
                                      (let ((_%e204608204636%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204607204633%_))))
                                        (let ((_%hd204609204639%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204608204636%_)))
                                              (_%tl204610204641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204608204636%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204610204641%_))
                                              ((lambda (_%g204600204644%_
                                                        _%g204601204645%_)
                                                 (let ((__tmp206300
                                                        (lambda (_%bind204660%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind204660%_))
                      (gxc#add-module-binding! _%bind204660%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp206300
                                                    _%g204601204645%_)))
                                               _%hd204609204639%_
                                               _%hd204606204631%_)
                                              (_%g204598204615%_
                                               _%g204599204618%_))))
                                      (_%g204598204615%_ _%g204599204618%_))))
                              (_%g204598204615%_ _%g204599204618%_))))
                      (_%g204598204615%_ _%g204599204618%_)))))
          (_%g204597204662%_ _%stx204596%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self204527%_ _%stx204528%_)
        (let* ((_%g204530204547%_
                (lambda (_%g204531204544%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204531204544%_))))
               (_%g204529204592%_
                (lambda (_%g204531204550%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204531204550%_))
                      (let ((_%e204534204552%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204531204550%_))))
                        (let ((_%hd204535204555%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204534204552%_)))
                              (_%tl204536204557%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204534204552%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204536204557%_))
                              (let ((_%e204537204560%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204536204557%_))))
                                (let ((_%hd204538204563%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204537204560%_)))
                                      (_%tl204539204565%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204537204560%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204539204565%_))
                                      (let ((_%e204540204568%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204539204565%_))))
                                        (let ((_%hd204541204571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204540204568%_)))
                                              (_%tl204542204573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204540204568%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204542204573%_))
                                              ((lambda (_%g204532204576%_
                                                        _%g204533204577%_)
                                                 (gxc#add-module-binding!
                                                  _%g204533204577%_
                                                  '#t))
                                               _%hd204541204571%_
                                               _%hd204538204563%_)
                                              (_%g204530204547%_
                                               _%g204531204550%_))))
                                      (_%g204530204547%_ _%g204531204550%_))))
                              (_%g204530204547%_ _%g204531204550%_))))
                      (_%g204530204547%_ _%g204531204550%_)))))
          (_%g204529204592%_ _%stx204528%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self204469%_ _%stx204470%_)
        (let* ((_%g204472204486%_
                (lambda (_%g204473204483%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204473204483%_))))
               (_%g204471204524%_
                (lambda (_%g204473204489%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204473204489%_))
                      (let ((_%e204476204491%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204473204489%_))))
                        (let ((_%hd204477204494%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204476204491%_)))
                              (_%tl204478204496%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204476204491%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204478204496%_))
                              (let ((_%e204479204499%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204478204496%_))))
                                (let ((_%hd204480204502%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204479204499%_)))
                                      (_%tl204481204504%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204479204499%_))))
                                  ((lambda (_%g204474204507%_
                                            _%g204475204508%_)
                                     (let ((_%ctx204521%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g204475204508%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self204469%_
                                           'modules))
                                        (cons _%ctx204521%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self204469%_
                                                        'modules)))))
                                       (let ((__tmp206301
                                              (lambda ()
                                                (let ((__tmp206302
                                                       (##structure-ref
                                                        _%ctx204521%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self204469%_
                                                   __tmp206302)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp206301
                                          gx#current-expander-context
                                          _%ctx204521%_))))
                                   _%tl204481204504%_
                                   _%hd204480204502%_)))
                              (_%g204472204486%_ _%g204473204489%_))))
                      (_%g204472204486%_ _%g204473204489%_)))))
          (_%g204471204524%_ _%stx204470%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls204423204425%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls204423204425%_
              (let ((_%decls204427%_ _%decls204423204425%_))
                (let _%lp204429%_ ((_%rest204431%_ _%decls204427%_))
                  (let* ((_%rest204432204440%_ _%rest204431%_)
                         (_%else204434204448%_ (lambda () '#f))
                         (_%K204436204457%_
                          (lambda (_%decls204451%_ _%decl204452%_)
                            (if (equal? _%decl204452%_ '(not safe))
                                '#t
                                (if (equal? _%decl204452%_ '(safe))
                                    '#f
                                    (_%lp204429%_ _%decls204451%_))))))
                    (if (pair? _%rest204432204440%_)
                        (let ((_%hd204437204460%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest204432204440%_)))
                              (_%tl204438204462%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest204432204440%_))))
                          (let* ((_%decl204465%_ _%hd204437204460%_)
                                 (_%decls204467%_ _%tl204438204462%_))
                            (_%K204436204457%_
                             _%decls204467%_
                             _%decl204465%_)))
                        (_%else204434204448%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id204417%_ _%syntax?204418%_)
        (let ((_%eid204420%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id204417%_))
                '1
                gx#binding::t
                '#f))
              (_%ht204421%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid204420%_))
              '#!void
              (let ((__tmp206303
                     (let ((__tmp206304
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid204420%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp206304 _%syntax?204418%_))))
                (declare (not safe))
                (hash-put! _%ht204421%_ _%eid204420%_ __tmp206303))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self204414%_ _%stx204415%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self204261%_ _%stx204262%_)
        (letrec ((_%simplify204264%_
                  (lambda (_%body204312%_)
                    (let _%lp204314%_ ((_%rest204316%_ _%body204312%_)
                                       (_%r204317%_ '()))
                      (let* ((_%rest204318204326%_ _%rest204316%_)
                             (_%else204320204334%_
                              (lambda () (reverse _%r204317%_)))
                             (_%K204322204402%_
                              (lambda (_%rest204337%_ _%hd204338%_)
                                (let* ((_%hd204339204355%_ _%hd204338%_)
                                       (_%else204343204363%_
                                        (lambda ()
                                          (_%lp204314%_
                                           _%rest204337%_
                                           (cons _%hd204338%_ _%r204317%_)))))
                                  (let ((_%K204351204392%_
                                         (lambda (_%exprs204390%_)
                                           (_%lp204314%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest204337%_
                                               _%exprs204390%_))
                                            _%r204317%_)))
                                        (_%K204346204376%_
                                         (lambda ()
                                           (if (null? _%rest204337%_)
                                               (_%lp204314%_
                                                _%rest204337%_
                                                (cons _%hd204338%_
                                                      _%r204317%_))
                                               (_%lp204314%_
                                                _%rest204337%_
                                                _%r204317%_))))
                                        (_%K204345204368%_
                                         (lambda ()
                                           (if (null? _%rest204337%_)
                                               (_%lp204314%_
                                                _%rest204337%_
                                                (cons _%hd204338%_
                                                      _%r204317%_))
                                               (_%lp204314%_
                                                _%rest204337%_
                                                _%r204317%_)))))
                                    (let ((_%try-match204342204371%_
                                           (lambda ()
                                             (if (symbol? _%hd204339204355%_)
                                                 (_%K204345204368%_)
                                                 (_%else204343204363%_)))))
                                      (if (pair? _%hd204339204355%_)
                                          (let ((_%tl204353204397%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd204339204355%_)))
                                                (_%hd204352204395%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd204339204355%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd204352204395%_
                                                         'begin))
                                                (let ((_%exprs204400%_
                                                       _%tl204353204397%_))
                                                  (_%K204351204392%_
                                                   _%exprs204400%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd204352204395%_
                                                             'quote))
                                                    (if (pair? _%tl204353204397%_)
                                                        (let ((_%tl204350204384%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl204353204397%_))))
                  (if (null? _%tl204350204384%_)
                      (_%K204346204376%_)
                      (_%try-match204342204371%_)))
                (_%try-match204342204371%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match204342204371%_))))
                                          (_%try-match204342204371%_))))))))
                        (if (pair? _%rest204318204326%_)
                            (let ((_%hd204323204405%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest204318204326%_)))
                                  (_%tl204324204407%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest204318204326%_))))
                              (let* ((_%hd204410%_ _%hd204323204405%_)
                                     (_%rest204412%_ _%tl204324204407%_))
                                (_%K204322204402%_
                                 _%rest204412%_
                                 _%hd204410%_)))
                            (_%else204320204334%_)))))))
          (let* ((_%g204266204276%_
                  (lambda (_%g204267204273%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g204267204273%_))))
                 (_%g204265204309%_
                  (lambda (_%g204267204279%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g204267204279%_))
                        (let ((_%e204269204281%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g204267204279%_))))
                          (let ((_%hd204270204284%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204269204281%_)))
                                (_%tl204271204286%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204269204281%_))))
                            ((lambda (_%g204268204289%_)
                               (let* ((_%body204304%_
                                       (map (lambda (_%g204299204301%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self204261%_
                                                 _%g204299204301%_)))
                                            _%g204268204289%_))
                                      (_%body204306%_
                                       (_%simplify204264%_ _%body204304%_)))
                                 (if (let ((__tmp206305
                                            (length _%body204306%_)))
                                       (declare (not safe))
                                       (##fx= __tmp206305 '1))
                                     (car _%body204306%_)
                                     (cons 'begin _%body204306%_))))
                             _%tl204271204286%_)))
                        (_%g204266204276%_ _%g204267204279%_)))))
            (_%g204265204309%_ _%stx204262%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self204222%_ _%stx204223%_)
        (let* ((_%g204225204235%_
                (lambda (_%g204226204232%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204226204232%_))))
               (_%g204224204258%_
                (lambda (_%g204226204238%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204226204238%_))
                      (let ((_%e204228204240%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204226204238%_))))
                        (let ((_%hd204229204243%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204228204240%_)))
                              (_%tl204230204245%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204228204240%_))))
                          ((lambda (_%g204227204248%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g204227204248%_))))
                           _%tl204230204245%_)))
                      (_%g204225204235%_ _%g204226204238%_)))))
          (_%g204224204258%_ _%stx204223%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self203988%_ _%stx203989%_)
        (let* ((_%__stx204895204896%_ _%stx203989%_)
               (_%g203993204045%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx204895204896%_)))))
          (let ((_%__kont204897204898%_
                 (lambda (_%g203995204204%_ _%g203996204205%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self203988%_ _%g203995204204%_))))
                (_%__kont204899204900%_
                 (lambda (_%g204006204152%_
                          _%g204007204153%_
                          _%g204008204154%_)
                   (if (let ((__tmp206306
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g204008204154%_))))
                         (declare (not safe))
                         (##memq __tmp206306 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self203988%_
                          _%g204006204152%_)))))
                (_%__kont204903204904%_
                 (lambda (_%g204030204074%_ _%g204031204075%_)
                   (let ((_%decls204090%_
                          (map gx#syntax->datum _%g204031204075%_)))
                     (let ((__tmp206309
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls204090%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self203988%_
                                                   _%g204030204074%_))
                                                '())))))
                           (__tmp206307
                            (let ((__tmp206308
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp206308 _%decls204090%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp206309
                        gxc#current-compile-decls
                        __tmp206307))))))
            (let* ((_%__match204950204951%_
                    (lambda (_%e204009204098%_
                             _%hd204010204101%_
                             _%tl204011204103%_
                             _%e204012204106%_
                             _%hd204013204109%_
                             _%tl204014204111%_
                             _%e204015204114%_
                             _%hd204016204117%_
                             _%tl204017204119%_
                             _%__splice204901204902%_
                             _%target204018204122%_
                             _%tl204020204124%_)
                      (letrec ((_%loop204021204127%_
                                (lambda (_%hd204019204130%_
                                         _%param204025204132%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204019204130%_))
                                      (let ((_%e204022204134%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204019204130%_))))
                                        (let ((_%lp-tl204024204139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204022204134%_)))
                                              (_%lp-hd204023204137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204022204134%_))))
                                          (_%loop204021204127%_
                                           _%lp-tl204024204139%_
                                           (cons _%lp-hd204023204137%_
                                                 _%param204025204132%_))))
                                      (let ((_%param204026204142%_
                                             (reverse _%param204025204132%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204014204111%_))
                                            (let ((_%e204027204144%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl204014204111%_))))
                                              (let ((_%tl204029204149%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204027204144%_)))
                                                    (_%hd204028204147%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204027204144%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl204029204149%_))
                                                    (let ((_%g204006204152%_
                                                           _%hd204028204147%_)
                                                          (_%g204007204153%_
                                                           _%param204026204142%_)
                                                          (_%g204008204154%_
                                                           _%hd204016204117%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g204008204154%_))
                       (not (let ((__tmp206310
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g204008204154%_))))
                              (declare (not safe))
                              (##memq __tmp206310 gxc#gambit-annotations))))
                  (_%__kont204899204900%_
                   _%g204006204152%_
                   _%g204007204153%_
                   _%g204008204154%_)
                  (_%__kont204903204904%_
                   _%hd204028204147%_
                   _%hd204013204109%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g203993204045%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g203993204045%_))))))))
                        (_%loop204021204127%_ _%target204018204122%_ '()))))
                   (_%__match204924204925%_
                    (lambda (_%e203997204180%_
                             _%hd203998204183%_
                             _%tl203999204185%_
                             _%e204000204188%_
                             _%hd204001204191%_
                             _%tl204002204193%_
                             _%e204003204196%_
                             _%hd204004204199%_
                             _%tl204005204201%_)
                      (let ((_%g203995204204%_ _%hd204004204199%_)
                            (_%g203996204205%_ _%hd204001204191%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g203996204205%_))
                            (_%__kont204897204898%_
                             _%g203995204204%_
                             _%g203996204205%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd204001204191%_))
                                (let ((_%e204015204114%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd204001204191%_))))
                                  (let ((_%tl204017204119%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204015204114%_)))
                                        (_%hd204016204117%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204015204114%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl204017204119%_))
                                        (let ((_%__splice204901204902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl204017204119%_
                                                  '0))))
                                          (let ((_%tl204020204124%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice204901204902%_
                                                    '1)))
                                                (_%target204018204122%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice204901204902%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204020204124%_))
                                                (_%__match204950204951%_
                                                 _%e203997204180%_
                                                 _%hd203998204183%_
                                                 _%tl203999204185%_
                                                 _%e204000204188%_
                                                 _%hd204001204191%_
                                                 _%tl204002204193%_
                                                 _%e204015204114%_
                                                 _%hd204016204117%_
                                                 _%tl204017204119%_
                                                 _%__splice204901204902%_
                                                 _%target204018204122%_
                                                 _%tl204020204124%_)
                                                (_%__kont204903204904%_
                                                 _%hd204004204199%_
                                                 _%hd204001204191%_))))
                                        (_%__kont204903204904%_
                                         _%hd204004204199%_
                                         _%hd204001204191%_))))
                                (_%__kont204903204904%_
                                 _%hd204004204199%_
                                 _%hd204001204191%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx204895204896%_))
                  (let ((_%e203997204180%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx204895204896%_))))
                    (let ((_%tl203999204185%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203997204180%_)))
                          (_%hd203998204183%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203997204180%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203999204185%_))
                          (let ((_%e204000204188%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl203999204185%_))))
                            (let ((_%tl204002204193%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204000204188%_)))
                                  (_%hd204001204191%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204000204188%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204002204193%_))
                                  (let ((_%e204003204196%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204002204193%_))))
                                    (let ((_%tl204005204201%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204003204196%_)))
                                          (_%hd204004204199%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204003204196%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204005204201%_))
                                          (_%__match204924204925%_
                                           _%e203997204180%_
                                           _%hd203998204183%_
                                           _%tl203999204185%_
                                           _%e204000204188%_
                                           _%hd204001204191%_
                                           _%tl204002204193%_
                                           _%e204003204196%_
                                           _%hd204004204199%_
                                           _%tl204005204201%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd204001204191%_))
                                              (let ((_%e204015204114%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd204001204191%_))))
                                                (let ((_%tl204017204119%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204015204114%_)))
                                                      (_%hd204016204117%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204015204114%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl204017204119%_))
                                                      (let ((_%__splice204901204902%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl204017204119%_
                        '0))))
                (let ((_%tl204020204124%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice204901204902%_ '1)))
                      (_%target204018204122%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice204901204902%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204020204124%_))
                      (_%__match204950204951%_
                       _%e203997204180%_
                       _%hd203998204183%_
                       _%tl203999204185%_
                       _%e204000204188%_
                       _%hd204001204191%_
                       _%tl204002204193%_
                       _%e204015204114%_
                       _%hd204016204117%_
                       _%tl204017204119%_
                       _%__splice204901204902%_
                       _%target204018204122%_
                       _%tl204020204124%_)
                      (let () (declare (not safe)) (_%g203993204045%_)))))
              (let () (declare (not safe)) (_%g203993204045%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g203993204045%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204001204191%_))
                                      (let ((_%e204015204114%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204001204191%_))))
                                        (let ((_%tl204017204119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204015204114%_)))
                                              (_%hd204016204117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204015204114%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl204017204119%_))
                                              (let ((_%__splice204901204902%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl204017204119%_
                                                        '0))))
                                                (let ((_%tl204020204124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice204901204902%_
                                                          '1)))
                                                      (_%target204018204122%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice204901204902%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204020204124%_))
                                                      (_%__match204950204951%_
                                                       _%e203997204180%_
                                                       _%hd203998204183%_
                                                       _%tl203999204185%_
                                                       _%e204000204188%_
                                                       _%hd204001204191%_
                                                       _%tl204002204193%_
                                                       _%e204015204114%_
                                                       _%hd204016204117%_
                                                       _%tl204017204119%_
                                                       _%__splice204901204902%_
                                                       _%target204018204122%_
                                                       _%tl204020204124%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203993204045%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203993204045%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203993204045%_))))))
                          (let () (declare (not safe)) (_%g203993204045%_)))))
                  (let () (declare (not safe)) (_%g203993204045%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self203947%_ _%stx203948%_)
        (let* ((_%g203950203960%_
                (lambda (_%g203951203957%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203951203957%_))))
               (_%g203949203985%_
                (lambda (_%g203951203963%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203951203963%_))
                      (let ((_%e203953203965%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203951203963%_))))
                        (let ((_%hd203954203968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203953203965%_)))
                              (_%tl203955203970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203953203965%_))))
                          ((lambda (_%g203952203973%_)
                             (let ((_%decls203983%_
                                    (map gx#syntax->datum _%g203952203973%_)))
                               (let ((__tmp206311
                                      (let ((__tmp206312
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp206312
                                         _%decls203983%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp206311))
                               (cons 'declare _%decls203983%_)))
                           _%tl203955203970%_)))
                      (_%g203950203960%_ _%g203951203963%_)))))
          (_%g203949203985%_ _%stx203948%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self203694%_ _%stx203695%_)
        (let* ((_%g203697203714%_
                (lambda (_%g203698203711%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203698203711%_))))
               (_%g203696203944%_
                (lambda (_%g203698203717%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203698203717%_))
                      (let ((_%e203701203719%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203698203717%_))))
                        (let ((_%hd203702203722%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203701203719%_)))
                              (_%tl203703203724%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203701203719%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203703203724%_))
                              (let ((_%e203704203727%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203703203724%_))))
                                (let ((_%hd203705203730%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203704203727%_)))
                                      (_%tl203706203732%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203704203727%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203706203732%_))
                                      (let ((_%e203707203735%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203706203732%_))))
                                        (let ((_%hd203708203738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203707203735%_)))
                                              (_%tl203709203740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203707203735%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203709203740%_))
                                              ((lambda (_%g203699203743%_
                                                        _%g203700203744%_)
                                                 (let* ((_%__stx205003205004%_
                                                         _%g203700203744%_)
                                                        (_%g203761203775%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx205003205004%_)))))
                                                   (let ((_%__kont205005205006%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self203694%_
                                                               _%g203699203743%_))))
                                                         (_%__kont205007205008%_
                                                          (lambda (_%g203767203907%_)
                                                            (let ((_%eid203916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g203767203907%_))))
                      (let ((_%lambda-expr203917203919%_
                             (gxc#apply-find-lambda-expression
                              _%g203699203743%_)))
                        (if _%lambda-expr203917203919%_
                            (let* ((_%lambda-expr203921%_
                                    _%lambda-expr203917203919%_)
                                   (__tmp206313
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp206313
                               _%lambda-expr203921%_
                               _%eid203916%_))
                            '#f))
                      (cons 'define
                            (cons _%eid203916%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self203694%_
                                           _%g203699203743%_))
                                        '()))))))
                 (_%__kont205009205010%_
                  (lambda ()
                    (let* ((_%tmp203782%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body203891%_
                            (let _%lp203784%_ ((_%rest203786%_
                                                _%g203700203744%_)
                                               (_%k203787%_ '0)
                                               (_%r203788%_ '()))
                              (let* ((_%__stx204973204974%_ _%rest203786%_)
                                     (_%g203793203810%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx204973204974%_)))))
                                (let ((_%__kont204975204976%_
                                       (lambda (_%g203795203878%_)
                                         (_%lp203784%_
                                          _%g203795203878%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k203787%_ '1))
                                          _%r203788%_)))
                                      (_%__kont204977204978%_
                                       (lambda (_%g203800203851%_
                                                _%g203801203852%_)
                                         (_%lp203784%_
                                          _%g203800203851%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k203787%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g203801203852%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp203782%_
                           _%k203787%_
                           _%g203800203851%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r203788%_))))
                                      (_%__kont204979204980%_
                                       (lambda (_%g203805203822%_)
                                         (let ((__tmp206314
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g203805203822%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp203782%_
                                 _%k203787%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (foldl__0
                                            cons
                                            __tmp206314
                                            _%r203788%_))))
                                      (_%__kont204981204982%_
                                       (lambda () (reverse _%r203788%_))))
                                  (let ((_%g203791203838%_
                                         (lambda ()
                                           (let ((_%g203805203822%_
                                                  _%__stx204973204974%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g203805203822%_))
                                                 (_%__kont204979204980%_
                                                  _%g203805203822%_)
                                                 (_%__kont204981204982%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx204973204974%_))
                                        (let ((_%e203796203867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx204973204974%_))))
                                          (let ((_%tl203798203872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203796203867%_)))
                                                (_%hd203797203870%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203796203867%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd203797203870%_))
                                                (let ((_%e203799203875%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd203797203870%_))))
                                                  (if (equal? _%e203799203875%_
                                                              '#f)
                                                      (_%__kont204975204976%_
                                                       _%tl203798203872%_)
                                                      (_%__kont204977204978%_
                                                       _%tl203798203872%_
                                                       _%hd203797203870%_)))
                                                (_%__kont204977204978%_
                                                 _%tl203798203872%_
                                                 _%hd203797203870%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g203791203838%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp203782%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self203694%_
                                                       _%g203699203743%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp203782%_
                                         _%g203700203744%_
                                         _%g203699203743%_)
                                        _%body203891%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx205003205004%_))
                                                         (let ((_%e203763203928%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx205003205004%_))))
                   (let ((_%tl203765203933%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e203763203928%_)))
                         (_%hd203764203931%_
                          (let ()
                            (declare (not safe))
                            (##car _%e203763203928%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd203764203931%_))
                         (let ((_%e203766203936%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd203764203931%_))))
                           (if (equal? _%e203766203936%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl203765203933%_))
                                   (_%__kont205005205006%_)
                                   (_%__kont205009205010%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl203765203933%_))
                                   (_%__kont205007205008%_ _%hd203764203931%_)
                                   (_%__kont205009205010%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl203765203933%_))
                             (_%__kont205007205008%_ _%hd203764203931%_)
                             (_%__kont205009205010%_)))))
                 (_%__kont205009205010%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd203708203738%_
                                               _%hd203705203730%_)
                                              (_%g203697203714%_
                                               _%g203698203717%_))))
                                      (_%g203697203714%_ _%g203698203717%_))))
                              (_%g203697203714%_ _%g203698203717%_))))
                      (_%g203697203714%_ _%g203698203717%_)))))
          (_%g203696203944%_ _%stx203695%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals203669%_ _%hd203670%_ _%expr203671%_)
        (let ((_%$e203673%_ (gxc#apply-count-values _%expr203671%_)))
          (if _%$e203673%_
              ((lambda (_%count203676%_)
                 (let ((_%len203678%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd203670%_)))
                       (_%cmp203679%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd203670%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len203678%_ '0))
                           (_%cmp203679%_ _%count203676%_ _%len203678%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr203671%_
                          _%hd203670%_)))))
               _%$e203673%_)
              (let* ((_%len203685%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd203670%_)))
                     (_%cmp203687%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd203670%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg203689%_
                      (let ((__tmp206316
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd203670%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp206315 (number->string _%len203685%_)))
                        (declare (not safe))
                        (##string-append __tmp206316 __tmp206315 '" values")))
                     (_%count203691%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd203670%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len203685%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count203691%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals203669%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp203687%_
                                (cons _%count203691%_
                                      (cons _%len203685%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp203687%_
                                                        (cons _%count203691%_
                                                              (cons _%len203685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg203689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count203691%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var203664%_)
        (letrec ((_%generate-inline203666%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var203664%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var203664%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline203666%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline203666%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var203657%_ _%i203658%_ _%rest203659%_)
        (letrec ((_%generate-inline203661%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i203658%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest203659%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var203657%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var203657%_
                                                      (cons '0 '())))
                                          (cons _%var203657%_ '()))))
                        (cons '##values-ref
                              (cons _%var203657%_ (cons _%i203658%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline203661%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline203661%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var203651%_ _%i203652%_)
        (if (let () (declare (not safe)) (##fx= _%i203652%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var203651%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var203651%_ '()))
                                  (cons (cons 'list (cons _%var203651%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var203651%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var203651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var203651%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i203652%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var203651%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var203651%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var203651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var203651%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var203651%_ '()))
                                (cons _%i203652%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var203651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i203652%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self203583%_ _%stx203584%_)
        (let* ((_%g203586203603%_
                (lambda (_%g203587203600%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203587203600%_))))
               (_%g203585203648%_
                (lambda (_%g203587203606%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203587203606%_))
                      (let ((_%e203590203608%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g203587203606%_))))
                        (let ((_%hd203591203611%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203590203608%_)))
                              (_%tl203592203613%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203590203608%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203592203613%_))
                              (let ((_%e203593203616%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl203592203613%_))))
                                (let ((_%hd203594203619%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203593203616%_)))
                                      (_%tl203595203621%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203593203616%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203595203621%_))
                                      (let ((_%e203596203624%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203595203621%_))))
                                        (let ((_%hd203597203627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203596203624%_)))
                                              (_%tl203598203629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203596203624%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203598203629%_))
                                              ((lambda (_%g203588203632%_
                                                        _%g203589203633%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self203583%_
                                                  _%g203589203633%_
                                                  _%g203588203632%_))
                                               _%hd203597203627%_
                                               _%hd203594203619%_)
                                              (_%g203586203603%_
                                               _%g203587203606%_))))
                                      (_%g203586203603%_ _%g203587203606%_))))
                              (_%g203586203603%_ _%g203587203606%_))))
                      (_%g203586203603%_ _%g203587203606%_)))))
          (_%g203585203648%_ _%stx203584%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self203542%_ _%hd203543%_ _%body203544%_)
        (let* ((_%hd203546%_ (gxc#generate-runtime-lambda-head _%hd203543%_))
               (_%body203548%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self203542%_ _%body203544%_)))
               (_%body203580%_
                (let* ((_%body203549203557%_ _%body203548%_)
                       (_%else203551203565%_
                        (lambda () (cons _%body203548%_ '())))
                       (_%K203553203570%_
                        (lambda (_%exprs203568%_) _%exprs203568%_)))
                  (if (pair? _%body203549203557%_)
                      (let ((_%hd203554203573%_
                             (let ()
                               (declare (not safe))
                               (##car _%body203549203557%_)))
                            (_%tl203555203575%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body203549203557%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd203554203573%_ 'begin))
                            (let ((_%exprs203578%_ _%tl203555203575%_))
                              (_%K203553203570%_ _%exprs203578%_))
                            (_%else203551203565%_)))
                      (_%else203551203565%_)))))
          (cons 'lambda (cons _%hd203546%_ _%body203580%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd203540%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd203540%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self202097%_ _%stx202098%_)
        (letrec ((_%dispatch-case?202100%_
                  (lambda (_%hd202778%_ _%body202779%_)
                    (let* ((_%form202781%_
                            (cons _%hd202778%_ (cons _%body202779%_ '())))
                           (_%__stx205035205036%_ _%form202781%_)
                           (_%g202786202943%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx205035205036%_)))))
                      (let ((_%__kont205037205038%_
                             (lambda (_%g202788203460%_
                                      _%g202789203461%_
                                      _%g202790203462%_)
                               '#t))
                            (_%__kont205043205044%_
                             (lambda (_%g202833203252%_
                                      _%g202834203253%_
                                      _%g202835203254%_
                                      _%g202836203255%_
                                      _%g202837203256%_
                                      _%g202838203257%_)
                               '#t))
                            (_%__kont205049205050%_
                             (lambda (_%g202899203051%_
                                      _%g202900203052%_
                                      _%g202901203053%_
                                      _%g202902203054%_)
                               '#t))
                            (_%__kont205051205052%_ (lambda () '#f)))
                        (let* ((_%__match205176205177%_
                                (lambda (_%e202903202955%_
                                         _%hd202904202958%_
                                         _%tl202905202960%_
                                         _%e202906202963%_
                                         _%hd202907202966%_
                                         _%tl202908202968%_
                                         _%e202909202971%_
                                         _%hd202910202974%_
                                         _%tl202911202976%_
                                         _%e202912202979%_
                                         _%hd202913202982%_
                                         _%tl202914202984%_
                                         _%e202915202987%_
                                         _%hd202916202990%_
                                         _%tl202917202992%_
                                         _%e202918202995%_
                                         _%hd202919202998%_
                                         _%tl202920203000%_
                                         _%e202921203003%_
                                         _%hd202922203006%_
                                         _%tl202923203008%_
                                         _%e202924203011%_
                                         _%hd202925203014%_
                                         _%tl202926203016%_
                                         _%e202927203019%_
                                         _%hd202928203022%_
                                         _%tl202929203024%_
                                         _%e202930203027%_
                                         _%hd202931203030%_
                                         _%tl202932203032%_
                                         _%e202933203035%_
                                         _%hd202934203038%_
                                         _%tl202935203040%_
                                         _%e202936203043%_
                                         _%hd202937203046%_
                                         _%tl202938203048%_)
                                  (let ((_%g202899203051%_ _%hd202937203046%_)
                                        (_%g202900203052%_ _%hd202928203022%_)
                                        (_%g202901203053%_ _%hd202919202998%_)
                                        (_%g202902203054%_ _%hd202904202958%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g202902203054%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g202901203053%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g202902203054%_
                                                _%g202899203051%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g202900203052%_
                                                     _%g202902203054%_))))
                                        (_%__kont205049205050%_
                                         _%g202899203051%_
                                         _%g202900203052%_
                                         _%g202901203053%_
                                         _%g202902203054%_)
                                        (_%__kont205051205052%_)))))
                               (_%__match205148205149%_
                                (lambda (_%e202903202955%_
                                         _%hd202904202958%_
                                         _%tl202905202960%_
                                         _%e202906202963%_
                                         _%hd202907202966%_
                                         _%tl202908202968%_
                                         _%e202909202971%_
                                         _%hd202910202974%_
                                         _%tl202911202976%_
                                         _%e202912202979%_
                                         _%hd202913202982%_
                                         _%tl202914202984%_
                                         _%e202915202987%_
                                         _%hd202916202990%_
                                         _%tl202917202992%_
                                         _%e202918202995%_
                                         _%hd202919202998%_
                                         _%tl202920203000%_
                                         _%e202921203003%_
                                         _%hd202922203006%_
                                         _%tl202923203008%_
                                         _%e202924203011%_
                                         _%hd202925203014%_
                                         _%tl202926203016%_
                                         _%e202927203019%_
                                         _%hd202928203022%_
                                         _%tl202929203024%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202923203008%_))
                                      (let ((_%e202930203027%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202923203008%_))))
                                        (let ((_%tl202932203032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202930203027%_)))
                                              (_%hd202931203030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202930203027%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd202931203030%_))
                                              (let ((_%e202933203035%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd202931203030%_))))
                                                (let ((_%tl202935203040%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202933203035%_)))
                                                      (_%hd202934203038%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202933203035%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd202934203038%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd202934203038%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl202935203040%_))
                      (let ((_%e202936203043%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl202935203040%_))))
                        (let ((_%tl202938203048%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202936203043%_)))
                              (_%hd202937203046%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202936203043%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202938203048%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl202932203032%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202908202968%_))
                                      (_%__match205176205177%_
                                       _%e202903202955%_
                                       _%hd202904202958%_
                                       _%tl202905202960%_
                                       _%e202906202963%_
                                       _%hd202907202966%_
                                       _%tl202908202968%_
                                       _%e202909202971%_
                                       _%hd202910202974%_
                                       _%tl202911202976%_
                                       _%e202912202979%_
                                       _%hd202913202982%_
                                       _%tl202914202984%_
                                       _%e202915202987%_
                                       _%hd202916202990%_
                                       _%tl202917202992%_
                                       _%e202918202995%_
                                       _%hd202919202998%_
                                       _%tl202920203000%_
                                       _%e202921203003%_
                                       _%hd202922203006%_
                                       _%tl202923203008%_
                                       _%e202924203011%_
                                       _%hd202925203014%_
                                       _%tl202926203016%_
                                       _%e202927203019%_
                                       _%hd202928203022%_
                                       _%tl202929203024%_
                                       _%e202930203027%_
                                       _%hd202931203030%_
                                       _%tl202932203032%_
                                       _%e202933203035%_
                                       _%hd202934203038%_
                                       _%tl202935203040%_
                                       _%e202936203043%_
                                       _%hd202937203046%_
                                       _%tl202938203048%_)
                                      (_%__kont205051205052%_))
                                  (_%__kont205051205052%_))
                              (_%__kont205051205052%_))))
                      (_%__kont205051205052%_))
                  (_%__kont205051205052%_))
              (_%__kont205051205052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont205051205052%_))))
                                      (_%__kont205051205052%_))))
                               (_%__match205078205079%_
                                (lambda (_%e202839203096%_
                                         _%hd202840203099%_
                                         _%tl202841203101%_
                                         _%__splice205045205046%_
                                         _%target202842203104%_
                                         _%tl202844203106%_)
                                  (letrec ((_%loop202845203109%_
                                            (lambda (_%hd202843203112%_
                                                     _%arg202849203114%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202843203112%_))
                                                  (let ((_%e202846203116%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202843203112%_))))
                                                    (let ((_%lp-tl202848203121%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202846203116%_)))
                                                          (_%lp-hd202847203119%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202846203116%_))))
                                                      (_%loop202845203109%_
                                                       _%lp-tl202848203121%_
                                                       (cons _%lp-hd202847203119%_
                                                             _%arg202849203114%_))))
                                                  (let ((_%arg202850203124%_
                                                         (reverse _%arg202849203114%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202841203101%_))
                                                        (let ((_%e202851203126%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202841203101%_))))
                  (let ((_%tl202853203131%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202851203126%_)))
                        (_%hd202852203129%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202851203126%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202852203129%_))
                        (let ((_%e202854203134%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202852203129%_))))
                          (let ((_%tl202856203139%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202854203134%_)))
                                (_%hd202855203137%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202854203134%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202855203137%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202855203137%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202856203139%_))
                                        (let ((_%e202857203142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202856203139%_))))
                                          (let ((_%tl202859203147%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202857203142%_)))
                                                (_%hd202858203145%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202857203142%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202858203145%_))
                                                (let ((_%e202860203150%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202858203145%_))))
                                                  (let ((_%tl202862203155%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202860203150%_)))
                                                        (_%hd202861203153%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202860203150%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202861203153%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202861203153%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202862203155%_))
                        (let ((_%e202863203158%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202862203155%_))))
                          (let ((_%tl202865203163%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202863203158%_)))
                                (_%hd202864203161%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202863203158%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202865203163%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl202859203147%_))
                                    (let ((_%e202866203166%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl202859203147%_))))
                                      (let ((_%tl202868203171%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e202866203166%_)))
                                            (_%hd202867203169%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e202866203166%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd202867203169%_))
                                            (let ((_%e202869203174%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd202867203169%_))))
                                              (let ((_%tl202871203179%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202869203174%_)))
                                                    (_%hd202870203177%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202869203174%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd202870203177%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd202870203177%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl202871203179%_))
                                                            (let ((_%e202872203182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl202871203179%_))))
                      (let ((_%tl202874203187%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202872203182%_)))
                            (_%hd202873203185%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202872203182%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl202874203187%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl202868203171%_))
                                (if (let ((__tmp206317
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl202868203171%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp206317 '1))
                                    (let ((_%__splice205047205048%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl202868203171%_
                                              '1))))
                                      (let ((_%tl202877203192%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205047205048%_
                                                '1)))
                                            (_%target202875203190%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205047205048%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202877203192%_))
                                            (let ((_%e202884203195%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl202877203192%_))))
                                              (let ((_%tl202886203200%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202884203195%_)))
                                                    (_%hd202885203198%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202884203195%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd202885203198%_))
                                                    (let ((_%e202887203203%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd202885203198%_))))
                                                      (let ((_%tl202889203208%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e202887203203%_)))
                    (_%hd202888203206%_
                     (let () (declare (not safe)) (##car _%e202887203203%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd202888203206%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd202888203206%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl202889203208%_))
                            (let ((_%e202890203211%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl202889203208%_))))
                              (let ((_%tl202892203216%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202890203211%_)))
                                    (_%hd202891203214%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202890203211%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl202892203216%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202886203200%_))
                                        (letrec ((_%loop202878203219%_
                                                  (lambda (_%hd202876203222%_
                                                           _%xarg202882203224%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202876203222%_))
                                                        (let ((_%e202879203226%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd202876203222%_))))
                  (let ((_%lp-tl202881203231%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202879203226%_)))
                        (_%lp-hd202880203229%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202879203226%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd202880203229%_))
                        (let ((_%e202893203234%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd202880203229%_))))
                          (let ((_%tl202895203239%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202893203234%_)))
                                (_%hd202894203237%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202893203234%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202894203237%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd202894203237%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202895203239%_))
                                        (let ((_%e202896203242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202895203239%_))))
                                          (let ((_%tl202898203247%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202896203242%_)))
                                                (_%hd202897203245%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202896203242%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202898203247%_))
                                                (_%loop202878203219%_
                                                 _%lp-tl202881203231%_
                                                 (cons _%hd202897203245%_
                                                       _%xarg202882203224%_))
                                                (_%__match205148205149%_
                                                 _%e202839203096%_
                                                 _%hd202840203099%_
                                                 _%tl202841203101%_
                                                 _%e202851203126%_
                                                 _%hd202852203129%_
                                                 _%tl202853203131%_
                                                 _%e202854203134%_
                                                 _%hd202855203137%_
                                                 _%tl202856203139%_
                                                 _%e202857203142%_
                                                 _%hd202858203145%_
                                                 _%tl202859203147%_
                                                 _%e202860203150%_
                                                 _%hd202861203153%_
                                                 _%tl202862203155%_
                                                 _%e202863203158%_
                                                 _%hd202864203161%_
                                                 _%tl202865203163%_
                                                 _%e202866203166%_
                                                 _%hd202867203169%_
                                                 _%tl202868203171%_
                                                 _%e202869203174%_
                                                 _%hd202870203177%_
                                                 _%tl202871203179%_
                                                 _%e202872203182%_
                                                 _%hd202873203185%_
                                                 _%tl202874203187%_))))
                                        (_%__match205148205149%_
                                         _%e202839203096%_
                                         _%hd202840203099%_
                                         _%tl202841203101%_
                                         _%e202851203126%_
                                         _%hd202852203129%_
                                         _%tl202853203131%_
                                         _%e202854203134%_
                                         _%hd202855203137%_
                                         _%tl202856203139%_
                                         _%e202857203142%_
                                         _%hd202858203145%_
                                         _%tl202859203147%_
                                         _%e202860203150%_
                                         _%hd202861203153%_
                                         _%tl202862203155%_
                                         _%e202863203158%_
                                         _%hd202864203161%_
                                         _%tl202865203163%_
                                         _%e202866203166%_
                                         _%hd202867203169%_
                                         _%tl202868203171%_
                                         _%e202869203174%_
                                         _%hd202870203177%_
                                         _%tl202871203179%_
                                         _%e202872203182%_
                                         _%hd202873203185%_
                                         _%tl202874203187%_))
                                    (_%__match205148205149%_
                                     _%e202839203096%_
                                     _%hd202840203099%_
                                     _%tl202841203101%_
                                     _%e202851203126%_
                                     _%hd202852203129%_
                                     _%tl202853203131%_
                                     _%e202854203134%_
                                     _%hd202855203137%_
                                     _%tl202856203139%_
                                     _%e202857203142%_
                                     _%hd202858203145%_
                                     _%tl202859203147%_
                                     _%e202860203150%_
                                     _%hd202861203153%_
                                     _%tl202862203155%_
                                     _%e202863203158%_
                                     _%hd202864203161%_
                                     _%tl202865203163%_
                                     _%e202866203166%_
                                     _%hd202867203169%_
                                     _%tl202868203171%_
                                     _%e202869203174%_
                                     _%hd202870203177%_
                                     _%tl202871203179%_
                                     _%e202872203182%_
                                     _%hd202873203185%_
                                     _%tl202874203187%_))
                                (_%__match205148205149%_
                                 _%e202839203096%_
                                 _%hd202840203099%_
                                 _%tl202841203101%_
                                 _%e202851203126%_
                                 _%hd202852203129%_
                                 _%tl202853203131%_
                                 _%e202854203134%_
                                 _%hd202855203137%_
                                 _%tl202856203139%_
                                 _%e202857203142%_
                                 _%hd202858203145%_
                                 _%tl202859203147%_
                                 _%e202860203150%_
                                 _%hd202861203153%_
                                 _%tl202862203155%_
                                 _%e202863203158%_
                                 _%hd202864203161%_
                                 _%tl202865203163%_
                                 _%e202866203166%_
                                 _%hd202867203169%_
                                 _%tl202868203171%_
                                 _%e202869203174%_
                                 _%hd202870203177%_
                                 _%tl202871203179%_
                                 _%e202872203182%_
                                 _%hd202873203185%_
                                 _%tl202874203187%_))))
                        (_%__match205148205149%_
                         _%e202839203096%_
                         _%hd202840203099%_
                         _%tl202841203101%_
                         _%e202851203126%_
                         _%hd202852203129%_
                         _%tl202853203131%_
                         _%e202854203134%_
                         _%hd202855203137%_
                         _%tl202856203139%_
                         _%e202857203142%_
                         _%hd202858203145%_
                         _%tl202859203147%_
                         _%e202860203150%_
                         _%hd202861203153%_
                         _%tl202862203155%_
                         _%e202863203158%_
                         _%hd202864203161%_
                         _%tl202865203163%_
                         _%e202866203166%_
                         _%hd202867203169%_
                         _%tl202868203171%_
                         _%e202869203174%_
                         _%hd202870203177%_
                         _%tl202871203179%_
                         _%e202872203182%_
                         _%hd202873203185%_
                         _%tl202874203187%_))))
                (let ((_%xarg202883203250%_ (reverse _%xarg202882203224%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl202853203131%_))
                      (let ((_%g202833203252%_ _%hd202891203214%_)
                            (_%g202834203253%_ _%xarg202883203250%_)
                            (_%g202835203254%_ _%hd202873203185%_)
                            (_%g202836203255%_ _%hd202864203161%_)
                            (_%g202837203256%_ _%tl202844203106%_)
                            (_%g202838203257%_ _%arg202850203124%_))
                        (if (and (let ((__tmp206318
                                        (let ((__tmp206319
                                               (lambda (_%g203300203303%_
                                                        _%g203301203305%_)
                                                 (cons _%g203300203303%_
                                                       _%g203301203305%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp206319
                                           '()
                                           _%g202838203257%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp206318))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g202837203256%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g202836203255%_
                                    'apply))
                                 (let ((__tmp206322
                                        (length (let ((__tmp206323
                                                       (lambda (_%g203307203310%_
                                                                _%g203308203312%_)
                                                         (cons _%g203307203310%_
                                                               _%g203308203312%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp206323
                                                   '()
                                                   _%g202838203257%_))))
                                       (__tmp206320
                                        (length (let ((__tmp206321
                                                       (lambda (_%g203314203317%_
                                                                _%g203315203319%_)
                                                         (cons _%g203314203317%_
                                                               _%g203315203319%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp206321
                                                   '()
                                                   _%g202834203253%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp206322 __tmp206320))
                                 (let ((__tmp206326
                                        (let ((__tmp206327
                                               (lambda (_%g203321203324%_
                                                        _%g203322203326%_)
                                                 (cons _%g203321203324%_
                                                       _%g203322203326%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp206327
                                           '()
                                           _%g202838203257%_)))
                                       (__tmp206324
                                        (let ((__tmp206325
                                               (lambda (_%g203328203331%_
                                                        _%g203329203333%_)
                                                 (cons _%g203328203331%_
                                                       _%g203329203333%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp206325
                                           '()
                                           _%g202834203253%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp206326
                                    __tmp206324))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g202837203256%_
                                    _%g202833203252%_))
                                 (not (let ((__tmp206331
                                             (lambda (_%g203335203337%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g203335203337%_
                                                  _%g202835203254%_))))
                                            (__tmp206328
                                             (let ((__tmp206330
                                                    (lambda (_%g203339203342%_
                                                             _%g203340203344%_)
                                                      (cons _%g203339203342%_
                                                            _%g203340203344%_)))
                                                   (__tmp206329
                                                    (cons _%g202837203256%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp206330
                                                __tmp206329
                                                _%g202838203257%_))))
                                        (declare (not safe))
                                        (__find __tmp206331 __tmp206328))))
                            (_%__kont205043205044%_
                             _%g202833203252%_
                             _%g202834203253%_
                             _%g202835203254%_
                             _%g202836203255%_
                             _%g202837203256%_
                             _%g202838203257%_)
                            (_%__match205148205149%_
                             _%e202839203096%_
                             _%hd202840203099%_
                             _%tl202841203101%_
                             _%e202851203126%_
                             _%hd202852203129%_
                             _%tl202853203131%_
                             _%e202854203134%_
                             _%hd202855203137%_
                             _%tl202856203139%_
                             _%e202857203142%_
                             _%hd202858203145%_
                             _%tl202859203147%_
                             _%e202860203150%_
                             _%hd202861203153%_
                             _%tl202862203155%_
                             _%e202863203158%_
                             _%hd202864203161%_
                             _%tl202865203163%_
                             _%e202866203166%_
                             _%hd202867203169%_
                             _%tl202868203171%_
                             _%e202869203174%_
                             _%hd202870203177%_
                             _%tl202871203179%_
                             _%e202872203182%_
                             _%hd202873203185%_
                             _%tl202874203187%_)))
                      (_%__match205148205149%_
                       _%e202839203096%_
                       _%hd202840203099%_
                       _%tl202841203101%_
                       _%e202851203126%_
                       _%hd202852203129%_
                       _%tl202853203131%_
                       _%e202854203134%_
                       _%hd202855203137%_
                       _%tl202856203139%_
                       _%e202857203142%_
                       _%hd202858203145%_
                       _%tl202859203147%_
                       _%e202860203150%_
                       _%hd202861203153%_
                       _%tl202862203155%_
                       _%e202863203158%_
                       _%hd202864203161%_
                       _%tl202865203163%_
                       _%e202866203166%_
                       _%hd202867203169%_
                       _%tl202868203171%_
                       _%e202869203174%_
                       _%hd202870203177%_
                       _%tl202871203179%_
                       _%e202872203182%_
                       _%hd202873203185%_
                       _%tl202874203187%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202878203219%_
                                           _%target202875203190%_
                                           '()))
                                        (_%__match205148205149%_
                                         _%e202839203096%_
                                         _%hd202840203099%_
                                         _%tl202841203101%_
                                         _%e202851203126%_
                                         _%hd202852203129%_
                                         _%tl202853203131%_
                                         _%e202854203134%_
                                         _%hd202855203137%_
                                         _%tl202856203139%_
                                         _%e202857203142%_
                                         _%hd202858203145%_
                                         _%tl202859203147%_
                                         _%e202860203150%_
                                         _%hd202861203153%_
                                         _%tl202862203155%_
                                         _%e202863203158%_
                                         _%hd202864203161%_
                                         _%tl202865203163%_
                                         _%e202866203166%_
                                         _%hd202867203169%_
                                         _%tl202868203171%_
                                         _%e202869203174%_
                                         _%hd202870203177%_
                                         _%tl202871203179%_
                                         _%e202872203182%_
                                         _%hd202873203185%_
                                         _%tl202874203187%_))
                                    (_%__match205148205149%_
                                     _%e202839203096%_
                                     _%hd202840203099%_
                                     _%tl202841203101%_
                                     _%e202851203126%_
                                     _%hd202852203129%_
                                     _%tl202853203131%_
                                     _%e202854203134%_
                                     _%hd202855203137%_
                                     _%tl202856203139%_
                                     _%e202857203142%_
                                     _%hd202858203145%_
                                     _%tl202859203147%_
                                     _%e202860203150%_
                                     _%hd202861203153%_
                                     _%tl202862203155%_
                                     _%e202863203158%_
                                     _%hd202864203161%_
                                     _%tl202865203163%_
                                     _%e202866203166%_
                                     _%hd202867203169%_
                                     _%tl202868203171%_
                                     _%e202869203174%_
                                     _%hd202870203177%_
                                     _%tl202871203179%_
                                     _%e202872203182%_
                                     _%hd202873203185%_
                                     _%tl202874203187%_))))
                            (_%__match205148205149%_
                             _%e202839203096%_
                             _%hd202840203099%_
                             _%tl202841203101%_
                             _%e202851203126%_
                             _%hd202852203129%_
                             _%tl202853203131%_
                             _%e202854203134%_
                             _%hd202855203137%_
                             _%tl202856203139%_
                             _%e202857203142%_
                             _%hd202858203145%_
                             _%tl202859203147%_
                             _%e202860203150%_
                             _%hd202861203153%_
                             _%tl202862203155%_
                             _%e202863203158%_
                             _%hd202864203161%_
                             _%tl202865203163%_
                             _%e202866203166%_
                             _%hd202867203169%_
                             _%tl202868203171%_
                             _%e202869203174%_
                             _%hd202870203177%_
                             _%tl202871203179%_
                             _%e202872203182%_
                             _%hd202873203185%_
                             _%tl202874203187%_))
                        (_%__match205148205149%_
                         _%e202839203096%_
                         _%hd202840203099%_
                         _%tl202841203101%_
                         _%e202851203126%_
                         _%hd202852203129%_
                         _%tl202853203131%_
                         _%e202854203134%_
                         _%hd202855203137%_
                         _%tl202856203139%_
                         _%e202857203142%_
                         _%hd202858203145%_
                         _%tl202859203147%_
                         _%e202860203150%_
                         _%hd202861203153%_
                         _%tl202862203155%_
                         _%e202863203158%_
                         _%hd202864203161%_
                         _%tl202865203163%_
                         _%e202866203166%_
                         _%hd202867203169%_
                         _%tl202868203171%_
                         _%e202869203174%_
                         _%hd202870203177%_
                         _%tl202871203179%_
                         _%e202872203182%_
                         _%hd202873203185%_
                         _%tl202874203187%_))
                    (_%__match205148205149%_
                     _%e202839203096%_
                     _%hd202840203099%_
                     _%tl202841203101%_
                     _%e202851203126%_
                     _%hd202852203129%_
                     _%tl202853203131%_
                     _%e202854203134%_
                     _%hd202855203137%_
                     _%tl202856203139%_
                     _%e202857203142%_
                     _%hd202858203145%_
                     _%tl202859203147%_
                     _%e202860203150%_
                     _%hd202861203153%_
                     _%tl202862203155%_
                     _%e202863203158%_
                     _%hd202864203161%_
                     _%tl202865203163%_
                     _%e202866203166%_
                     _%hd202867203169%_
                     _%tl202868203171%_
                     _%e202869203174%_
                     _%hd202870203177%_
                     _%tl202871203179%_
                     _%e202872203182%_
                     _%hd202873203185%_
                     _%tl202874203187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match205148205149%_
                                                     _%e202839203096%_
                                                     _%hd202840203099%_
                                                     _%tl202841203101%_
                                                     _%e202851203126%_
                                                     _%hd202852203129%_
                                                     _%tl202853203131%_
                                                     _%e202854203134%_
                                                     _%hd202855203137%_
                                                     _%tl202856203139%_
                                                     _%e202857203142%_
                                                     _%hd202858203145%_
                                                     _%tl202859203147%_
                                                     _%e202860203150%_
                                                     _%hd202861203153%_
                                                     _%tl202862203155%_
                                                     _%e202863203158%_
                                                     _%hd202864203161%_
                                                     _%tl202865203163%_
                                                     _%e202866203166%_
                                                     _%hd202867203169%_
                                                     _%tl202868203171%_
                                                     _%e202869203174%_
                                                     _%hd202870203177%_
                                                     _%tl202871203179%_
                                                     _%e202872203182%_
                                                     _%hd202873203185%_
                                                     _%tl202874203187%_))))
                                            (_%__match205148205149%_
                                             _%e202839203096%_
                                             _%hd202840203099%_
                                             _%tl202841203101%_
                                             _%e202851203126%_
                                             _%hd202852203129%_
                                             _%tl202853203131%_
                                             _%e202854203134%_
                                             _%hd202855203137%_
                                             _%tl202856203139%_
                                             _%e202857203142%_
                                             _%hd202858203145%_
                                             _%tl202859203147%_
                                             _%e202860203150%_
                                             _%hd202861203153%_
                                             _%tl202862203155%_
                                             _%e202863203158%_
                                             _%hd202864203161%_
                                             _%tl202865203163%_
                                             _%e202866203166%_
                                             _%hd202867203169%_
                                             _%tl202868203171%_
                                             _%e202869203174%_
                                             _%hd202870203177%_
                                             _%tl202871203179%_
                                             _%e202872203182%_
                                             _%hd202873203185%_
                                             _%tl202874203187%_))))
                                    (_%__match205148205149%_
                                     _%e202839203096%_
                                     _%hd202840203099%_
                                     _%tl202841203101%_
                                     _%e202851203126%_
                                     _%hd202852203129%_
                                     _%tl202853203131%_
                                     _%e202854203134%_
                                     _%hd202855203137%_
                                     _%tl202856203139%_
                                     _%e202857203142%_
                                     _%hd202858203145%_
                                     _%tl202859203147%_
                                     _%e202860203150%_
                                     _%hd202861203153%_
                                     _%tl202862203155%_
                                     _%e202863203158%_
                                     _%hd202864203161%_
                                     _%tl202865203163%_
                                     _%e202866203166%_
                                     _%hd202867203169%_
                                     _%tl202868203171%_
                                     _%e202869203174%_
                                     _%hd202870203177%_
                                     _%tl202871203179%_
                                     _%e202872203182%_
                                     _%hd202873203185%_
                                     _%tl202874203187%_))
                                (_%__match205148205149%_
                                 _%e202839203096%_
                                 _%hd202840203099%_
                                 _%tl202841203101%_
                                 _%e202851203126%_
                                 _%hd202852203129%_
                                 _%tl202853203131%_
                                 _%e202854203134%_
                                 _%hd202855203137%_
                                 _%tl202856203139%_
                                 _%e202857203142%_
                                 _%hd202858203145%_
                                 _%tl202859203147%_
                                 _%e202860203150%_
                                 _%hd202861203153%_
                                 _%tl202862203155%_
                                 _%e202863203158%_
                                 _%hd202864203161%_
                                 _%tl202865203163%_
                                 _%e202866203166%_
                                 _%hd202867203169%_
                                 _%tl202868203171%_
                                 _%e202869203174%_
                                 _%hd202870203177%_
                                 _%tl202871203179%_
                                 _%e202872203182%_
                                 _%hd202873203185%_
                                 _%tl202874203187%_))
                            (_%__kont205051205052%_))))
                    (_%__kont205051205052%_))
                (_%__kont205051205052%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont205051205052%_))))
                                            (_%__kont205051205052%_))))
                                    (_%__kont205051205052%_))
                                (_%__kont205051205052%_))))
                        (_%__kont205051205052%_))
                    (_%__kont205051205052%_))
                (_%__kont205051205052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont205051205052%_))))
                                        (_%__kont205051205052%_))
                                    (_%__kont205051205052%_))
                                (_%__kont205051205052%_))))
                        (_%__kont205051205052%_))))
                (_%__kont205051205052%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202845203109%_
                                     _%target202842203104%_
                                     '()))))
                               (_%__match205066205067%_
                                (lambda (_%e202791203352%_
                                         _%hd202792203355%_
                                         _%tl202793203357%_
                                         _%__splice205039205040%_
                                         _%target202794203360%_
                                         _%tl202796203362%_)
                                  (letrec ((_%loop202797203365%_
                                            (lambda (_%hd202795203368%_
                                                     _%arg202801203370%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202795203368%_))
                                                  (let ((_%e202798203372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202795203368%_))))
                                                    (let ((_%lp-tl202800203377%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202798203372%_)))
                                                          (_%lp-hd202799203375%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202798203372%_))))
                                                      (_%loop202797203365%_
                                                       _%lp-tl202800203377%_
                                                       (cons _%lp-hd202799203375%_
                                                             _%arg202801203370%_))))
                                                  (let ((_%arg202802203380%_
                                                         (reverse _%arg202801203370%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202793203357%_))
                                                        (let ((_%e202803203382%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202793203357%_))))
                  (let ((_%tl202805203387%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202803203382%_)))
                        (_%hd202804203385%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202803203382%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202804203385%_))
                        (let ((_%e202806203390%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202804203385%_))))
                          (let ((_%tl202808203395%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202806203390%_)))
                                (_%hd202807203393%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202806203390%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202807203393%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202807203393%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202808203395%_))
                                        (let ((_%e202809203398%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202808203395%_))))
                                          (let ((_%tl202811203403%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202809203398%_)))
                                                (_%hd202810203401%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202809203398%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202810203401%_))
                                                (let ((_%e202812203406%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202810203401%_))))
                                                  (let ((_%tl202814203411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202812203406%_)))
                                                        (_%hd202813203409%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202812203406%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202813203409%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202813203409%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202814203411%_))
                        (let ((_%e202815203414%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202814203411%_))))
                          (let ((_%tl202817203419%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202815203414%_)))
                                (_%hd202816203417%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202815203414%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202817203419%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl202811203403%_))
                                    (let ((_%__splice205041205042%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl202811203403%_
                                              '0))))
                                      (let ((_%tl202820203424%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205041205042%_
                                                '1)))
                                            (_%target202818203422%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205041205042%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl202820203424%_))
                                            (letrec ((_%loop202821203427%_
                                                      (lambda (_%hd202819203430%_
                                                               _%xarg202825203432%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd202819203430%_))
                                                            (let ((_%e202822203434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd202819203430%_))))
                      (let ((_%lp-tl202824203439%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202822203434%_)))
                            (_%lp-hd202823203437%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202822203434%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd202823203437%_))
                            (let ((_%e202827203442%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd202823203437%_))))
                              (let ((_%tl202829203447%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202827203442%_)))
                                    (_%hd202828203445%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202827203442%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd202828203445%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd202828203445%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202829203447%_))
                                            (let ((_%e202830203450%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl202829203447%_))))
                                              (let ((_%tl202832203455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202830203450%_)))
                                                    (_%hd202831203453%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202830203450%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl202832203455%_))
                                                    (_%loop202821203427%_
                                                     _%lp-tl202824203439%_
                                                     (cons _%hd202831203453%_
                                                           _%xarg202825203432%_))
                                                    (_%__match205078205079%_
                                                     _%e202791203352%_
                                                     _%hd202792203355%_
                                                     _%tl202793203357%_
                                                     _%__splice205039205040%_
                                                     _%target202794203360%_
                                                     _%tl202796203362%_))))
                                            (_%__match205078205079%_
                                             _%e202791203352%_
                                             _%hd202792203355%_
                                             _%tl202793203357%_
                                             _%__splice205039205040%_
                                             _%target202794203360%_
                                             _%tl202796203362%_))
                                        (_%__match205078205079%_
                                         _%e202791203352%_
                                         _%hd202792203355%_
                                         _%tl202793203357%_
                                         _%__splice205039205040%_
                                         _%target202794203360%_
                                         _%tl202796203362%_))
                                    (_%__match205078205079%_
                                     _%e202791203352%_
                                     _%hd202792203355%_
                                     _%tl202793203357%_
                                     _%__splice205039205040%_
                                     _%target202794203360%_
                                     _%tl202796203362%_))))
                            (_%__match205078205079%_
                             _%e202791203352%_
                             _%hd202792203355%_
                             _%tl202793203357%_
                             _%__splice205039205040%_
                             _%target202794203360%_
                             _%tl202796203362%_))))
                    (let ((_%xarg202826203458%_
                           (reverse _%xarg202825203432%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202805203387%_))
                          (let ((_%g202788203460%_ _%xarg202826203458%_)
                                (_%g202789203461%_ _%hd202816203417%_)
                                (_%g202790203462%_ _%arg202802203380%_))
                            (if (and (let ((__tmp206332
                                            (let ((__tmp206333
                                                   (lambda (_%g203490203493%_
                                                            _%g203491203495%_)
                                                     (cons _%g203490203493%_
                                                           _%g203491203495%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206333
                                               '()
                                               _%g202790203462%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp206332))
                                     (let ((__tmp206336
                                            (length (let ((__tmp206337
                                                           (lambda (_%g203497203500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g203498203502%_)
                     (cons _%g203497203500%_ _%g203498203502%_))))
              (declare (not safe))
              (foldr__0 __tmp206337 '() _%g202790203462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp206334
                                            (length (let ((__tmp206335
                                                           (lambda (_%g203504203507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g203505203509%_)
                     (cons _%g203504203507%_ _%g203505203509%_))))
              (declare (not safe))
              (foldr__0 __tmp206335 '() _%g202788203460%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp206336 __tmp206334))
                                     (let ((__tmp206340
                                            (let ((__tmp206341
                                                   (lambda (_%g203511203514%_
                                                            _%g203512203516%_)
                                                     (cons _%g203511203514%_
                                                           _%g203512203516%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206341
                                               '()
                                               _%g202790203462%_)))
                                           (__tmp206338
                                            (let ((__tmp206339
                                                   (lambda (_%g203518203521%_
                                                            _%g203519203523%_)
                                                     (cons _%g203518203521%_
                                                           _%g203519203523%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206339
                                               '()
                                               _%g202788203460%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp206340
                                        __tmp206338))
                                     (not (let ((__tmp206344
                                                 (lambda (_%g203525203527%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g203525203527%_
                                                      _%g202789203461%_))))
                                                (__tmp206342
                                                 (let ((__tmp206343
                                                        (lambda (_%g203529203532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g203530203534%_)
                  (cons _%g203529203532%_ _%g203530203534%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp206343
                                                    '()
                                                    _%g202790203462%_))))
                                            (declare (not safe))
                                            (__find __tmp206344 __tmp206342))))
                                (_%__kont205037205038%_
                                 _%g202788203460%_
                                 _%g202789203461%_
                                 _%g202790203462%_)
                                (_%__match205078205079%_
                                 _%e202791203352%_
                                 _%hd202792203355%_
                                 _%tl202793203357%_
                                 _%__splice205039205040%_
                                 _%target202794203360%_
                                 _%tl202796203362%_)))
                          (_%__match205078205079%_
                           _%e202791203352%_
                           _%hd202792203355%_
                           _%tl202793203357%_
                           _%__splice205039205040%_
                           _%target202794203360%_
                           _%tl202796203362%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop202821203427%_
                                               _%target202818203422%_
                                               '()))
                                            (_%__match205078205079%_
                                             _%e202791203352%_
                                             _%hd202792203355%_
                                             _%tl202793203357%_
                                             _%__splice205039205040%_
                                             _%target202794203360%_
                                             _%tl202796203362%_))))
                                    (_%__match205078205079%_
                                     _%e202791203352%_
                                     _%hd202792203355%_
                                     _%tl202793203357%_
                                     _%__splice205039205040%_
                                     _%target202794203360%_
                                     _%tl202796203362%_))
                                (_%__match205078205079%_
                                 _%e202791203352%_
                                 _%hd202792203355%_
                                 _%tl202793203357%_
                                 _%__splice205039205040%_
                                 _%target202794203360%_
                                 _%tl202796203362%_))))
                        (_%__match205078205079%_
                         _%e202791203352%_
                         _%hd202792203355%_
                         _%tl202793203357%_
                         _%__splice205039205040%_
                         _%target202794203360%_
                         _%tl202796203362%_))
                    (_%__match205078205079%_
                     _%e202791203352%_
                     _%hd202792203355%_
                     _%tl202793203357%_
                     _%__splice205039205040%_
                     _%target202794203360%_
                     _%tl202796203362%_))
                (_%__match205078205079%_
                 _%e202791203352%_
                 _%hd202792203355%_
                 _%tl202793203357%_
                 _%__splice205039205040%_
                 _%target202794203360%_
                 _%tl202796203362%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match205078205079%_
                                                 _%e202791203352%_
                                                 _%hd202792203355%_
                                                 _%tl202793203357%_
                                                 _%__splice205039205040%_
                                                 _%target202794203360%_
                                                 _%tl202796203362%_))))
                                        (_%__match205078205079%_
                                         _%e202791203352%_
                                         _%hd202792203355%_
                                         _%tl202793203357%_
                                         _%__splice205039205040%_
                                         _%target202794203360%_
                                         _%tl202796203362%_))
                                    (_%__match205078205079%_
                                     _%e202791203352%_
                                     _%hd202792203355%_
                                     _%tl202793203357%_
                                     _%__splice205039205040%_
                                     _%target202794203360%_
                                     _%tl202796203362%_))
                                (_%__match205078205079%_
                                 _%e202791203352%_
                                 _%hd202792203355%_
                                 _%tl202793203357%_
                                 _%__splice205039205040%_
                                 _%target202794203360%_
                                 _%tl202796203362%_))))
                        (_%__match205078205079%_
                         _%e202791203352%_
                         _%hd202792203355%_
                         _%tl202793203357%_
                         _%__splice205039205040%_
                         _%target202794203360%_
                         _%tl202796203362%_))))
                (_%__match205078205079%_
                 _%e202791203352%_
                 _%hd202792203355%_
                 _%tl202793203357%_
                 _%__splice205039205040%_
                 _%target202794203360%_
                 _%tl202796203362%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202797203365%_
                                     _%target202794203360%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx205035205036%_))
                              (let ((_%e202791203352%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx205035205036%_))))
                                (let ((_%tl202793203357%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202791203352%_)))
                                      (_%hd202792203355%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202791203352%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd202792203355%_))
                                      (let ((_%__splice205039205040%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd202792203355%_
                                                '0))))
                                        (let ((_%tl202796203362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205039205040%_
                                                  '1)))
                                              (_%target202794203360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205039205040%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202796203362%_))
                                              (_%__match205066205067%_
                                               _%e202791203352%_
                                               _%hd202792203355%_
                                               _%tl202793203357%_
                                               _%__splice205039205040%_
                                               _%target202794203360%_
                                               _%tl202796203362%_)
                                              (_%__match205078205079%_
                                               _%e202791203352%_
                                               _%hd202792203355%_
                                               _%tl202793203357%_
                                               _%__splice205039205040%_
                                               _%target202794203360%_
                                               _%tl202796203362%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202793203357%_))
                                          (let ((_%e202906202963%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl202793203357%_))))
                                            (let ((_%tl202908202968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202906202963%_)))
                                                  (_%hd202907202966%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202906202963%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202907202966%_))
                                                  (let ((_%e202909202971%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202907202966%_))))
                                                    (let ((_%tl202911202976%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202909202971%_)))
                                                          (_%hd202910202974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202909202971%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd202910202974%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd202910202974%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202911202976%_))
                          (let ((_%e202912202979%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl202911202976%_))))
                            (let ((_%tl202914202984%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202912202979%_)))
                                  (_%hd202913202982%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202912202979%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd202913202982%_))
                                  (let ((_%e202915202987%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd202913202982%_))))
                                    (let ((_%tl202917202992%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202915202987%_)))
                                          (_%hd202916202990%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202915202987%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd202916202990%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd202916202990%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202917202992%_))
                                                  (let ((_%e202918202995%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl202917202992%_))))
                                                    (let ((_%tl202920203000%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202918202995%_)))
                                                          (_%hd202919202998%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202918202995%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202920203000%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl202914202984%_))
                      (let ((_%e202921203003%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl202914202984%_))))
                        (let ((_%tl202923203008%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202921203003%_)))
                              (_%hd202922203006%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202921203003%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd202922203006%_))
                              (let ((_%e202924203011%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd202922203006%_))))
                                (let ((_%tl202926203016%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202924203011%_)))
                                      (_%hd202925203014%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202924203011%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd202925203014%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd202925203014%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202926203016%_))
                                              (let ((_%e202927203019%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl202926203016%_))))
                                                (let ((_%tl202929203024%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202927203019%_)))
                                                      (_%hd202928203022%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202927203019%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202929203024%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl202923203008%_))
                                                          (let ((_%e202930203027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl202923203008%_))))
                    (let ((_%tl202932203032%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202930203027%_)))
                          (_%hd202931203030%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202930203027%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd202931203030%_))
                          (let ((_%e202933203035%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd202931203030%_))))
                            (let ((_%tl202935203040%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202933203035%_)))
                                  (_%hd202934203038%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202933203035%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd202934203038%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd202934203038%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202935203040%_))
                                          (let ((_%e202936203043%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl202935203040%_))))
                                            (let ((_%tl202938203048%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202936203043%_)))
                                                  (_%hd202937203046%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202936203043%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl202938203048%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202932203032%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202908202968%_))
                                                          (_%__match205176205177%_
                                                           _%e202791203352%_
                                                           _%hd202792203355%_
                                                           _%tl202793203357%_
                                                           _%e202906202963%_
                                                           _%hd202907202966%_
                                                           _%tl202908202968%_
                                                           _%e202909202971%_
                                                           _%hd202910202974%_
                                                           _%tl202911202976%_
                                                           _%e202912202979%_
                                                           _%hd202913202982%_
                                                           _%tl202914202984%_
                                                           _%e202915202987%_
                                                           _%hd202916202990%_
                                                           _%tl202917202992%_
                                                           _%e202918202995%_
                                                           _%hd202919202998%_
                                                           _%tl202920203000%_
                                                           _%e202921203003%_
                                                           _%hd202922203006%_
                                                           _%tl202923203008%_
                                                           _%e202924203011%_
                                                           _%hd202925203014%_
                                                           _%tl202926203016%_
                                                           _%e202927203019%_
                                                           _%hd202928203022%_
                                                           _%tl202929203024%_
                                                           _%e202930203027%_
                                                           _%hd202931203030%_
                                                           _%tl202932203032%_
                                                           _%e202933203035%_
                                                           _%hd202934203038%_
                                                           _%tl202935203040%_
                                                           _%e202936203043%_
                                                           _%hd202937203046%_
                                                           _%tl202938203048%_)
                                                          (_%__kont205051205052%_))
                                                      (_%__kont205051205052%_))
                                                  (_%__kont205051205052%_))))
                                          (_%__kont205051205052%_))
                                      (_%__kont205051205052%_))
                                  (_%__kont205051205052%_))))
                          (_%__kont205051205052%_))))
                  (_%__kont205051205052%_))
              (_%__kont205051205052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont205051205052%_))
                                          (_%__kont205051205052%_))
                                      (_%__kont205051205052%_))))
                              (_%__kont205051205052%_))))
                      (_%__kont205051205052%_))
                  (_%__kont205051205052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205051205052%_))
                                              (_%__kont205051205052%_))
                                          (_%__kont205051205052%_))))
                                  (_%__kont205051205052%_))))
                          (_%__kont205051205052%_))
                      (_%__kont205051205052%_))
                  (_%__kont205051205052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205051205052%_))))
                                          (_%__kont205051205052%_)))))
                              (_%__kont205051205052%_)))))))
                 (_%dispatch-case-e202101%_
                  (lambda (_%hd202248%_ _%body202249%_)
                    (let* ((_%form202251%_
                            (cons _%hd202248%_ (cons _%body202249%_ '())))
                           (_%__stx205179205180%_ _%form202251%_)
                           (_%g202255202379%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx205179205180%_)))))
                      (let ((_%__kont205181205182%_
                             (lambda (_%g202257202744%_
                                      _%g202258202745%_
                                      _%g202259202746%_)
                               (let ((__tmp206345
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g202258202745%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self202097%_
                                  __tmp206345))))
                            (_%__kont205187205188%_
                             (lambda (_%g202302202596%_
                                      _%g202303202597%_
                                      _%g202304202598%_
                                      _%g202305202599%_)
                               (let ((__tmp206346
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g202302202596%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self202097%_
                                  __tmp206346))))
                            (_%__kont205191205192%_
                             (lambda (_%g202342202464%_
                                      _%g202343202465%_
                                      _%g202344202466%_)
                               (let ((__tmp206347
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g202342202464%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self202097%_
                                  __tmp206347)))))
                        (let* ((_%__match205288205289%_
                                (lambda (_%e202345202384%_
                                         _%hd202346202387%_
                                         _%tl202347202389%_
                                         _%e202348202392%_
                                         _%hd202349202395%_
                                         _%tl202350202397%_
                                         _%e202351202400%_
                                         _%hd202352202403%_
                                         _%tl202353202405%_
                                         _%e202354202408%_
                                         _%hd202355202411%_
                                         _%tl202356202413%_
                                         _%e202357202416%_
                                         _%hd202358202419%_
                                         _%tl202359202421%_
                                         _%e202360202424%_
                                         _%hd202361202427%_
                                         _%tl202362202429%_
                                         _%e202363202432%_
                                         _%hd202364202435%_
                                         _%tl202365202437%_
                                         _%e202366202440%_
                                         _%hd202367202443%_
                                         _%tl202368202445%_
                                         _%e202369202448%_
                                         _%hd202370202451%_
                                         _%tl202371202453%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202365202437%_))
                                      (let ((_%e202372202456%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202365202437%_))))
                                        (let ((_%tl202374202461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202372202456%_)))
                                              (_%hd202373202459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202372202456%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202374202461%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl202350202397%_))
                                                  (_%__kont205191205192%_
                                                   _%hd202370202451%_
                                                   _%hd202361202427%_
                                                   _%hd202346202387%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202255202379%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g202255202379%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g202255202379%_)))))
                               (_%__match205218205219%_
                                (lambda (_%e202306202502%_
                                         _%hd202307202505%_
                                         _%tl202308202507%_
                                         _%__splice205189205190%_
                                         _%target202309202510%_
                                         _%tl202311202512%_)
                                  (letrec ((_%loop202312202515%_
                                            (lambda (_%hd202310202518%_
                                                     _%arg202316202520%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202310202518%_))
                                                  (let ((_%e202313202522%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202310202518%_))))
                                                    (let ((_%lp-tl202315202527%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202313202522%_)))
                                                          (_%lp-hd202314202525%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202313202522%_))))
                                                      (_%loop202312202515%_
                                                       _%lp-tl202315202527%_
                                                       (cons _%lp-hd202314202525%_
                                                             _%arg202316202520%_))))
                                                  (let ((_%arg202317202530%_
                                                         (reverse _%arg202316202520%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202308202507%_))
                                                        (let ((_%e202318202532%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202308202507%_))))
                  (let ((_%tl202320202537%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202318202532%_)))
                        (_%hd202319202535%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202318202532%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202319202535%_))
                        (let ((_%e202321202540%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202319202535%_))))
                          (let ((_%tl202323202545%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202321202540%_)))
                                (_%hd202322202543%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202321202540%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202322202543%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202322202543%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202323202545%_))
                                        (let ((_%e202324202548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202323202545%_))))
                                          (let ((_%tl202326202553%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202324202548%_)))
                                                (_%hd202325202551%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202324202548%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202325202551%_))
                                                (let ((_%e202327202556%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202325202551%_))))
                                                  (let ((_%tl202329202561%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202327202556%_)))
                                                        (_%hd202328202559%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202327202556%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202328202559%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202328202559%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202329202561%_))
                        (let ((_%e202330202564%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202329202561%_))))
                          (let ((_%tl202332202569%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202330202564%_)))
                                (_%hd202331202567%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202330202564%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202332202569%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl202326202553%_))
                                    (let ((_%e202333202572%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl202326202553%_))))
                                      (let ((_%tl202335202577%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e202333202572%_)))
                                            (_%hd202334202575%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e202333202572%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd202334202575%_))
                                            (let ((_%e202336202580%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd202334202575%_))))
                                              (let ((_%tl202338202585%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202336202580%_)))
                                                    (_%hd202337202583%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202336202580%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd202337202583%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd202337202583%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl202338202585%_))
                                                            (let ((_%e202339202588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl202338202585%_))))
                      (let ((_%tl202341202593%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202339202588%_)))
                            (_%hd202340202591%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202339202588%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl202341202593%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202320202537%_))
                                (_%__kont205187205188%_
                                 _%hd202340202591%_
                                 _%hd202331202567%_
                                 _%tl202311202512%_
                                 _%arg202317202530%_)
                                (_%__match205288205289%_
                                 _%e202306202502%_
                                 _%hd202307202505%_
                                 _%tl202308202507%_
                                 _%e202318202532%_
                                 _%hd202319202535%_
                                 _%tl202320202537%_
                                 _%e202321202540%_
                                 _%hd202322202543%_
                                 _%tl202323202545%_
                                 _%e202324202548%_
                                 _%hd202325202551%_
                                 _%tl202326202553%_
                                 _%e202327202556%_
                                 _%hd202328202559%_
                                 _%tl202329202561%_
                                 _%e202330202564%_
                                 _%hd202331202567%_
                                 _%tl202332202569%_
                                 _%e202333202572%_
                                 _%hd202334202575%_
                                 _%tl202335202577%_
                                 _%e202336202580%_
                                 _%hd202337202583%_
                                 _%tl202338202585%_
                                 _%e202339202588%_
                                 _%hd202340202591%_
                                 _%tl202341202593%_))
                            (let ()
                              (declare (not safe))
                              (_%g202255202379%_)))))
                    (let () (declare (not safe)) (_%g202255202379%_)))
                (let () (declare (not safe)) (_%g202255202379%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g202255202379%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g202255202379%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g202255202379%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g202255202379%_)))))
                        (let () (declare (not safe)) (_%g202255202379%_)))
                    (let () (declare (not safe)) (_%g202255202379%_)))
                (let () (declare (not safe)) (_%g202255202379%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g202255202379%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g202255202379%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g202255202379%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g202255202379%_)))))
                        (let () (declare (not safe)) (_%g202255202379%_)))))
                (let () (declare (not safe)) (_%g202255202379%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202312202515%_
                                     _%target202309202510%_
                                     '()))))
                               (_%__match205206205207%_
                                (lambda (_%e202260202636%_
                                         _%hd202261202639%_
                                         _%tl202262202641%_
                                         _%__splice205183205184%_
                                         _%target202263202644%_
                                         _%tl202265202646%_)
                                  (letrec ((_%loop202266202649%_
                                            (lambda (_%hd202264202652%_
                                                     _%arg202270202654%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202264202652%_))
                                                  (let ((_%e202267202656%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202264202652%_))))
                                                    (let ((_%lp-tl202269202661%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202267202656%_)))
                                                          (_%lp-hd202268202659%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202267202656%_))))
                                                      (_%loop202266202649%_
                                                       _%lp-tl202269202661%_
                                                       (cons _%lp-hd202268202659%_
                                                             _%arg202270202654%_))))
                                                  (let ((_%arg202271202664%_
                                                         (reverse _%arg202270202654%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202262202641%_))
                                                        (let ((_%e202272202666%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202262202641%_))))
                  (let ((_%tl202274202671%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202272202666%_)))
                        (_%hd202273202669%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202272202666%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202273202669%_))
                        (let ((_%e202275202674%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202273202669%_))))
                          (let ((_%tl202277202679%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202275202674%_)))
                                (_%hd202276202677%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202275202674%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202276202677%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202276202677%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202277202679%_))
                                        (let ((_%e202278202682%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202277202679%_))))
                                          (let ((_%tl202280202687%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202278202682%_)))
                                                (_%hd202279202685%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202278202682%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202279202685%_))
                                                (let ((_%e202281202690%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202279202685%_))))
                                                  (let ((_%tl202283202695%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202281202690%_)))
                                                        (_%hd202282202693%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202281202690%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202282202693%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202282202693%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202283202695%_))
                        (let ((_%e202284202698%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202283202695%_))))
                          (let ((_%tl202286202703%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202284202698%_)))
                                (_%hd202285202701%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202284202698%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202286202703%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl202280202687%_))
                                    (let ((_%__splice205185205186%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl202280202687%_
                                              '0))))
                                      (let ((_%tl202289202708%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205185205186%_
                                                '1)))
                                            (_%target202287202706%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205185205186%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl202289202708%_))
                                            (letrec ((_%loop202290202711%_
                                                      (lambda (_%hd202288202714%_
                                                               _%xarg202294202716%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd202288202714%_))
                                                            (let ((_%e202291202718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd202288202714%_))))
                      (let ((_%lp-tl202293202723%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202291202718%_)))
                            (_%lp-hd202292202721%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202291202718%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd202292202721%_))
                            (let ((_%e202296202726%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd202292202721%_))))
                              (let ((_%tl202298202731%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202296202726%_)))
                                    (_%hd202297202729%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202296202726%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd202297202729%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd202297202729%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202298202731%_))
                                            (let ((_%e202299202734%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl202298202731%_))))
                                              (let ((_%tl202301202739%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202299202734%_)))
                                                    (_%hd202300202737%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202299202734%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl202301202739%_))
                                                    (_%loop202290202711%_
                                                     _%lp-tl202293202723%_
                                                     (cons _%hd202300202737%_
                                                           _%xarg202294202716%_))
                                                    (_%__match205218205219%_
                                                     _%e202260202636%_
                                                     _%hd202261202639%_
                                                     _%tl202262202641%_
                                                     _%__splice205183205184%_
                                                     _%target202263202644%_
                                                     _%tl202265202646%_))))
                                            (_%__match205218205219%_
                                             _%e202260202636%_
                                             _%hd202261202639%_
                                             _%tl202262202641%_
                                             _%__splice205183205184%_
                                             _%target202263202644%_
                                             _%tl202265202646%_))
                                        (_%__match205218205219%_
                                         _%e202260202636%_
                                         _%hd202261202639%_
                                         _%tl202262202641%_
                                         _%__splice205183205184%_
                                         _%target202263202644%_
                                         _%tl202265202646%_))
                                    (_%__match205218205219%_
                                     _%e202260202636%_
                                     _%hd202261202639%_
                                     _%tl202262202641%_
                                     _%__splice205183205184%_
                                     _%target202263202644%_
                                     _%tl202265202646%_))))
                            (_%__match205218205219%_
                             _%e202260202636%_
                             _%hd202261202639%_
                             _%tl202262202641%_
                             _%__splice205183205184%_
                             _%target202263202644%_
                             _%tl202265202646%_))))
                    (let ((_%xarg202295202742%_
                           (reverse _%xarg202294202716%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202274202671%_))
                          (_%__kont205181205182%_
                           _%xarg202295202742%_
                           _%hd202285202701%_
                           _%arg202271202664%_)
                          (_%__match205218205219%_
                           _%e202260202636%_
                           _%hd202261202639%_
                           _%tl202262202641%_
                           _%__splice205183205184%_
                           _%target202263202644%_
                           _%tl202265202646%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop202290202711%_
                                               _%target202287202706%_
                                               '()))
                                            (_%__match205218205219%_
                                             _%e202260202636%_
                                             _%hd202261202639%_
                                             _%tl202262202641%_
                                             _%__splice205183205184%_
                                             _%target202263202644%_
                                             _%tl202265202646%_))))
                                    (_%__match205218205219%_
                                     _%e202260202636%_
                                     _%hd202261202639%_
                                     _%tl202262202641%_
                                     _%__splice205183205184%_
                                     _%target202263202644%_
                                     _%tl202265202646%_))
                                (_%__match205218205219%_
                                 _%e202260202636%_
                                 _%hd202261202639%_
                                 _%tl202262202641%_
                                 _%__splice205183205184%_
                                 _%target202263202644%_
                                 _%tl202265202646%_))))
                        (_%__match205218205219%_
                         _%e202260202636%_
                         _%hd202261202639%_
                         _%tl202262202641%_
                         _%__splice205183205184%_
                         _%target202263202644%_
                         _%tl202265202646%_))
                    (_%__match205218205219%_
                     _%e202260202636%_
                     _%hd202261202639%_
                     _%tl202262202641%_
                     _%__splice205183205184%_
                     _%target202263202644%_
                     _%tl202265202646%_))
                (_%__match205218205219%_
                 _%e202260202636%_
                 _%hd202261202639%_
                 _%tl202262202641%_
                 _%__splice205183205184%_
                 _%target202263202644%_
                 _%tl202265202646%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match205218205219%_
                                                 _%e202260202636%_
                                                 _%hd202261202639%_
                                                 _%tl202262202641%_
                                                 _%__splice205183205184%_
                                                 _%target202263202644%_
                                                 _%tl202265202646%_))))
                                        (_%__match205218205219%_
                                         _%e202260202636%_
                                         _%hd202261202639%_
                                         _%tl202262202641%_
                                         _%__splice205183205184%_
                                         _%target202263202644%_
                                         _%tl202265202646%_))
                                    (_%__match205218205219%_
                                     _%e202260202636%_
                                     _%hd202261202639%_
                                     _%tl202262202641%_
                                     _%__splice205183205184%_
                                     _%target202263202644%_
                                     _%tl202265202646%_))
                                (_%__match205218205219%_
                                 _%e202260202636%_
                                 _%hd202261202639%_
                                 _%tl202262202641%_
                                 _%__splice205183205184%_
                                 _%target202263202644%_
                                 _%tl202265202646%_))))
                        (_%__match205218205219%_
                         _%e202260202636%_
                         _%hd202261202639%_
                         _%tl202262202641%_
                         _%__splice205183205184%_
                         _%target202263202644%_
                         _%tl202265202646%_))))
                (_%__match205218205219%_
                 _%e202260202636%_
                 _%hd202261202639%_
                 _%tl202262202641%_
                 _%__splice205183205184%_
                 _%target202263202644%_
                 _%tl202265202646%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202266202649%_
                                     _%target202263202644%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx205179205180%_))
                              (let ((_%e202260202636%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx205179205180%_))))
                                (let ((_%tl202262202641%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202260202636%_)))
                                      (_%hd202261202639%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202260202636%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd202261202639%_))
                                      (let ((_%__splice205183205184%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd202261202639%_
                                                '0))))
                                        (let ((_%tl202265202646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205183205184%_
                                                  '1)))
                                              (_%target202263202644%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205183205184%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202265202646%_))
                                              (_%__match205206205207%_
                                               _%e202260202636%_
                                               _%hd202261202639%_
                                               _%tl202262202641%_
                                               _%__splice205183205184%_
                                               _%target202263202644%_
                                               _%tl202265202646%_)
                                              (_%__match205218205219%_
                                               _%e202260202636%_
                                               _%hd202261202639%_
                                               _%tl202262202641%_
                                               _%__splice205183205184%_
                                               _%target202263202644%_
                                               _%tl202265202646%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202262202641%_))
                                          (let ((_%e202348202392%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl202262202641%_))))
                                            (let ((_%tl202350202397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202348202392%_)))
                                                  (_%hd202349202395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202348202392%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202349202395%_))
                                                  (let ((_%e202351202400%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202349202395%_))))
                                                    (let ((_%tl202353202405%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202351202400%_)))
                                                          (_%hd202352202403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202351202400%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd202352202403%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd202352202403%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202353202405%_))
                          (let ((_%e202354202408%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl202353202405%_))))
                            (let ((_%tl202356202413%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202354202408%_)))
                                  (_%hd202355202411%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202354202408%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd202355202411%_))
                                  (let ((_%e202357202416%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd202355202411%_))))
                                    (let ((_%tl202359202421%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202357202416%_)))
                                          (_%hd202358202419%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202357202416%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd202358202419%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd202358202419%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202359202421%_))
                                                  (let ((_%e202360202424%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl202359202421%_))))
                                                    (let ((_%tl202362202429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202360202424%_)))
                                                          (_%hd202361202427%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202360202424%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202362202429%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl202356202413%_))
                      (let ((_%e202363202432%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl202356202413%_))))
                        (let ((_%tl202365202437%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202363202432%_)))
                              (_%hd202364202435%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202363202432%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd202364202435%_))
                              (let ((_%e202366202440%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd202364202435%_))))
                                (let ((_%tl202368202445%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202366202440%_)))
                                      (_%hd202367202443%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202366202440%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd202367202443%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd202367202443%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202368202445%_))
                                              (let ((_%e202369202448%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl202368202445%_))))
                                                (let ((_%tl202371202453%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202369202448%_)))
                                                      (_%hd202370202451%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202369202448%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202371202453%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl202365202437%_))
                                                          (let ((_%e202372202456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl202365202437%_))))
                    (let ((_%tl202374202461%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202372202456%_)))
                          (_%hd202373202459%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202372202456%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202374202461%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202350202397%_))
                              (_%__kont205191205192%_
                               _%hd202370202451%_
                               _%hd202361202427%_
                               _%hd202261202639%_)
                              (let ()
                                (declare (not safe))
                                (_%g202255202379%_)))
                          (let () (declare (not safe)) (_%g202255202379%_)))))
                  (let () (declare (not safe)) (_%g202255202379%_)))
              (let () (declare (not safe)) (_%g202255202379%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g202255202379%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202255202379%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g202255202379%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g202255202379%_)))))
                      (let () (declare (not safe)) (_%g202255202379%_)))
                  (let () (declare (not safe)) (_%g202255202379%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202255202379%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g202255202379%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202255202379%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g202255202379%_)))))
                          (let () (declare (not safe)) (_%g202255202379%_)))
                      (let () (declare (not safe)) (_%g202255202379%_)))
                  (let () (declare (not safe)) (_%g202255202379%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202255202379%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202255202379%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g202255202379%_))))))))
                 (_%generate1202102%_
                  (lambda (_%args202233%_
                           _%arglen202234%_
                           _%hd202235%_
                           _%body202236%_)
                    (let* ((_%len202238%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd202235%_)))
                           (_%condition202243%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd202235%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen202234%_
                                                (cons _%len202238%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen202234%_ (cons _%len202238%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len202238%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen202234%_
                                                    (cons _%len202238%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen202234%_ (cons _%len202238%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch202245%_
                            (if (_%dispatch-case?202100%_
                                 _%hd202235%_
                                 _%body202236%_)
                                (_%dispatch-case-e202101%_
                                 _%hd202235%_
                                 _%body202236%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self202097%_
                                 _%hd202235%_
                                 _%body202236%_))))
                      (cons _%condition202243%_
                            (cons (cons 'apply
                                        (cons _%dispatch202245%_
                                              (cons _%args202233%_ '())))
                                  '()))))))
          (let* ((_%g202104202132%_
                  (lambda (_%g202105202129%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g202105202129%_))))
                 (_%g202103202230%_
                  (lambda (_%g202105202135%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g202105202135%_))
                        (let ((_%e202108202137%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g202105202135%_))))
                          (let ((_%hd202109202140%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202108202137%_)))
                                (_%tl202110202142%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202108202137%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl202110202142%_))
                                (let ((_g206348_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl202110202142%_
                                          '0))))
                                  (begin
                                    (let ((_g206349_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g206348_)
                                                 (##values-length _g206348_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g206349_ 2)))
                                          (error "Context expects 2 values"
                                                 _g206349_)))
                                    (let ((_%target202111202145%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206348_ 0)))
                                          (_%tl202113202147%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206348_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl202113202147%_))
                                          (letrec ((_%loop202114202150%_
                                                    (lambda (_%hd202112202153%_
                                                             _%body202118202155%_
                                                             _%hd202119202156%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd202112202153%_))
                                                          (let ((_%e202115202158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd202112202153%_))))
                    (let ((_%lp-hd202116202161%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202115202158%_)))
                          (_%lp-tl202117202163%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202115202158%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd202116202161%_))
                          (let ((_%e202122202166%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd202116202161%_))))
                            (let ((_%hd202123202169%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202122202166%_)))
                                  (_%tl202124202171%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202122202166%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl202124202171%_))
                                  (let ((_%e202125202174%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl202124202171%_))))
                                    (let ((_%hd202126202177%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202125202174%_)))
                                          (_%tl202127202179%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202125202174%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl202127202179%_))
                                          (_%loop202114202150%_
                                           _%lp-tl202117202163%_
                                           (cons _%hd202126202177%_
                                                 _%body202118202155%_)
                                           (cons _%hd202123202169%_
                                                 _%hd202119202156%_))
                                          (_%g202104202132%_
                                           _%g202105202135%_))))
                                  (_%g202104202132%_ _%g202105202135%_))))
                          (_%g202104202132%_ _%g202105202135%_))))
                  (let ((_%body202120202182%_ (reverse _%body202118202155%_))
                        (_%hd202121202183%_ (reverse _%hd202119202156%_)))
                    ((lambda (_%g202106202185%_ _%g202107202186%_)
                       (let ((_%args202205%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen202206%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name202207%_
                              (let ((_%$e202202%_
                                     (let ((__tmp206350
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp206350 _%stx202098%_))))
                                (if _%$e202202%_
                                    _%$e202202%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args202205%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen202206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args202205%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args202205%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp206354
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name202207%_
                                                                (cons _%args202205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp206351
                                  (map (lambda (_%g202208202211%_
                                                _%g202209202213%_)
                                         (_%generate1202102%_
                                          _%args202205%_
                                          _%arglen202206%_
                                          _%g202208202211%_
                                          _%g202209202213%_))
                                       (let ((__tmp206352
                                              (lambda (_%g202215202218%_
                                                       _%g202216202220%_)
                                                (cons _%g202215202218%_
                                                      _%g202216202220%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp206352
                                          '()
                                          _%g202107202186%_))
                                       (let ((__tmp206353
                                              (lambda (_%g202222202225%_
                                                       _%g202223202227%_)
                                                (cons _%g202222202225%_
                                                      _%g202223202227%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp206353
                                          '()
                                          _%g202106202185%_)))))
                             (declare (not safe))
                             (foldr__0 cons __tmp206354 __tmp206351)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body202120202182%_
                     _%hd202121202183%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop202114202150%_
                                             _%target202111202145%_
                                             '()
                                             '()))
                                          (_%g202104202132%_
                                           _%g202105202135%_)))))
                                (_%g202104202132%_ _%g202105202135%_))))
                        (_%g202104202132%_ _%g202105202135%_)))))
            (_%g202103202230%_ _%stx202098%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self201334%_ _%stx201335%_ _%compiled-body?201336%_)
        (letrec ((_%generate-simple201338%_
                  (lambda (_%hd202082%_ _%body202083%_)
                    (_%coalesce-boolean201339%_
                     (_%simplify-let201340%_
                      (gxc#generate-runtime-simple-let
                       _%self201334%_
                       'let
                       _%hd202082%_
                       _%body202083%_
                       _%compiled-body?201336%_)))))
                 (_%coalesce-boolean201339%_
                  (lambda (_%code201943%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code201944201970%_ _%code201943%_)
                               (_%else201946201978%_
                                (lambda () _%code201943%_))
                               (_%K201948202015%_
                                (lambda (_%expr2201981%_
                                         _%expr1201982%_
                                         _%id201983%_)
                                  (let* ((_%expr2201984201992%_
                                          _%expr2201981%_)
                                         (_%else201986202000%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1201982%_
                                                        (cons _%expr2201981%_
                                                              '())))))
                                         (_%K201988202005%_
                                          (lambda (_%exprs202003%_)
                                            (cons 'or
                                                  (cons _%expr1201982%_
                                                        _%exprs202003%_)))))
                                    (if (pair? _%expr2201984201992%_)
                                        (let ((_%hd201989202008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2201984201992%_)))
                                              (_%tl201990202010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2201984201992%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd201989202008%_ 'or))
                                              (let ((_%exprs202013%_
                                                     _%tl201990202010%_))
                                                (_%K201988202005%_
                                                 _%exprs202013%_))
                                              (_%else201986202000%_)))
                                        (_%else201986202000%_))))))
                          (if (pair? _%code201944201970%_)
                              (let ((_%hd201949202018%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code201944201970%_)))
                                    (_%tl201950202020%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code201944201970%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd201949202018%_ 'let))
                                    (if (pair? _%tl201950202020%_)
                                        (let ((_%hd201951202023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl201950202020%_)))
                                              (_%tl201952202025%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl201950202020%_))))
                                          (if (pair? _%hd201951202023%_)
                                              (let ((_%hd201963202028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd201951202023%_)))
                                                    (_%tl201964202030%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd201951202023%_))))
                                                (if (pair? _%hd201963202028%_)
                                                    (let ((_%hd201965202033%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd201963202028%_)))
                                                          (_%tl201966202035%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd201963202028%_))))
                                                      (let ((_%id202038%_
                                                             _%hd201965202033%_))
                                                        (if (pair? _%tl201966202035%_)
                                                            (let ((_%hd201967202040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl201966202035%_)))
                          (_%tl201968202042%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl201966202035%_))))
                      (let ((_%expr1202045%_ _%hd201967202040%_))
                        (if (null? _%tl201968202042%_)
                            (if (null? _%tl201964202030%_)
                                (if (pair? _%tl201952202025%_)
                                    (let ((_%hd201953202047%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl201952202025%_)))
                                          (_%tl201954202049%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl201952202025%_))))
                                      (if (pair? _%hd201953202047%_)
                                          (let ((_%hd201955202052%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd201953202047%_)))
                                                (_%tl201956202054%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd201953202047%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd201955202052%_
                                                         'if))
                                                (if (pair? _%tl201956202054%_)
                                                    (let ((_%hd201957202057%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl201956202054%_)))
                                                          (_%tl201958202059%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl201956202054%_))))
                                                      (if ((lambda (_%g202061202063%_)
                                                             (eq? _%g202061202063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id202038%_))
                   _%hd201957202057%_)
                  (if (pair? _%tl201958202059%_)
                      (let ((_%hd201959202066%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl201958202059%_)))
                            (_%tl201960202068%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl201958202059%_))))
                        (if ((lambda (_%g202070202072%_)
                               (eq? _%g202070202072%_ _%id202038%_))
                             _%hd201959202066%_)
                            (if (pair? _%tl201960202068%_)
                                (let ((_%hd201961202075%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl201960202068%_)))
                                      (_%tl201962202077%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl201960202068%_))))
                                  (let ((_%expr2202080%_ _%hd201961202075%_))
                                    (if (null? _%tl201962202077%_)
                                        (if (null? _%tl201954202049%_)
                                            (_%K201948202015%_
                                             _%expr2202080%_
                                             _%expr1202045%_
                                             _%id202038%_)
                                            (_%else201946201978%_))
                                        (_%else201946201978%_))))
                                (_%else201946201978%_))
                            (_%else201946201978%_)))
                      (_%else201946201978%_))
                  (_%else201946201978%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else201946201978%_))
                                                (_%else201946201978%_)))
                                          (_%else201946201978%_)))
                                    (_%else201946201978%_))
                                (_%else201946201978%_))
                            (_%else201946201978%_))))
                    (_%else201946201978%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else201946201978%_)))
                                              (_%else201946201978%_)))
                                        (_%else201946201978%_))
                                    (_%else201946201978%_)))
                              (_%else201946201978%_)))
                        _%code201943%_)))
                 (_%simplify-let201340%_
                  (lambda (_%code201642%_)
                    (let* ((_%code201643201715%_ _%code201642%_)
                           (_%else201648201723%_ (lambda () _%code201642%_)))
                      (let ((_%K201707201923%_
                             (lambda (_%expr201921%_) _%expr201921%_))
                            (_%K201690201869%_
                             (lambda (_%body201865%_
                                      _%expr201866%_
                                      _%id201867%_)
                               (cons 'let
                                     (cons (cons (cons _%id201867%_
                                                       (cons _%expr201866%_
                                                             '()))
                                                 '())
                                           _%body201865%_))))
                            (_%K201667201793%_
                             (lambda (_%body201787%_
                                      _%expr2201788%_
                                      _%id2201789%_
                                      _%expr1201790%_
                                      _%id1201791%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1201791%_
                                                       (cons _%expr1201790%_
                                                             '()))
                                                 (cons (cons _%id2201789%_
                                                             (cons _%expr2201788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body201787%_))))
                            (_%K201650201732%_
                             (lambda (_%body201727%_
                                      _%bind201728%_
                                      _%expr1201729%_
                                      _%id1201730%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1201730%_
                                                       (cons _%expr1201729%_
                                                             '()))
                                                 _%bind201728%_)
                                           _%body201727%_)))))
                        (if (pair? _%code201643201715%_)
                            (let ((_%tl201709201928%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code201643201715%_)))
                                  (_%hd201708201926%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code201643201715%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd201708201926%_ 'let))
                                  (if (pair? _%tl201709201928%_)
                                      (let ((_%tl201711201933%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl201709201928%_)))
                                            (_%hd201710201931%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl201709201928%_))))
                                        (if (null? _%hd201710201931%_)
                                            (if (pair? _%tl201711201933%_)
                                                (let ((_%tl201713201938%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl201711201933%_)))
                                                      (_%hd201712201936%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl201711201933%_))))
                                                  (if (null? _%tl201713201938%_)
                                                      (let ((_%expr201941%_
                                                             _%hd201712201936%_))
                                                        (_%K201707201923%_
                                                         _%expr201941%_))
                                                      (_%else201648201723%_)))
                                                (_%else201648201723%_))
                                            (if (pair? _%hd201710201931%_)
                                                (let ((_%tl201702201884%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd201710201931%_)))
                                                      (_%hd201701201882%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd201710201931%_))))
                                                  (if (pair? _%hd201701201882%_)
                                                      (let ((_%tl201704201889%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd201701201882%_)))
                    (_%hd201703201887%_
                     (let () (declare (not safe)) (##car _%hd201701201882%_))))
                (if (pair? _%tl201704201889%_)
                    (let ((_%tl201706201896%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl201704201889%_)))
                          (_%hd201705201894%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl201704201889%_))))
                      (if (null? _%tl201706201896%_)
                          (if (null? _%tl201702201884%_)
                              (if (pair? _%tl201711201933%_)
                                  (let ((_%tl201696201903%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl201711201933%_)))
                                        (_%hd201695201901%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl201711201933%_))))
                                    (if (pair? _%hd201695201901%_)
                                        (let ((_%tl201698201908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd201695201901%_)))
                                              (_%hd201697201906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd201695201901%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd201697201906%_
                                                       'let))
                                              (if (pair? _%tl201698201908%_)
                                                  (let ((_%tl201700201913%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl201698201908%_)))
                                                        (_%hd201699201911%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl201698201908%_))))
                                                    (if (null? _%hd201699201911%_)
                                                        (if (null? _%tl201696201903%_)
                                                            (let ((_%id201892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd201703201887%_)
                          (_%expr201899%_ _%hd201705201894%_)
                          (_%body201916%_ _%tl201700201913%_))
                      (_%K201690201869%_
                       _%body201916%_
                       _%expr201899%_
                       _%id201892%_))
                    (_%else201648201723%_))
                (if (pair? _%hd201699201911%_)
                    (let ((_%tl201679201842%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd201699201911%_)))
                          (_%hd201678201840%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd201699201911%_))))
                      (if (pair? _%hd201678201840%_)
                          (let ((_%tl201681201847%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd201678201840%_)))
                                (_%hd201680201845%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd201678201840%_))))
                            (if (pair? _%tl201681201847%_)
                                (let ((_%tl201683201854%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl201681201847%_)))
                                      (_%hd201682201852%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl201681201847%_))))
                                  (if (null? _%tl201683201854%_)
                                      (if (null? _%tl201679201842%_)
                                          (if (null? _%tl201696201903%_)
                                              (let ((_%id1201816%_
                                                     _%hd201703201887%_)
                                                    (_%expr1201823%_
                                                     _%hd201705201894%_)
                                                    (_%id2201850%_
                                                     _%hd201680201845%_)
                                                    (_%expr2201857%_
                                                     _%hd201682201852%_)
                                                    (_%body201859%_
                                                     _%tl201700201913%_))
                                                (_%K201667201793%_
                                                 _%body201859%_
                                                 _%expr2201857%_
                                                 _%id2201850%_
                                                 _%expr1201823%_
                                                 _%id1201816%_))
                                              (_%else201648201723%_))
                                          (_%else201648201723%_))
                                      (_%else201648201723%_)))
                                (_%else201648201723%_)))
                          (_%else201648201723%_)))
                    (_%else201648201723%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else201648201723%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd201697201906%_
                                                           'let*))
                                                  (if (pair? _%tl201698201908%_)
                                                      (let ((_%tl201660201776%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl201698201908%_)))
                    (_%hd201659201774%_
                     (let () (declare (not safe)) (##car _%tl201698201908%_))))
                (if (null? _%tl201696201903%_)
                    (let ((_%id1201755%_ _%hd201703201887%_)
                          (_%expr1201762%_ _%hd201705201894%_)
                          (_%bind201779%_ _%hd201659201774%_)
                          (_%body201781%_ _%tl201660201776%_))
                      (_%K201650201732%_
                       _%body201781%_
                       _%bind201779%_
                       _%expr1201762%_
                       _%id1201755%_))
                    (_%else201648201723%_)))
              (_%else201648201723%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else201648201723%_))))
                                        (_%else201648201723%_)))
                                  (_%else201648201723%_))
                              (_%else201648201723%_))
                          (_%else201648201723%_)))
                    (_%else201648201723%_)))
              (_%else201648201723%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else201648201723%_))))
                                      (_%else201648201723%_))
                                  (_%else201648201723%_)))
                            (_%else201648201723%_))))))
                 (_%generate-values201341%_
                  (lambda (_%hd201455%_ _%body201456%_)
                    (let _%lp201458%_ ((_%rest201460%_ _%hd201455%_)
                                       (_%bind201461%_ '())
                                       (_%check201462%_ '())
                                       (_%post201463%_ '()))
                      (let* ((_%__stx205508205509%_ _%rest201460%_)
                             (_%g201466201477%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx205508205509%_)))))
                        (let ((_%__kont205510205511%_
                               (lambda (_%g201468201504%_ _%g201469201505%_)
                                 (let* ((_%__stx205464205465%_
                                         _%g201469201505%_)
                                        (_%g201520201545%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx205464205465%_)))))
                                   (let ((_%__kont205466205467%_
                                          (lambda (_%g201522201618%_
                                                   _%g201523201619%_)
                                            (let ((_%eid201633%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g201523201619%_)))
                                                  (_%expr201634%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self201334%_
                                                      _%g201522201618%_))))
                                              (_%lp201458%_
                                               _%g201468201504%_
                                               (cons (cons _%eid201633%_
                                                           (cons _%expr201634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind201461%_)
                                               _%check201462%_
                                               _%post201463%_))))
                                         (_%__kont205468205469%_
                                          (lambda (_%g201533201566%_
                                                   _%g201534201567%_)
                                            (let* ((_%vals201580%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values201582%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals201580%_
                                                     _%g201534201567%_
                                                     _%g201533201566%_))
                                                   (_%refs201584%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals201580%_
                                                     _%g201534201567%_))
                                                   (_%expr201586%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self201334%_
                                                       _%g201533201566%_))))
                                              (_%lp201458%_
                                               _%g201468201504%_
                                               (cons (cons _%vals201580%_
                                                           (cons _%expr201586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind201461%_)
                                               (cons _%check-values201582%_
                                                     _%check201462%_)
                                               (cons _%refs201584%_
                                                     _%post201463%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx205464205465%_))
                                         (let ((_%e201524201594%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx205464205465%_))))
                                           (let ((_%tl201526201599%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201524201594%_)))
                                                 (_%hd201525201597%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201524201594%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd201525201597%_))
                                                 (let ((_%e201527201602%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd201525201597%_))))
                                                   (let ((_%tl201529201607%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201527201602%_)))
                                                         (_%hd201528201605%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201527201602%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl201529201607%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl201526201599%_))
                     (let ((_%e201530201610%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl201526201599%_))))
                       (let ((_%tl201532201615%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201530201610%_)))
                             (_%hd201531201613%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201530201610%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201532201615%_))
                             (_%__kont205466205467%_
                              _%hd201531201613%_
                              _%hd201528201605%_)
                             (let ()
                               (declare (not safe))
                               (_%g201520201545%_)))))
                     (let () (declare (not safe)) (_%g201520201545%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl201526201599%_))
                     (let ((_%e201538201558%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl201526201599%_))))
                       (let ((_%tl201540201563%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201538201558%_)))
                             (_%hd201539201561%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201538201558%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201540201563%_))
                             (_%__kont205468205469%_
                              _%hd201539201561%_
                              _%hd201525201597%_)
                             (let ()
                               (declare (not safe))
                               (_%g201520201545%_)))))
                     (let () (declare (not safe)) (_%g201520201545%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl201526201599%_))
                                                     (let ((_%e201538201558%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl201526201599%_))))
                                                       (let ((_%tl201540201563%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e201538201558%_)))
                     (_%hd201539201561%_
                      (let () (declare (not safe)) (##car _%e201538201558%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl201540201563%_))
                     (_%__kont205468205469%_
                      _%hd201539201561%_
                      _%hd201525201597%_)
                     (let () (declare (not safe)) (_%g201520201545%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g201520201545%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g201520201545%_)))))))
                              (_%__kont205512205513%_
                               (lambda ()
                                 (let* ((_%body201484%_
                                         (if _%compiled-body?201336%_
                                             _%body201456%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self201334%_
                                                _%body201456%_))))
                                        (_%body201486%_
                                         (_%generate-values-post201342%_
                                          _%post201463%_
                                          _%body201484%_))
                                        (_%body201488%_
                                         (_%generate-values-check201343%_
                                          _%check201462%_
                                          _%body201486%_)))
                                   (cons 'let
                                         (cons (reverse _%bind201461%_)
                                               (cons _%body201488%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx205508205509%_))
                              (let ((_%e201470201496%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx205508205509%_))))
                                (let ((_%tl201472201501%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201470201496%_)))
                                      (_%hd201471201499%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201470201496%_))))
                                  (_%__kont205510205511%_
                                   _%tl201472201501%_
                                   _%hd201471201499%_)))
                              (_%__kont205512205513%_)))))))
                 (_%generate-values-post201342%_
                  (lambda (_%post201414%_ _%body201415%_)
                    (let _%lp201417%_ ((_%rest201419%_ _%post201414%_)
                                       (_%body201420%_ _%body201415%_))
                      (let* ((_%rest201421201429%_ _%rest201419%_)
                             (_%else201423201437%_ (lambda () _%body201420%_))
                             (_%K201425201443%_
                              (lambda (_%rest201440%_ _%bind201441%_)
                                (_%lp201417%_
                                 _%rest201440%_
                                 (cons 'let
                                       (cons _%bind201441%_
                                             (cons _%body201420%_ '())))))))
                        (if (pair? _%rest201421201429%_)
                            (let ((_%hd201426201446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest201421201429%_)))
                                  (_%tl201427201448%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest201421201429%_))))
                              (let* ((_%bind201451%_ _%hd201426201446%_)
                                     (_%rest201453%_ _%tl201427201448%_))
                                (_%K201425201443%_
                                 _%rest201453%_
                                 _%bind201451%_)))
                            (_%else201423201437%_))))))
                 (_%generate-values-check201343%_
                  (lambda (_%check201411%_ _%body201412%_)
                    (cons 'begin
                          (let ((__tmp206356 (cons _%body201412%_ '()))
                                (__tmp206355 (reverse _%check201411%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp206356 __tmp206355))))))
          (let* ((_%g201345201362%_
                  (lambda (_%g201346201359%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201346201359%_))))
                 (_%g201344201408%_
                  (lambda (_%g201346201365%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201346201365%_))
                        (let ((_%e201349201367%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201346201365%_))))
                          (let ((_%hd201350201370%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201349201367%_)))
                                (_%tl201351201372%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201349201367%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201351201372%_))
                                (let ((_%e201352201375%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl201351201372%_))))
                                  (let ((_%hd201353201378%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201352201375%_)))
                                        (_%tl201354201380%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201352201375%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201354201380%_))
                                        (let ((_%e201355201383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201354201380%_))))
                                          (let ((_%hd201356201386%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201355201383%_)))
                                                (_%tl201357201388%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201355201383%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201357201388%_))
                                                ((lambda (_%g201347201391%_
                                                          _%g201348201392%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g201348201392%_)
                                                       (_%generate-simple201338%_
                                                        _%g201348201392%_
                                                        _%g201347201391%_)
                                                       (_%generate-values201341%_
                                                        _%g201348201392%_
                                                        _%g201347201391%_)))
                                                 _%hd201356201386%_
                                                 _%hd201353201378%_)
                                                (_%g201345201362%_
                                                 _%g201346201365%_))))
                                        (_%g201345201362%_
                                         _%g201346201365%_))))
                                (_%g201345201362%_ _%g201346201365%_))))
                        (_%g201345201362%_ _%g201346201365%_)))))
            (_%g201344201408%_ _%stx201335%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self202088%_ _%stx202089%_)
        (let ((_%compiled-body?202091%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self202088%_
           _%stx202089%_
           _%compiled-body?202091%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g206357_
        (let ((_g206358_ (let () (declare (not safe)) (##length _g206357_))))
          (cond ((let () (declare (not safe)) (##fx= _g206358_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g206357_))
                ((let () (declare (not safe)) (##fx= _g206358_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g206357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g206357_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals201228%_ _%hd201229%_)
        (let _%lp201231%_ ((_%rest201233%_ _%hd201229%_)
                           (_%k201234%_ '0)
                           (_%r201235%_ '()))
          (let* ((_%__stx205522205523%_ _%rest201233%_)
                 (_%g201240201257%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx205522205523%_)))))
            (let ((_%__kont205524205525%_
                   (lambda (_%g201242201320%_)
                     (_%lp201231%_
                      _%g201242201320%_
                      (let () (declare (not safe)) (##fx+ _%k201234%_ '1))
                      _%r201235%_)))
                  (_%__kont205526205527%_
                   (lambda (_%g201247201293%_ _%g201248201294%_)
                     (_%lp201231%_
                      _%g201247201293%_
                      (let () (declare (not safe)) (##fx+ _%k201234%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g201248201294%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals201228%_
                                         _%k201234%_
                                         _%g201247201293%_)
                                        '()))
                            _%r201235%_))))
                  (_%__kont205528205529%_
                   (lambda (_%g201252201269%_)
                     (let ((__tmp206359
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g201252201269%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals201228%_
                                               _%k201234%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp206359 _%r201235%_))))
                  (_%__kont205530205531%_ (lambda () (reverse _%r201235%_))))
              (let ((_%g201238201280%_
                     (lambda ()
                       (let ((_%g201252201269%_ _%__stx205522205523%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g201252201269%_))
                             (_%__kont205528205529%_ _%g201252201269%_)
                             (_%__kont205530205531%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx205522205523%_))
                    (let ((_%e201243201309%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx205522205523%_))))
                      (let ((_%tl201245201314%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201243201309%_)))
                            (_%hd201244201312%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201243201309%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd201244201312%_))
                            (let ((_%e201246201317%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd201244201312%_))))
                              (if (equal? _%e201246201317%_ '#f)
                                  (_%__kont205524205525%_ _%tl201245201314%_)
                                  (_%__kont205526205527%_
                                   _%tl201245201314%_
                                   _%hd201244201312%_)))
                            (_%__kont205526205527%_
                             _%tl201245201314%_
                             _%hd201244201312%_))))
                    (let () (declare (not safe)) (_%g201238201280%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self200907%_ _%stx200908%_ _%compiled-body?200909%_)
        (letrec ((_%generate-simple200911%_
                  (lambda (_%hd201213%_ _%body201214%_)
                    (gxc#generate-runtime-simple-let
                     _%self200907%_
                     'letrec
                     _%hd201213%_
                     _%body201214%_
                     _%compiled-body?200909%_)))
                 (_%generate-values200912%_
                  (lambda (_%hd200992%_ _%body200993%_)
                    (let _%lp200995%_ ((_%rest200997%_ _%hd200992%_)
                                       (_%bind200998%_ '())
                                       (_%check200999%_ '())
                                       (_%post201000%_ '()))
                      (let* ((_%__stx205596205597%_ _%rest200997%_)
                             (_%g201003201014%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx205596205597%_)))))
                        (let ((_%__kont205598205599%_
                               (lambda (_%g201005201041%_ _%g201006201042%_)
                                 (let* ((_%__stx205552205553%_
                                         _%g201006201042%_)
                                        (_%g201057201082%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx205552205553%_)))))
                                   (let ((_%__kont205554205555%_
                                          (lambda (_%g201059201189%_
                                                   _%g201060201190%_)
                                            (let ((_%eid201204%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g201060201190%_)))
                                                  (_%expr201205%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self200907%_
                                                      _%g201059201189%_))))
                                              (_%lp200995%_
                                               _%g201005201041%_
                                               (cons (cons _%eid201204%_
                                                           (cons _%expr201205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind200998%_)
                                               _%check200999%_
                                               _%post201000%_))))
                                         (_%__kont205556205557%_
                                          (lambda (_%g201070201103%_
                                                   _%g201071201104%_)
                                            (let* ((_%vals201117%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values201119%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals201117%_
                                                     _%g201071201104%_
                                                     _%g201070201103%_))
                                                   (_%refs201121%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals201117%_
                                                     _%g201071201104%_))
                                                   (_%expr201123%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self200907%_
                                                       _%g201070201103%_))))
                                              (_%lp200995%_
                                               _%g201005201041%_
                                               (let ((__tmp206361
                                                      (cons (cons _%vals201117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr201123%_ '()))
                    _%bind200998%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp206360
                                                      (map (lambda (_%e201125201127%_)
                                                             (let* ((_%e201125201129201138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e201125201127%_)
                            (_%E201131201142%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e201125201129201138%_
                                        '([eid _])))
                               '#!void))
                            (_%K201132201147%_
                             (lambda (_%eid201145%_)
                               (cons _%eid201145%_ (cons '#!void '())))))
                       (if (pair? _%e201125201129201138%_)
                           (let ((_%hd201133201150%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e201125201129201138%_)))
                                 (_%tl201134201152%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e201125201129201138%_))))
                             (let ((_%eid201155%_ _%hd201133201150%_))
                               (if (pair? _%tl201134201152%_)
                                   (let ((_%tl201136201157%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl201134201152%_))))
                                     (if (null? _%tl201136201157%_)
                                         (_%K201132201147%_ _%eid201155%_)
                                         (_%E201131201142%_)))
                                   (_%E201131201142%_))))
                           (_%E201131201142%_))))
                   _%refs201121%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp206361
                                                  __tmp206360))
                                               (cons _%check-values201119%_
                                                     _%check200999%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs201121%_
                                                  _%post201000%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx205552205553%_))
                                         (let ((_%e201061201165%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx205552205553%_))))
                                           (let ((_%tl201063201170%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201061201165%_)))
                                                 (_%hd201062201168%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201061201165%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd201062201168%_))
                                                 (let ((_%e201064201173%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd201062201168%_))))
                                                   (let ((_%tl201066201178%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201064201173%_)))
                                                         (_%hd201065201176%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201064201173%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl201066201178%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl201063201170%_))
                     (let ((_%e201067201181%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl201063201170%_))))
                       (let ((_%tl201069201186%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201067201181%_)))
                             (_%hd201068201184%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201067201181%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201069201186%_))
                             (_%__kont205554205555%_
                              _%hd201068201184%_
                              _%hd201065201176%_)
                             (let ()
                               (declare (not safe))
                               (_%g201057201082%_)))))
                     (let () (declare (not safe)) (_%g201057201082%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl201063201170%_))
                     (let ((_%e201075201095%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl201063201170%_))))
                       (let ((_%tl201077201100%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201075201095%_)))
                             (_%hd201076201098%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201075201095%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201077201100%_))
                             (_%__kont205556205557%_
                              _%hd201076201098%_
                              _%hd201062201168%_)
                             (let ()
                               (declare (not safe))
                               (_%g201057201082%_)))))
                     (let () (declare (not safe)) (_%g201057201082%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl201063201170%_))
                                                     (let ((_%e201075201095%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl201063201170%_))))
                                                       (let ((_%tl201077201100%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e201075201095%_)))
                     (_%hd201076201098%_
                      (let () (declare (not safe)) (##car _%e201075201095%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl201077201100%_))
                     (_%__kont205556205557%_
                      _%hd201076201098%_
                      _%hd201062201168%_)
                     (let () (declare (not safe)) (_%g201057201082%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g201057201082%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g201057201082%_)))))))
                              (_%__kont205600205601%_
                               (lambda ()
                                 (let* ((_%body201021%_
                                         (if _%compiled-body?200909%_
                                             _%body200993%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self200907%_
                                                _%body200993%_))))
                                        (_%body201023%_
                                         (_%generate-values-post200914%_
                                          _%post201000%_
                                          _%body201021%_))
                                        (_%body201025%_
                                         (_%generate-values-check200913%_
                                          _%check200999%_
                                          _%body201023%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind200998%_)
                                               (cons _%body201025%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx205596205597%_))
                              (let ((_%e201007201033%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx205596205597%_))))
                                (let ((_%tl201009201038%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201007201033%_)))
                                      (_%hd201008201036%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201007201033%_))))
                                  (_%__kont205598205599%_
                                   _%tl201009201038%_
                                   _%hd201008201036%_)))
                              (_%__kont205600205601%_)))))))
                 (_%generate-values-check200913%_
                  (lambda (_%check200989%_ _%body200990%_)
                    (cons 'begin
                          (let ((__tmp206363 (cons _%body200990%_ '()))
                                (__tmp206362 (reverse _%check200989%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp206363 __tmp206362)))))
                 (_%generate-values-post200914%_
                  (lambda (_%post200982%_ _%body200983%_)
                    (cons 'begin
                          (let ((__tmp206367 (cons _%body200983%_ '()))
                                (__tmp206364
                                 (let ((__tmp206366
                                        (lambda (_%g200984200986%_)
                                          (cons 'set! _%g200984200986%_)))
                                       (__tmp206365 (reverse _%post200982%_)))
                                   (declare (not safe))
                                   (##map __tmp206366 __tmp206365))))
                            (declare (not safe))
                            (foldr__0 cons __tmp206367 __tmp206364))))))
          (let* ((_%g200916200933%_
                  (lambda (_%g200917200930%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200917200930%_))))
                 (_%g200915200979%_
                  (lambda (_%g200917200936%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200917200936%_))
                        (let ((_%e200920200938%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200917200936%_))))
                          (let ((_%hd200921200941%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200920200938%_)))
                                (_%tl200922200943%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200920200938%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200922200943%_))
                                (let ((_%e200923200946%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200922200943%_))))
                                  (let ((_%hd200924200949%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200923200946%_)))
                                        (_%tl200925200951%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200923200946%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200925200951%_))
                                        (let ((_%e200926200954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200925200951%_))))
                                          (let ((_%hd200927200957%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200926200954%_)))
                                                (_%tl200928200959%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200926200954%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200928200959%_))
                                                ((lambda (_%g200918200962%_
                                                          _%g200919200963%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g200919200963%_)
                                                       (_%generate-simple200911%_
                                                        _%g200919200963%_
                                                        _%g200918200962%_)
                                                       (_%generate-values200912%_
                                                        _%g200919200963%_
                                                        _%g200918200962%_)))
                                                 _%hd200927200957%_
                                                 _%hd200924200949%_)
                                                (_%g200916200933%_
                                                 _%g200917200936%_))))
                                        (_%g200916200933%_
                                         _%g200917200936%_))))
                                (_%g200916200933%_ _%g200917200936%_))))
                        (_%g200916200933%_ _%g200917200936%_)))))
            (_%g200915200979%_ _%stx200908%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self201219%_ _%stx201220%_)
        (let ((_%compiled-body?201222%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self201219%_
           _%stx201220%_
           _%compiled-body?201222%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g206368_
        (let ((_g206369_ (let () (declare (not safe)) (##length _g206368_))))
          (cond ((let () (declare (not safe)) (##fx= _g206369_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g206368_))
                ((let () (declare (not safe)) (##fx= _g206369_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g206368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g206368_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self200488%_ _%stx200489%_)
        (letrec ((_%generate-values200491%_
                  (lambda (_%hd200734%_ _%body200735%_)
                    (let _%lp200737%_ ((_%rest200739%_ _%hd200734%_)
                                       (_%bind200740%_ '()))
                      (let* ((_%rest200741200749%_ _%rest200739%_)
                             (_%else200743200760%_
                              (lambda ()
                                (let ((_%bind200757%_ (reverse _%bind200740%_))
                                      (_%body200758%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self200488%_
                                          _%body200735%_))))
                                  (cons 'letrec*
                                        (cons _%bind200757%_
                                              (cons _%body200758%_ '()))))))
                             (_%K200745200894%_
                              (lambda (_%rest200763%_ _%hd-bind200764%_)
                                (let* ((_%__stx205610205611%_
                                        _%hd-bind200764%_)
                                       (_%g200767200792%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx205610205611%_)))))
                                  (let ((_%__kont205612205613%_
                                         (lambda (_%g200769200873%_
                                                  _%g200770200874%_)
                                           (let ((_%eid200888%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g200770200874%_)))
                                                 (_%expr200889%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self200488%_
                                                     _%g200769200873%_))))
                                             (_%lp200737%_
                                              _%rest200763%_
                                              (cons (cons _%eid200888%_
                                                          (cons _%expr200889%_
                                                                '()))
                                                    _%bind200740%_)))))
                                        (_%__kont205614205615%_
                                         (lambda (_%g200780200813%_
                                                  _%g200781200814%_)
                                           (let* ((_%vals200833%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp200835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values200837%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp200835%_
                                                    _%g200781200814%_
                                                    _%g200780200813%_))
                                                  (_%refs200839%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals200833%_
                                                    _%g200781200814%_))
                                                  (_%expr200841%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self200488%_
                                                      _%g200780200813%_))))
                                             (_%lp200737%_
                                              _%rest200763%_
                                              (let ((__tmp206370
                                                     (cons (cons _%vals200833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp200835%_
                                                       (cons _%expr200841%_
                                                             '()))
                                                 '())
                                           (cons _%check-values200837%_
                                                 (cons _%tmp200835%_ '()))))
                               '()))
                   _%bind200740%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp206370
                                                 _%refs200839%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx205610205611%_))
                                        (let ((_%e200771200849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx205610205611%_))))
                                          (let ((_%tl200773200854%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200771200849%_)))
                                                (_%hd200772200852%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200771200849%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd200772200852%_))
                                                (let ((_%e200774200857%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd200772200852%_))))
                                                  (let ((_%tl200776200862%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200774200857%_)))
                                                        (_%hd200775200860%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200774200857%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200776200862%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl200773200854%_))
                                                            (let ((_%e200777200865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200773200854%_))))
                      (let ((_%tl200779200870%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200777200865%_)))
                            (_%hd200778200868%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200777200865%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200779200870%_))
                            (_%__kont205612205613%_
                             _%hd200778200868%_
                             _%hd200775200860%_)
                            (let ()
                              (declare (not safe))
                              (_%g200767200792%_)))))
                    (let () (declare (not safe)) (_%g200767200792%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl200773200854%_))
                    (let ((_%e200785200805%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200773200854%_))))
                      (let ((_%tl200787200810%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200785200805%_)))
                            (_%hd200786200808%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200785200805%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200787200810%_))
                            (_%__kont205614205615%_
                             _%hd200786200808%_
                             _%hd200772200852%_)
                            (let ()
                              (declare (not safe))
                              (_%g200767200792%_)))))
                    (let () (declare (not safe)) (_%g200767200792%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl200773200854%_))
                                                    (let ((_%e200785200805%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl200773200854%_))))
                                                      (let ((_%tl200787200810%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e200785200805%_)))
                    (_%hd200786200808%_
                     (let () (declare (not safe)) (##car _%e200785200805%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200787200810%_))
                    (_%__kont205614205615%_
                     _%hd200786200808%_
                     _%hd200772200852%_)
                    (let () (declare (not safe)) (_%g200767200792%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200767200792%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g200767200792%_))))))))
                        (if (pair? _%rest200741200749%_)
                            (let ((_%hd200746200897%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200741200749%_)))
                                  (_%tl200747200899%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200741200749%_))))
                              (let* ((_%hd-bind200902%_ _%hd200746200897%_)
                                     (_%rest200904%_ _%tl200747200899%_))
                                (_%K200745200894%_
                                 _%rest200904%_
                                 _%hd-bind200902%_)))
                            (_%else200743200760%_))))))
                 (_%generate-letrec?200492%_
                  (lambda (_%hd200624%_)
                    (let _%lp200626%_ ((_%rest200628%_ _%hd200624%_))
                      (let* ((_%rest200629200637%_ _%rest200628%_)
                             (_%else200631200645%_ (lambda () '#t))
                             (_%K200633200722%_
                              (lambda (_%rest200648%_ _%hd-bind200649%_)
                                (let* ((_%g200651200668%_
                                        (lambda (_%g200652200665%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g200652200665%_))))
                                       (_%g200650200719%_
                                        (lambda (_%g200652200671%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g200652200671%_))
                                              (let ((_%e200655200673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g200652200671%_))))
                                                (let ((_%hd200656200676%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200655200673%_)))
                                                      (_%tl200657200678%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200655200673%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd200656200676%_))
                                                      (let ((_%e200658200681%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd200656200676%_))))
                (let ((_%hd200659200684%_
                       (let () (declare (not safe)) (##car _%e200658200681%_)))
                      (_%tl200660200686%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e200658200681%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200660200686%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200657200678%_))
                          (let ((_%e200661200689%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200657200678%_))))
                            (let ((_%hd200662200692%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200661200689%_)))
                                  (_%tl200663200694%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200661200689%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200663200694%_))
                                  ((lambda (_%g200653200697%_
                                            _%g200654200698%_)
                                     (if (_%is-lambda-expr?200493%_
                                          _%g200653200697%_)
                                         (_%lp200626%_ _%rest200648%_)
                                         '#f))
                                   _%hd200662200692%_
                                   _%hd200659200684%_)
                                  (_%g200651200668%_ _%g200652200671%_))))
                          (_%g200651200668%_ _%g200652200671%_))
                      (_%g200651200668%_ _%g200652200671%_))))
              (_%g200651200668%_ _%g200652200671%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200651200668%_
                                               _%g200652200671%_)))))
                                  (_%g200650200719%_ _%hd-bind200649%_)))))
                        (if (pair? _%rest200629200637%_)
                            (let ((_%hd200634200725%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200629200637%_)))
                                  (_%tl200635200727%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200629200637%_))))
                              (let* ((_%hd-bind200730%_ _%hd200634200725%_)
                                     (_%rest200732%_ _%tl200635200727%_))
                                (_%K200633200722%_
                                 _%rest200732%_
                                 _%hd-bind200730%_)))
                            (_%else200631200645%_))))))
                 (_%is-lambda-expr?200493%_
                  (lambda (_%expr200561%_)
                    (let* ((_%__stx205654205655%_ _%expr200561%_)
                           (_%g200564200578%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx205654205655%_)))))
                      (let ((_%__kont205656205657%_
                             (lambda (_%g200566200606%_ _%g200567200607%_)
                               '#t))
                            (_%__kont205658205659%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx205654205655%_))
                            (let ((_%e200568200590%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx205654205655%_))))
                              (let ((_%tl200570200595%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200568200590%_)))
                                    (_%hd200569200593%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200568200590%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd200569200593%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd200569200593%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200570200595%_))
                                            (let ((_%e200571200598%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200570200595%_))))
                                              (let ((_%tl200573200603%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200571200598%_)))
                                                    (_%hd200572200601%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200571200598%_))))
                                                (_%__kont205656205657%_
                                                 _%tl200573200603%_
                                                 _%hd200572200601%_)))
                                            (_%__kont205658205659%_))
                                        (_%__kont205658205659%_))
                                    (_%__kont205658205659%_))))
                            (_%__kont205658205659%_)))))))
          (let* ((_%g200495200512%_
                  (lambda (_%g200496200509%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200496200509%_))))
                 (_%g200494200558%_
                  (lambda (_%g200496200515%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200496200515%_))
                        (let ((_%e200499200517%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200496200515%_))))
                          (let ((_%hd200500200520%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200499200517%_)))
                                (_%tl200501200522%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200499200517%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200501200522%_))
                                (let ((_%e200502200525%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200501200522%_))))
                                  (let ((_%hd200503200528%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200502200525%_)))
                                        (_%tl200504200530%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200502200525%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200504200530%_))
                                        (let ((_%e200505200533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl200504200530%_))))
                                          (let ((_%hd200506200536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200505200533%_)))
                                                (_%tl200507200538%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200505200533%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200507200538%_))
                                                ((lambda (_%g200497200541%_
                                                          _%g200498200542%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g200498200542%_)
                                                       (if (_%generate-letrec?200492%_
                                                            _%g200498200542%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self200488%_
                                                            'letrec
                                                            _%g200498200542%_
                                                            _%g200497200541%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self200488%_
                                                            'letrec*
                                                            _%g200498200542%_
                                                            _%g200497200541%_
                                                            '#f))
                                                       (_%generate-values200491%_
                                                        _%g200498200542%_
                                                        _%g200497200541%_)))
                                                 _%hd200506200536%_
                                                 _%hd200503200528%_)
                                                (_%g200495200512%_
                                                 _%g200496200515%_))))
                                        (_%g200495200512%_
                                         _%g200496200515%_))))
                                (_%g200495200512%_ _%g200496200515%_))))
                        (_%g200495200512%_ _%g200496200515%_)))))
            (_%g200494200558%_ _%stx200489%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd200425%_)
        (let _%lp200427%_ ((_%rest200429%_ _%hd200425%_))
          (let* ((_%rest200430200446%_ _%rest200429%_)
                 (_%else200433200454%_ (lambda () '#f)))
            (let ((_%K200436200467%_
                   (lambda (_%rest200465%_) (_%lp200427%_ _%rest200465%_)))
                  (_%K200435200459%_ (lambda () '#t)))
              (let ((_%try-match200432200462%_
                     (lambda ()
                       (if (null? _%rest200430200446%_)
                           (_%K200435200459%_)
                           (_%else200433200454%_)))))
                (if (pair? _%rest200430200446%_)
                    (let ((_%tl200438200472%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest200430200446%_)))
                          (_%hd200437200470%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest200430200446%_))))
                      (if (pair? _%hd200437200470%_)
                          (let ((_%tl200440200477%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd200437200470%_)))
                                (_%hd200439200475%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd200437200470%_))))
                            (if (pair? _%hd200439200475%_)
                                (let ((_%tl200444200480%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd200439200475%_))))
                                  (if (null? _%tl200444200480%_)
                                      (if (pair? _%tl200440200477%_)
                                          (let ((_%tl200442200483%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl200440200477%_))))
                                            (if (null? _%tl200442200483%_)
                                                (let ((_%rest200486%_
                                                       _%tl200438200472%_))
                                                  (_%lp200427%_
                                                   _%rest200486%_))
                                                (_%else200433200454%_)))
                                          (_%else200433200454%_))
                                      (_%else200433200454%_)))
                                (_%else200433200454%_)))
                          (_%else200433200454%_)))
                    (_%try-match200432200462%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self200337%_
               _%form200338%_
               _%hd200339%_
               _%body200340%_
               _%compiled-body?200341%_)
        (letrec ((_%generate1200343%_
                  (lambda (_%bind200382%_)
                    (let* ((_%bind200383200394%_ _%bind200382%_)
                           (_%E200385200397%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind200383200394%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K200386200403%_
                            (lambda (_%expr200400%_ _%id200401%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id200401%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self200337%_
                                             _%expr200400%_))
                                          '())))))
                      (if (pair? _%bind200383200394%_)
                          (let ((_%hd200387200406%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind200383200394%_)))
                                (_%tl200388200408%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind200383200394%_))))
                            (if (pair? _%hd200387200406%_)
                                (let ((_%hd200391200411%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd200387200406%_)))
                                      (_%tl200392200413%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd200387200406%_))))
                                  (let ((_%id200416%_ _%hd200391200411%_))
                                    (if (null? _%tl200392200413%_)
                                        (if (pair? _%tl200388200408%_)
                                            (let ((_%hd200389200418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl200388200408%_)))
                                                  (_%tl200390200420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl200388200408%_))))
                                              (let ((_%expr200423%_
                                                     _%hd200389200418%_))
                                                (if (null? _%tl200390200420%_)
                                                    (_%K200386200403%_
                                                     _%expr200423%_
                                                     _%id200416%_)
                                                    (_%E200385200397%_))))
                                            (_%E200385200397%_))
                                        (_%E200385200397%_))))
                                (_%E200385200397%_)))
                          (_%E200385200397%_))))))
          (let* ((_%bind200345%_ (map _%generate1200343%_ _%hd200339%_))
                 (_%body200347%_
                  (if _%compiled-body?200341%_
                      _%body200340%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self200337%_ _%body200340%_))))
                 (_%body200379%_
                  (let* ((_%body200348200356%_ _%body200347%_)
                         (_%else200350200364%_
                          (lambda () (cons _%body200347%_ '())))
                         (_%K200352200369%_
                          (lambda (_%exprs200367%_) _%exprs200367%_)))
                    (if (pair? _%body200348200356%_)
                        (let ((_%hd200353200372%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body200348200356%_)))
                              (_%tl200354200374%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body200348200356%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd200353200372%_ 'begin))
                              (let ((_%exprs200377%_ _%tl200354200374%_))
                                (_%K200352200369%_ _%exprs200377%_))
                              (_%else200350200364%_)))
                        (_%else200350200364%_)))))
            (cons _%form200338%_ (cons _%bind200345%_ _%body200379%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self200237%_ _%stx200238%_)
        (letrec ((_%generate1200240%_
                  (lambda (_%datum200292%_)
                    (if (or (null? _%datum200292%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum200292%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum200292%_))
                            (eof-object? _%datum200292%_))
                        _%datum200292%_
                        (if (uninterned-symbol? _%datum200292%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum200292%_
                               '#t))
                            (if (pair? _%datum200292%_)
                                (cons (_%generate1200240%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum200292%_)))
                                      (_%generate1200240%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum200292%_))))
                                (if (box? _%datum200292%_)
                                    (box (_%generate1200240%_
                                          (unbox _%datum200292%_)))
                                    (if (vector? _%datum200292%_)
                                        (vector-map
                                         _%generate1200240%_
                                         _%datum200292%_)
                                        (if (or (s8vector? _%datum200292%_)
                                                (u8vector? _%datum200292%_)
                                                (s16vector? _%datum200292%_)
                                                (u16vector? _%datum200292%_)
                                                (s32vector? _%datum200292%_)
                                                (u32vector? _%datum200292%_)
                                                (s64vector? _%datum200292%_)
                                                (u64vector? _%datum200292%_)
                                                (f32vector? _%datum200292%_)
                                                (f64vector? _%datum200292%_))
                                            _%datum200292%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx200238%_)))))))))))
          (let* ((_%g200242200255%_
                  (lambda (_%g200243200252%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200243200252%_))))
                 (_%g200241200289%_
                  (lambda (_%g200243200258%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200243200258%_))
                        (let ((_%e200245200260%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200243200258%_))))
                          (let ((_%hd200246200263%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200245200260%_)))
                                (_%tl200247200265%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200245200260%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200247200265%_))
                                (let ((_%e200248200268%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200247200265%_))))
                                  (let ((_%hd200249200271%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200248200268%_)))
                                        (_%tl200250200273%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200248200268%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200250200273%_))
                                        ((lambda (_%g200244200276%_)
                                           (cons 'quote
                                                 (cons (_%generate1200240%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g200244200276%_)))
                                                       '())))
                                         _%hd200249200271%_)
                                        (_%g200242200255%_
                                         _%g200243200258%_))))
                                (_%g200242200255%_ _%g200243200258%_))))
                        (_%g200242200255%_ _%g200243200258%_)))))
            (_%g200241200289%_ _%stx200238%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self199684%_ _%stx199685%_)
        (letrec ((_%compile-call199687%_
                  (lambda (_%rator199974%_ _%rands199975%_)
                    (let ((_%rator199981%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self199684%_
                              _%rator199974%_)))
                          (_%rands199982%_
                           (map (lambda (_%g199976199978%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self199684%_
                                     _%g199976199978%_)))
                                _%rands199975%_)))
                      (let* ((_%__stx205701205702%_ _%rator199981%_)
                             (_%g199985200037%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx205701205702%_)))))
                        (let ((_%__kont205703205704%_
                               (lambda (_%g199987200157%_
                                        _%g199988200158%_
                                        _%g199989200159%_
                                        _%g199990200160%_)
                                 (if (let ((__tmp206373
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands199982%_)))
                                           (__tmp206371
                                            (length (let ((__tmp206372
                                                           (lambda (_%g200196200199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g200197200201%_)
                     (cons _%g200196200199%_ _%g200197200201%_))))
              (declare (not safe))
              (foldr__0 __tmp206372 '() _%g199989200159%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp206373 __tmp206371))
                                     (let* ((_%id200204%_ _%g199990200160%_)
                                            (_%args200213%_
                                             (let ((__tmp206374
                                                    (lambda (_%g200205200208%_
                                                             _%g200206200210%_)
                                                      (cons _%g200205200208%_
                                                            _%g200206200210%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp206374
                                                '()
                                                _%g199989200159%_)))
                                            (_%body200222%_
                                             (let ((__tmp206375
                                                    (lambda (_%g200214200217%_
                                                             _%g200215200219%_)
                                                      (cons _%g200214200217%_
                                                            _%g200215200219%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp206375
                                                '()
                                                _%g199988200158%_)))
                                            (_%init200224%_
                                             (map list
                                                  _%args200213%_
                                                  _%rands199982%_)))
                                       (cons 'let
                                             (cons _%id200204%_
                                                   (cons _%init200224%_
                                                         _%body200222%_))))
                                     (let ((__tmp206376
                                            (let ((__tmp206377
                                                   (lambda (_%g200226200229%_
                                                            _%g200227200231%_)
                                                     (cons _%g200226200229%_
                                                           _%g200227200231%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206377
                                               '()
                                               _%g199989200159%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx199685%_
                                        __tmp206376
                                        _%rands199982%_)))))
                              (_%__kont205709205710%_
                               (lambda ()
                                 (cons _%rator199981%_ _%rands199982%_))))
                          (let ((_%__match205768205769%_
                                 (lambda (_%e199991200049%_
                                          _%hd199992200052%_
                                          _%tl199993200054%_
                                          _%e199994200057%_
                                          _%hd199995200060%_
                                          _%tl199996200062%_
                                          _%e199997200065%_
                                          _%hd199998200068%_
                                          _%tl199999200070%_
                                          _%e200000200073%_
                                          _%hd200001200076%_
                                          _%tl200002200078%_
                                          _%e200003200081%_
                                          _%hd200004200084%_
                                          _%tl200005200086%_
                                          _%e200006200089%_
                                          _%hd200007200092%_
                                          _%tl200008200094%_
                                          _%e200009200097%_
                                          _%hd200010200100%_
                                          _%tl200011200102%_
                                          _%__splice205705205706%_
                                          _%target200012200105%_
                                          _%tl200014200107%_)
                                   (letrec ((_%loop200015200110%_
                                             (lambda (_%hd200013200113%_
                                                      _%arg200019200115%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd200013200113%_))
                                                   (let ((_%e200016200117%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd200013200113%_))))
                                                     (let ((_%lp-tl200018200122%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e200016200117%_)))
                                                           (_%lp-hd200017200120%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e200016200117%_))))
                                                       (_%loop200015200110%_
                                                        _%lp-tl200018200122%_
                                                        (cons _%lp-hd200017200120%_
                                                              _%arg200019200115%_))))
                                                   (let ((_%arg200020200125%_
                                                          (reverse _%arg200019200115%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl200011200102%_))
                                                         (let ((_%__splice205707205708%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl200011200102%_
                           '0))))
                   (let ((_%tl200023200129%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice205707205708%_ '1)))
                         (_%target200021200127%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice205707205708%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl200023200129%_))
                         (letrec ((_%loop200024200132%_
                                   (lambda (_%hd200022200135%_
                                            _%body200028200137%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd200022200135%_))
                                         (let ((_%e200025200139%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd200022200135%_))))
                                           (let ((_%lp-tl200027200144%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200025200139%_)))
                                                 (_%lp-hd200026200142%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200025200139%_))))
                                             (_%loop200024200132%_
                                              _%lp-tl200027200144%_
                                              (cons _%lp-hd200026200142%_
                                                    _%body200028200137%_))))
                                         (let ((_%body200029200147%_
                                                (reverse _%body200028200137%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl200005200086%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl199999200070%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199996200062%_))
                                                       (let ((_%e200030200149%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl199996200062%_))))
                 (let ((_%tl200032200154%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200030200149%_)))
                       (_%hd200031200152%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200030200149%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl200032200154%_))
                       (let ((_%g199987200157%_ _%hd200031200152%_)
                             (_%g199988200158%_ _%body200029200147%_)
                             (_%g199989200159%_ _%arg200020200125%_)
                             (_%g199990200160%_ _%hd200001200076%_))
                         (if (eq? _%g199990200160%_ _%g199987200157%_)
                             (_%__kont205703205704%_
                              _%g199987200157%_
                              _%g199988200158%_
                              _%g199989200159%_
                              _%g199990200160%_)
                             (_%__kont205709205710%_)))
                       (_%__kont205709205710%_))))
               (_%__kont205709205710%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont205709205710%_))
                                               (_%__kont205709205710%_)))))))
                           (_%loop200024200132%_ _%target200021200127%_ '()))
                         (_%__kont205709205710%_))))
                 (_%__kont205709205710%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop200015200110%_
                                      _%target200012200105%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx205701205702%_))
                                (let ((_%e199991200049%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx205701205702%_))))
                                  (let ((_%tl199993200054%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199991200049%_)))
                                        (_%hd199992200052%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199991200049%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd199992200052%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd199992200052%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199993200054%_))
                                                (let ((_%e199994200057%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199993200054%_))))
                                                  (let ((_%tl199996200062%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199994200057%_)))
                                                        (_%hd199995200060%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199994200057%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199995200060%_))
                                                        (let ((_%e199997200065%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd199995200060%_))))
                  (let ((_%tl199999200070%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199997200065%_)))
                        (_%hd199998200068%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199997200065%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199998200068%_))
                        (let ((_%e200000200073%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd199998200068%_))))
                          (let ((_%tl200002200078%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200000200073%_)))
                                (_%hd200001200076%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200000200073%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200002200078%_))
                                (let ((_%e200003200081%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200002200078%_))))
                                  (let ((_%tl200005200086%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200003200081%_)))
                                        (_%hd200004200084%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200003200081%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd200004200084%_))
                                        (let ((_%e200006200089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd200004200084%_))))
                                          (let ((_%tl200008200094%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200006200089%_)))
                                                (_%hd200007200092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200006200089%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd200007200092%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd200007200092%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200008200094%_))
                                                        (let ((_%e200009200097%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl200008200094%_))))
                  (let ((_%tl200011200102%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200009200097%_)))
                        (_%hd200010200100%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200009200097%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd200010200100%_))
                        (let ((_%__splice205705205706%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd200010200100%_
                                  '0))))
                          (let ((_%tl200014200107%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice205705205706%_ '1)))
                                (_%target200012200105%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice205705205706%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl200014200107%_))
                                (_%__match205768205769%_
                                 _%e199991200049%_
                                 _%hd199992200052%_
                                 _%tl199993200054%_
                                 _%e199994200057%_
                                 _%hd199995200060%_
                                 _%tl199996200062%_
                                 _%e199997200065%_
                                 _%hd199998200068%_
                                 _%tl199999200070%_
                                 _%e200000200073%_
                                 _%hd200001200076%_
                                 _%tl200002200078%_
                                 _%e200003200081%_
                                 _%hd200004200084%_
                                 _%tl200005200086%_
                                 _%e200006200089%_
                                 _%hd200007200092%_
                                 _%tl200008200094%_
                                 _%e200009200097%_
                                 _%hd200010200100%_
                                 _%tl200011200102%_
                                 _%__splice205705205706%_
                                 _%target200012200105%_
                                 _%tl200014200107%_)
                                (_%__kont205709205710%_))))
                        (_%__kont205709205710%_))))
                (_%__kont205709205710%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont205709205710%_))
                                                (_%__kont205709205710%_))))
                                        (_%__kont205709205710%_))))
                                (_%__kont205709205710%_))))
                        (_%__kont205709205710%_))))
                (_%__kont205709205710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont205709205710%_))
                                            (_%__kont205709205710%_))
                                        (_%__kont205709205710%_))))
                                (_%__kont205709205710%_)))))))))
          (let* ((_%g199689199712%_
                  (lambda (_%g199690199709%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199690199709%_))))
                 (_%g199688199971%_
                  (lambda (_%g199690199715%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199690199715%_))
                        (let ((_%e199693199717%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199690199715%_))))
                          (let ((_%hd199694199720%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199693199717%_)))
                                (_%tl199695199722%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199693199717%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199695199722%_))
                                (let ((_%e199696199725%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199695199722%_))))
                                  (let ((_%hd199697199728%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199696199725%_)))
                                        (_%tl199698199730%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199696199725%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl199698199730%_))
                                        (let ((_g206378_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl199698199730%_
                                                  '0))))
                                          (begin
                                            (let ((_g206379_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g206378_)
                                                         (##values-length
                                                          _g206378_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g206379_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g206379_)))
                                            (let ((_%target199699199733%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g206378_
                                                      0)))
                                                  (_%tl199701199735%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g206378_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199701199735%_))
                                                  (letrec ((_%loop199702199738%_
                                                            (lambda (_%hd199700199741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand199706199743%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd199700199741%_))
                          (let ((_%e199703199745%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199700199741%_))))
                            (let ((_%lp-hd199704199748%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199703199745%_)))
                                  (_%lp-tl199705199750%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199703199745%_))))
                              (_%loop199702199738%_
                               _%lp-tl199705199750%_
                               (cons _%lp-hd199704199748%_
                                     _%rand199706199743%_))))
                          (let ((_%rand199707199753%_
                                 (reverse _%rand199706199743%_)))
                            ((lambda (_%g199691199755%_ _%g199692199756%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call199687%_
                                    _%g199692199756%_
                                    (let ((__tmp206380
                                           (lambda (_%g199773199776%_
                                                    _%g199774199778%_)
                                             (cons _%g199773199776%_
                                                   _%g199774199778%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp206380
                                       '()
                                       _%g199691199755%_)))
                                   (let* ((_%__stx205817205818%_
                                           _%g199692199756%_)
                                          (_%g199782199794%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx205817205818%_)))))
                                     (let ((_%__kont205819205820%_
                                            (lambda ()
                                              (let ((_%f199831%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self199684%_
                                                        _%g199692199756%_))))
                                                (if (and (let ((__tmp206381
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f199831%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp206381))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f199831%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp199833%_ ((_%rest199836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp206383
                                                (lambda (_%g199953199956%_
                                                         _%g199954199958%_)
                                                  (cons _%g199953199956%_
                                                        _%g199954199958%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp206383
                                            '()
                                            _%g199691199755%_))))
                               (_%bind199838%_ '())
                               (_%args199839%_ '()))
              (let* ((_%rest199840199848%_ _%rest199836%_)
                     (_%else199842199856%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind199838%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f199831%_
                                                      _%args199839%_)
                                                '()))))))
                     (_%K199844199942%_
                      (lambda (_%rest199859%_ _%e199860%_)
                        (let* ((_%__stx205771205772%_ _%e199860%_)
                               (_%g199865199883%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx205771205772%_)))))
                          (let ((_%__kont205773205774%_
                                 (lambda ()
                                   (_%lp199833%_
                                    _%rest199859%_
                                    _%bind199838%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e199860%_))
                                          _%args199839%_))))
                                (_%__kont205775205776%_
                                 (lambda ()
                                   (_%lp199833%_
                                    _%rest199859%_
                                    _%bind199838%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e199860%_))
                                          _%args199839%_))))
                                (_%__kont205777205778%_
                                 (lambda ()
                                   (let ((_%tmp199890%_
                                          (let ((__tmp206382
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp206382))))
                                     (_%lp199833%_
                                      _%rest199859%_
                                      (cons (cons _%tmp199890%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e199860%_))
                                                        '()))
                                            _%bind199838%_)
                                      (cons _%tmp199890%_ _%args199839%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx205771205772%_))
                                (let ((_%e199867199921%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx205771205772%_))))
                                  (let ((_%tl199869199926%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199867199921%_)))
                                        (_%hd199868199924%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199867199921%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd199868199924%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd199868199924%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199869199926%_))
                                                (let ((_%e199870199929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199869199926%_))))
                                                  (let ((_%tl199872199934%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199870199929%_)))
                                                        (_%hd199871199932%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199870199929%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199872199934%_))
                                                        (_%__kont205773205774%_)
                                                        (_%__kont205777205778%_))))
                                                (_%__kont205777205778%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd199868199924%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199869199926%_))
                                                    (let ((_%e199876199906%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199869199926%_))))
                                                      (let ((_%tl199878199911%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e199876199906%_)))
                    (_%hd199877199909%_
                     (let () (declare (not safe)) (##car _%e199876199906%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199878199911%_))
                    (_%__kont205775205776%_)
                    (_%__kont205777205778%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont205777205778%_))
                                                (_%__kont205777205778%_)))
                                        (_%__kont205777205778%_))))
                                (_%__kont205777205778%_)))))))
                (if (pair? _%rest199840199848%_)
                    (let ((_%hd199845199945%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest199840199848%_)))
                          (_%tl199846199947%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest199840199848%_))))
                      (let* ((_%e199950%_ _%hd199845199945%_)
                             (_%rest199952%_ _%tl199846199947%_))
                        (_%K199844199942%_ _%rest199952%_ _%e199950%_)))
                    (_%else199842199856%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call199687%_
                                                     _%g199692199756%_
                                                     (let ((__tmp206384
                                                            (lambda (_%g199960199963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g199961199965%_)
                      (cons _%g199960199963%_ _%g199961199965%_))))
               (declare (not safe))
               (foldr__0 __tmp206384 '() _%g199691199755%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont205821205822%_
                                            (lambda ()
                                              (_%compile-call199687%_
                                               _%g199692199756%_
                                               (let ((__tmp206385
                                                      (lambda (_%g199800199803%_
                                                               _%g199801199805%_)
                                                        (cons _%g199800199803%_
                                                              _%g199801199805%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp206385
                                                  '()
                                                  _%g199691199755%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx205817205818%_))
                                           (let ((_%e199784199813%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx205817205818%_))))
                                             (let ((_%tl199786199818%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e199784199813%_)))
                                                   (_%hd199785199816%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e199784199813%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd199785199816%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd199785199816%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199786199818%_))
                                                           (let ((_%e199787199821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl199786199818%_))))
                     (let ((_%tl199789199826%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199787199821%_)))
                           (_%hd199788199824%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199787199821%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl199789199826%_))
                           (_%__kont205819205820%_)
                           (_%__kont205821205822%_))))
                   (_%__kont205821205822%_))
               (_%__kont205821205822%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont205821205822%_))))
                                           (_%__kont205821205822%_))))))
                             _%rand199707199753%_
                             _%hd199697199728%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop199702199738%_
                                                     _%target199699199733%_
                                                     '()))
                                                  (_%g199689199712%_
                                                   _%g199690199715%_)))))
                                        (_%g199689199712%_
                                         _%g199690199715%_))))
                                (_%g199689199712%_ _%g199690199715%_))))
                        (_%g199689199712%_ _%g199690199715%_)))))
            (_%g199688199971%_ _%stx199685%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self199429%_ _%stx199430%_)
        (let* ((_%__stx205889205890%_ _%stx199430%_)
               (_%g199433199462%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205889205890%_)))))
          (let ((_%__kont205891205892%_
                 (lambda (_%g199435199528%_ _%g199436199529%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self199429%_
                        _%stx199430%_)
                       (let ((_%f199551%_
                              (let ((__tmp206386
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g199436199529%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self199429%_
                                 __tmp206386))))
                         (let _%lp199553%_ ((_%rest199556%_
                                             (reverse (let ((__tmp206388
                                                             (lambda (_%g199673199676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g199674199678%_)
                       (cons _%g199673199676%_ _%g199674199678%_))))
                (declare (not safe))
                (foldr__0 __tmp206388 '() _%g199435199528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind199558%_ '())
                                            (_%args199559%_ '()))
                           (let* ((_%rest199560199568%_ _%rest199556%_)
                                  (_%else199562199576%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind199558%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f199551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args199559%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K199564199662%_
                                   (lambda (_%rest199579%_ _%e199580%_)
                                     (let* ((_%__stx205843205844%_ _%e199580%_)
                                            (_%g199585199603%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx205843205844%_)))))
                                       (let ((_%__kont205845205846%_
                                              (lambda ()
                                                (_%lp199553%_
                                                 _%rest199579%_
                                                 _%bind199558%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e199580%_))
                                                       _%args199559%_))))
                                             (_%__kont205847205848%_
                                              (lambda ()
                                                (_%lp199553%_
                                                 _%rest199579%_
                                                 _%bind199558%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e199580%_))
                                                       _%args199559%_))))
                                             (_%__kont205849205850%_
                                              (lambda ()
                                                (let ((_%tmp199610%_
                                                       (let ((__tmp206387
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp206387))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp199553%_
                                                   _%rest199579%_
                                                   (cons (cons _%tmp199610%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e199580%_))
                             '()))
                 _%bind199558%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp199610%_
                                                         _%args199559%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx205843205844%_))
                                             (let ((_%e199587199641%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx205843205844%_))))
                                               (let ((_%tl199589199646%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e199587199641%_)))
                                                     (_%hd199588199644%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e199587199641%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd199588199644%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd199588199644%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl199589199646%_))
                     (let ((_%e199590199649%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl199589199646%_))))
                       (let ((_%tl199592199654%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e199590199649%_)))
                             (_%hd199591199652%_
                              (let ()
                                (declare (not safe))
                                (##car _%e199590199649%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl199592199654%_))
                             (_%__kont205845205846%_)
                             (_%__kont205849205850%_))))
                     (_%__kont205849205850%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd199588199644%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl199589199646%_))
                         (let ((_%e199596199626%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl199589199646%_))))
                           (let ((_%tl199598199631%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e199596199626%_)))
                                 (_%hd199597199629%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e199596199626%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl199598199631%_))
                                 (_%__kont205847205848%_)
                                 (_%__kont205849205850%_))))
                         (_%__kont205849205850%_))
                     (_%__kont205849205850%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont205849205850%_))))
                                             (_%__kont205849205850%_)))))))
                             (if (pair? _%rest199560199568%_)
                                 (let ((_%hd199565199665%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest199560199568%_)))
                                       (_%tl199566199667%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest199560199568%_))))
                                   (let* ((_%e199670%_ _%hd199565199665%_)
                                          (_%rest199672%_ _%tl199566199667%_))
                                     (_%K199564199662%_
                                      _%rest199672%_
                                      _%e199670%_)))
                                 (_%else199562199576%_))))))))
                (_%__kont205895205896%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self199429%_ _%stx199430%_))))
            (let ((_%__match205934205935%_
                   (lambda (_%e199437199474%_
                            _%hd199438199477%_
                            _%tl199439199479%_
                            _%e199440199482%_
                            _%hd199441199485%_
                            _%tl199442199487%_
                            _%e199443199490%_
                            _%hd199444199493%_
                            _%tl199445199495%_
                            _%e199446199498%_
                            _%hd199447199501%_
                            _%tl199448199503%_
                            _%__splice205893205894%_
                            _%target199449199506%_
                            _%tl199451199508%_)
                     (letrec ((_%loop199452199511%_
                               (lambda (_%hd199450199514%_
                                        _%rand199456199516%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd199450199514%_))
                                     (let ((_%e199453199518%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd199450199514%_))))
                                       (let ((_%lp-tl199455199523%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e199453199518%_)))
                                             (_%lp-hd199454199521%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e199453199518%_))))
                                         (_%loop199452199511%_
                                          _%lp-tl199455199523%_
                                          (cons _%lp-hd199454199521%_
                                                _%rand199456199516%_))))
                                     (let ((_%rand199457199526%_
                                            (reverse _%rand199456199516%_)))
                                       (_%__kont205891205892%_
                                        _%rand199457199526%_
                                        _%hd199447199501%_))))))
                       (_%loop199452199511%_ _%target199449199506%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205889205890%_))
                  (let ((_%e199437199474%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205889205890%_))))
                    (let ((_%tl199439199479%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199437199474%_)))
                          (_%hd199438199477%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199437199474%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199439199479%_))
                          (let ((_%e199440199482%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199439199479%_))))
                            (let ((_%tl199442199487%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199440199482%_)))
                                  (_%hd199441199485%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199440199482%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd199441199485%_))
                                  (let ((_%e199443199490%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd199441199485%_))))
                                    (let ((_%tl199445199495%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199443199490%_)))
                                          (_%hd199444199493%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199443199490%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd199444199493%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd199444199493%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199445199495%_))
                                                  (let ((_%e199446199498%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199445199495%_))))
                                                    (let ((_%tl199448199503%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199446199498%_)))
                                                          (_%hd199447199501%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199446199498%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199448199503%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl199442199487%_))
                      (let ((_%__splice205893205894%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl199442199487%_
                                '0))))
                        (let ((_%tl199451199508%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205893205894%_ '1)))
                              (_%target199449199506%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice205893205894%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199451199508%_))
                              (_%__match205934205935%_
                               _%e199437199474%_
                               _%hd199438199477%_
                               _%tl199439199479%_
                               _%e199440199482%_
                               _%hd199441199485%_
                               _%tl199442199487%_
                               _%e199443199490%_
                               _%hd199444199493%_
                               _%tl199445199495%_
                               _%e199446199498%_
                               _%hd199447199501%_
                               _%tl199448199503%_
                               _%__splice205893205894%_
                               _%target199449199506%_
                               _%tl199451199508%_)
                              (_%__kont205895205896%_))))
                      (_%__kont205895205896%_))
                  (_%__kont205895205896%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205895205896%_))
                                              (_%__kont205895205896%_))
                                          (_%__kont205895205896%_))))
                                  (_%__kont205895205896%_))))
                          (_%__kont205895205896%_))))
                  (_%__kont205895205896%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self199241%_ _%stx199242%_)
        (letrec ((_%simplify199244%_
                  (lambda (_%code199329%_)
                    (let* ((_%code199330199348%_ _%code199329%_)
                           (_%else199332199356%_ (lambda () _%code199329%_))
                           (_%K199334199392%_
                            (lambda (_%expr199359%_ _%test199360%_)
                              (let* ((_%expr199361199369%_ _%expr199359%_)
                                     (_%else199363199377%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test199360%_
                                                    (cons _%expr199359%_
                                                          '())))))
                                     (_%K199365199382%_
                                      (lambda (_%exprs199380%_)
                                        (cons 'and
                                              (cons _%test199360%_
                                                    _%exprs199380%_)))))
                                (if (pair? _%expr199361199369%_)
                                    (let ((_%hd199366199385%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr199361199369%_)))
                                          (_%tl199367199387%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr199361199369%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd199366199385%_ 'and))
                                          (let ((_%exprs199390%_
                                                 _%tl199367199387%_))
                                            (_%K199365199382%_
                                             _%exprs199390%_))
                                          (_%else199363199377%_)))
                                    (_%else199363199377%_))))))
                      (if (pair? _%code199330199348%_)
                          (let ((_%hd199335199395%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code199330199348%_)))
                                (_%tl199336199397%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code199330199348%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd199335199395%_ 'if))
                                (if (pair? _%tl199336199397%_)
                                    (let ((_%hd199337199400%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl199336199397%_)))
                                          (_%tl199338199402%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl199336199397%_))))
                                      (let ((_%test199405%_
                                             _%hd199337199400%_))
                                        (if (pair? _%tl199338199402%_)
                                            (let ((_%hd199339199407%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl199338199402%_)))
                                                  (_%tl199340199409%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl199338199402%_))))
                                              (let ((_%expr199412%_
                                                     _%hd199339199407%_))
                                                (if (pair? _%tl199340199409%_)
                                                    (let ((_%hd199341199414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl199340199409%_)))
                                                          (_%tl199342199416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl199340199409%_))))
                                                      (if (pair? _%hd199341199414%_)
                                                          (let ((_%hd199343199419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd199341199414%_)))
                        (_%tl199344199421%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd199341199414%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd199343199419%_ 'quote))
                        (if (pair? _%tl199344199421%_)
                            (let ((_%hd199345199424%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl199344199421%_)))
                                  (_%tl199346199426%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl199344199421%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd199345199424%_ '#f))
                                  (if (null? _%tl199346199426%_)
                                      (if (null? _%tl199342199416%_)
                                          (_%K199334199392%_
                                           _%expr199412%_
                                           _%test199405%_)
                                          (_%else199332199356%_))
                                      (_%else199332199356%_))
                                  (_%else199332199356%_)))
                            (_%else199332199356%_))
                        (_%else199332199356%_)))
                  (_%else199332199356%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else199332199356%_))))
                                            (_%else199332199356%_))))
                                    (_%else199332199356%_))
                                (_%else199332199356%_)))
                          (_%else199332199356%_))))))
          (let* ((_%g199246199267%_
                  (lambda (_%g199247199264%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199247199264%_))))
                 (_%g199245199326%_
                  (lambda (_%g199247199270%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199247199270%_))
                        (let ((_%e199251199272%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199247199270%_))))
                          (let ((_%hd199252199275%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199251199272%_)))
                                (_%tl199253199277%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199251199272%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199253199277%_))
                                (let ((_%e199254199280%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199253199277%_))))
                                  (let ((_%hd199255199283%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199254199280%_)))
                                        (_%tl199256199285%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199254199280%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199256199285%_))
                                        (let ((_%e199257199288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199256199285%_))))
                                          (let ((_%hd199258199291%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199257199288%_)))
                                                (_%tl199259199293%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199257199288%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199259199293%_))
                                                (let ((_%e199260199296%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199259199293%_))))
                                                  (let ((_%hd199261199299%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199260199296%_)))
                                                        (_%tl199262199301%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199260199296%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199262199301%_))
                                                        ((lambda (_%g199248199304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g199249199305%_
                          _%g199250199306%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify199244%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self199241%_
                                       _%g199250199306%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self199241%_
                                             _%g199249199305%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self199241%_
                                                   _%g199248199304%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp206389
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self199241%_
                                               _%g199250199306%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp206389
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self199241%_
                                            _%g199249199305%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self199241%_
                                                  _%g199248199304%_))
                                               '()))))))
                 _%hd199261199299%_
                 _%hd199258199291%_
                 _%hd199255199283%_)
                (_%g199246199267%_ _%g199247199270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199246199267%_
                                                 _%g199247199270%_))))
                                        (_%g199246199267%_
                                         _%g199247199270%_))))
                                (_%g199246199267%_ _%g199247199270%_))))
                        (_%g199246199267%_ _%g199247199270%_)))))
            (_%g199245199326%_ _%stx199242%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self199189%_ _%stx199190%_)
        (let* ((_%g199192199205%_
                (lambda (_%g199193199202%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199193199202%_))))
               (_%g199191199238%_
                (lambda (_%g199193199208%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199193199208%_))
                      (let ((_%e199195199210%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199193199208%_))))
                        (let ((_%hd199196199213%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199195199210%_)))
                              (_%tl199197199215%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199195199210%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199197199215%_))
                              (let ((_%e199198199218%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199197199215%_))))
                                (let ((_%hd199199199221%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199198199218%_)))
                                      (_%tl199200199223%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199198199218%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199200199223%_))
                                      ((lambda (_%g199194199226%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g199194199226%_)))
                                       _%hd199199199221%_)
                                      (_%g199192199205%_ _%g199193199208%_))))
                              (_%g199192199205%_ _%g199193199208%_))))
                      (_%g199192199205%_ _%g199193199208%_)))))
          (_%g199191199238%_ _%stx199190%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self199121%_ _%stx199122%_)
        (let* ((_%g199124199141%_
                (lambda (_%g199125199138%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199125199138%_))))
               (_%g199123199186%_
                (lambda (_%g199125199144%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199125199144%_))
                      (let ((_%e199128199146%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199125199144%_))))
                        (let ((_%hd199129199149%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199128199146%_)))
                              (_%tl199130199151%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199128199146%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199130199151%_))
                              (let ((_%e199131199154%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199130199151%_))))
                                (let ((_%hd199132199157%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199131199154%_)))
                                      (_%tl199133199159%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199131199154%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199133199159%_))
                                      (let ((_%e199134199162%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199133199159%_))))
                                        (let ((_%hd199135199165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199134199162%_)))
                                              (_%tl199136199167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199134199162%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199136199167%_))
                                              ((lambda (_%g199126199170%_
                                                        _%g199127199171%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g199127199171%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self199121%_
                              _%g199126199170%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199135199165%_
                                               _%hd199132199157%_)
                                              (_%g199124199141%_
                                               _%g199125199144%_))))
                                      (_%g199124199141%_ _%g199125199144%_))))
                              (_%g199124199141%_ _%g199125199144%_))))
                      (_%g199124199141%_ _%g199125199144%_)))))
          (_%g199123199186%_ _%stx199122%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self198932%_ _%stx198933%_)
        (let* ((_%g198935198952%_
                (lambda (_%g198936198949%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198936198949%_))))
               (_%g198934199118%_
                (lambda (_%g198936198955%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198936198955%_))
                      (let ((_%e198939198957%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198936198955%_))))
                        (let ((_%hd198940198960%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198939198957%_)))
                              (_%tl198941198962%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198939198957%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198941198962%_))
                              (let ((_%e198942198965%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198941198962%_))))
                                (let ((_%hd198943198968%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198942198965%_)))
                                      (_%tl198944198970%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198942198965%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198944198970%_))
                                      (let ((_%e198945198973%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198944198970%_))))
                                        (let ((_%hd198946198976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198945198973%_)))
                                              (_%tl198947198978%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198945198973%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198947198978%_))
                                              ((lambda (_%g198937198981%_
                                                        _%g198938198982%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self198932%_ _%g198937198981%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self198932%_
                                  _%g198938198982%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp198997%_ ((_%rest199000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g198938198982%_
                                       (cons _%g198937198981%_ '())))
                                (_%bind199002%_ '())
                                (_%args199003%_ '()))
               (let* ((_%rest199004199012%_ _%rest199000%_)
                      (_%else199006199020%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind199002%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args199003%_)
                                                 '()))))))
                      (_%K199008199106%_
                       (lambda (_%rest199023%_ _%e199024%_)
                         (let* ((_%__stx205937205938%_ _%e199024%_)
                                (_%g199029199047%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx205937205938%_)))))
                           (let ((_%__kont205939205940%_
                                  (lambda ()
                                    (_%lp198997%_
                                     _%rest199023%_
                                     _%bind199002%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e199024%_))
                                           _%args199003%_))))
                                 (_%__kont205941205942%_
                                  (lambda ()
                                    (_%lp198997%_
                                     _%rest199023%_
                                     _%bind199002%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e199024%_))
                                           _%args199003%_))))
                                 (_%__kont205943205944%_
                                  (lambda ()
                                    (let ((_%tmp199054%_
                                           (let ((__tmp206390
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp206390))))
                                      (_%lp198997%_
                                       _%rest199023%_
                                       (cons (cons _%tmp199054%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e199024%_))
                                                         '()))
                                             _%bind199002%_)
                                       (cons _%tmp199054%_ _%args199003%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx205937205938%_))
                                 (let ((_%e199031199085%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx205937205938%_))))
                                   (let ((_%tl199033199090%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e199031199085%_)))
                                         (_%hd199032199088%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e199031199085%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd199032199088%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd199032199088%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199033199090%_))
                                                 (let ((_%e199034199093%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl199033199090%_))))
                                                   (let ((_%tl199036199098%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199034199093%_)))
                                                         (_%hd199035199096%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199034199093%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199036199098%_))
                                                         (_%__kont205939205940%_)
                                                         (_%__kont205943205944%_))))
                                                 (_%__kont205943205944%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd199032199088%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl199033199090%_))
                                                     (let ((_%e199040199070%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl199033199090%_))))
                                                       (let ((_%tl199042199075%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e199040199070%_)))
                     (_%hd199041199073%_
                      (let () (declare (not safe)) (##car _%e199040199070%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl199042199075%_))
                     (_%__kont205941205942%_)
                     (_%__kont205943205944%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont205943205944%_))
                                                 (_%__kont205943205944%_)))
                                         (_%__kont205943205944%_))))
                                 (_%__kont205943205944%_)))))))
                 (if (pair? _%rest199004199012%_)
                     (let ((_%hd199009199109%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest199004199012%_)))
                           (_%tl199010199111%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest199004199012%_))))
                       (let* ((_%e199114%_ _%hd199009199109%_)
                              (_%rest199116%_ _%tl199010199111%_))
                         (_%K199008199106%_ _%rest199116%_ _%e199114%_)))
                     (_%else199006199020%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198946198976%_
                                               _%hd198943198968%_)
                                              (_%g198935198952%_
                                               _%g198936198955%_))))
                                      (_%g198935198952%_ _%g198936198955%_))))
                              (_%g198935198952%_ _%g198936198955%_))))
                      (_%g198935198952%_ _%g198936198955%_)))))
          (_%g198934199118%_ _%stx198933%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self198743%_ _%stx198744%_)
        (let* ((_%g198746198763%_
                (lambda (_%g198747198760%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198747198760%_))))
               (_%g198745198929%_
                (lambda (_%g198747198766%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198747198766%_))
                      (let ((_%e198750198768%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198747198766%_))))
                        (let ((_%hd198751198771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198750198768%_)))
                              (_%tl198752198773%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198750198768%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198752198773%_))
                              (let ((_%e198753198776%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198752198773%_))))
                                (let ((_%hd198754198779%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198753198776%_)))
                                      (_%tl198755198781%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198753198776%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198755198781%_))
                                      (let ((_%e198756198784%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198755198781%_))))
                                        (let ((_%hd198757198787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198756198784%_)))
                                              (_%tl198758198789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198756198784%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198758198789%_))
                                              ((lambda (_%g198748198792%_
                                                        _%g198749198793%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self198743%_ _%g198748198792%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self198743%_
                                  _%g198749198793%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp198808%_ ((_%rest198811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g198749198793%_
                                       (cons _%g198748198792%_ '())))
                                (_%bind198813%_ '())
                                (_%args198814%_ '()))
               (let* ((_%rest198815198823%_ _%rest198811%_)
                      (_%else198817198831%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind198813%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args198814%_)
                                                 '()))))))
                      (_%K198819198917%_
                       (lambda (_%rest198834%_ _%e198835%_)
                         (let* ((_%__stx205983205984%_ _%e198835%_)
                                (_%g198840198858%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx205983205984%_)))))
                           (let ((_%__kont205985205986%_
                                  (lambda ()
                                    (_%lp198808%_
                                     _%rest198834%_
                                     _%bind198813%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e198835%_))
                                           _%args198814%_))))
                                 (_%__kont205987205988%_
                                  (lambda ()
                                    (_%lp198808%_
                                     _%rest198834%_
                                     _%bind198813%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e198835%_))
                                           _%args198814%_))))
                                 (_%__kont205989205990%_
                                  (lambda ()
                                    (let ((_%tmp198865%_
                                           (let ((__tmp206391
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp206391))))
                                      (_%lp198808%_
                                       _%rest198834%_
                                       (cons (cons _%tmp198865%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e198835%_))
                                                         '()))
                                             _%bind198813%_)
                                       (cons _%tmp198865%_ _%args198814%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx205983205984%_))
                                 (let ((_%e198842198896%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx205983205984%_))))
                                   (let ((_%tl198844198901%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e198842198896%_)))
                                         (_%hd198843198899%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e198842198896%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd198843198899%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd198843198899%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl198844198901%_))
                                                 (let ((_%e198845198904%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl198844198901%_))))
                                                   (let ((_%tl198847198909%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e198845198904%_)))
                                                         (_%hd198846198907%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e198845198904%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl198847198909%_))
                                                         (_%__kont205985205986%_)
                                                         (_%__kont205989205990%_))))
                                                 (_%__kont205989205990%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd198843198899%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl198844198901%_))
                                                     (let ((_%e198851198881%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl198844198901%_))))
                                                       (let ((_%tl198853198886%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e198851198881%_)))
                     (_%hd198852198884%_
                      (let () (declare (not safe)) (##car _%e198851198881%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl198853198886%_))
                     (_%__kont205987205988%_)
                     (_%__kont205989205990%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont205989205990%_))
                                                 (_%__kont205989205990%_)))
                                         (_%__kont205989205990%_))))
                                 (_%__kont205989205990%_)))))))
                 (if (pair? _%rest198815198823%_)
                     (let ((_%hd198820198920%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest198815198823%_)))
                           (_%tl198821198922%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest198815198823%_))))
                       (let* ((_%e198925%_ _%hd198820198920%_)
                              (_%rest198927%_ _%tl198821198922%_))
                         (_%K198819198917%_ _%rest198927%_ _%e198925%_)))
                     (_%else198817198831%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198757198787%_
                                               _%hd198754198779%_)
                                              (_%g198746198763%_
                                               _%g198747198766%_))))
                                      (_%g198746198763%_ _%g198747198766%_))))
                              (_%g198746198763%_ _%g198747198766%_))))
                      (_%g198746198763%_ _%g198747198766%_)))))
          (_%g198745198929%_ _%stx198744%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self198659%_ _%stx198660%_)
        (let* ((_%g198662198683%_
                (lambda (_%g198663198680%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198663198680%_))))
               (_%g198661198740%_
                (lambda (_%g198663198686%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198663198686%_))
                      (let ((_%e198667198688%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198663198686%_))))
                        (let ((_%hd198668198691%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198667198688%_)))
                              (_%tl198669198693%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198667198688%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198669198693%_))
                              (let ((_%e198670198696%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198669198693%_))))
                                (let ((_%hd198671198699%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198670198696%_)))
                                      (_%tl198672198701%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198670198696%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198672198701%_))
                                      (let ((_%e198673198704%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198672198701%_))))
                                        (let ((_%hd198674198707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198673198704%_)))
                                              (_%tl198675198709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198673198704%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198675198709%_))
                                              (let ((_%e198676198712%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198675198709%_))))
                                                (let ((_%hd198677198715%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198676198712%_)))
                                                      (_%tl198678198717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198676198712%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198678198717%_))
                                                      ((lambda (_%g198664198720%_
                                                                _%g198665198721%_
                                                                _%g198666198722%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self198659%_
                                _%g198664198720%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self198659%_
                                      _%g198665198721%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self198659%_
                                            _%g198666198722%_))
                                         (cons ''#f '()))))))
               _%hd198677198715%_
               _%hd198674198707%_
               _%hd198671198699%_)
              (_%g198662198683%_ _%g198663198686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198662198683%_
                                               _%g198663198686%_))))
                                      (_%g198662198683%_ _%g198663198686%_))))
                              (_%g198662198683%_ _%g198663198686%_))))
                      (_%g198662198683%_ _%g198663198686%_)))))
          (_%g198661198740%_ _%stx198660%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self198559%_ _%stx198560%_)
        (let* ((_%g198562198587%_
                (lambda (_%g198563198584%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198563198584%_))))
               (_%g198561198656%_
                (lambda (_%g198563198590%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198563198590%_))
                      (let ((_%e198568198592%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198563198590%_))))
                        (let ((_%hd198569198595%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198568198592%_)))
                              (_%tl198570198597%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198568198592%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198570198597%_))
                              (let ((_%e198571198600%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198570198597%_))))
                                (let ((_%hd198572198603%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198571198600%_)))
                                      (_%tl198573198605%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198571198600%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198573198605%_))
                                      (let ((_%e198574198608%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198573198605%_))))
                                        (let ((_%hd198575198611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198574198608%_)))
                                              (_%tl198576198613%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198574198608%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198576198613%_))
                                              (let ((_%e198577198616%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198576198613%_))))
                                                (let ((_%hd198578198619%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198577198616%_)))
                                                      (_%tl198579198621%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198577198616%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl198579198621%_))
                                                      (let ((_%e198580198624%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl198579198621%_))))
                (let ((_%hd198581198627%_
                       (let () (declare (not safe)) (##car _%e198580198624%_)))
                      (_%tl198582198629%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198580198624%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198582198629%_))
                      ((lambda (_%g198564198632%_
                                _%g198565198633%_
                                _%g198566198634%_
                                _%g198567198635%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self198559%_
                                        _%g198565198633%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self198559%_
                                              _%g198564198632%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self198559%_
                                                    _%g198566198634%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self198559%_
                                                          _%g198567198635%_))
                                                       (cons ''#f '())))))))
                       _%hd198581198627%_
                       _%hd198578198619%_
                       _%hd198575198611%_
                       _%hd198572198603%_)
                      (_%g198562198587%_ _%g198563198590%_))))
              (_%g198562198587%_ _%g198563198590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198562198587%_
                                               _%g198563198590%_))))
                                      (_%g198562198587%_ _%g198563198590%_))))
                              (_%g198562198587%_ _%g198563198590%_))))
                      (_%g198562198587%_ _%g198563198590%_)))))
          (_%g198561198656%_ _%stx198560%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self198475%_ _%stx198476%_)
        (let* ((_%g198478198499%_
                (lambda (_%g198479198496%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198479198496%_))))
               (_%g198477198556%_
                (lambda (_%g198479198502%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198479198502%_))
                      (let ((_%e198483198504%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198479198502%_))))
                        (let ((_%hd198484198507%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198483198504%_)))
                              (_%tl198485198509%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198483198504%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198485198509%_))
                              (let ((_%e198486198512%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198485198509%_))))
                                (let ((_%hd198487198515%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198486198512%_)))
                                      (_%tl198488198517%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198486198512%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198488198517%_))
                                      (let ((_%e198489198520%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198488198517%_))))
                                        (let ((_%hd198490198523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198489198520%_)))
                                              (_%tl198491198525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198489198520%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198491198525%_))
                                              (let ((_%e198492198528%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198491198525%_))))
                                                (let ((_%hd198493198531%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198492198528%_)))
                                                      (_%tl198494198533%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198492198528%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198494198533%_))
                                                      ((lambda (_%g198480198536%_
                                                                _%g198481198537%_
                                                                _%g198482198538%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self198475%_
                                _%g198480198536%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self198475%_
                                      _%g198481198537%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self198475%_
                                            _%g198482198538%_))
                                         (cons ''#f '()))))))
               _%hd198493198531%_
               _%hd198490198523%_
               _%hd198487198515%_)
              (_%g198478198499%_ _%g198479198502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198478198499%_
                                               _%g198479198502%_))))
                                      (_%g198478198499%_ _%g198479198502%_))))
                              (_%g198478198499%_ _%g198479198502%_))))
                      (_%g198478198499%_ _%g198479198502%_)))))
          (_%g198477198556%_ _%stx198476%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self198375%_ _%stx198376%_)
        (let* ((_%g198378198403%_
                (lambda (_%g198379198400%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198379198400%_))))
               (_%g198377198472%_
                (lambda (_%g198379198406%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198379198406%_))
                      (let ((_%e198384198408%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198379198406%_))))
                        (let ((_%hd198385198411%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198384198408%_)))
                              (_%tl198386198413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198384198408%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198386198413%_))
                              (let ((_%e198387198416%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198386198413%_))))
                                (let ((_%hd198388198419%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198387198416%_)))
                                      (_%tl198389198421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198387198416%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198389198421%_))
                                      (let ((_%e198390198424%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198389198421%_))))
                                        (let ((_%hd198391198427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198390198424%_)))
                                              (_%tl198392198429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198390198424%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198392198429%_))
                                              (let ((_%e198393198432%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198392198429%_))))
                                                (let ((_%hd198394198435%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198393198432%_)))
                                                      (_%tl198395198437%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198393198432%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl198395198437%_))
                                                      (let ((_%e198396198440%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl198395198437%_))))
                (let ((_%hd198397198443%_
                       (let () (declare (not safe)) (##car _%e198396198440%_)))
                      (_%tl198398198445%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198396198440%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198398198445%_))
                      ((lambda (_%g198380198448%_
                                _%g198381198449%_
                                _%g198382198450%_
                                _%g198383198451%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self198375%_
                                        _%g198381198449%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self198375%_
                                              _%g198380198448%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self198375%_
                                                    _%g198382198450%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self198375%_
                                                          _%g198383198451%_))
                                                       (cons ''#f '())))))))
                       _%hd198397198443%_
                       _%hd198394198435%_
                       _%hd198391198427%_
                       _%hd198388198419%_)
                      (_%g198378198403%_ _%g198379198406%_))))
              (_%g198378198403%_ _%g198379198406%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198378198403%_
                                               _%g198379198406%_))))
                                      (_%g198378198403%_ _%g198379198406%_))))
                              (_%g198378198403%_ _%g198379198406%_))))
                      (_%g198378198403%_ _%g198379198406%_)))))
          (_%g198377198472%_ _%stx198376%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self198170%_ _%stx198171%_)
        (let* ((_%g198173198194%_
                (lambda (_%g198174198191%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198174198191%_))))
               (_%g198172198372%_
                (lambda (_%g198174198197%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198174198197%_))
                      (let ((_%e198178198199%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198174198197%_))))
                        (let ((_%hd198179198202%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198178198199%_)))
                              (_%tl198180198204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198178198199%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198180198204%_))
                              (let ((_%e198181198207%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198180198204%_))))
                                (let ((_%hd198182198210%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198181198207%_)))
                                      (_%tl198183198212%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198181198207%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198183198212%_))
                                      (let ((_%e198184198215%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198183198212%_))))
                                        (let ((_%hd198185198218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198184198215%_)))
                                              (_%tl198186198220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198184198215%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198186198220%_))
                                              (let ((_%e198187198223%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198186198220%_))))
                                                (let ((_%hd198188198226%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198187198223%_)))
                                                      (_%tl198189198228%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198187198223%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198189198228%_))
                                                      ((lambda (_%g198175198231%_
                                                                _%g198176198232%_
                                                                _%g198177198233%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self198170%_
                                    _%g198175198231%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self198170%_
                                          _%g198176198232%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp198251%_ ((_%rest198254%_
                                         (cons _%g198176198232%_
                                               (cons _%g198175198231%_ '())))
                                        (_%bind198256%_ '())
                                        (_%args198257%_ '()))
                       (let* ((_%rest198258198266%_ _%rest198254%_)
                              (_%else198260198274%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind198256%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp206392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (foldr__0 cons __tmp206392 _%args198257%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K198262198360%_
                               (lambda (_%rest198277%_ _%e198278%_)
                                 (let* ((_%__stx206029206030%_ _%e198278%_)
                                        (_%g198283198301%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx206029206030%_)))))
                                   (let ((_%__kont206031206032%_
                                          (lambda ()
                                            (_%lp198251%_
                                             _%rest198277%_
                                             _%bind198256%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e198278%_))
                                                   _%args198257%_))))
                                         (_%__kont206033206034%_
                                          (lambda ()
                                            (_%lp198251%_
                                             _%rest198277%_
                                             _%bind198256%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e198278%_))
                                                   _%args198257%_))))
                                         (_%__kont206035206036%_
                                          (lambda ()
                                            (let ((_%tmp198308%_
                                                   (let ((__tmp206393
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp206393))))
                                              (_%lp198251%_
                                               _%rest198277%_
                                               (cons (cons _%tmp198308%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e198278%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind198256%_)
                                               (cons _%tmp198308%_
                                                     _%args198257%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx206029206030%_))
                                         (let ((_%e198285198339%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx206029206030%_))))
                                           (let ((_%tl198287198344%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198285198339%_)))
                                                 (_%hd198286198342%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198285198339%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd198286198342%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd198286198342%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl198287198344%_))
                                                         (let ((_%e198288198347%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl198287198344%_))))
                   (let ((_%tl198290198352%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e198288198347%_)))
                         (_%hd198289198350%_
                          (let ()
                            (declare (not safe))
                            (##car _%e198288198347%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl198290198352%_))
                         (_%__kont206031206032%_)
                         (_%__kont206035206036%_))))
                 (_%__kont206035206036%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd198286198342%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl198287198344%_))
                     (let ((_%e198294198324%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl198287198344%_))))
                       (let ((_%tl198296198329%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e198294198324%_)))
                             (_%hd198295198327%_
                              (let ()
                                (declare (not safe))
                                (##car _%e198294198324%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl198296198329%_))
                             (_%__kont206033206034%_)
                             (_%__kont206035206036%_))))
                     (_%__kont206035206036%_))
                 (_%__kont206035206036%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont206035206036%_))))
                                         (_%__kont206035206036%_)))))))
                         (if (pair? _%rest198258198266%_)
                             (let ((_%hd198263198363%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest198258198266%_)))
                                   (_%tl198264198365%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest198258198266%_))))
                               (let* ((_%e198368%_ _%hd198263198363%_)
                                      (_%rest198370%_ _%tl198264198365%_))
                                 (_%K198262198360%_
                                  _%rest198370%_
                                  _%e198368%_)))
                             (_%else198260198274%_))))))
               _%hd198188198226%_
               _%hd198185198218%_
               _%hd198182198210%_)
              (_%g198173198194%_ _%g198174198197%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198173198194%_
                                               _%g198174198197%_))))
                                      (_%g198173198194%_ _%g198174198197%_))))
                              (_%g198173198194%_ _%g198174198197%_))))
                      (_%g198173198194%_ _%g198174198197%_)))))
          (_%g198172198372%_ _%stx198171%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self197949%_ _%stx197950%_)
        (let* ((_%g197952197977%_
                (lambda (_%g197953197974%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197953197974%_))))
               (_%g197951198167%_
                (lambda (_%g197953197980%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197953197980%_))
                      (let ((_%e197958197982%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197953197980%_))))
                        (let ((_%hd197959197985%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197958197982%_)))
                              (_%tl197960197987%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197958197982%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197960197987%_))
                              (let ((_%e197961197990%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197960197987%_))))
                                (let ((_%hd197962197993%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197961197990%_)))
                                      (_%tl197963197995%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197961197990%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197963197995%_))
                                      (let ((_%e197964197998%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197963197995%_))))
                                        (let ((_%hd197965198001%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197964197998%_)))
                                              (_%tl197966198003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197964197998%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197966198003%_))
                                              (let ((_%e197967198006%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197966198003%_))))
                                                (let ((_%hd197968198009%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197967198006%_)))
                                                      (_%tl197969198011%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197967198006%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197969198011%_))
                                                      (let ((_%e197970198014%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197969198011%_))))
                (let ((_%hd197971198017%_
                       (let () (declare (not safe)) (##car _%e197970198014%_)))
                      (_%tl197972198019%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197970198014%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197972198019%_))
                      ((lambda (_%g197954198022%_
                                _%g197955198023%_
                                _%g197956198024%_
                                _%g197957198025%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self197949%_
                                            _%g197955198023%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self197949%_
                                                  _%g197954198022%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self197949%_
                                                        _%g197956198024%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp198046%_ ((_%rest198049%_
                                                 (cons _%g197956198024%_
                                                       (cons _%g197954198022%_
                                                             (cons _%g197955198023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind198051%_ '())
                                                (_%args198052%_ '()))
                               (let* ((_%rest198053198061%_ _%rest198049%_)
                                      (_%else198055198069%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind198051%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp206394 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (foldr__0 cons __tmp206394 _%args198052%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K198057198155%_
                                       (lambda (_%rest198072%_ _%e198073%_)
                                         (let* ((_%__stx206075206076%_
                                                 _%e198073%_)
                                                (_%g198078198096%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx206075206076%_)))))
                                           (let ((_%__kont206077206078%_
                                                  (lambda ()
                                                    (_%lp198046%_
                                                     _%rest198072%_
                                                     _%bind198051%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e198073%_))
                                                           _%args198052%_))))
                                                 (_%__kont206079206080%_
                                                  (lambda ()
                                                    (_%lp198046%_
                                                     _%rest198072%_
                                                     _%bind198051%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e198073%_))
                                                           _%args198052%_))))
                                                 (_%__kont206081206082%_
                                                  (lambda ()
                                                    (let ((_%tmp198103%_
                                                           (let ((__tmp206395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp206395))))
              (_%lp198046%_
               _%rest198072%_
               (cons (cons _%tmp198103%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e198073%_))
                                 '()))
                     _%bind198051%_)
               (cons _%tmp198103%_ _%args198052%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx206075206076%_))
                                                 (let ((_%e198080198134%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx206075206076%_))))
                                                   (let ((_%tl198082198139%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e198080198134%_)))
                                                         (_%hd198081198137%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e198080198134%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd198081198137%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd198081198137%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl198082198139%_))
                         (let ((_%e198083198142%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl198082198139%_))))
                           (let ((_%tl198085198147%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e198083198142%_)))
                                 (_%hd198084198145%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e198083198142%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl198085198147%_))
                                 (_%__kont206077206078%_)
                                 (_%__kont206081206082%_))))
                         (_%__kont206081206082%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd198081198137%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl198082198139%_))
                             (let ((_%e198089198119%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl198082198139%_))))
                               (let ((_%tl198091198124%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e198089198119%_)))
                                     (_%hd198090198122%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e198089198119%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl198091198124%_))
                                     (_%__kont206079206080%_)
                                     (_%__kont206081206082%_))))
                             (_%__kont206081206082%_))
                         (_%__kont206081206082%_)))
                 (_%__kont206081206082%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont206081206082%_)))))))
                                 (if (pair? _%rest198053198061%_)
                                     (let ((_%hd198058198158%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest198053198061%_)))
                                           (_%tl198059198160%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest198053198061%_))))
                                       (let* ((_%e198163%_ _%hd198058198158%_)
                                              (_%rest198165%_
                                               _%tl198059198160%_))
                                         (_%K198057198155%_
                                          _%rest198165%_
                                          _%e198163%_)))
                                     (_%else198055198069%_))))))
                       _%hd197971198017%_
                       _%hd197968198009%_
                       _%hd197965198001%_
                       _%hd197962197993%_)
                      (_%g197952197977%_ _%g197953197980%_))))
              (_%g197952197977%_ _%g197953197980%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197952197977%_
                                               _%g197953197980%_))))
                                      (_%g197952197977%_ _%g197953197980%_))))
                              (_%g197952197977%_ _%g197953197980%_))))
                      (_%g197952197977%_ _%g197953197980%_)))))
          (_%g197951198167%_ _%stx197950%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self197788%_ _%stx197789%_)
        (letrec ((_%import-set-template197791%_
                  (lambda (_%in197894%_ _%phi197895%_)
                    (let ((_%iphi197897%_
                           (fx+ _%phi197895%_
                                (##direct-structure-ref
                                 _%in197894%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports197898%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in197894%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp197900%_ ((_%rest197902%_ _%imports197898%_)
                                         (_%r197903%_ '()))
                        (let* ((_%rest197904197912%_ _%rest197902%_)
                               (_%else197906197920%_ (lambda () _%r197903%_))
                               (_%K197908197937%_
                                (lambda (_%rest197923%_ _%in197924%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in197924%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi197897%_))
                                          (_%lp197900%_
                                           _%rest197923%_
                                           (cons _%in197924%_ _%r197903%_))
                                          (_%lp197900%_
                                           _%rest197923%_
                                           _%r197903%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in197924%_
                                             'gx#module-import::t))
                                          (let ((_%iphi197928%_
                                                 (fx+ _%phi197895%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in197924%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi197928%_))
                                                (_%lp197900%_
                                                 _%rest197923%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in197924%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r197903%_))
                                                (_%lp197900%_
                                                 _%rest197923%_
                                                 _%r197903%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in197924%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi197931%_
                                                     (fx+ _%iphi197897%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in197924%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi197931%_))
                                                    (_%lp197900%_
                                                     _%rest197923%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in197924%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r197903%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi197931%_))
                                                        (_%lp197900%_
                                                         _%rest197923%_
                                                         (let ((__tmp206396
                                                                (_%import-set-template197791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in197924%_
                         _%iphi197897%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r197903%_ __tmp206396)))
                (_%lp197900%_ _%rest197923%_ _%r197903%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp197900%_
                                               _%rest197923%_
                                               _%r197903%_)))))))
                          (if (pair? _%rest197904197912%_)
                              (let ((_%hd197909197940%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest197904197912%_)))
                                    (_%tl197910197942%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest197904197912%_))))
                                (let* ((_%in197945%_ _%hd197909197940%_)
                                       (_%rest197947%_ _%tl197910197942%_))
                                  (_%K197908197937%_
                                   _%rest197947%_
                                   _%in197945%_)))
                              (_%else197906197920%_))))))))
          (let* ((_%g197793197803%_
                  (lambda (_%g197794197800%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197794197800%_))))
                 (_%g197792197891%_
                  (lambda (_%g197794197806%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197794197806%_))
                        (let ((_%e197796197808%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197794197806%_))))
                          (let ((_%hd197797197811%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197796197808%_)))
                                (_%tl197798197813%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197796197808%_))))
                            ((lambda (_%g197795197816%_)
                               (let ((_%ht197827%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp197829%_ ((_%rest197831%_
                                                     _%g197795197816%_)
                                                    (_%loads197832%_ '()))
                                   (letrec ((_%K197834%_
                                             (lambda (_%ctx197884%_
                                                      _%rest197885%_)
                                               (let ((_%id197887%_
                                                      (##structure-ref
                                                       _%ctx197884%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht197827%_
                                                        _%id197887%_))
                                                     (_%lp197829%_
                                                      _%rest197885%_
                                                      _%loads197832%_)
                                                     (let ((_%rt197889%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id197887%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht197827%_
                                                          _%id197887%_
                                                          _%rt197889%_))
                                                       (_%lp197829%_
                                                        _%rest197885%_
                                                        (cons _%rt197889%_
                                                              _%loads197832%_))))))))
                                     (let* ((_%rest197835197843%_
                                             _%rest197831%_)
                                            (_%else197837197855%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp206398
                                                            (lambda (_%g197850197852%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g197850197852%_)))
                   (__tmp206397 (reverse _%loads197832%_)))
               (declare (not safe))
               (##map __tmp206398 __tmp206397)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K197839197872%_
                                             (lambda (_%rest197858%_
                                                      _%in197859%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in197859%_
                                                      'gx#module-context::t))
                                                   (_%K197834%_
                                                    _%in197859%_
                                                    _%rest197858%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in197859%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in197859%_
                               '3
                               '#f
                               '#f)))
                   (_%K197834%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in197859%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest197858%_)
                   (_%lp197829%_ _%rest197858%_ _%loads197832%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in197859%_
                      'gx#import-set::t))
                   (let ((_%phi197864%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in197859%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi197864%_)
                         (_%K197834%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in197859%_
                             '1
                             '#f
                             '#f))
                          _%rest197858%_)
                         (if (fxpositive? _%phi197864%_)
                             (let ((_%deps197868%_
                                    (_%import-set-template197791%_
                                     _%in197859%_
                                     '0)))
                               (_%lp197829%_
                                (let ()
                                  (declare (not safe))
                                  (foldl__0
                                   cons
                                   _%rest197858%_
                                   _%deps197868%_))
                                _%loads197832%_))
                             (_%lp197829%_ _%rest197858%_ _%loads197832%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx197789%_
                      _%in197859%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest197835197843%_)
                                           (let ((_%hd197840197875%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest197835197843%_)))
                                                 (_%tl197841197877%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest197835197843%_))))
                                             (let* ((_%in197880%_
                                                     _%hd197840197875%_)
                                                    (_%rest197882%_
                                                     _%tl197841197877%_))
                                               (_%K197839197872%_
                                                _%rest197882%_
                                                _%in197880%_)))
                                           (_%else197837197855%_)))))))
                             _%tl197798197813%_)))
                        (_%g197793197803%_ _%g197794197806%_)))))
            (_%g197792197891%_ _%stx197789%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self197602%_ _%stx197603%_)
        (letrec ((_%add-lift!197605%_
                  (lambda (_%expr197786%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr197786%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote197606%_
                  (lambda (_%id197783%_ _%marks197784%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id197783%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks197784%_
                                                        '()))))))))
                 (_%generate-simple197607%_
                  (lambda (_%stxq197778%_)
                    (let ((_%gid197780%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid197781%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq197778%_))))
                      (_%add-lift!197605%_
                       (cons 'define
                             (cons _%gid197780%_
                                   (cons (_%generate-syntax-quote197606%_
                                          _%qid197781%_
                                          ''())
                                         '()))))
                      (let ((__tmp206399
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp206399 _%stxq197778%_ _%gid197780%_))
                      _%gid197780%_)))
                 (_%generate-serialized197608%_
                  (lambda (_%stxq197768%_ _%marks197769%_)
                    (let* ((_%mark-refs197771%_
                            (map _%generate-mark197609%_ _%marks197769%_))
                           (_%gid197773%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid197775%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq197768%_))))
                      (_%add-lift!197605%_
                       (cons 'define
                             (cons _%gid197773%_
                                   (cons (_%generate-syntax-quote197606%_
                                          _%qid197775%_
                                          (cons 'list _%mark-refs197771%_))
                                         '()))))
                      (let ((__tmp206400
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp206400 _%stxq197768%_ _%gid197773%_))
                      _%gid197773%_)))
                 (_%generate-mark197609%_
                  (lambda (_%mark197753%_)
                    (let ((_%$e197755%_
                           (let ((__tmp206401
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp206401 _%mark197753%_))))
                      (if _%$e197755%_
                          _%$e197755%_
                          (let* ((_%gid197759%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr197761%_
                                  (_%serialize-mark197610%_ _%mark197753%_))
                                 (_%ctx197763%_
                                  (let ((__tmp206402
                                         (##structure-ref
                                          _%mark197753%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp206402)))
                                 (_%ctx-ref197765%_
                                  (if (eq? _%ctx197763%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref197611%_
                                                               _%ctx197763%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp206403
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp206403
                               _%mark197753%_
                               _%gid197759%_))
                            (_%add-lift!197605%_
                             (cons 'define
                                   (cons _%gid197759%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr197761%_ '()))
                   (cons _%ctx-ref197765%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid197759%_)))))
                 (_%serialize-mark197610%_
                  (lambda (_%mark197701%_)
                    (letrec ((_%quote-e197703%_
                              (lambda (_%sym197751%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym197751%_))
                                    _%sym197751%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym197751%_))))))
                      (let* ((_%mark197704197713%_ _%mark197701%_)
                             (_%E197706197716%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark197704197713%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K197707197728%_
                              (lambda (_%trace197719%_
                                       _%phi197720%_
                                       _%ctx197721%_
                                       _%subst197722%_)
                                (let ((_%subs197724%_
                                       (if _%subst197722%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst197722%_))
                                           '())))
                                  (cons _%phi197720%_
                                        (let ((__tmp206404
                                               (lambda (_%pair197726%_)
                                                 (cons (_%quote-e197703%_
                                                        (car _%pair197726%_))
                                                       (_%quote-e197703%_
                                                        (cdr _%pair197726%_))))))
                                          (declare (not safe))
                                          (##map __tmp206404
                                                 _%subs197724%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark197704197713%_
                               'gx#expander-mark::t))
                            (let* ((_%e197708197731%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197704197713%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst197734%_ _%e197708197731%_)
                                   (_%e197709197736%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197704197713%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx197739%_ _%e197709197736%_)
                                   (_%e197710197741%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197704197713%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi197744%_ _%e197710197741%_)
                                   (_%e197711197746%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark197704197713%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace197749%_ _%e197711197746%_))
                              (_%K197707197728%_
                               _%trace197749%_
                               _%phi197744%_
                               _%ctx197739%_
                               _%subst197734%_))
                            (_%E197706197716%_))))))
                 (_%context-ref197611%_
                  (lambda (_%ctx197688%_)
                    (if (let ((__tmp206405
                               (##structure-ref
                                _%ctx197688%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp206405
                           'gx#module-context::t))
                        (let ((_%ctx-ref197690%_
                               (_%context-ref-nested197613%_ _%ctx197688%_))
                              (_%ctx-origin197691%_
                               (_%context-ref-origin197612%_ _%ctx197688%_))
                              (_%origin197692%_
                               (_%context-ref-origin197612%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin197692%_ _%ctx-origin197691%_)
                              (let ((_%ref197694%_
                                     (_%context-ref-nested197613%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp197696%_ ((_%ref197698%_
                                                    (cdr _%ref197694%_))
                                                   (_%ctx-ref197699%_
                                                    (cdr _%ctx-ref197690%_)))
                                  (if (and (pair? _%ref197698%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref197698%_))
                                                (car _%ctx-ref197699%_)))
                                      (_%lp197696%_
                                       (cdr _%ref197698%_)
                                       (cdr _%ctx-ref197699%_))
                                      (cons '#f _%ctx-ref197699%_))))
                              _%ctx-ref197690%_))
                        (let ((__tmp206406
                               (##structure-ref
                                _%ctx197688%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp206406)))))
                 (_%context-ref-origin197612%_
                  (lambda (_%ctx197680%_)
                    (let _%lp197682%_ ((_%ctx197684%_ _%ctx197680%_))
                      (let ((_%super197686%_
                             (##structure-ref
                              _%ctx197684%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super197686%_
                               'gx#module-context::t))
                            (_%lp197682%_ _%super197686%_)
                            _%ctx197684%_)))))
                 (_%context-ref-nested197613%_
                  (lambda (_%ctx197671%_)
                    (let _%lp197673%_ ((_%ctx197675%_ _%ctx197671%_)
                                       (_%r197676%_ '()))
                      (let ((_%super197678%_
                             (##structure-ref
                              _%ctx197675%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super197678%_
                               'gx#module-context::t))
                            (_%lp197673%_
                             _%super197678%_
                             (cons (car (##structure-ref
                                         _%ctx197675%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r197676%_))
                            (cons (let ((__tmp206407
                                         (##structure-ref
                                          _%ctx197675%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp206407))
                                  _%r197676%_)))))))
          (let* ((_%g197615197628%_
                  (lambda (_%g197616197625%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197616197625%_))))
                 (_%g197614197668%_
                  (lambda (_%g197616197631%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197616197631%_))
                        (let ((_%e197618197633%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197616197631%_))))
                          (let ((_%hd197619197636%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197618197633%_)))
                                (_%tl197620197638%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197618197633%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197620197638%_))
                                (let ((_%e197621197641%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197620197638%_))))
                                  (let ((_%hd197622197644%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197621197641%_)))
                                        (_%tl197623197646%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197621197641%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197623197646%_))
                                        ((lambda (_%g197617197649%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g197617197649%_))
                                               (let ((_%$e197662%_
                                                      (let ((__tmp206408
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp206408 _%g197617197649%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e197662%_
                                                     _%$e197662%_
                                                     (let ((_%marks197666%_
                                                            (##direct-structure-ref
                                                             _%g197617197649%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks197666%_)
                                                           (_%generate-simple197607%_
                                                            _%g197617197649%_)
                                                           (_%generate-serialized197608%_
                                                            _%g197617197649%_
                                                            _%marks197666%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g197617197649%_))))
                                         _%hd197622197644%_)
                                        (_%g197615197628%_
                                         _%g197616197631%_))))
                                (_%g197615197628%_ _%g197616197631%_))))
                        (_%g197615197628%_ _%g197616197631%_)))))
            (_%g197614197668%_ _%stx197603%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self197534%_ _%stx197535%_)
        (let* ((_%g197537197554%_
                (lambda (_%g197538197551%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197538197551%_))))
               (_%g197536197599%_
                (lambda (_%g197538197557%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197538197557%_))
                      (let ((_%e197541197559%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197538197557%_))))
                        (let ((_%hd197542197562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197541197559%_)))
                              (_%tl197543197564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197541197559%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197543197564%_))
                              (let ((_%e197544197567%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197543197564%_))))
                                (let ((_%hd197545197570%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197544197567%_)))
                                      (_%tl197546197572%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197544197567%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197546197572%_))
                                      (let ((_%e197547197575%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197546197572%_))))
                                        (let ((_%hd197548197578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197547197575%_)))
                                              (_%tl197549197580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197547197575%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197549197580%_))
                                              ((lambda (_%g197539197583%_
                                                        _%g197540197584%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g197540197584%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self197534%_
                              _%g197539197583%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197548197578%_
                                               _%hd197545197570%_)
                                              (_%g197537197554%_
                                               _%g197538197557%_))))
                                      (_%g197537197554%_ _%g197538197557%_))))
                              (_%g197537197554%_ _%g197538197557%_))))
                      (_%g197537197554%_ _%g197538197557%_)))))
          (_%g197536197599%_ _%stx197535%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self197483%_ _%stx197484%_)
        (let* ((_%g197486197496%_
                (lambda (_%g197487197493%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197487197493%_))))
               (_%g197485197531%_
                (lambda (_%g197487197499%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197487197499%_))
                      (let ((_%e197489197501%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197487197499%_))))
                        (let ((_%hd197490197504%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197489197501%_)))
                              (_%tl197491197506%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197489197501%_))))
                          ((lambda (_%g197488197509%_)
                             (let* ((_%c-body197523%_
                                     (map (lambda (_%g197518197520%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self197483%_
                                               _%g197518197520%_)))
                                          _%g197488197509%_))
                                    (_%c-body197528%_
                                     (let ((__tmp206409
                                            (lambda (_%$obj197525%_)
                                              (not (eq? _%$obj197525%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp206409
                                        _%c-body197523%_))))
                               (cons '%#begin _%c-body197528%_)))
                           _%tl197491197506%_)))
                      (_%g197486197496%_ _%g197487197499%_)))))
          (_%g197485197531%_ _%stx197484%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self197388%_ _%stx197389%_)
        (let* ((_%g197391197401%_
                (lambda (_%g197392197398%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197392197398%_))))
               (_%g197390197480%_
                (lambda (_%g197392197404%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197392197404%_))
                      (let ((_%e197394197406%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197392197404%_))))
                        (let ((_%hd197395197409%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197394197406%_)))
                              (_%tl197396197411%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197394197406%_))))
                          ((lambda (_%g197393197414%_)
                             (let* ((_%phi197424%_
                                     (let ((__tmp206410
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp206410 '1)))
                                    (_%block197426%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self197388%_ 'state))
                                      _%phi197424%_))
                                    (_%compiled197429%_
                                     (let ((__tmp206411
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self197388%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g197393197414%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp206411
                                        gx#current-expander-phi
                                        _%phi197424%_)))
                                    (_%g197432197442%_
                                     (lambda (_%g197433197439%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g197433197439%_))))
                                    (_%g197431197477%_
                                     (lambda (_%g197433197445%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g197433197445%_))
                                           (let ((_%e197435197447%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g197433197445%_))))
                                             (let ((_%hd197436197450%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e197435197447%_)))
                                                   (_%tl197437197452%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e197435197447%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd197436197450%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd197436197450%_))
                                                       ((lambda (_%g197434197455%_)
                                                          (let ((_%c-body197472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj197469%_)
                                   (not (eq? _%$obj197469%_ '#!void)))
                                 _%g197434197455%_)))
                    (if _%block197426%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block197426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body197472%_))
                        (if (null? _%c-body197472%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body197472%_)))))
                _%tl197437197452%_)
               (_%g197432197442%_ _%g197433197445%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g197432197442%_
                                                    _%g197433197445%_))))
                                           (_%g197432197442%_
                                            _%g197433197445%_)))))
                               (_%g197431197477%_ _%compiled197429%_)))
                           _%tl197396197411%_)))
                      (_%g197391197401%_ _%g197392197404%_)))))
          (_%g197390197480%_ _%stx197389%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self197319%_ _%stx197320%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self197319%_ 'state)))
        (let* ((_%g197322197336%_
                (lambda (_%g197323197333%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197323197333%_))))
               (_%g197321197385%_
                (lambda (_%g197323197339%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197323197339%_))
                      (let ((_%e197326197341%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197323197339%_))))
                        (let ((_%hd197327197344%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197326197341%_)))
                              (_%tl197328197346%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197326197341%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197328197346%_))
                              (let ((_%e197329197349%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197328197346%_))))
                                (let ((_%hd197330197352%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197329197349%_)))
                                      (_%tl197331197354%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197329197349%_))))
                                  ((lambda (_%g197324197357%_
                                            _%g197325197358%_)
                                     (let ((_%key197371%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g197325197358%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key197371%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx197320%_
                                              _%g197325197358%_
                                              _%key197371%_)))
                                       (let* ((_%ctx197373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g197325197358%_)))
                                              (_%code197376%_
                                               (let ((__tmp206412
                                                      (lambda ()
                                                        (let ((__tmp206413
                                                               (##structure-ref
                                                                _%ctx197373%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self197319%_
                                                           __tmp206413)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp206412
                                                  gx#current-expander-context
                                                  _%ctx197373%_)))
                                              (_%rt197378%_
                                               (let ((__tmp206414
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp206414
                                                  _%ctx197373%_)))
                                              (_%loader197380%_
                                               (if _%rt197378%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt197378%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid197382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g197325197358%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self197319%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid197382%_
                                                     (cons _%code197376%_
                                                           _%loader197380%_))))))
                                   _%tl197331197354%_
                                   _%hd197330197352%_)))
                              (_%g197322197336%_ _%g197323197339%_))))
                      (_%g197322197336%_ _%g197323197339%_)))))
          (_%g197321197385%_ _%stx197320%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx197306%_ _%context-chain197307%_)
        (let _%lp197309%_ ((_%ctx197311%_ _%ctx197306%_) (_%path197312%_ '()))
          (let ((_%super197314%_
                 (##structure-ref _%ctx197311%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super197314%_ _%context-chain197307%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx197311%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path197312%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super197314%_
                       'gx#module-context::t))
                    (_%lp197309%_
                     _%super197314%_
                     (cons (car (##structure-ref
                                 _%ctx197311%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path197312%_))
                    (cons (let ((__tmp206415
                                 (##structure-ref
                                  _%ctx197311%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp206415))
                          _%path197312%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp197299%_ ((_%ctx197301%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r197302%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx197301%_ 'gx#module-context::t))
              (_%lp197299%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx197301%_ '3 '#f '#f))
               (cons _%ctx197301%_ _%r197302%_))
              _%r197302%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self197064%_ _%stx197065%_)
        (letrec* ((_%context-chain197067%_ (gxc#current-context-chain))
                  (_%make-import-spec197068%_
                   (lambda (_%in197236%_)
                     (let* ((_%in197237197249%_ _%in197236%_)
                            (_%E197239197252%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in197237197249%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K197240197262%_
                             (lambda (_%phi197255%_
                                      _%name197256%_
                                      _%src-name197257%_
                                      _%src-phi197258%_
                                      _%src-key197259%_
                                      _%src-ctx197260%_)
                               (cons _%phi197255%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name197256%_))
                                           (cons _%src-phi197258%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name197257%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in197237197249%_
                              'gx#module-import::t))
                           (let ((_%e197241197265%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in197237197249%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e197241197265%_
                                    'gx#module-export::t))
                                 (let* ((_%e197244197268%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197241197265%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx197271%_ _%e197244197268%_)
                                        (_%e197245197273%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197241197265%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key197276%_ _%e197245197273%_)
                                        (_%e197246197278%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197241197265%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi197281%_ _%e197246197278%_)
                                        (_%e197247197283%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197241197265%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name197286%_ _%e197247197283%_)
                                        (_%e197242197288%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in197237197249%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name197291%_ _%e197242197288%_)
                                        (_%e197243197293%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in197237197249%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi197296%_ _%e197243197293%_))
                                   (_%K197240197262%_
                                    _%phi197296%_
                                    _%name197291%_
                                    _%src-name197286%_
                                    _%src-phi197281%_
                                    _%src-key197276%_
                                    _%src-ctx197271%_))
                                 (_%E197239197252%_)))
                           (_%E197239197252%_)))))
                  (_%make-import-path197069%_
                   (lambda (_%ctx197234%_)
                     (gxc#generate-meta-import-path
                      _%ctx197234%_
                      _%context-chain197067%_)))
                  (_%make-import-spec-in197070%_
                   (lambda (_%ctx197231%_ _%in197232%_)
                     (cons 'spec:
                           (cons (_%make-import-path197069%_ _%ctx197231%_)
                                 (reverse _%in197232%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self197064%_ 'state)))
          (let* ((_%g197072197082%_
                  (lambda (_%g197073197079%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197073197079%_))))
                 (_%g197071197228%_
                  (lambda (_%g197073197085%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197073197085%_))
                        (let ((_%e197075197087%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197073197085%_))))
                          (let ((_%hd197076197090%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197075197087%_)))
                                (_%tl197077197092%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197075197087%_))))
                            ((lambda (_%g197074197095%_)
                               (let _%lp197106%_ ((_%rest197108%_
                                                   _%g197074197095%_)
                                                  (_%current-src197109%_ '#f)
                                                  (_%current-in197110%_ '())
                                                  (_%r197111%_ '()))
                                 (let* ((_%rest197112197120%_ _%rest197108%_)
                                        (_%else197114197130%_
                                         (lambda ()
                                           (let ((_%r197128%_
                                                  (if _%current-src197109%_
                                                      (cons (_%make-import-spec-in197070%_
                                                             _%current-src197109%_
                                                             _%current-in197110%_)
                                                            _%r197111%_)
                                                      _%r197111%_)))
                                             (cons '%#import
                                                   (reverse _%r197128%_)))))
                                        (_%K197116197216%_
                                         (lambda (_%rest197133%_ _%in197134%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in197134%_
                                                  'gx#module-import::t))
                                               (let* ((_%in197136197143%_
                                                       _%in197134%_)
                                                      (_%E197138197146%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in197136197143%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K197139197154%_
               (lambda (_%src-ctx197149%_)
                 (if (eq? _%current-src197109%_ _%src-ctx197149%_)
                     (_%lp197106%_
                      _%rest197133%_
                      _%current-src197109%_
                      (cons (_%make-import-spec197068%_ _%in197134%_)
                            _%current-in197110%_)
                      _%r197111%_)
                     (if _%current-src197109%_
                         (_%lp197106%_
                          _%rest197133%_
                          _%src-ctx197149%_
                          (cons (_%make-import-spec197068%_ _%in197134%_) '())
                          (cons (_%make-import-spec-in197070%_
                                 _%current-src197109%_
                                 _%current-in197110%_)
                                _%r197111%_))
                         (_%lp197106%_
                          _%rest197133%_
                          _%src-ctx197149%_
                          (cons (_%make-import-spec197068%_ _%in197134%_) '())
                          _%r197111%_)))))
              (_%e197140197157%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in197136197143%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e197140197157%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e197141197160%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e197140197157%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx197163%_ _%e197141197160%_))
               (_%K197139197154%_ _%src-ctx197163%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E197138197146%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in197134%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi197166%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in197134%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src197168%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in197134%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in197208%_
                                                           (let* ((_%g197169197178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path197069%_ _%src197168%_))
                          (_%E197172197182%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g197169197178%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K197174197198%_
                            (lambda (_%path197196%_) _%path197196%_))
                           (_%K197173197188%_
                            (lambda (_%path197186%_)
                              (cons 'in: _%path197186%_))))
                       (if (pair? _%g197169197178%_)
                           (let ((_%tl197176197203%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g197169197178%_)))
                                 (_%hd197175197201%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g197169197178%_))))
                             (if (null? _%tl197176197203%_)
                                 (let ((_%path197206%_ _%hd197175197201%_))
                                   (_%K197174197198%_ _%path197206%_))
                                 (let ((_%path197191%_ _%g197169197178%_))
                                   (_%K197173197188%_ _%path197191%_))))
                           (let ((_%path197191%_ _%g197169197178%_))
                             (_%K197173197188%_ _%path197191%_))))))
                  (_%r197210%_
                   (if _%current-src197109%_
                       (cons (_%make-import-spec-in197070%_
                              _%current-src197109%_
                              _%current-in197110%_)
                             _%r197111%_)
                       _%r197111%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp197106%_
                                                      _%rest197133%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi197166%_)
                                                                _%src-in197208%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi197166%_
                                    (cons _%src-in197208%_ '()))))
                    _%r197210%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in197134%_
                                                          'gx#module-context::t))
                                                       (let ((_%r197214%_
                                                              (if _%current-src197109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in197070%_
                                 _%current-src197109%_
                                 _%current-in197110%_)
                                _%r197111%_)
                          _%r197111%_)))
                 (_%lp197106%_
                  _%rest197133%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path197069%_ _%in197134%_))
                        _%r197214%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest197112197120%_)
                                       (let ((_%hd197117197219%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest197112197120%_)))
                                             (_%tl197118197221%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest197112197120%_))))
                                         (let* ((_%in197224%_
                                                 _%hd197117197219%_)
                                                (_%rest197226%_
                                                 _%tl197118197221%_))
                                           (_%K197116197216%_
                                            _%rest197226%_
                                            _%in197224%_)))
                                       (_%else197114197130%_)))))
                             _%tl197077197092%_)))
                        (_%g197072197082%_ _%g197073197085%_)))))
            (_%g197071197228%_ _%stx197065%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self196874%_ _%stx196875%_)
        (letrec* ((_%context-chain196877%_ (gxc#current-context-chain))
                  (_%make-import-path196878%_
                   (lambda (_%ctx197062%_)
                     (gxc#generate-meta-import-path
                      _%ctx197062%_
                      _%context-chain196877%_))))
          (let* ((_%g196880196890%_
                  (lambda (_%g196881196887%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196881196887%_))))
                 (_%g196879197059%_
                  (lambda (_%g196881196893%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196881196893%_))
                        (let ((_%e196883196895%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196881196893%_))))
                          (let ((_%hd196884196898%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196883196895%_)))
                                (_%tl196885196900%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196883196895%_))))
                            ((lambda (_%g196882196903%_)
                               (let _%lp196914%_ ((_%rest196916%_
                                                   _%g196882196903%_)
                                                  (_%r196917%_ '()))
                                 (let* ((_%rest196918196926%_ _%rest196916%_)
                                        (_%else196920196934%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r196917%_))))
                                        (_%K196922197047%_
                                         (lambda (_%rest196937%_ _%out196938%_)
                                           (let* ((_%out196939196952%_
                                                   _%out196938%_)
                                                  (_%E196942196956%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out196939196952%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K196946197026%_
                                                    (lambda (_%name197022%_
                                                             _%phi197023%_
                                                             _%key197024%_)
                                                      (_%lp196914%_
                                                       _%rest196937%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi197023%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key197024%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name197022%_))
                                             '()))))
                     _%r196917%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K196943197006%_
                                                    (lambda (_%phi196960%_
                                                             _%src196961%_)
                                                      (let* ((_%out197001%_
                                                              (if _%src196961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g196962196971%_
                                              (_%make-import-path196878%_
                                               _%src196961%_))
                                             (_%E196965196975%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g196962196971%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K196967196991%_
                                               (lambda (_%path196989%_)
                                                 _%path196989%_))
                                              (_%K196966196981%_
                                               (lambda (_%path196979%_)
                                                 (cons 'in: _%path196979%_))))
                                          (if (pair? _%g196962196971%_)
                                              (let ((_%tl196969196996%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g196962196971%_)))
                                                    (_%hd196968196994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g196962196971%_))))
                                                (if (null? _%tl196969196996%_)
                                                    (let ((_%path196999%_
                                                           _%hd196968196994%_))
                                                      (_%K196967196991%_
                                                       _%path196999%_))
                                                    (let ((_%path196984%_
                                                           _%g196962196971%_))
                                                      (_%K196966196981%_
                                                       _%path196984%_))))
                                              (let ((_%path196984%_
                                                     _%g196962196971%_))
                                                (_%K196966196981%_
                                                 _%path196984%_)))))
                                      '()))
                          '#t))
                     (_%out197003%_
                      (if (fxzero? _%phi196960%_)
                          _%out197001%_
                          (cons 'phi:
                                (cons _%phi196960%_
                                      (cons _%out197001%_ '()))))))
                (_%lp196914%_
                 _%rest196937%_
                 (cons _%out197003%_ _%r196917%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match196941197019%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out196939196952%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e196944197009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out196939196952%_
                               '1
                               '#f
                               '#f)))
                           (_%e196945197014%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out196939196952%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src197012%_ _%e196944197009%_)
                            (_%phi197017%_ _%e196945197014%_))
                        (_%K196943197006%_ _%phi197017%_ _%src197012%_)))
                    (_%E196942196956%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out196939196952%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e196947197029%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out196939196952%_
                        '1
                        '#f
                        '#f)))
                    (_%e196948197032%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out196939196952%_
                        '2
                        '#f
                        '#f)))
                    (_%e196949197037%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out196939196952%_
                        '3
                        '#f
                        '#f)))
                    (_%e196950197042%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out196939196952%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key197035%_ _%e196948197032%_)
                     (_%phi197040%_ _%e196949197037%_)
                     (_%name197045%_ _%e196950197042%_))
                 (_%K196946197026%_
                  _%name197045%_
                  _%phi197040%_
                  _%key197035%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match196941197019%_))))))))
                                   (if (pair? _%rest196918196926%_)
                                       (let ((_%hd196923197050%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest196918196926%_)))
                                             (_%tl196924197052%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest196918196926%_))))
                                         (let* ((_%out197055%_
                                                 _%hd196923197050%_)
                                                (_%rest197057%_
                                                 _%tl196924197052%_))
                                           (_%K196922197047%_
                                            _%rest197057%_
                                            _%out197055%_)))
                                       (_%else196920196934%_)))))
                             _%tl196885196900%_)))
                        (_%g196880196890%_ _%g196881196893%_)))))
            (_%g196879197059%_ _%stx196875%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self196835%_ _%stx196836%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self196835%_ 'state)))
        (let* ((_%g196838196848%_
                (lambda (_%g196839196845%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196839196845%_))))
               (_%g196837196871%_
                (lambda (_%g196839196851%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196839196851%_))
                      (let ((_%e196841196853%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196839196851%_))))
                        (let ((_%hd196842196856%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196841196853%_)))
                              (_%tl196843196858%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196841196853%_))))
                          ((lambda (_%g196840196861%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g196840196861%_)))
                           _%tl196843196858%_)))
                      (_%g196838196848%_ _%g196839196851%_)))))
          (_%g196837196871%_ _%stx196836%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self196710%_ _%stx196711%_)
        (letrec ((_%generate1196713%_
                  (lambda (_%id196830%_ _%eid196831%_)
                    (let ((_%eid196833%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid196831%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid196833%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx196711%_
                             _%eid196833%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id196830%_))
                            (cons _%eid196833%_ '()))))))
          (let* ((_%g196715196743%_
                  (lambda (_%g196716196740%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196716196740%_))))
                 (_%g196714196827%_
                  (lambda (_%g196716196746%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196716196746%_))
                        (let ((_%e196719196748%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196716196746%_))))
                          (let ((_%hd196720196751%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196719196748%_)))
                                (_%tl196721196753%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196719196748%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl196721196753%_))
                                (let ((_g206416_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl196721196753%_
                                          '0))))
                                  (begin
                                    (let ((_g206417_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g206416_)
                                                 (##values-length _g206416_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g206417_ 2)))
                                          (error "Context expects 2 values"
                                                 _g206417_)))
                                    (let ((_%target196722196756%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206416_ 0)))
                                          (_%tl196724196758%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206416_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196724196758%_))
                                          (letrec ((_%loop196725196761%_
                                                    (lambda (_%hd196723196764%_
                                                             _%eid196729196766%_
                                                             _%id196730196767%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd196723196764%_))
                                                          (let ((_%e196726196769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd196723196764%_))))
                    (let ((_%lp-hd196727196772%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196726196769%_)))
                          (_%lp-tl196728196774%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196726196769%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd196727196772%_))
                          (let ((_%e196733196777%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd196727196772%_))))
                            (let ((_%hd196734196780%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196733196777%_)))
                                  (_%tl196735196782%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196733196777%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196735196782%_))
                                  (let ((_%e196736196785%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl196735196782%_))))
                                    (let ((_%hd196737196788%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196736196785%_)))
                                          (_%tl196738196790%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196736196785%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl196738196790%_))
                                          (_%loop196725196761%_
                                           _%lp-tl196728196774%_
                                           (cons _%hd196737196788%_
                                                 _%eid196729196766%_)
                                           (cons _%hd196734196780%_
                                                 _%id196730196767%_))
                                          (_%g196715196743%_
                                           _%g196716196746%_))))
                                  (_%g196715196743%_ _%g196716196746%_))))
                          (_%g196715196743%_ _%g196716196746%_))))
                  (let ((_%eid196731196793%_ (reverse _%eid196729196766%_))
                        (_%id196732196794%_ (reverse _%id196730196767%_)))
                    ((lambda (_%g196717196796%_ _%g196718196797%_)
                       (cons '%#extern
                             (map _%generate1196713%_
                                  (let ((__tmp206418
                                         (lambda (_%g196812196815%_
                                                  _%g196813196817%_)
                                           (cons _%g196812196815%_
                                                 _%g196813196817%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp206418
                                     '()
                                     _%g196718196797%_))
                                  (let ((__tmp206419
                                         (lambda (_%g196819196822%_
                                                  _%g196820196824%_)
                                           (cons _%g196819196822%_
                                                 _%g196820196824%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp206419
                                     '()
                                     _%g196717196796%_)))))
                     _%eid196731196793%_
                     _%id196732196794%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop196725196761%_
                                             _%target196722196756%_
                                             '()
                                             '()))
                                          (_%g196715196743%_
                                           _%g196716196746%_)))))
                                (_%g196715196743%_ _%g196716196746%_))))
                        (_%g196715196743%_ _%g196716196746%_)))))
            (_%g196714196827%_ _%stx196711%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self196499%_ _%stx196500%_)
        (letrec ((_%generate1196502%_
                  (lambda (_%id196704%_)
                    (let ((_%eid196706%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id196704%_)))
                          (_%ident196707%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id196704%_)))
                          (_%props196708%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id196704%_))))
                      (cons '%#define-runtime
                            (cons _%ident196707%_
                                  (cons _%eid196706%_ _%props196708%_))))))
                 (_%generate*196503%_
                  (lambda (_%all196672%_)
                    (let* ((_%all196673196681%_ _%all196672%_)
                           (_%else196675196689%_
                            (lambda () (cons '%#begin _%all196672%_)))
                           (_%K196677196694%_
                            (lambda (_%one196692%_) _%one196692%_)))
                      (if (pair? _%all196673196681%_)
                          (let ((_%hd196678196697%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all196673196681%_)))
                                (_%tl196679196699%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all196673196681%_))))
                            (let ((_%one196702%_ _%hd196678196697%_))
                              (if (null? _%tl196679196699%_)
                                  (_%K196677196694%_ _%one196702%_)
                                  (_%else196675196689%_))))
                          (_%else196675196689%_))))))
          (let* ((_%g196505196522%_
                  (lambda (_%g196506196519%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g196506196519%_))))
                 (_%g196504196669%_
                  (lambda (_%g196506196525%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g196506196525%_))
                        (let ((_%e196509196527%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g196506196525%_))))
                          (let ((_%hd196510196530%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196509196527%_)))
                                (_%tl196511196532%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196509196527%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196511196532%_))
                                (let ((_%e196512196535%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl196511196532%_))))
                                  (let ((_%hd196513196538%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196512196535%_)))
                                        (_%tl196514196540%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196512196535%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196514196540%_))
                                        (let ((_%e196515196543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl196514196540%_))))
                                          (let ((_%hd196516196546%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196515196543%_)))
                                                (_%tl196517196548%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196515196543%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196517196548%_))
                                                ((lambda (_%g196507196551%_
                                                          _%g196508196552%_)
                                                   (let _%lp196568%_ ((_%rest196570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g196508196552%_)
                              (_%r196571%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx206154206155%_
                                                             _%rest196570%_)
                                                            (_%g196576196593%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx206154206155%_)))))
               (let ((_%__kont206156206157%_
                      (lambda (_%g196578196656%_)
                        (_%lp196568%_ _%g196578196656%_ _%r196571%_)))
                     (_%__kont206158206159%_
                      (lambda (_%g196583196629%_ _%g196584196630%_)
                        (_%lp196568%_
                         _%g196583196629%_
                         (cons (_%generate1196502%_ _%g196584196630%_)
                               _%r196571%_))))
                     (_%__kont206160206161%_
                      (lambda (_%g196588196605%_)
                        (_%generate*196503%_
                         (let ((__tmp206420
                                (cons (_%generate1196502%_ _%g196588196605%_)
                                      '())))
                           (declare (not safe))
                           (foldl__0 cons __tmp206420 _%r196571%_)))))
                     (_%__kont206162206163%_
                      (lambda ()
                        (_%generate*196503%_ (reverse! _%r196571%_)))))
                 (let ((_%g196574196616%_
                        (lambda ()
                          (let ((_%g196588196605%_ _%__stx206154206155%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g196588196605%_))
                                (_%__kont206160206161%_ _%g196588196605%_)
                                (_%__kont206162206163%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx206154206155%_))
                       (let ((_%e196579196645%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx206154206155%_))))
                         (let ((_%tl196581196650%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e196579196645%_)))
                               (_%hd196580196648%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e196579196645%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd196580196648%_))
                               (let ((_%e196582196653%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd196580196648%_))))
                                 (if (equal? _%e196582196653%_ '#f)
                                     (_%__kont206156206157%_
                                      _%tl196581196650%_)
                                     (_%__kont206158206159%_
                                      _%tl196581196650%_
                                      _%hd196580196648%_)))
                               (_%__kont206158206159%_
                                _%tl196581196650%_
                                _%hd196580196648%_))))
                       (let () (declare (not safe)) (_%g196574196616%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd196516196546%_
                                                 _%hd196513196538%_)
                                                (_%g196505196522%_
                                                 _%g196506196525%_))))
                                        (_%g196505196522%_
                                         _%g196506196525%_))))
                                (_%g196505196522%_ _%g196506196525%_))))
                        (_%g196505196522%_ _%g196506196525%_)))))
            (_%g196504196669%_ _%stx196500%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self196396%_ _%stx196397%_)
        (let* ((_%g196399196416%_
                (lambda (_%g196400196413%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196400196413%_))))
               (_%g196398196496%_
                (lambda (_%g196400196419%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196400196419%_))
                      (let ((_%e196403196421%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196400196419%_))))
                        (let ((_%hd196404196424%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196403196421%_)))
                              (_%tl196405196426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196403196421%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196405196426%_))
                              (let ((_%e196406196429%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196405196426%_))))
                                (let ((_%hd196407196432%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196406196429%_)))
                                      (_%tl196408196434%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196406196429%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196408196434%_))
                                      (let ((_%e196409196437%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196408196434%_))))
                                        (let ((_%hd196410196440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196409196437%_)))
                                              (_%tl196411196442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196409196437%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196411196442%_))
                                              ((lambda (_%g196401196445%_
                                                        _%g196402196446%_)
                                                 (let* ((_%eid196461%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g196402196446%_)))
                                                        (_%phi196463%_
                                                         (let ((__tmp206421
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp206421 '1)))
                (_%block196465%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self196396%_ 'state))
                  _%phi196463%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g196468196475%_
                                                           (lambda (_%g196469196472%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g196469196472%_))))
                  (_%g196467196493%_
                   (lambda (_%g196469196478%_)
                     ((lambda (_%g196470196480%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self196396%_ 'state))
                         _%phi196463%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g196470196480%_
                                     (cons _%g196401196445%_ '())))))
                      _%g196469196478%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196467196493%_
                                                      _%eid196461%_))
                                                   (if _%block196465%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block196465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g196402196446%_))
                                             (cons _%eid196461%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g196402196446%_))
                           (cons _%eid196461%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196410196440%_
                                               _%hd196407196432%_)
                                              (_%g196399196416%_
                                               _%g196400196419%_))))
                                      (_%g196399196416%_ _%g196400196419%_))))
                              (_%g196399196416%_ _%g196400196419%_))))
                      (_%g196399196416%_ _%g196400196419%_)))))
          (_%g196398196496%_ _%stx196397%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self196328%_ _%stx196329%_)
        (let* ((_%g196331196348%_
                (lambda (_%g196332196345%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196332196345%_))))
               (_%g196330196393%_
                (lambda (_%g196332196351%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196332196351%_))
                      (let ((_%e196335196353%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196332196351%_))))
                        (let ((_%hd196336196356%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196335196353%_)))
                              (_%tl196337196358%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196335196353%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196337196358%_))
                              (let ((_%e196338196361%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196337196358%_))))
                                (let ((_%hd196339196364%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196338196361%_)))
                                      (_%tl196340196366%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196338196361%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196340196366%_))
                                      (let ((_%e196341196369%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196340196366%_))))
                                        (let ((_%hd196342196372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196341196369%_)))
                                              (_%tl196343196374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196341196369%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196343196374%_))
                                              ((lambda (_%g196333196377%_
                                                        _%g196334196378%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g196334196378%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g196333196377%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196342196372%_
                                               _%hd196339196364%_)
                                              (_%g196331196348%_
                                               _%g196332196351%_))))
                                      (_%g196331196348%_ _%g196332196351%_))))
                              (_%g196331196348%_ _%g196332196351%_))))
                      (_%g196331196348%_ _%g196332196351%_)))))
          (_%g196330196393%_ _%stx196329%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self196325%_ _%stx196326%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self196325%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx196326%_)
        (gxc#generate-meta-define-values% _%self196325%_ _%stx196326%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self196322%_ _%stx196323%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self196322%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx196323%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp206423 (list)) (__tmp206422 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp206423
         '(src n open blocks)
         __tmp206422
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args196319%_
        (apply make-instance gxc#meta-state::t _%$args196319%_)))
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
      (lambda (_%self196305%_ _%ctx196306%_)
        (let ((_%self196309%_ _%self196305%_))
          (if (let ((__tmp206424
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self196309%_))))
                (declare (not safe))
                (##fx< '4 __tmp206424))
              (begin
                (let ((__tmp206425
                       (let ((__tmp206426
                              (##structure-ref
                               _%ctx196306%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp206426))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self196309%_
                   __tmp206425
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self196309%_ '1 '2 '#f '#f))
                (let ((__tmp206427
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self196309%_
                   __tmp206427
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self196309%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp206428
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self196309%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self196309%_
                       '4
                       __tmp206428))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp206430 (list)) (__tmp206429 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp206430
         '(ctx phi n code)
         __tmp206429
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args196180%_
        (apply make-instance gxc#meta-state-block::t _%$args196180%_)))
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
      (lambda (_%state196140%_ _%phi196141%_)
        (let* ((_%state196142196150%_ _%state196140%_)
               (_%E196144196153%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state196142196150%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K196145196162%_
                (lambda (_%open196156%_ _%n196157%_ _%src196158%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open196156%_ _%phi196141%_))
                      '#f
                      (let ((_%block-ref196160%_
                             (let ((__tmp206431 (number->string _%n196157%_)))
                               (declare (not safe))
                               (##string-append
                                _%src196158%_
                                '"~"
                                __tmp206431))))
                        (##structure-set!
                         _%state196140%_
                         (let () (declare (not safe)) (##fx+ _%n196157%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp206432
                               (let ((__tmp206433
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp206433
                                  _%phi196141%_
                                  _%n196157%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open196156%_ _%phi196141%_ __tmp206432))
                        _%block-ref196160%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state196142196150%_
                 'gxc#meta-state::t))
              (let* ((_%e196146196165%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state196142196150%_
                         '1
                         '#f
                         '#f)))
                     (_%src196168%_ _%e196146196165%_)
                     (_%e196147196170%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state196142196150%_
                         '2
                         '#f
                         '#f)))
                     (_%n196173%_ _%e196147196170%_)
                     (_%e196148196175%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state196142196150%_
                         '3
                         '#f
                         '#f)))
                     (_%open196178%_ _%e196148196175%_))
                (_%K196145196162%_ _%open196178%_ _%n196173%_ _%src196168%_))
              (_%E196144196153%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state196134%_ _%phi196135%_ _%stx196136%_)
        (let ((_%block196138%_
               (let ((__tmp206434
                      (##structure-ref
                       _%state196134%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp206434 _%phi196135%_))))
          (##structure-set!
           _%block196138%_
           (cons _%stx196136%_
                 (##structure-ref
                  _%block196138%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state196128%_)
        (##structure-set!
         _%state196128%_
         (let ((__tmp206437
                (lambda (_%_196130%_ _%block196131%_ _%r196132%_)
                  (cons _%block196131%_ _%r196132%_)))
               (__tmp206436
                (##structure-ref _%state196128%_ '4 gxc#meta-state::t '#f))
               (__tmp206435
                (##structure-ref _%state196128%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp206437 __tmp206436 __tmp206435))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state196128%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state196081%_)
        (gxc#meta-state-end-phi! _%state196081%_)
        (let ((__tmp206439
               (lambda (_%block196083%_ _%r196084%_)
                 (let* ((_%block196085196094%_ _%block196083%_)
                        (_%E196087196097%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block196085196094%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K196088196105%_
                         (lambda (_%code196100%_
                                  _%n196101%_
                                  _%phi196102%_
                                  _%ctx196103%_)
                           (if (null? _%code196100%_)
                               _%r196084%_
                               (cons (cons _%ctx196103%_
                                           (cons _%phi196102%_
                                                 (cons _%n196101%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code196100%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r196084%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block196085196094%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e196089196108%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196085196094%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx196111%_ _%e196089196108%_)
                              (_%e196090196113%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196085196094%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi196116%_ _%e196090196113%_)
                              (_%e196091196118%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196085196094%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n196121%_ _%e196091196118%_)
                              (_%e196092196123%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196085196094%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code196126%_ _%e196092196123%_))
                         (_%K196088196105%_
                          _%code196126%_
                          _%n196121%_
                          _%phi196116%_
                          _%ctx196111%_))
                       (_%E196087196097%_)))))
              (__tmp206438
               (##structure-ref _%state196081%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp206439 '() __tmp206438))))
    (define gxc#collect-expression-refs
      (lambda (_%stx196077%_)
        (let ((_%ht196079%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht196079%_ _%stx196077%_)
          _%ht196079%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self196020%_ _%stx196021%_)
        (let* ((_%g196023196036%_
                (lambda (_%g196024196033%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196024196033%_))))
               (_%g196022196074%_
                (lambda (_%g196024196039%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196024196039%_))
                      (let ((_%e196026196041%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196024196039%_))))
                        (let ((_%hd196027196044%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196026196041%_)))
                              (_%tl196028196046%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196026196041%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196028196046%_))
                              (let ((_%e196029196049%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196028196046%_))))
                                (let ((_%hd196030196052%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196029196049%_)))
                                      (_%tl196031196054%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196029196049%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196031196054%_))
                                      ((lambda (_%g196025196057%_)
                                         (let* ((_%bind196069%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g196025196057%_)))
                                                (_%eid196071%_
                                                 (if _%bind196069%_
                                                     (##structure-ref
                                                      _%bind196069%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g196025196057%_))))
                                                (__tmp206440
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self196020%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp206440
                                            _%eid196071%_
                                            _%eid196071%_)))
                                       _%hd196030196052%_)
                                      (_%g196023196036%_ _%g196024196039%_))))
                              (_%g196023196036%_ _%g196024196039%_))))
                      (_%g196023196036%_ _%g196024196039%_)))))
          (_%g196022196074%_ _%stx196021%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self195947%_ _%stx195948%_)
        (let* ((_%g195950195967%_
                (lambda (_%g195951195964%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195951195964%_))))
               (_%g195949196017%_
                (lambda (_%g195951195970%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195951195970%_))
                      (let ((_%e195954195972%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195951195970%_))))
                        (let ((_%hd195955195975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195954195972%_)))
                              (_%tl195956195977%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195954195972%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195956195977%_))
                              (let ((_%e195957195980%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195956195977%_))))
                                (let ((_%hd195958195983%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195957195980%_)))
                                      (_%tl195959195985%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195957195980%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195959195985%_))
                                      (let ((_%e195960195988%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195959195985%_))))
                                        (let ((_%hd195961195991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195960195988%_)))
                                              (_%tl195962195993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195960195988%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195962195993%_))
                                              ((lambda (_%g195952195996%_
                                                        _%g195953195997%_)
                                                 (let* ((_%bind196012%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g195953195997%_)))
                                                        (_%eid196014%_
                                                         (if _%bind196012%_
                                                             (##structure-ref
                                                              _%bind196012%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g195953195997%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp206441
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self195947%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp206441
                                                      _%eid196014%_
                                                      _%eid196014%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self195947%_
                                                      _%g195952195996%_))))
                                               _%hd195961195991%_
                                               _%hd195958195983%_)
                                              (_%g195950195967%_
                                               _%g195951195970%_))))
                                      (_%g195950195967%_ _%g195951195970%_))))
                              (_%g195950195967%_ _%g195951195970%_))))
                      (_%g195950195967%_ _%g195951195970%_)))))
          (_%g195949196017%_ _%stx195948%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self195904%_ _%stx195905%_)
        (let* ((_%g195907195917%_
                (lambda (_%g195908195914%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195908195914%_))))
               (_%g195906195944%_
                (lambda (_%g195908195920%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195908195920%_))
                      (let ((_%e195910195922%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195908195920%_))))
                        (let ((_%hd195911195925%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195910195922%_)))
                              (_%tl195912195927%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195910195922%_))))
                          ((lambda (_%g195909195930%_)
                             (let ((__tmp206442
                                    (lambda (_%g195939195941%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self195904%_
                                         _%g195939195941%_)))))
                               (declare (not safe))
                               (ormap__0 __tmp206442 _%g195909195930%_)))
                           _%tl195912195927%_)))
                      (_%g195907195917%_ _%g195908195920%_)))))
          (_%g195906195944%_ _%stx195905%_))))
    (define gxc#count-values-single%
      (lambda (_%self195901%_ _%stx195902%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self195769%_ _%stx195770%_)
        (let* ((_%__stx206184206185%_ _%stx195770%_)
               (_%g195773195802%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206184206185%_)))))
          (let ((_%__kont206186206187%_
                 (lambda (_%g195775195868%_ _%g195776195869%_)
                   (length (let ((__tmp206443
                                  (lambda (_%g195890195893%_ _%g195891195895%_)
                                    (cons _%g195890195893%_
                                          _%g195891195895%_))))
                             (declare (not safe))
                             (foldr__0 __tmp206443 '() _%g195775195868%_)))))
                (_%__kont206190206191%_ (lambda () '#f)))
            (let ((_%__match206229206230%_
                   (lambda (_%e195777195814%_
                            _%hd195778195817%_
                            _%tl195779195819%_
                            _%e195780195822%_
                            _%hd195781195825%_
                            _%tl195782195827%_
                            _%e195783195830%_
                            _%hd195784195833%_
                            _%tl195785195835%_
                            _%e195786195838%_
                            _%hd195787195841%_
                            _%tl195788195843%_
                            _%__splice206188206189%_
                            _%target195789195846%_
                            _%tl195791195848%_)
                     (letrec ((_%loop195792195851%_
                               (lambda (_%hd195790195854%_
                                        _%rand195796195856%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd195790195854%_))
                                     (let ((_%e195793195858%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd195790195854%_))))
                                       (let ((_%lp-tl195795195863%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e195793195858%_)))
                                             (_%lp-hd195794195861%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e195793195858%_))))
                                         (_%loop195792195851%_
                                          _%lp-tl195795195863%_
                                          (cons _%lp-hd195794195861%_
                                                _%rand195796195856%_))))
                                     (let ((_%rand195797195866%_
                                            (reverse _%rand195796195856%_)))
                                       (let ((_%g195775195868%_
                                              _%rand195797195866%_)
                                             (_%g195776195869%_
                                              _%hd195787195841%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g195776195869%_
                                                'values))
                                             (_%__kont206186206187%_
                                              _%g195775195868%_
                                              _%g195776195869%_)
                                             (_%__kont206190206191%_))))))))
                       (_%loop195792195851%_ _%target195789195846%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206184206185%_))
                  (let ((_%e195777195814%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx206184206185%_))))
                    (let ((_%tl195779195819%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195777195814%_)))
                          (_%hd195778195817%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195777195814%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195779195819%_))
                          (let ((_%e195780195822%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl195779195819%_))))
                            (let ((_%tl195782195827%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195780195822%_)))
                                  (_%hd195781195825%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195780195822%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd195781195825%_))
                                  (let ((_%e195783195830%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd195781195825%_))))
                                    (let ((_%tl195785195835%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195783195830%_)))
                                          (_%hd195784195833%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195783195830%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd195784195833%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd195784195833%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195785195835%_))
                                                  (let ((_%e195786195838%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl195785195835%_))))
                                                    (let ((_%tl195788195843%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195786195838%_)))
                                                          (_%hd195787195841%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195786195838%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195788195843%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl195782195827%_))
                      (let ((_%__splice206188206189%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl195782195827%_
                                '0))))
                        (let ((_%tl195791195848%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206188206189%_ '1)))
                              (_%target195789195846%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206188206189%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl195791195848%_))
                              (_%__match206229206230%_
                               _%e195777195814%_
                               _%hd195778195817%_
                               _%tl195779195819%_
                               _%e195780195822%_
                               _%hd195781195825%_
                               _%tl195782195827%_
                               _%e195783195830%_
                               _%hd195784195833%_
                               _%tl195785195835%_
                               _%e195786195838%_
                               _%hd195787195841%_
                               _%tl195788195843%_
                               _%__splice206188206189%_
                               _%target195789195846%_
                               _%tl195791195848%_)
                              (_%__kont206190206191%_))))
                      (_%__kont206190206191%_))
                  (_%__kont206190206191%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont206190206191%_))
                                              (_%__kont206190206191%_))
                                          (_%__kont206190206191%_))))
                                  (_%__kont206190206191%_))))
                          (_%__kont206190206191%_))))
                  (_%__kont206190206191%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self195674%_ _%stx195675%_)
        (let* ((_%g195677195698%_
                (lambda (_%g195678195695%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195678195695%_))))
               (_%g195676195766%_
                (lambda (_%g195678195701%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195678195701%_))
                      (let ((_%e195682195703%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195678195701%_))))
                        (let ((_%hd195683195706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195682195703%_)))
                              (_%tl195684195708%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195682195703%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195684195708%_))
                              (let ((_%e195685195711%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195684195708%_))))
                                (let ((_%hd195686195714%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195685195711%_)))
                                      (_%tl195687195716%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195685195711%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195687195716%_))
                                      (let ((_%e195688195719%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195687195716%_))))
                                        (let ((_%hd195689195722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195688195719%_)))
                                              (_%tl195690195724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195688195719%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195690195724%_))
                                              (let ((_%e195691195727%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl195690195724%_))))
                                                (let ((_%hd195692195730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195691195727%_)))
                                                      (_%tl195693195732%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195691195727%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195693195732%_))
                                                      ((lambda (_%g195679195735%_
                                                                _%g195680195736%_
                                                                _%g195681195737%_)
                                                         (let ((_%c1195754195756%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self195674%_
                           _%g195680195736%_))))
                   (if _%c1195754195756%_
                       (let* ((_%c1195758%_ _%c1195754195756%_)
                              (_%c2195759195761%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self195674%_
                                  _%g195679195735%_))))
                         (if _%c2195759195761%_
                             (let ((_%c2195763%_ _%c2195759195761%_))
                               (if (fx= _%c1195758%_ _%c2195763%_)
                                   _%c1195758%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd195692195730%_
               _%hd195689195722%_
               _%hd195686195714%_)
              (_%g195677195698%_ _%g195678195701%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195677195698%_
                                               _%g195678195701%_))))
                                      (_%g195677195698%_ _%g195678195701%_))))
                              (_%g195677195698%_ _%g195678195701%_))))
                      (_%g195677195698%_ _%g195678195701%_)))))
          (_%g195676195766%_ _%stx195675%_))))))
