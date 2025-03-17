(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1742223874)
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
        (letrec ((_%hash-e148846%_
                  (lambda (_%id148848%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id148848%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e148846%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp150233 (list gxc#::void::t))
            (__tmp150232 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp150233
         '()
         __tmp150232
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args148842%_
        (apply make-instance gxc#::collect-bindings::t _%$args148842%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp150234
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
        (__make-promise __tmp150234)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx148834%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self148837%_
                (let ((__obj150208
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj150208))
               (__tmp150235
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148837%_ _%stx148834%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150235
           gxc#current-compile-method
           _%self148837%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp150237 (list gxc#::void::t))
            (__tmp150236 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp150237
         '(modules)
         __tmp150236
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args148831%_
        (apply make-instance gxc#::lift-modules::t _%$args148831%_)))
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
      (let ((__tmp150238
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
        (__make-promise __tmp150238)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords148805%_ _%modules148802148806%_ _%stx148808%_)
        (let ((_%modules148811%_
               (if (eq? _%modules148802148806%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules148802148806%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self148813%_
                  (let ((__obj150210
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150210
                       _%modules148811%_
                       '1
                       '#f
                       '#f))
                    __obj150210))
                 (__tmp150239
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148813%_ _%stx148808%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150239
             gxc#current-compile-method
             _%self148813%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords148820%_ . _%args148821%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords148820%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148820%_
                  'modules:
                  absent-value))
               _%args148821%_)))
    (define gxc#apply-lift-modules
      (lambda _%args148803148827%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args148803148827%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp150241 (list)) (__tmp150240 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp150241
         '()
         __tmp150240
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args148798%_
        (apply make-instance gxc#::find-runtime-code::t _%$args148798%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp150242
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
        (__make-promise __tmp150242)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx148790%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self148793%_
                (let ((__obj150212
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj150212))
               (__tmp150243
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148793%_ _%stx148790%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150243
           gxc#current-compile-method
           _%self148793%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp150245 (list gxc#::false::t))
            (__tmp150244 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp150245
         '()
         __tmp150244
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args148787%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args148787%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp150246
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
        (__make-promise __tmp150246)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx148779%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self148782%_
                (let ((__obj150214
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj150214))
               (__tmp150247
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148782%_ _%stx148779%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150247
           gxc#current-compile-method
           _%self148782%_))))
    (define gxc#::count-values::t
      (let ((__tmp150249 (list gxc#::false-expression::t))
            (__tmp150248 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp150249
         '()
         __tmp150248
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args148776%_
        (apply make-instance gxc#::count-values::t _%$args148776%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp150250
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
        (__make-promise __tmp150250)))
    (define gxc#apply-count-values
      (lambda (_%stx148768%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self148771%_
                (let ((__obj150216
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj150216))
               (__tmp150251
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148771%_ _%stx148768%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150251
           gxc#current-compile-method
           _%self148771%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp150252 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp150252
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args148765%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args148765%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp150253
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
        (__make-promise __tmp150253)))
    (define gxc#::generate-loader::t
      (let ((__tmp150255 (list gxc#::generate-runtime-empty::t))
            (__tmp150254 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp150255
         '()
         __tmp150254
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args148761%_
        (apply make-instance gxc#::generate-loader::t _%$args148761%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp150256
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
        (__make-promise __tmp150256)))
    (define gxc#apply-generate-loader
      (lambda (_%stx148753%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self148756%_
                (let ((__obj150219
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj150219))
               (__tmp150257
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148756%_ _%stx148753%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150257
           gxc#current-compile-method
           _%self148756%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp150258 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp150258
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args148750%_
        (apply make-instance gxc#::generate-runtime::t _%$args148750%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp150259
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
        (__make-promise __tmp150259)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx148742%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self148745%_
                (let ((__obj150221
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj150221))
               (__tmp150260
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148745%_ _%stx148742%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150260
           gxc#current-compile-method
           _%self148745%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp150262 (list gxc#::generate-runtime::t))
            (__tmp150261 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp150262
         '()
         __tmp150261
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args148739%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args148739%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp150263
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
        (__make-promise __tmp150263)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx148731%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self148734%_
                (let ((__obj150223
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj150223))
               (__tmp150264
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148734%_ _%stx148731%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150264
           gxc#current-compile-method
           _%self148734%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp150265 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp150265
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args148728%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args148728%_)))
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
      (let ((__tmp150266
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
        (__make-promise __tmp150266)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords148702%_ _%table148699148703%_ _%stx148705%_)
        (let ((_%table148708%_
               (if (eq? _%table148699148703%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table148699148703%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self148710%_
                  (let ((__obj150225
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150225
                       _%table148708%_
                       '1
                       '#f
                       '#f))
                    __obj150225))
                 (__tmp150267
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148710%_ _%stx148705%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150267
             gxc#current-compile-method
             _%self148710%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords148717%_ . _%args148718%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords148717%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148717%_
                  'table:
                  absent-value))
               _%args148718%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args148700148724%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args148700148724%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp150269 (list gxc#::void-expression::t))
            (__tmp150268 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp150269
         '(state)
         __tmp150268
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args148695%_
        (apply make-instance gxc#::generate-meta::t _%$args148695%_)))
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
      (let ((__tmp150270
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
        (__make-promise __tmp150270)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords148669%_ _%state148666148670%_ _%stx148672%_)
        (let ((_%state148675%_
               (if (eq? _%state148666148670%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state148666148670%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self148677%_
                  (let ((__obj150227
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150227
                       _%state148675%_
                       '1
                       '#f
                       '#f))
                    __obj150227))
                 (__tmp150271
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148677%_ _%stx148672%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150271
             gxc#current-compile-method
             _%self148677%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords148684%_ . _%args148685%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords148684%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148684%_
                  'state:
                  absent-value))
               _%args148685%_)))
    (define gxc#apply-generate-meta
      (lambda _%args148667148691%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args148667148691%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp150273 (list)) (__tmp150272 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp150273
         '(state)
         __tmp150272
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args148662%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args148662%_)))
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
      (let ((__tmp150274
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
        (__make-promise __tmp150274)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords148636%_ _%state148633148637%_ _%stx148639%_)
        (let ((_%state148642%_
               (if (eq? _%state148633148637%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state148633148637%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self148644%_
                  (let ((__obj150229
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150229
                       _%state148642%_
                       '1
                       '#f
                       '#f))
                    __obj150229))
                 (__tmp150275
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148644%_ _%stx148639%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150275
             gxc#current-compile-method
             _%self148644%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords148651%_ . _%args148652%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords148651%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148651%_
                  'state:
                  absent-value))
               _%args148652%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args148634148658%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args148634148658%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self148562%_ _%stx148563%_)
        (let* ((_%g148565148582%_
                (lambda (_%g148566148579%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148566148579%_))))
               (_%g148564148629%_
                (lambda (_%g148566148585%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148566148585%_))
                      (let ((_%e148569148587%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148566148585%_))))
                        (let ((_%hd148570148590%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148569148587%_)))
                              (_%tl148571148592%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148569148587%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148571148592%_))
                              (let ((_%e148572148595%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148571148592%_))))
                                (let ((_%hd148573148598%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148572148595%_)))
                                      (_%tl148574148600%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148572148595%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148574148600%_))
                                      (let ((_%e148575148603%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148574148600%_))))
                                        (let ((_%hd148576148606%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148575148603%_)))
                                              (_%tl148577148608%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148575148603%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148577148608%_))
                                              ((lambda (_%L148611%_
                                                        _%L148612%_)
                                                 (let ((__tmp150276
                                                        (lambda (_%bind148627%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind148627%_))
                      (gxc#add-module-binding! _%bind148627%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp150276
                                                    _%L148612%_)))
                                               _%hd148576148606%_
                                               _%hd148573148598%_)
                                              (_%g148565148582%_
                                               _%g148566148585%_))))
                                      (_%g148565148582%_ _%g148566148585%_))))
                              (_%g148565148582%_ _%g148566148585%_))))
                      (_%g148565148582%_ _%g148566148585%_)))))
          (_%g148564148629%_ _%stx148563%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self148494%_ _%stx148495%_)
        (let* ((_%g148497148514%_
                (lambda (_%g148498148511%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148498148511%_))))
               (_%g148496148559%_
                (lambda (_%g148498148517%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148498148517%_))
                      (let ((_%e148501148519%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148498148517%_))))
                        (let ((_%hd148502148522%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148501148519%_)))
                              (_%tl148503148524%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148501148519%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148503148524%_))
                              (let ((_%e148504148527%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148503148524%_))))
                                (let ((_%hd148505148530%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148504148527%_)))
                                      (_%tl148506148532%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148504148527%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148506148532%_))
                                      (let ((_%e148507148535%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148506148532%_))))
                                        (let ((_%hd148508148538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148507148535%_)))
                                              (_%tl148509148540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148507148535%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148509148540%_))
                                              ((lambda (_%L148543%_
                                                        _%L148544%_)
                                                 (gxc#add-module-binding!
                                                  _%L148544%_
                                                  '#t))
                                               _%hd148508148538%_
                                               _%hd148505148530%_)
                                              (_%g148497148514%_
                                               _%g148498148517%_))))
                                      (_%g148497148514%_ _%g148498148517%_))))
                              (_%g148497148514%_ _%g148498148517%_))))
                      (_%g148497148514%_ _%g148498148517%_)))))
          (_%g148496148559%_ _%stx148495%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self148436%_ _%stx148437%_)
        (let* ((_%g148439148453%_
                (lambda (_%g148440148450%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148440148450%_))))
               (_%g148438148491%_
                (lambda (_%g148440148456%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148440148456%_))
                      (let ((_%e148443148458%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148440148456%_))))
                        (let ((_%hd148444148461%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148443148458%_)))
                              (_%tl148445148463%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148443148458%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148445148463%_))
                              (let ((_%e148446148466%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148445148463%_))))
                                (let ((_%hd148447148469%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148446148466%_)))
                                      (_%tl148448148471%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148446148466%_))))
                                  ((lambda (_%L148474%_ _%L148475%_)
                                     (let ((_%ctx148488%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L148475%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self148436%_
                                           'modules))
                                        (cons _%ctx148488%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self148436%_
                                                        'modules)))))
                                       (let ((__tmp150277
                                              (lambda ()
                                                (let ((__tmp150278
                                                       (##structure-ref
                                                        _%ctx148488%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self148436%_
                                                   __tmp150278)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp150277
                                          gx#current-expander-context
                                          _%ctx148488%_))))
                                   _%tl148448148471%_
                                   _%hd148447148469%_)))
                              (_%g148439148453%_ _%g148440148456%_))))
                      (_%g148439148453%_ _%g148440148456%_)))))
          (_%g148438148491%_ _%stx148437%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls148389148391%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls148389148391%_
              (let ((_%decls148394%_ _%decls148389148391%_))
                (let _%lp148396%_ ((_%rest148398%_ _%decls148394%_))
                  (let* ((_%rest148399148407%_ _%rest148398%_)
                         (_%else148401148415%_ (lambda () '#f))
                         (_%K148403148424%_
                          (lambda (_%decls148418%_ _%decl148419%_)
                            (if (equal? _%decl148419%_ '(not safe))
                                '#t
                                (if (equal? _%decl148419%_ '(safe))
                                    '#f
                                    (_%lp148396%_ _%decls148418%_))))))
                    (if (pair? _%rest148399148407%_)
                        (let ((_%hd148404148427%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest148399148407%_)))
                              (_%tl148405148429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest148399148407%_))))
                          (let* ((_%decl148432%_ _%hd148404148427%_)
                                 (_%decls148434%_ _%tl148405148429%_))
                            (_%K148403148424%_
                             _%decls148434%_
                             _%decl148432%_)))
                        (_%else148401148415%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id148383%_ _%syntax?148384%_)
        (let ((_%eid148386%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id148383%_))
                '1
                gx#binding::t
                '#f))
              (_%ht148387%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid148386%_))
              '#!void
              (let ((__tmp150279
                     (let ((__tmp150280
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid148386%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp150280 _%syntax?148384%_))))
                (declare (not safe))
                (hash-put! _%ht148387%_ _%eid148386%_ __tmp150279))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id148381%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id148381%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key148336%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key148336%_))
            _%key148336%_
            (if (uninterned-symbol? _%key148336%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key148336%_))
                (let* ((_%key148340148347%_ _%key148336%_)
                       (_%E148342148351%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key148340148347%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K148343148369%_
                        (lambda (_%mark148354%_ _%eid148355%_)
                          (let ((_%$e148357%_
                                 (##structure-ref
                                  _%mark148354%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e148357%_
                                ((lambda (_%ht148360%_)
                                   (let ((_%$e148362%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht148360%_
                                             _%eid148355%_))))
                                     (if _%$e148362%_
                                         ((lambda (_%id148365%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id148365%_))
                                                _%id148365%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id148365%_))))
                                          _%$e148362%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid148355%_))))
                                 _%$e148357%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid148355%_))))))
                  (if (pair? _%key148340148347%_)
                      (let ((_%hd148344148372%_
                             (let ()
                               (declare (not safe))
                               (##car _%key148340148347%_)))
                            (_%tl148345148374%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key148340148347%_))))
                        (let* ((_%eid148377%_ _%hd148344148372%_)
                               (_%mark148379%_ _%tl148345148374%_))
                          (_%K148343148369%_ _%mark148379%_ _%eid148377%_)))
                      (_%E148342148351%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self148333%_ _%stx148334%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self148180%_ _%stx148181%_)
        (letrec ((_%simplify148183%_
                  (lambda (_%body148231%_)
                    (let _%lp148233%_ ((_%rest148235%_ _%body148231%_)
                                       (_%r148236%_ '()))
                      (let* ((_%rest148237148245%_ _%rest148235%_)
                             (_%else148239148253%_
                              (lambda () (reverse _%r148236%_)))
                             (_%K148241148321%_
                              (lambda (_%rest148256%_ _%hd148257%_)
                                (let* ((_%hd148258148274%_ _%hd148257%_)
                                       (_%else148262148282%_
                                        (lambda ()
                                          (_%lp148233%_
                                           _%rest148256%_
                                           (cons _%hd148257%_ _%r148236%_)))))
                                  (let ((_%K148270148311%_
                                         (lambda (_%exprs148309%_)
                                           (_%lp148233%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest148256%_
                                               _%exprs148309%_))
                                            _%r148236%_)))
                                        (_%K148265148295%_
                                         (lambda ()
                                           (if (null? _%rest148256%_)
                                               (_%lp148233%_
                                                _%rest148256%_
                                                (cons _%hd148257%_
                                                      _%r148236%_))
                                               (_%lp148233%_
                                                _%rest148256%_
                                                _%r148236%_))))
                                        (_%K148264148287%_
                                         (lambda ()
                                           (if (null? _%rest148256%_)
                                               (_%lp148233%_
                                                _%rest148256%_
                                                (cons _%hd148257%_
                                                      _%r148236%_))
                                               (_%lp148233%_
                                                _%rest148256%_
                                                _%r148236%_)))))
                                    (let ((_%try-match148261148290%_
                                           (lambda ()
                                             (if (symbol? _%hd148258148274%_)
                                                 (_%K148264148287%_)
                                                 (_%else148262148282%_)))))
                                      (if (pair? _%hd148258148274%_)
                                          (let ((_%tl148272148316%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd148258148274%_)))
                                                (_%hd148271148314%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd148258148274%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd148271148314%_
                                                         'begin))
                                                (let ((_%exprs148319%_
                                                       _%tl148272148316%_))
                                                  (_%K148270148311%_
                                                   _%exprs148319%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd148271148314%_
                                                             'quote))
                                                    (if (pair? _%tl148272148316%_)
                                                        (let ((_%tl148269148303%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl148272148316%_))))
                  (if (null? _%tl148269148303%_)
                      (_%K148265148295%_)
                      (_%try-match148261148290%_)))
                (_%try-match148261148290%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match148261148290%_))))
                                          (_%try-match148261148290%_))))))))
                        (if (pair? _%rest148237148245%_)
                            (let ((_%hd148242148324%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest148237148245%_)))
                                  (_%tl148243148326%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest148237148245%_))))
                              (let* ((_%hd148329%_ _%hd148242148324%_)
                                     (_%rest148331%_ _%tl148243148326%_))
                                (_%K148241148321%_
                                 _%rest148331%_
                                 _%hd148329%_)))
                            (_%else148239148253%_)))))))
          (let* ((_%g148185148195%_
                  (lambda (_%g148186148192%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148186148192%_))))
                 (_%g148184148228%_
                  (lambda (_%g148186148198%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148186148198%_))
                        (let ((_%e148188148200%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148186148198%_))))
                          (let ((_%hd148189148203%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148188148200%_)))
                                (_%tl148190148205%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148188148200%_))))
                            ((lambda (_%L148208%_)
                               (let* ((_%body148223%_
                                       (map (lambda (_%g148218148220%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self148180%_
                                                 _%g148218148220%_)))
                                            _%L148208%_))
                                      (_%body148225%_
                                       (_%simplify148183%_ _%body148223%_)))
                                 (if (let ((__tmp150281
                                            (length _%body148225%_)))
                                       (declare (not safe))
                                       (##fx= __tmp150281 '1))
                                     (car _%body148225%_)
                                     (cons 'begin _%body148225%_))))
                             _%tl148190148205%_)))
                        (_%g148185148195%_ _%g148186148198%_)))))
            (_%g148184148228%_ _%stx148181%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self148141%_ _%stx148142%_)
        (let* ((_%g148144148154%_
                (lambda (_%g148145148151%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148145148151%_))))
               (_%g148143148177%_
                (lambda (_%g148145148157%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148145148157%_))
                      (let ((_%e148147148159%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148145148157%_))))
                        (let ((_%hd148148148162%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148147148159%_)))
                              (_%tl148149148164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148147148159%_))))
                          ((lambda (_%L148167%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L148167%_))))
                           _%tl148149148164%_)))
                      (_%g148144148154%_ _%g148145148157%_)))))
          (_%g148143148177%_ _%stx148142%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self147905%_ _%stx147906%_)
        (let* ((_%__stx148871148872%_ _%stx147906%_)
               (_%g147910147962%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx148871148872%_)))))
          (let ((_%__kont148873148874%_
                 (lambda (_%L148123%_ _%L148124%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self147905%_ _%L148123%_))))
                (_%__kont148875148876%_
                 (lambda (_%L148071%_ _%L148072%_ _%L148073%_)
                   (if (let ((__tmp150282
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L148073%_))))
                         (declare (not safe))
                         (##memq __tmp150282 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self147905%_ _%L148071%_)))))
                (_%__kont148879148880%_
                 (lambda (_%L147991%_ _%L147992%_)
                   (let ((_%decls148007%_ (map gx#syntax->datum _%L147992%_)))
                     (let ((__tmp150285
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls148007%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self147905%_
                                                   _%L147991%_))
                                                '())))))
                           (__tmp150283
                            (let ((__tmp150284
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp150284 _%decls148007%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp150285
                        gxc#current-compile-decls
                        __tmp150283))))))
            (let* ((_%__match148926148927%_
                    (lambda (_%e147926148015%_
                             _%hd147927148018%_
                             _%tl147928148020%_
                             _%e147929148023%_
                             _%hd147930148026%_
                             _%tl147931148028%_
                             _%e147932148031%_
                             _%hd147933148034%_
                             _%tl147934148036%_
                             _%__splice148877148878%_
                             _%target147935148039%_
                             _%tl147937148041%_)
                      (letrec ((_%loop147938148044%_
                                (lambda (_%hd147936148047%_
                                         _%param147942148049%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd147936148047%_))
                                      (let ((_%e147939148052%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd147936148047%_))))
                                        (let ((_%lp-tl147941148057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147939148052%_)))
                                              (_%lp-hd147940148055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147939148052%_))))
                                          (_%loop147938148044%_
                                           _%lp-tl147941148057%_
                                           (cons _%lp-hd147940148055%_
                                                 _%param147942148049%_))))
                                      (let ((_%param147943148060%_
                                             (reverse _%param147942148049%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl147931148028%_))
                                            (let ((_%e147944148063%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl147931148028%_))))
                                              (let ((_%tl147946148068%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e147944148063%_)))
                                                    (_%hd147945148066%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e147944148063%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl147946148068%_))
                                                    (let ((_%L148071%_
                                                           _%hd147945148066%_)
                                                          (_%L148072%_
                                                           _%param147943148060%_)
                                                          (_%L148073%_
                                                           _%hd147933148034%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L148073%_))
                       (not (let ((__tmp150286
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L148073%_))))
                              (declare (not safe))
                              (##memq __tmp150286 gxc#gambit-annotations))))
                  (_%__kont148875148876%_ _%L148071%_ _%L148072%_ _%L148073%_)
                  (_%__kont148879148880%_
                   _%hd147945148066%_
                   _%hd147930148026%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g147910147962%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g147910147962%_))))))))
                        (_%loop147938148044%_ _%target147935148039%_ '()))))
                   (_%__match148900148901%_
                    (lambda (_%e147914148099%_
                             _%hd147915148102%_
                             _%tl147916148104%_
                             _%e147917148107%_
                             _%hd147918148110%_
                             _%tl147919148112%_
                             _%e147920148115%_
                             _%hd147921148118%_
                             _%tl147922148120%_)
                      (let ((_%L148123%_ _%hd147921148118%_)
                            (_%L148124%_ _%hd147918148110%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L148124%_))
                            (_%__kont148873148874%_ _%L148123%_ _%L148124%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd147918148110%_))
                                (let ((_%e147932148031%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd147918148110%_))))
                                  (let ((_%tl147934148036%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147932148031%_)))
                                        (_%hd147933148034%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147932148031%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl147934148036%_))
                                        (let ((_%__splice148877148878%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl147934148036%_
                                                  '0))))
                                          (let ((_%tl147937148041%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice148877148878%_
                                                    '1)))
                                                (_%target147935148039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice148877148878%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl147937148041%_))
                                                (_%__match148926148927%_
                                                 _%e147914148099%_
                                                 _%hd147915148102%_
                                                 _%tl147916148104%_
                                                 _%e147917148107%_
                                                 _%hd147918148110%_
                                                 _%tl147919148112%_
                                                 _%e147932148031%_
                                                 _%hd147933148034%_
                                                 _%tl147934148036%_
                                                 _%__splice148877148878%_
                                                 _%target147935148039%_
                                                 _%tl147937148041%_)
                                                (_%__kont148879148880%_
                                                 _%hd147921148118%_
                                                 _%hd147918148110%_))))
                                        (_%__kont148879148880%_
                                         _%hd147921148118%_
                                         _%hd147918148110%_))))
                                (_%__kont148879148880%_
                                 _%hd147921148118%_
                                 _%hd147918148110%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx148871148872%_))
                  (let ((_%e147914148099%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx148871148872%_))))
                    (let ((_%tl147916148104%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e147914148099%_)))
                          (_%hd147915148102%_
                           (let ()
                             (declare (not safe))
                             (##car _%e147914148099%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl147916148104%_))
                          (let ((_%e147917148107%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl147916148104%_))))
                            (let ((_%tl147919148112%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e147917148107%_)))
                                  (_%hd147918148110%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e147917148107%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl147919148112%_))
                                  (let ((_%e147920148115%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl147919148112%_))))
                                    (let ((_%tl147922148120%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e147920148115%_)))
                                          (_%hd147921148118%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e147920148115%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl147922148120%_))
                                          (_%__match148900148901%_
                                           _%e147914148099%_
                                           _%hd147915148102%_
                                           _%tl147916148104%_
                                           _%e147917148107%_
                                           _%hd147918148110%_
                                           _%tl147919148112%_
                                           _%e147920148115%_
                                           _%hd147921148118%_
                                           _%tl147922148120%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd147918148110%_))
                                              (let ((_%e147932148031%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd147918148110%_))))
                                                (let ((_%tl147934148036%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e147932148031%_)))
                                                      (_%hd147933148034%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e147932148031%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl147934148036%_))
                                                      (let ((_%__splice148877148878%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl147934148036%_
                        '0))))
                (let ((_%tl147937148041%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice148877148878%_ '1)))
                      (_%target147935148039%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice148877148878%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl147937148041%_))
                      (_%__match148926148927%_
                       _%e147914148099%_
                       _%hd147915148102%_
                       _%tl147916148104%_
                       _%e147917148107%_
                       _%hd147918148110%_
                       _%tl147919148112%_
                       _%e147932148031%_
                       _%hd147933148034%_
                       _%tl147934148036%_
                       _%__splice148877148878%_
                       _%target147935148039%_
                       _%tl147937148041%_)
                      (let () (declare (not safe)) (_%g147910147962%_)))))
              (let () (declare (not safe)) (_%g147910147962%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g147910147962%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd147918148110%_))
                                      (let ((_%e147932148031%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd147918148110%_))))
                                        (let ((_%tl147934148036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147932148031%_)))
                                              (_%hd147933148034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147932148031%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl147934148036%_))
                                              (let ((_%__splice148877148878%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl147934148036%_
                                                        '0))))
                                                (let ((_%tl147937148041%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice148877148878%_
                                                          '1)))
                                                      (_%target147935148039%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice148877148878%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl147937148041%_))
                                                      (_%__match148926148927%_
                                                       _%e147914148099%_
                                                       _%hd147915148102%_
                                                       _%tl147916148104%_
                                                       _%e147917148107%_
                                                       _%hd147918148110%_
                                                       _%tl147919148112%_
                                                       _%e147932148031%_
                                                       _%hd147933148034%_
                                                       _%tl147934148036%_
                                                       _%__splice148877148878%_
                                                       _%target147935148039%_
                                                       _%tl147937148041%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g147910147962%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g147910147962%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g147910147962%_))))))
                          (let () (declare (not safe)) (_%g147910147962%_)))))
                  (let () (declare (not safe)) (_%g147910147962%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self147864%_ _%stx147865%_)
        (let* ((_%g147867147877%_
                (lambda (_%g147868147874%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147868147874%_))))
               (_%g147866147902%_
                (lambda (_%g147868147880%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147868147880%_))
                      (let ((_%e147870147882%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147868147880%_))))
                        (let ((_%hd147871147885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147870147882%_)))
                              (_%tl147872147887%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147870147882%_))))
                          ((lambda (_%L147890%_)
                             (let ((_%decls147900%_
                                    (map gx#syntax->datum _%L147890%_)))
                               (let ((__tmp150287
                                      (let ((__tmp150288
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp150288
                                         _%decls147900%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp150287))
                               (cons 'declare _%decls147900%_)))
                           _%tl147872147887%_)))
                      (_%g147867147877%_ _%g147868147880%_)))))
          (_%g147866147902%_ _%stx147865%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self147610%_ _%stx147611%_)
        (let* ((_%g147613147630%_
                (lambda (_%g147614147627%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147614147627%_))))
               (_%g147612147861%_
                (lambda (_%g147614147633%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147614147633%_))
                      (let ((_%e147617147635%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147614147633%_))))
                        (let ((_%hd147618147638%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147617147635%_)))
                              (_%tl147619147640%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147617147635%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147619147640%_))
                              (let ((_%e147620147643%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147619147640%_))))
                                (let ((_%hd147621147646%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147620147643%_)))
                                      (_%tl147622147648%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147620147643%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147622147648%_))
                                      (let ((_%e147623147651%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147622147648%_))))
                                        (let ((_%hd147624147654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147623147651%_)))
                                              (_%tl147625147656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147623147651%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147625147656%_))
                                              ((lambda (_%L147659%_
                                                        _%L147660%_)
                                                 (let* ((_%__stx148979148980%_
                                                         _%L147660%_)
                                                        (_%g147677147691%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx148979148980%_)))))
                                                   (let ((_%__kont148981148982%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self147610%_
                                                               _%L147659%_))))
                                                         (_%__kont148983148984%_
                                                          (lambda (_%L147823%_)
                                                            (let ((_%eid147832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L147823%_))))
                      (let ((_%lambda-expr147833147835%_
                             (gxc#apply-find-lambda-expression _%L147659%_)))
                        (if _%lambda-expr147833147835%_
                            (let* ((_%lambda-expr147838%_
                                    _%lambda-expr147833147835%_)
                                   (__tmp150289
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp150289
                               _%lambda-expr147838%_
                               _%eid147832%_))
                            '#f))
                      (cons 'define
                            (cons _%eid147832%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self147610%_
                                           _%L147659%_))
                                        '()))))))
                 (_%__kont148985148986%_
                  (lambda ()
                    (let* ((_%tmp147698%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body147807%_
                            (let _%lp147700%_ ((_%rest147702%_ _%L147660%_)
                                               (_%k147703%_ '0)
                                               (_%r147704%_ '()))
                              (let* ((_%__stx148949148950%_ _%rest147702%_)
                                     (_%g147709147726%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx148949148950%_)))))
                                (let ((_%__kont148951148952%_
                                       (lambda (_%L147794%_)
                                         (_%lp147700%_
                                          _%L147794%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k147703%_ '1))
                                          _%r147704%_)))
                                      (_%__kont148953148954%_
                                       (lambda (_%L147767%_ _%L147768%_)
                                         (_%lp147700%_
                                          _%L147767%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k147703%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L147768%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp147698%_
                           _%k147703%_
                           _%L147767%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r147704%_))))
                                      (_%__kont148955148956%_
                                       (lambda (_%L147738%_)
                                         (let ((__tmp150290
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L147738%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp147698%_
                                 _%k147703%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp150290
                                            _%r147704%_))))
                                      (_%__kont148957148958%_
                                       (lambda () (reverse _%r147704%_))))
                                  (let ((_%g147707147754%_
                                         (lambda ()
                                           (let ((_%L147738%_
                                                  _%__stx148949148950%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L147738%_))
                                                 (_%__kont148955148956%_
                                                  _%L147738%_)
                                                 (_%__kont148957148958%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx148949148950%_))
                                        (let ((_%e147712147783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx148949148950%_))))
                                          (let ((_%tl147714147788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e147712147783%_)))
                                                (_%hd147713147786%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e147712147783%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd147713147786%_))
                                                (let ((_%e147715147791%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd147713147786%_))))
                                                  (if (equal? _%e147715147791%_
                                                              '#f)
                                                      (_%__kont148951148952%_
                                                       _%tl147714147788%_)
                                                      (_%__kont148953148954%_
                                                       _%tl147714147788%_
                                                       _%hd147713147786%_)))
                                                (_%__kont148953148954%_
                                                 _%tl147714147788%_
                                                 _%hd147713147786%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g147707147754%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp147698%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self147610%_
                                                       _%L147659%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp147698%_
                                         _%L147660%_
                                         _%L147659%_)
                                        _%body147807%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx148979148980%_))
                                                         (let ((_%e147679147845%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx148979148980%_))))
                   (let ((_%tl147681147850%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e147679147845%_)))
                         (_%hd147680147848%_
                          (let ()
                            (declare (not safe))
                            (##car _%e147679147845%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd147680147848%_))
                         (let ((_%e147682147853%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd147680147848%_))))
                           (if (equal? _%e147682147853%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl147681147850%_))
                                   (_%__kont148981148982%_)
                                   (_%__kont148985148986%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl147681147850%_))
                                   (_%__kont148983148984%_ _%hd147680147848%_)
                                   (_%__kont148985148986%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl147681147850%_))
                             (_%__kont148983148984%_ _%hd147680147848%_)
                             (_%__kont148985148986%_)))))
                 (_%__kont148985148986%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd147624147654%_
                                               _%hd147621147646%_)
                                              (_%g147613147630%_
                                               _%g147614147633%_))))
                                      (_%g147613147630%_ _%g147614147633%_))))
                              (_%g147613147630%_ _%g147614147633%_))))
                      (_%g147613147630%_ _%g147614147633%_)))))
          (_%g147612147861%_ _%stx147611%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals147585%_ _%hd147586%_ _%expr147587%_)
        (let ((_%$e147589%_ (gxc#apply-count-values _%expr147587%_)))
          (if _%$e147589%_
              ((lambda (_%count147592%_)
                 (let ((_%len147594%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd147586%_)))
                       (_%cmp147595%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd147586%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len147594%_ '0))
                           (_%cmp147595%_ _%count147592%_ _%len147594%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr147587%_
                          _%hd147586%_)))))
               _%$e147589%_)
              (let* ((_%len147601%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd147586%_)))
                     (_%cmp147603%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd147586%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg147605%_
                      (let ((__tmp150292
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd147586%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp150291 (number->string _%len147601%_)))
                        (declare (not safe))
                        (##string-append __tmp150292 __tmp150291 '" values")))
                     (_%count147607%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd147586%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len147601%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count147607%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals147585%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp147603%_
                                (cons _%count147607%_
                                      (cons _%len147601%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp147603%_
                                                        (cons _%count147607%_
                                                              (cons _%len147601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg147605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count147607%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var147580%_)
        (letrec ((_%generate-inline147582%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var147580%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var147580%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline147582%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline147582%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var147573%_ _%i147574%_ _%rest147575%_)
        (letrec ((_%generate-inline147577%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i147574%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest147575%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var147573%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var147573%_
                                                      (cons '0 '())))
                                          (cons _%var147573%_ '()))))
                        (cons '##values-ref
                              (cons _%var147573%_ (cons _%i147574%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline147577%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline147577%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var147567%_ _%i147568%_)
        (if (let () (declare (not safe)) (##fx= _%i147568%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var147567%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var147567%_ '()))
                                  (cons (cons 'list (cons _%var147567%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var147567%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var147567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var147567%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i147568%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var147567%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var147567%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var147567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var147567%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var147567%_ '()))
                                (cons _%i147568%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var147567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i147568%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self147499%_ _%stx147500%_)
        (let* ((_%g147502147519%_
                (lambda (_%g147503147516%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147503147516%_))))
               (_%g147501147564%_
                (lambda (_%g147503147522%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147503147522%_))
                      (let ((_%e147506147524%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147503147522%_))))
                        (let ((_%hd147507147527%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147506147524%_)))
                              (_%tl147508147529%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147506147524%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147508147529%_))
                              (let ((_%e147509147532%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147508147529%_))))
                                (let ((_%hd147510147535%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147509147532%_)))
                                      (_%tl147511147537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147509147532%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147511147537%_))
                                      (let ((_%e147512147540%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147511147537%_))))
                                        (let ((_%hd147513147543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147512147540%_)))
                                              (_%tl147514147545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147512147540%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147514147545%_))
                                              ((lambda (_%L147548%_
                                                        _%L147549%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self147499%_
                                                  _%L147549%_
                                                  _%L147548%_))
                                               _%hd147513147543%_
                                               _%hd147510147535%_)
                                              (_%g147502147519%_
                                               _%g147503147522%_))))
                                      (_%g147502147519%_ _%g147503147522%_))))
                              (_%g147502147519%_ _%g147503147522%_))))
                      (_%g147502147519%_ _%g147503147522%_)))))
          (_%g147501147564%_ _%stx147500%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self147458%_ _%hd147459%_ _%body147460%_)
        (let* ((_%hd147462%_ (gxc#generate-runtime-lambda-head _%hd147459%_))
               (_%body147464%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self147458%_ _%body147460%_)))
               (_%body147496%_
                (let* ((_%body147465147473%_ _%body147464%_)
                       (_%else147467147481%_
                        (lambda () (cons _%body147464%_ '())))
                       (_%K147469147486%_
                        (lambda (_%exprs147484%_) _%exprs147484%_)))
                  (if (pair? _%body147465147473%_)
                      (let ((_%hd147470147489%_
                             (let ()
                               (declare (not safe))
                               (##car _%body147465147473%_)))
                            (_%tl147471147491%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body147465147473%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd147470147489%_ 'begin))
                            (let ((_%exprs147494%_ _%tl147471147491%_))
                              (_%K147469147486%_ _%exprs147494%_))
                            (_%else147467147481%_)))
                      (_%else147467147481%_)))))
          (cons 'lambda (cons _%hd147462%_ _%body147496%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd147456%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd147456%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self145995%_ _%stx145996%_)
        (letrec ((_%dispatch-case?145998%_
                  (lambda (_%hd146686%_ _%body146687%_)
                    (let* ((_%form146689%_
                            (cons _%hd146686%_ (cons _%body146687%_ '())))
                           (_%__stx149011149012%_ _%form146689%_)
                           (_%g146694146851%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx149011149012%_)))))
                      (let ((_%__kont149013149014%_
                             (lambda (_%L147376%_ _%L147377%_ _%L147378%_)
                               '#t))
                            (_%__kont149019149020%_
                             (lambda (_%L147164%_
                                      _%L147165%_
                                      _%L147166%_
                                      _%L147167%_
                                      _%L147168%_
                                      _%L147169%_)
                               '#t))
                            (_%__kont149025149026%_
                             (lambda (_%L146959%_
                                      _%L146960%_
                                      _%L146961%_
                                      _%L146962%_)
                               '#t))
                            (_%__kont149027149028%_ (lambda () '#f)))
                        (let* ((_%__match149152149153%_
                                (lambda (_%e146811146863%_
                                         _%hd146812146866%_
                                         _%tl146813146868%_
                                         _%e146814146871%_
                                         _%hd146815146874%_
                                         _%tl146816146876%_
                                         _%e146817146879%_
                                         _%hd146818146882%_
                                         _%tl146819146884%_
                                         _%e146820146887%_
                                         _%hd146821146890%_
                                         _%tl146822146892%_
                                         _%e146823146895%_
                                         _%hd146824146898%_
                                         _%tl146825146900%_
                                         _%e146826146903%_
                                         _%hd146827146906%_
                                         _%tl146828146908%_
                                         _%e146829146911%_
                                         _%hd146830146914%_
                                         _%tl146831146916%_
                                         _%e146832146919%_
                                         _%hd146833146922%_
                                         _%tl146834146924%_
                                         _%e146835146927%_
                                         _%hd146836146930%_
                                         _%tl146837146932%_
                                         _%e146838146935%_
                                         _%hd146839146938%_
                                         _%tl146840146940%_
                                         _%e146841146943%_
                                         _%hd146842146946%_
                                         _%tl146843146948%_
                                         _%e146844146951%_
                                         _%hd146845146954%_
                                         _%tl146846146956%_)
                                  (let ((_%L146959%_ _%hd146845146954%_)
                                        (_%L146960%_ _%hd146836146930%_)
                                        (_%L146961%_ _%hd146827146906%_)
                                        (_%L146962%_ _%hd146812146866%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L146962%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L146961%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L146962%_
                                                _%L146959%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L146960%_
                                                     _%L146962%_))))
                                        (_%__kont149025149026%_
                                         _%L146959%_
                                         _%L146960%_
                                         _%L146961%_
                                         _%L146962%_)
                                        (_%__kont149027149028%_)))))
                               (_%__match149124149125%_
                                (lambda (_%e146811146863%_
                                         _%hd146812146866%_
                                         _%tl146813146868%_
                                         _%e146814146871%_
                                         _%hd146815146874%_
                                         _%tl146816146876%_
                                         _%e146817146879%_
                                         _%hd146818146882%_
                                         _%tl146819146884%_
                                         _%e146820146887%_
                                         _%hd146821146890%_
                                         _%tl146822146892%_
                                         _%e146823146895%_
                                         _%hd146824146898%_
                                         _%tl146825146900%_
                                         _%e146826146903%_
                                         _%hd146827146906%_
                                         _%tl146828146908%_
                                         _%e146829146911%_
                                         _%hd146830146914%_
                                         _%tl146831146916%_
                                         _%e146832146919%_
                                         _%hd146833146922%_
                                         _%tl146834146924%_
                                         _%e146835146927%_
                                         _%hd146836146930%_
                                         _%tl146837146932%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146831146916%_))
                                      (let ((_%e146838146935%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146831146916%_))))
                                        (let ((_%tl146840146940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146838146935%_)))
                                              (_%hd146839146938%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146838146935%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd146839146938%_))
                                              (let ((_%e146841146943%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd146839146938%_))))
                                                (let ((_%tl146843146948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146841146943%_)))
                                                      (_%hd146842146946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146841146943%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd146842146946%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd146842146946%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl146843146948%_))
                      (let ((_%e146844146951%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl146843146948%_))))
                        (let ((_%tl146846146956%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146844146951%_)))
                              (_%hd146845146954%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146844146951%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl146846146956%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl146840146940%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl146816146876%_))
                                      (_%__match149152149153%_
                                       _%e146811146863%_
                                       _%hd146812146866%_
                                       _%tl146813146868%_
                                       _%e146814146871%_
                                       _%hd146815146874%_
                                       _%tl146816146876%_
                                       _%e146817146879%_
                                       _%hd146818146882%_
                                       _%tl146819146884%_
                                       _%e146820146887%_
                                       _%hd146821146890%_
                                       _%tl146822146892%_
                                       _%e146823146895%_
                                       _%hd146824146898%_
                                       _%tl146825146900%_
                                       _%e146826146903%_
                                       _%hd146827146906%_
                                       _%tl146828146908%_
                                       _%e146829146911%_
                                       _%hd146830146914%_
                                       _%tl146831146916%_
                                       _%e146832146919%_
                                       _%hd146833146922%_
                                       _%tl146834146924%_
                                       _%e146835146927%_
                                       _%hd146836146930%_
                                       _%tl146837146932%_
                                       _%e146838146935%_
                                       _%hd146839146938%_
                                       _%tl146840146940%_
                                       _%e146841146943%_
                                       _%hd146842146946%_
                                       _%tl146843146948%_
                                       _%e146844146951%_
                                       _%hd146845146954%_
                                       _%tl146846146956%_)
                                      (_%__kont149027149028%_))
                                  (_%__kont149027149028%_))
                              (_%__kont149027149028%_))))
                      (_%__kont149027149028%_))
                  (_%__kont149027149028%_))
              (_%__kont149027149028%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont149027149028%_))))
                                      (_%__kont149027149028%_))))
                               (_%__match149054149055%_
                                (lambda (_%e146747147004%_
                                         _%hd146748147007%_
                                         _%tl146749147009%_
                                         _%__splice149021149022%_
                                         _%target146750147012%_
                                         _%tl146752147014%_)
                                  (letrec ((_%loop146753147017%_
                                            (lambda (_%hd146751147020%_
                                                     _%arg146757147022%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146751147020%_))
                                                  (let ((_%e146754147025%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146751147020%_))))
                                                    (let ((_%lp-tl146756147030%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146754147025%_)))
                                                          (_%lp-hd146755147028%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146754147025%_))))
                                                      (_%loop146753147017%_
                                                       _%lp-tl146756147030%_
                                                       (cons _%lp-hd146755147028%_
                                                             _%arg146757147022%_))))
                                                  (let ((_%arg146758147033%_
                                                         (reverse _%arg146757147022%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146749147009%_))
                                                        (let ((_%e146759147036%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146749147009%_))))
                  (let ((_%tl146761147041%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146759147036%_)))
                        (_%hd146760147039%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146759147036%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146760147039%_))
                        (let ((_%e146762147044%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146760147039%_))))
                          (let ((_%tl146764147049%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146762147044%_)))
                                (_%hd146763147047%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146762147044%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146763147047%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146763147047%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146764147049%_))
                                        (let ((_%e146765147052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146764147049%_))))
                                          (let ((_%tl146767147057%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146765147052%_)))
                                                (_%hd146766147055%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146765147052%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146766147055%_))
                                                (let ((_%e146768147060%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146766147055%_))))
                                                  (let ((_%tl146770147065%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146768147060%_)))
                                                        (_%hd146769147063%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146768147060%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146769147063%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146769147063%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146770147065%_))
                        (let ((_%e146771147068%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146770147065%_))))
                          (let ((_%tl146773147073%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146771147068%_)))
                                (_%hd146772147071%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146771147068%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146773147073%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl146767147057%_))
                                    (let ((_%e146774147076%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl146767147057%_))))
                                      (let ((_%tl146776147081%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e146774147076%_)))
                                            (_%hd146775147079%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e146774147076%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd146775147079%_))
                                            (let ((_%e146777147084%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd146775147079%_))))
                                              (let ((_%tl146779147089%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146777147084%_)))
                                                    (_%hd146778147087%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146777147084%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd146778147087%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd146778147087%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl146779147089%_))
                                                            (let ((_%e146780147092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl146779147089%_))))
                      (let ((_%tl146782147097%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146780147092%_)))
                            (_%hd146781147095%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146780147092%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl146782147097%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl146776147081%_))
                                (if (let ((__tmp150293
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl146776147081%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp150293 '1))
                                    (let ((_%__splice149023149024%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl146776147081%_
                                              '1))))
                                      (let ((_%tl146785147102%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice149023149024%_
                                                '1)))
                                            (_%target146783147100%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice149023149024%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146785147102%_))
                                            (let ((_%e146792147105%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146785147102%_))))
                                              (let ((_%tl146794147110%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146792147105%_)))
                                                    (_%hd146793147108%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146792147105%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd146793147108%_))
                                                    (let ((_%e146795147113%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd146793147108%_))))
                                                      (let ((_%tl146797147118%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e146795147113%_)))
                    (_%hd146796147116%_
                     (let () (declare (not safe)) (##car _%e146795147113%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd146796147116%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd146796147116%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl146797147118%_))
                            (let ((_%e146798147121%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl146797147118%_))))
                              (let ((_%tl146800147126%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e146798147121%_)))
                                    (_%hd146799147124%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e146798147121%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl146800147126%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl146794147110%_))
                                        (letrec ((_%loop146786147129%_
                                                  (lambda (_%hd146784147132%_
                                                           _%xarg146790147134%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd146784147132%_))
                                                        (let ((_%e146787147137%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd146784147132%_))))
                  (let ((_%lp-tl146789147142%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146787147137%_)))
                        (_%lp-hd146788147140%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146787147137%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd146788147140%_))
                        (let ((_%e146801147145%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd146788147140%_))))
                          (let ((_%tl146803147150%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146801147145%_)))
                                (_%hd146802147148%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146801147145%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146802147148%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd146802147148%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146803147150%_))
                                        (let ((_%e146804147153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146803147150%_))))
                                          (let ((_%tl146806147158%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146804147153%_)))
                                                (_%hd146805147156%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146804147153%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl146806147158%_))
                                                (_%loop146786147129%_
                                                 _%lp-tl146789147142%_
                                                 (cons _%hd146805147156%_
                                                       _%xarg146790147134%_))
                                                (_%__match149124149125%_
                                                 _%e146747147004%_
                                                 _%hd146748147007%_
                                                 _%tl146749147009%_
                                                 _%e146759147036%_
                                                 _%hd146760147039%_
                                                 _%tl146761147041%_
                                                 _%e146762147044%_
                                                 _%hd146763147047%_
                                                 _%tl146764147049%_
                                                 _%e146765147052%_
                                                 _%hd146766147055%_
                                                 _%tl146767147057%_
                                                 _%e146768147060%_
                                                 _%hd146769147063%_
                                                 _%tl146770147065%_
                                                 _%e146771147068%_
                                                 _%hd146772147071%_
                                                 _%tl146773147073%_
                                                 _%e146774147076%_
                                                 _%hd146775147079%_
                                                 _%tl146776147081%_
                                                 _%e146777147084%_
                                                 _%hd146778147087%_
                                                 _%tl146779147089%_
                                                 _%e146780147092%_
                                                 _%hd146781147095%_
                                                 _%tl146782147097%_))))
                                        (_%__match149124149125%_
                                         _%e146747147004%_
                                         _%hd146748147007%_
                                         _%tl146749147009%_
                                         _%e146759147036%_
                                         _%hd146760147039%_
                                         _%tl146761147041%_
                                         _%e146762147044%_
                                         _%hd146763147047%_
                                         _%tl146764147049%_
                                         _%e146765147052%_
                                         _%hd146766147055%_
                                         _%tl146767147057%_
                                         _%e146768147060%_
                                         _%hd146769147063%_
                                         _%tl146770147065%_
                                         _%e146771147068%_
                                         _%hd146772147071%_
                                         _%tl146773147073%_
                                         _%e146774147076%_
                                         _%hd146775147079%_
                                         _%tl146776147081%_
                                         _%e146777147084%_
                                         _%hd146778147087%_
                                         _%tl146779147089%_
                                         _%e146780147092%_
                                         _%hd146781147095%_
                                         _%tl146782147097%_))
                                    (_%__match149124149125%_
                                     _%e146747147004%_
                                     _%hd146748147007%_
                                     _%tl146749147009%_
                                     _%e146759147036%_
                                     _%hd146760147039%_
                                     _%tl146761147041%_
                                     _%e146762147044%_
                                     _%hd146763147047%_
                                     _%tl146764147049%_
                                     _%e146765147052%_
                                     _%hd146766147055%_
                                     _%tl146767147057%_
                                     _%e146768147060%_
                                     _%hd146769147063%_
                                     _%tl146770147065%_
                                     _%e146771147068%_
                                     _%hd146772147071%_
                                     _%tl146773147073%_
                                     _%e146774147076%_
                                     _%hd146775147079%_
                                     _%tl146776147081%_
                                     _%e146777147084%_
                                     _%hd146778147087%_
                                     _%tl146779147089%_
                                     _%e146780147092%_
                                     _%hd146781147095%_
                                     _%tl146782147097%_))
                                (_%__match149124149125%_
                                 _%e146747147004%_
                                 _%hd146748147007%_
                                 _%tl146749147009%_
                                 _%e146759147036%_
                                 _%hd146760147039%_
                                 _%tl146761147041%_
                                 _%e146762147044%_
                                 _%hd146763147047%_
                                 _%tl146764147049%_
                                 _%e146765147052%_
                                 _%hd146766147055%_
                                 _%tl146767147057%_
                                 _%e146768147060%_
                                 _%hd146769147063%_
                                 _%tl146770147065%_
                                 _%e146771147068%_
                                 _%hd146772147071%_
                                 _%tl146773147073%_
                                 _%e146774147076%_
                                 _%hd146775147079%_
                                 _%tl146776147081%_
                                 _%e146777147084%_
                                 _%hd146778147087%_
                                 _%tl146779147089%_
                                 _%e146780147092%_
                                 _%hd146781147095%_
                                 _%tl146782147097%_))))
                        (_%__match149124149125%_
                         _%e146747147004%_
                         _%hd146748147007%_
                         _%tl146749147009%_
                         _%e146759147036%_
                         _%hd146760147039%_
                         _%tl146761147041%_
                         _%e146762147044%_
                         _%hd146763147047%_
                         _%tl146764147049%_
                         _%e146765147052%_
                         _%hd146766147055%_
                         _%tl146767147057%_
                         _%e146768147060%_
                         _%hd146769147063%_
                         _%tl146770147065%_
                         _%e146771147068%_
                         _%hd146772147071%_
                         _%tl146773147073%_
                         _%e146774147076%_
                         _%hd146775147079%_
                         _%tl146776147081%_
                         _%e146777147084%_
                         _%hd146778147087%_
                         _%tl146779147089%_
                         _%e146780147092%_
                         _%hd146781147095%_
                         _%tl146782147097%_))))
                (let ((_%xarg146791147161%_ (reverse _%xarg146790147134%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl146761147041%_))
                      (let ((_%L147164%_ _%hd146799147124%_)
                            (_%L147165%_ _%xarg146791147161%_)
                            (_%L147166%_ _%hd146781147095%_)
                            (_%L147167%_ _%hd146772147071%_)
                            (_%L147168%_ _%tl146752147014%_)
                            (_%L147169%_ _%arg146758147033%_))
                        (if (and (let ((__tmp150294
                                        (let ((__tmp150295
                                               (lambda (_%g147212147215%_
                                                        _%g147213147217%_)
                                                 (cons _%g147212147215%_
                                                       _%g147213147217%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp150295
                                           '()
                                           _%L147169%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp150294))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L147168%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L147167%_
                                    'apply))
                                 (let ((__tmp150298
                                        (length (let ((__tmp150299
                                                       (lambda (_%g147219147222%_
                                                                _%g147220147224%_)
                                                         (cons _%g147219147222%_
                                                               _%g147220147224%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp150299
                                                   '()
                                                   _%L147169%_))))
                                       (__tmp150296
                                        (length (let ((__tmp150297
                                                       (lambda (_%g147226147229%_
                                                                _%g147227147231%_)
                                                         (cons _%g147226147229%_
                                                               _%g147227147231%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp150297
                                                   '()
                                                   _%L147165%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp150298 __tmp150296))
                                 (let ((__tmp150302
                                        (let ((__tmp150303
                                               (lambda (_%g147233147236%_
                                                        _%g147234147238%_)
                                                 (cons _%g147233147236%_
                                                       _%g147234147238%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp150303
                                           '()
                                           _%L147169%_)))
                                       (__tmp150300
                                        (let ((__tmp150301
                                               (lambda (_%g147240147243%_
                                                        _%g147241147245%_)
                                                 (cons _%g147240147243%_
                                                       _%g147241147245%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp150301
                                           '()
                                           _%L147165%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp150302
                                    __tmp150300))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L147168%_
                                    _%L147164%_))
                                 (not (let ((__tmp150307
                                             (lambda (_%g147247147249%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g147247147249%_
                                                  _%L147166%_))))
                                            (__tmp150304
                                             (let ((__tmp150306
                                                    (lambda (_%g147251147254%_
                                                             _%g147252147256%_)
                                                      (cons _%g147251147254%_
                                                            _%g147252147256%_)))
                                                   (__tmp150305
                                                    (cons _%L147168%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp150306
                                                __tmp150305
                                                _%L147169%_))))
                                        (declare (not safe))
                                        (__find __tmp150307 __tmp150304))))
                            (_%__kont149019149020%_
                             _%L147164%_
                             _%L147165%_
                             _%L147166%_
                             _%L147167%_
                             _%L147168%_
                             _%L147169%_)
                            (_%__match149124149125%_
                             _%e146747147004%_
                             _%hd146748147007%_
                             _%tl146749147009%_
                             _%e146759147036%_
                             _%hd146760147039%_
                             _%tl146761147041%_
                             _%e146762147044%_
                             _%hd146763147047%_
                             _%tl146764147049%_
                             _%e146765147052%_
                             _%hd146766147055%_
                             _%tl146767147057%_
                             _%e146768147060%_
                             _%hd146769147063%_
                             _%tl146770147065%_
                             _%e146771147068%_
                             _%hd146772147071%_
                             _%tl146773147073%_
                             _%e146774147076%_
                             _%hd146775147079%_
                             _%tl146776147081%_
                             _%e146777147084%_
                             _%hd146778147087%_
                             _%tl146779147089%_
                             _%e146780147092%_
                             _%hd146781147095%_
                             _%tl146782147097%_)))
                      (_%__match149124149125%_
                       _%e146747147004%_
                       _%hd146748147007%_
                       _%tl146749147009%_
                       _%e146759147036%_
                       _%hd146760147039%_
                       _%tl146761147041%_
                       _%e146762147044%_
                       _%hd146763147047%_
                       _%tl146764147049%_
                       _%e146765147052%_
                       _%hd146766147055%_
                       _%tl146767147057%_
                       _%e146768147060%_
                       _%hd146769147063%_
                       _%tl146770147065%_
                       _%e146771147068%_
                       _%hd146772147071%_
                       _%tl146773147073%_
                       _%e146774147076%_
                       _%hd146775147079%_
                       _%tl146776147081%_
                       _%e146777147084%_
                       _%hd146778147087%_
                       _%tl146779147089%_
                       _%e146780147092%_
                       _%hd146781147095%_
                       _%tl146782147097%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop146786147129%_
                                           _%target146783147100%_
                                           '()))
                                        (_%__match149124149125%_
                                         _%e146747147004%_
                                         _%hd146748147007%_
                                         _%tl146749147009%_
                                         _%e146759147036%_
                                         _%hd146760147039%_
                                         _%tl146761147041%_
                                         _%e146762147044%_
                                         _%hd146763147047%_
                                         _%tl146764147049%_
                                         _%e146765147052%_
                                         _%hd146766147055%_
                                         _%tl146767147057%_
                                         _%e146768147060%_
                                         _%hd146769147063%_
                                         _%tl146770147065%_
                                         _%e146771147068%_
                                         _%hd146772147071%_
                                         _%tl146773147073%_
                                         _%e146774147076%_
                                         _%hd146775147079%_
                                         _%tl146776147081%_
                                         _%e146777147084%_
                                         _%hd146778147087%_
                                         _%tl146779147089%_
                                         _%e146780147092%_
                                         _%hd146781147095%_
                                         _%tl146782147097%_))
                                    (_%__match149124149125%_
                                     _%e146747147004%_
                                     _%hd146748147007%_
                                     _%tl146749147009%_
                                     _%e146759147036%_
                                     _%hd146760147039%_
                                     _%tl146761147041%_
                                     _%e146762147044%_
                                     _%hd146763147047%_
                                     _%tl146764147049%_
                                     _%e146765147052%_
                                     _%hd146766147055%_
                                     _%tl146767147057%_
                                     _%e146768147060%_
                                     _%hd146769147063%_
                                     _%tl146770147065%_
                                     _%e146771147068%_
                                     _%hd146772147071%_
                                     _%tl146773147073%_
                                     _%e146774147076%_
                                     _%hd146775147079%_
                                     _%tl146776147081%_
                                     _%e146777147084%_
                                     _%hd146778147087%_
                                     _%tl146779147089%_
                                     _%e146780147092%_
                                     _%hd146781147095%_
                                     _%tl146782147097%_))))
                            (_%__match149124149125%_
                             _%e146747147004%_
                             _%hd146748147007%_
                             _%tl146749147009%_
                             _%e146759147036%_
                             _%hd146760147039%_
                             _%tl146761147041%_
                             _%e146762147044%_
                             _%hd146763147047%_
                             _%tl146764147049%_
                             _%e146765147052%_
                             _%hd146766147055%_
                             _%tl146767147057%_
                             _%e146768147060%_
                             _%hd146769147063%_
                             _%tl146770147065%_
                             _%e146771147068%_
                             _%hd146772147071%_
                             _%tl146773147073%_
                             _%e146774147076%_
                             _%hd146775147079%_
                             _%tl146776147081%_
                             _%e146777147084%_
                             _%hd146778147087%_
                             _%tl146779147089%_
                             _%e146780147092%_
                             _%hd146781147095%_
                             _%tl146782147097%_))
                        (_%__match149124149125%_
                         _%e146747147004%_
                         _%hd146748147007%_
                         _%tl146749147009%_
                         _%e146759147036%_
                         _%hd146760147039%_
                         _%tl146761147041%_
                         _%e146762147044%_
                         _%hd146763147047%_
                         _%tl146764147049%_
                         _%e146765147052%_
                         _%hd146766147055%_
                         _%tl146767147057%_
                         _%e146768147060%_
                         _%hd146769147063%_
                         _%tl146770147065%_
                         _%e146771147068%_
                         _%hd146772147071%_
                         _%tl146773147073%_
                         _%e146774147076%_
                         _%hd146775147079%_
                         _%tl146776147081%_
                         _%e146777147084%_
                         _%hd146778147087%_
                         _%tl146779147089%_
                         _%e146780147092%_
                         _%hd146781147095%_
                         _%tl146782147097%_))
                    (_%__match149124149125%_
                     _%e146747147004%_
                     _%hd146748147007%_
                     _%tl146749147009%_
                     _%e146759147036%_
                     _%hd146760147039%_
                     _%tl146761147041%_
                     _%e146762147044%_
                     _%hd146763147047%_
                     _%tl146764147049%_
                     _%e146765147052%_
                     _%hd146766147055%_
                     _%tl146767147057%_
                     _%e146768147060%_
                     _%hd146769147063%_
                     _%tl146770147065%_
                     _%e146771147068%_
                     _%hd146772147071%_
                     _%tl146773147073%_
                     _%e146774147076%_
                     _%hd146775147079%_
                     _%tl146776147081%_
                     _%e146777147084%_
                     _%hd146778147087%_
                     _%tl146779147089%_
                     _%e146780147092%_
                     _%hd146781147095%_
                     _%tl146782147097%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match149124149125%_
                                                     _%e146747147004%_
                                                     _%hd146748147007%_
                                                     _%tl146749147009%_
                                                     _%e146759147036%_
                                                     _%hd146760147039%_
                                                     _%tl146761147041%_
                                                     _%e146762147044%_
                                                     _%hd146763147047%_
                                                     _%tl146764147049%_
                                                     _%e146765147052%_
                                                     _%hd146766147055%_
                                                     _%tl146767147057%_
                                                     _%e146768147060%_
                                                     _%hd146769147063%_
                                                     _%tl146770147065%_
                                                     _%e146771147068%_
                                                     _%hd146772147071%_
                                                     _%tl146773147073%_
                                                     _%e146774147076%_
                                                     _%hd146775147079%_
                                                     _%tl146776147081%_
                                                     _%e146777147084%_
                                                     _%hd146778147087%_
                                                     _%tl146779147089%_
                                                     _%e146780147092%_
                                                     _%hd146781147095%_
                                                     _%tl146782147097%_))))
                                            (_%__match149124149125%_
                                             _%e146747147004%_
                                             _%hd146748147007%_
                                             _%tl146749147009%_
                                             _%e146759147036%_
                                             _%hd146760147039%_
                                             _%tl146761147041%_
                                             _%e146762147044%_
                                             _%hd146763147047%_
                                             _%tl146764147049%_
                                             _%e146765147052%_
                                             _%hd146766147055%_
                                             _%tl146767147057%_
                                             _%e146768147060%_
                                             _%hd146769147063%_
                                             _%tl146770147065%_
                                             _%e146771147068%_
                                             _%hd146772147071%_
                                             _%tl146773147073%_
                                             _%e146774147076%_
                                             _%hd146775147079%_
                                             _%tl146776147081%_
                                             _%e146777147084%_
                                             _%hd146778147087%_
                                             _%tl146779147089%_
                                             _%e146780147092%_
                                             _%hd146781147095%_
                                             _%tl146782147097%_))))
                                    (_%__match149124149125%_
                                     _%e146747147004%_
                                     _%hd146748147007%_
                                     _%tl146749147009%_
                                     _%e146759147036%_
                                     _%hd146760147039%_
                                     _%tl146761147041%_
                                     _%e146762147044%_
                                     _%hd146763147047%_
                                     _%tl146764147049%_
                                     _%e146765147052%_
                                     _%hd146766147055%_
                                     _%tl146767147057%_
                                     _%e146768147060%_
                                     _%hd146769147063%_
                                     _%tl146770147065%_
                                     _%e146771147068%_
                                     _%hd146772147071%_
                                     _%tl146773147073%_
                                     _%e146774147076%_
                                     _%hd146775147079%_
                                     _%tl146776147081%_
                                     _%e146777147084%_
                                     _%hd146778147087%_
                                     _%tl146779147089%_
                                     _%e146780147092%_
                                     _%hd146781147095%_
                                     _%tl146782147097%_))
                                (_%__match149124149125%_
                                 _%e146747147004%_
                                 _%hd146748147007%_
                                 _%tl146749147009%_
                                 _%e146759147036%_
                                 _%hd146760147039%_
                                 _%tl146761147041%_
                                 _%e146762147044%_
                                 _%hd146763147047%_
                                 _%tl146764147049%_
                                 _%e146765147052%_
                                 _%hd146766147055%_
                                 _%tl146767147057%_
                                 _%e146768147060%_
                                 _%hd146769147063%_
                                 _%tl146770147065%_
                                 _%e146771147068%_
                                 _%hd146772147071%_
                                 _%tl146773147073%_
                                 _%e146774147076%_
                                 _%hd146775147079%_
                                 _%tl146776147081%_
                                 _%e146777147084%_
                                 _%hd146778147087%_
                                 _%tl146779147089%_
                                 _%e146780147092%_
                                 _%hd146781147095%_
                                 _%tl146782147097%_))
                            (_%__kont149027149028%_))))
                    (_%__kont149027149028%_))
                (_%__kont149027149028%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont149027149028%_))))
                                            (_%__kont149027149028%_))))
                                    (_%__kont149027149028%_))
                                (_%__kont149027149028%_))))
                        (_%__kont149027149028%_))
                    (_%__kont149027149028%_))
                (_%__kont149027149028%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont149027149028%_))))
                                        (_%__kont149027149028%_))
                                    (_%__kont149027149028%_))
                                (_%__kont149027149028%_))))
                        (_%__kont149027149028%_))))
                (_%__kont149027149028%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146753147017%_
                                     _%target146750147012%_
                                     '()))))
                               (_%__match149042149043%_
                                (lambda (_%e146699147264%_
                                         _%hd146700147267%_
                                         _%tl146701147269%_
                                         _%__splice149015149016%_
                                         _%target146702147272%_
                                         _%tl146704147274%_)
                                  (letrec ((_%loop146705147277%_
                                            (lambda (_%hd146703147280%_
                                                     _%arg146709147282%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146703147280%_))
                                                  (let ((_%e146706147285%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146703147280%_))))
                                                    (let ((_%lp-tl146708147290%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146706147285%_)))
                                                          (_%lp-hd146707147288%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146706147285%_))))
                                                      (_%loop146705147277%_
                                                       _%lp-tl146708147290%_
                                                       (cons _%lp-hd146707147288%_
                                                             _%arg146709147282%_))))
                                                  (let ((_%arg146710147293%_
                                                         (reverse _%arg146709147282%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146701147269%_))
                                                        (let ((_%e146711147296%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146701147269%_))))
                  (let ((_%tl146713147301%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146711147296%_)))
                        (_%hd146712147299%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146711147296%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146712147299%_))
                        (let ((_%e146714147304%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146712147299%_))))
                          (let ((_%tl146716147309%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146714147304%_)))
                                (_%hd146715147307%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146714147304%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146715147307%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146715147307%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146716147309%_))
                                        (let ((_%e146717147312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146716147309%_))))
                                          (let ((_%tl146719147317%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146717147312%_)))
                                                (_%hd146718147315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146717147312%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146718147315%_))
                                                (let ((_%e146720147320%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146718147315%_))))
                                                  (let ((_%tl146722147325%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146720147320%_)))
                                                        (_%hd146721147323%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146720147320%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146721147323%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146721147323%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146722147325%_))
                        (let ((_%e146723147328%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146722147325%_))))
                          (let ((_%tl146725147333%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146723147328%_)))
                                (_%hd146724147331%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146723147328%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146725147333%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl146719147317%_))
                                    (let ((_%__splice149017149018%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl146719147317%_
                                              '0))))
                                      (let ((_%tl146728147338%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice149017149018%_
                                                '1)))
                                            (_%target146726147336%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice149017149018%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl146728147338%_))
                                            (letrec ((_%loop146729147341%_
                                                      (lambda (_%hd146727147344%_
                                                               _%xarg146733147346%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd146727147344%_))
                                                            (let ((_%e146730147349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd146727147344%_))))
                      (let ((_%lp-tl146732147354%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146730147349%_)))
                            (_%lp-hd146731147352%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146730147349%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd146731147352%_))
                            (let ((_%e146735147357%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd146731147352%_))))
                              (let ((_%tl146737147362%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e146735147357%_)))
                                    (_%hd146736147360%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e146735147357%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd146736147360%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd146736147360%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146737147362%_))
                                            (let ((_%e146738147365%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146737147362%_))))
                                              (let ((_%tl146740147370%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146738147365%_)))
                                                    (_%hd146739147368%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146738147365%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl146740147370%_))
                                                    (_%loop146729147341%_
                                                     _%lp-tl146732147354%_
                                                     (cons _%hd146739147368%_
                                                           _%xarg146733147346%_))
                                                    (_%__match149054149055%_
                                                     _%e146699147264%_
                                                     _%hd146700147267%_
                                                     _%tl146701147269%_
                                                     _%__splice149015149016%_
                                                     _%target146702147272%_
                                                     _%tl146704147274%_))))
                                            (_%__match149054149055%_
                                             _%e146699147264%_
                                             _%hd146700147267%_
                                             _%tl146701147269%_
                                             _%__splice149015149016%_
                                             _%target146702147272%_
                                             _%tl146704147274%_))
                                        (_%__match149054149055%_
                                         _%e146699147264%_
                                         _%hd146700147267%_
                                         _%tl146701147269%_
                                         _%__splice149015149016%_
                                         _%target146702147272%_
                                         _%tl146704147274%_))
                                    (_%__match149054149055%_
                                     _%e146699147264%_
                                     _%hd146700147267%_
                                     _%tl146701147269%_
                                     _%__splice149015149016%_
                                     _%target146702147272%_
                                     _%tl146704147274%_))))
                            (_%__match149054149055%_
                             _%e146699147264%_
                             _%hd146700147267%_
                             _%tl146701147269%_
                             _%__splice149015149016%_
                             _%target146702147272%_
                             _%tl146704147274%_))))
                    (let ((_%xarg146734147373%_
                           (reverse _%xarg146733147346%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl146713147301%_))
                          (let ((_%L147376%_ _%xarg146734147373%_)
                                (_%L147377%_ _%hd146724147331%_)
                                (_%L147378%_ _%arg146710147293%_))
                            (if (and (let ((__tmp150308
                                            (let ((__tmp150309
                                                   (lambda (_%g147406147409%_
                                                            _%g147407147411%_)
                                                     (cons _%g147406147409%_
                                                           _%g147407147411%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150309
                                               '()
                                               _%L147378%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp150308))
                                     (let ((__tmp150312
                                            (length (let ((__tmp150313
                                                           (lambda (_%g147413147416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g147414147418%_)
                     (cons _%g147413147416%_ _%g147414147418%_))))
              (declare (not safe))
              (__foldr1 __tmp150313 '() _%L147378%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp150310
                                            (length (let ((__tmp150311
                                                           (lambda (_%g147420147423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g147421147425%_)
                     (cons _%g147420147423%_ _%g147421147425%_))))
              (declare (not safe))
              (__foldr1 __tmp150311 '() _%L147376%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp150312 __tmp150310))
                                     (let ((__tmp150316
                                            (let ((__tmp150317
                                                   (lambda (_%g147427147430%_
                                                            _%g147428147432%_)
                                                     (cons _%g147427147430%_
                                                           _%g147428147432%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150317
                                               '()
                                               _%L147378%_)))
                                           (__tmp150314
                                            (let ((__tmp150315
                                                   (lambda (_%g147434147437%_
                                                            _%g147435147439%_)
                                                     (cons _%g147434147437%_
                                                           _%g147435147439%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150315
                                               '()
                                               _%L147376%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp150316
                                        __tmp150314))
                                     (not (let ((__tmp150320
                                                 (lambda (_%g147441147443%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g147441147443%_
                                                      _%L147377%_))))
                                                (__tmp150318
                                                 (let ((__tmp150319
                                                        (lambda (_%g147445147448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g147446147450%_)
                  (cons _%g147445147448%_ _%g147446147450%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp150319
                                                    '()
                                                    _%L147378%_))))
                                            (declare (not safe))
                                            (__find __tmp150320 __tmp150318))))
                                (_%__kont149013149014%_
                                 _%L147376%_
                                 _%L147377%_
                                 _%L147378%_)
                                (_%__match149054149055%_
                                 _%e146699147264%_
                                 _%hd146700147267%_
                                 _%tl146701147269%_
                                 _%__splice149015149016%_
                                 _%target146702147272%_
                                 _%tl146704147274%_)))
                          (_%__match149054149055%_
                           _%e146699147264%_
                           _%hd146700147267%_
                           _%tl146701147269%_
                           _%__splice149015149016%_
                           _%target146702147272%_
                           _%tl146704147274%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop146729147341%_
                                               _%target146726147336%_
                                               '()))
                                            (_%__match149054149055%_
                                             _%e146699147264%_
                                             _%hd146700147267%_
                                             _%tl146701147269%_
                                             _%__splice149015149016%_
                                             _%target146702147272%_
                                             _%tl146704147274%_))))
                                    (_%__match149054149055%_
                                     _%e146699147264%_
                                     _%hd146700147267%_
                                     _%tl146701147269%_
                                     _%__splice149015149016%_
                                     _%target146702147272%_
                                     _%tl146704147274%_))
                                (_%__match149054149055%_
                                 _%e146699147264%_
                                 _%hd146700147267%_
                                 _%tl146701147269%_
                                 _%__splice149015149016%_
                                 _%target146702147272%_
                                 _%tl146704147274%_))))
                        (_%__match149054149055%_
                         _%e146699147264%_
                         _%hd146700147267%_
                         _%tl146701147269%_
                         _%__splice149015149016%_
                         _%target146702147272%_
                         _%tl146704147274%_))
                    (_%__match149054149055%_
                     _%e146699147264%_
                     _%hd146700147267%_
                     _%tl146701147269%_
                     _%__splice149015149016%_
                     _%target146702147272%_
                     _%tl146704147274%_))
                (_%__match149054149055%_
                 _%e146699147264%_
                 _%hd146700147267%_
                 _%tl146701147269%_
                 _%__splice149015149016%_
                 _%target146702147272%_
                 _%tl146704147274%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match149054149055%_
                                                 _%e146699147264%_
                                                 _%hd146700147267%_
                                                 _%tl146701147269%_
                                                 _%__splice149015149016%_
                                                 _%target146702147272%_
                                                 _%tl146704147274%_))))
                                        (_%__match149054149055%_
                                         _%e146699147264%_
                                         _%hd146700147267%_
                                         _%tl146701147269%_
                                         _%__splice149015149016%_
                                         _%target146702147272%_
                                         _%tl146704147274%_))
                                    (_%__match149054149055%_
                                     _%e146699147264%_
                                     _%hd146700147267%_
                                     _%tl146701147269%_
                                     _%__splice149015149016%_
                                     _%target146702147272%_
                                     _%tl146704147274%_))
                                (_%__match149054149055%_
                                 _%e146699147264%_
                                 _%hd146700147267%_
                                 _%tl146701147269%_
                                 _%__splice149015149016%_
                                 _%target146702147272%_
                                 _%tl146704147274%_))))
                        (_%__match149054149055%_
                         _%e146699147264%_
                         _%hd146700147267%_
                         _%tl146701147269%_
                         _%__splice149015149016%_
                         _%target146702147272%_
                         _%tl146704147274%_))))
                (_%__match149054149055%_
                 _%e146699147264%_
                 _%hd146700147267%_
                 _%tl146701147269%_
                 _%__splice149015149016%_
                 _%target146702147272%_
                 _%tl146704147274%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146705147277%_
                                     _%target146702147272%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx149011149012%_))
                              (let ((_%e146699147264%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx149011149012%_))))
                                (let ((_%tl146701147269%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146699147264%_)))
                                      (_%hd146700147267%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146699147264%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd146700147267%_))
                                      (let ((_%__splice149015149016%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd146700147267%_
                                                '0))))
                                        (let ((_%tl146704147274%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice149015149016%_
                                                  '1)))
                                              (_%target146702147272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice149015149016%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146704147274%_))
                                              (_%__match149042149043%_
                                               _%e146699147264%_
                                               _%hd146700147267%_
                                               _%tl146701147269%_
                                               _%__splice149015149016%_
                                               _%target146702147272%_
                                               _%tl146704147274%_)
                                              (_%__match149054149055%_
                                               _%e146699147264%_
                                               _%hd146700147267%_
                                               _%tl146701147269%_
                                               _%__splice149015149016%_
                                               _%target146702147272%_
                                               _%tl146704147274%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl146701147269%_))
                                          (let ((_%e146814146871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl146701147269%_))))
                                            (let ((_%tl146816146876%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e146814146871%_)))
                                                  (_%hd146815146874%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e146814146871%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146815146874%_))
                                                  (let ((_%e146817146879%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146815146874%_))))
                                                    (let ((_%tl146819146884%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146817146879%_)))
                                                          (_%hd146818146882%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146817146879%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd146818146882%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd146818146882%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146819146884%_))
                          (let ((_%e146820146887%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146819146884%_))))
                            (let ((_%tl146822146892%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146820146887%_)))
                                  (_%hd146821146890%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146820146887%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd146821146890%_))
                                  (let ((_%e146823146895%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd146821146890%_))))
                                    (let ((_%tl146825146900%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146823146895%_)))
                                          (_%hd146824146898%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146823146895%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd146824146898%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd146824146898%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl146825146900%_))
                                                  (let ((_%e146826146903%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl146825146900%_))))
                                                    (let ((_%tl146828146908%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146826146903%_)))
                                                          (_%hd146827146906%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146826146903%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146828146908%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl146822146892%_))
                      (let ((_%e146829146911%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl146822146892%_))))
                        (let ((_%tl146831146916%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146829146911%_)))
                              (_%hd146830146914%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146829146911%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd146830146914%_))
                              (let ((_%e146832146919%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd146830146914%_))))
                                (let ((_%tl146834146924%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146832146919%_)))
                                      (_%hd146833146922%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146832146919%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd146833146922%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd146833146922%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl146834146924%_))
                                              (let ((_%e146835146927%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl146834146924%_))))
                                                (let ((_%tl146837146932%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146835146927%_)))
                                                      (_%hd146836146930%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146835146927%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146837146932%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl146831146916%_))
                                                          (let ((_%e146838146935%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl146831146916%_))))
                    (let ((_%tl146840146940%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146838146935%_)))
                          (_%hd146839146938%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146838146935%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd146839146938%_))
                          (let ((_%e146841146943%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd146839146938%_))))
                            (let ((_%tl146843146948%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146841146943%_)))
                                  (_%hd146842146946%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146841146943%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd146842146946%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd146842146946%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl146843146948%_))
                                          (let ((_%e146844146951%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl146843146948%_))))
                                            (let ((_%tl146846146956%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e146844146951%_)))
                                                  (_%hd146845146954%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e146844146951%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl146846146956%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146840146940%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146816146876%_))
                                                          (_%__match149152149153%_
                                                           _%e146699147264%_
                                                           _%hd146700147267%_
                                                           _%tl146701147269%_
                                                           _%e146814146871%_
                                                           _%hd146815146874%_
                                                           _%tl146816146876%_
                                                           _%e146817146879%_
                                                           _%hd146818146882%_
                                                           _%tl146819146884%_
                                                           _%e146820146887%_
                                                           _%hd146821146890%_
                                                           _%tl146822146892%_
                                                           _%e146823146895%_
                                                           _%hd146824146898%_
                                                           _%tl146825146900%_
                                                           _%e146826146903%_
                                                           _%hd146827146906%_
                                                           _%tl146828146908%_
                                                           _%e146829146911%_
                                                           _%hd146830146914%_
                                                           _%tl146831146916%_
                                                           _%e146832146919%_
                                                           _%hd146833146922%_
                                                           _%tl146834146924%_
                                                           _%e146835146927%_
                                                           _%hd146836146930%_
                                                           _%tl146837146932%_
                                                           _%e146838146935%_
                                                           _%hd146839146938%_
                                                           _%tl146840146940%_
                                                           _%e146841146943%_
                                                           _%hd146842146946%_
                                                           _%tl146843146948%_
                                                           _%e146844146951%_
                                                           _%hd146845146954%_
                                                           _%tl146846146956%_)
                                                          (_%__kont149027149028%_))
                                                      (_%__kont149027149028%_))
                                                  (_%__kont149027149028%_))))
                                          (_%__kont149027149028%_))
                                      (_%__kont149027149028%_))
                                  (_%__kont149027149028%_))))
                          (_%__kont149027149028%_))))
                  (_%__kont149027149028%_))
              (_%__kont149027149028%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont149027149028%_))
                                          (_%__kont149027149028%_))
                                      (_%__kont149027149028%_))))
                              (_%__kont149027149028%_))))
                      (_%__kont149027149028%_))
                  (_%__kont149027149028%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont149027149028%_))
                                              (_%__kont149027149028%_))
                                          (_%__kont149027149028%_))))
                                  (_%__kont149027149028%_))))
                          (_%__kont149027149028%_))
                      (_%__kont149027149028%_))
                  (_%__kont149027149028%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont149027149028%_))))
                                          (_%__kont149027149028%_)))))
                              (_%__kont149027149028%_)))))))
                 (_%dispatch-case-e145999%_
                  (lambda (_%hd146150%_ _%body146151%_)
                    (let* ((_%form146153%_
                            (cons _%hd146150%_ (cons _%body146151%_ '())))
                           (_%__stx149155149156%_ _%form146153%_)
                           (_%g146157146281%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx149155149156%_)))))
                      (let ((_%__kont149157149158%_
                             (lambda (_%L146652%_ _%L146653%_ _%L146654%_)
                               (let ((__tmp150321
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L146653%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self145995%_
                                  __tmp150321))))
                            (_%__kont149163149164%_
                             (lambda (_%L146500%_
                                      _%L146501%_
                                      _%L146502%_
                                      _%L146503%_)
                               (let ((__tmp150322
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L146500%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self145995%_
                                  __tmp150322))))
                            (_%__kont149167149168%_
                             (lambda (_%L146366%_ _%L146367%_ _%L146368%_)
                               (let ((__tmp150323
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L146366%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self145995%_
                                  __tmp150323)))))
                        (let* ((_%__match149264149265%_
                                (lambda (_%e146247146286%_
                                         _%hd146248146289%_
                                         _%tl146249146291%_
                                         _%e146250146294%_
                                         _%hd146251146297%_
                                         _%tl146252146299%_
                                         _%e146253146302%_
                                         _%hd146254146305%_
                                         _%tl146255146307%_
                                         _%e146256146310%_
                                         _%hd146257146313%_
                                         _%tl146258146315%_
                                         _%e146259146318%_
                                         _%hd146260146321%_
                                         _%tl146261146323%_
                                         _%e146262146326%_
                                         _%hd146263146329%_
                                         _%tl146264146331%_
                                         _%e146265146334%_
                                         _%hd146266146337%_
                                         _%tl146267146339%_
                                         _%e146268146342%_
                                         _%hd146269146345%_
                                         _%tl146270146347%_
                                         _%e146271146350%_
                                         _%hd146272146353%_
                                         _%tl146273146355%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146267146339%_))
                                      (let ((_%e146274146358%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146267146339%_))))
                                        (let ((_%tl146276146363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146274146358%_)))
                                              (_%hd146275146361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146274146358%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146276146363%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl146252146299%_))
                                                  (_%__kont149167149168%_
                                                   _%hd146272146353%_
                                                   _%hd146263146329%_
                                                   _%hd146248146289%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g146157146281%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g146157146281%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g146157146281%_)))))
                               (_%__match149194149195%_
                                (lambda (_%e146208146404%_
                                         _%hd146209146407%_
                                         _%tl146210146409%_
                                         _%__splice149165149166%_
                                         _%target146211146412%_
                                         _%tl146213146414%_)
                                  (letrec ((_%loop146214146417%_
                                            (lambda (_%hd146212146420%_
                                                     _%arg146218146422%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146212146420%_))
                                                  (let ((_%e146215146425%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146212146420%_))))
                                                    (let ((_%lp-tl146217146430%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146215146425%_)))
                                                          (_%lp-hd146216146428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146215146425%_))))
                                                      (_%loop146214146417%_
                                                       _%lp-tl146217146430%_
                                                       (cons _%lp-hd146216146428%_
                                                             _%arg146218146422%_))))
                                                  (let ((_%arg146219146433%_
                                                         (reverse _%arg146218146422%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146210146409%_))
                                                        (let ((_%e146220146436%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146210146409%_))))
                  (let ((_%tl146222146441%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146220146436%_)))
                        (_%hd146221146439%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146220146436%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146221146439%_))
                        (let ((_%e146223146444%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146221146439%_))))
                          (let ((_%tl146225146449%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146223146444%_)))
                                (_%hd146224146447%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146223146444%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146224146447%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146224146447%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146225146449%_))
                                        (let ((_%e146226146452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146225146449%_))))
                                          (let ((_%tl146228146457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146226146452%_)))
                                                (_%hd146227146455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146226146452%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146227146455%_))
                                                (let ((_%e146229146460%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146227146455%_))))
                                                  (let ((_%tl146231146465%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146229146460%_)))
                                                        (_%hd146230146463%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146229146460%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146230146463%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146230146463%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146231146465%_))
                        (let ((_%e146232146468%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146231146465%_))))
                          (let ((_%tl146234146473%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146232146468%_)))
                                (_%hd146233146471%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146232146468%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146234146473%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl146228146457%_))
                                    (let ((_%e146235146476%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl146228146457%_))))
                                      (let ((_%tl146237146481%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e146235146476%_)))
                                            (_%hd146236146479%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e146235146476%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd146236146479%_))
                                            (let ((_%e146238146484%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd146236146479%_))))
                                              (let ((_%tl146240146489%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146238146484%_)))
                                                    (_%hd146239146487%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146238146484%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd146239146487%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd146239146487%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl146240146489%_))
                                                            (let ((_%e146241146492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl146240146489%_))))
                      (let ((_%tl146243146497%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146241146492%_)))
                            (_%hd146242146495%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146241146492%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl146243146497%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146222146441%_))
                                (_%__kont149163149164%_
                                 _%hd146242146495%_
                                 _%hd146233146471%_
                                 _%tl146213146414%_
                                 _%arg146219146433%_)
                                (_%__match149264149265%_
                                 _%e146208146404%_
                                 _%hd146209146407%_
                                 _%tl146210146409%_
                                 _%e146220146436%_
                                 _%hd146221146439%_
                                 _%tl146222146441%_
                                 _%e146223146444%_
                                 _%hd146224146447%_
                                 _%tl146225146449%_
                                 _%e146226146452%_
                                 _%hd146227146455%_
                                 _%tl146228146457%_
                                 _%e146229146460%_
                                 _%hd146230146463%_
                                 _%tl146231146465%_
                                 _%e146232146468%_
                                 _%hd146233146471%_
                                 _%tl146234146473%_
                                 _%e146235146476%_
                                 _%hd146236146479%_
                                 _%tl146237146481%_
                                 _%e146238146484%_
                                 _%hd146239146487%_
                                 _%tl146240146489%_
                                 _%e146241146492%_
                                 _%hd146242146495%_
                                 _%tl146243146497%_))
                            (let ()
                              (declare (not safe))
                              (_%g146157146281%_)))))
                    (let () (declare (not safe)) (_%g146157146281%_)))
                (let () (declare (not safe)) (_%g146157146281%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g146157146281%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g146157146281%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g146157146281%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g146157146281%_)))))
                        (let () (declare (not safe)) (_%g146157146281%_)))
                    (let () (declare (not safe)) (_%g146157146281%_)))
                (let () (declare (not safe)) (_%g146157146281%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g146157146281%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g146157146281%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g146157146281%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g146157146281%_)))))
                        (let () (declare (not safe)) (_%g146157146281%_)))))
                (let () (declare (not safe)) (_%g146157146281%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146214146417%_
                                     _%target146211146412%_
                                     '()))))
                               (_%__match149182149183%_
                                (lambda (_%e146162146540%_
                                         _%hd146163146543%_
                                         _%tl146164146545%_
                                         _%__splice149159149160%_
                                         _%target146165146548%_
                                         _%tl146167146550%_)
                                  (letrec ((_%loop146168146553%_
                                            (lambda (_%hd146166146556%_
                                                     _%arg146172146558%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146166146556%_))
                                                  (let ((_%e146169146561%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146166146556%_))))
                                                    (let ((_%lp-tl146171146566%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146169146561%_)))
                                                          (_%lp-hd146170146564%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146169146561%_))))
                                                      (_%loop146168146553%_
                                                       _%lp-tl146171146566%_
                                                       (cons _%lp-hd146170146564%_
                                                             _%arg146172146558%_))))
                                                  (let ((_%arg146173146569%_
                                                         (reverse _%arg146172146558%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146164146545%_))
                                                        (let ((_%e146174146572%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146164146545%_))))
                  (let ((_%tl146176146577%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146174146572%_)))
                        (_%hd146175146575%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146174146572%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146175146575%_))
                        (let ((_%e146177146580%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146175146575%_))))
                          (let ((_%tl146179146585%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146177146580%_)))
                                (_%hd146178146583%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146177146580%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146178146583%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146178146583%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146179146585%_))
                                        (let ((_%e146180146588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146179146585%_))))
                                          (let ((_%tl146182146593%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146180146588%_)))
                                                (_%hd146181146591%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146180146588%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146181146591%_))
                                                (let ((_%e146183146596%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146181146591%_))))
                                                  (let ((_%tl146185146601%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146183146596%_)))
                                                        (_%hd146184146599%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146183146596%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146184146599%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146184146599%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146185146601%_))
                        (let ((_%e146186146604%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146185146601%_))))
                          (let ((_%tl146188146609%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146186146604%_)))
                                (_%hd146187146607%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146186146604%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146188146609%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl146182146593%_))
                                    (let ((_%__splice149161149162%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl146182146593%_
                                              '0))))
                                      (let ((_%tl146191146614%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice149161149162%_
                                                '1)))
                                            (_%target146189146612%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice149161149162%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl146191146614%_))
                                            (letrec ((_%loop146192146617%_
                                                      (lambda (_%hd146190146620%_
                                                               _%xarg146196146622%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd146190146620%_))
                                                            (let ((_%e146193146625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd146190146620%_))))
                      (let ((_%lp-tl146195146630%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146193146625%_)))
                            (_%lp-hd146194146628%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146193146625%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd146194146628%_))
                            (let ((_%e146198146633%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd146194146628%_))))
                              (let ((_%tl146200146638%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e146198146633%_)))
                                    (_%hd146199146636%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e146198146633%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd146199146636%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd146199146636%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146200146638%_))
                                            (let ((_%e146201146641%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146200146638%_))))
                                              (let ((_%tl146203146646%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146201146641%_)))
                                                    (_%hd146202146644%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146201146641%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl146203146646%_))
                                                    (_%loop146192146617%_
                                                     _%lp-tl146195146630%_
                                                     (cons _%hd146202146644%_
                                                           _%xarg146196146622%_))
                                                    (_%__match149194149195%_
                                                     _%e146162146540%_
                                                     _%hd146163146543%_
                                                     _%tl146164146545%_
                                                     _%__splice149159149160%_
                                                     _%target146165146548%_
                                                     _%tl146167146550%_))))
                                            (_%__match149194149195%_
                                             _%e146162146540%_
                                             _%hd146163146543%_
                                             _%tl146164146545%_
                                             _%__splice149159149160%_
                                             _%target146165146548%_
                                             _%tl146167146550%_))
                                        (_%__match149194149195%_
                                         _%e146162146540%_
                                         _%hd146163146543%_
                                         _%tl146164146545%_
                                         _%__splice149159149160%_
                                         _%target146165146548%_
                                         _%tl146167146550%_))
                                    (_%__match149194149195%_
                                     _%e146162146540%_
                                     _%hd146163146543%_
                                     _%tl146164146545%_
                                     _%__splice149159149160%_
                                     _%target146165146548%_
                                     _%tl146167146550%_))))
                            (_%__match149194149195%_
                             _%e146162146540%_
                             _%hd146163146543%_
                             _%tl146164146545%_
                             _%__splice149159149160%_
                             _%target146165146548%_
                             _%tl146167146550%_))))
                    (let ((_%xarg146197146649%_
                           (reverse _%xarg146196146622%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl146176146577%_))
                          (_%__kont149157149158%_
                           _%xarg146197146649%_
                           _%hd146187146607%_
                           _%arg146173146569%_)
                          (_%__match149194149195%_
                           _%e146162146540%_
                           _%hd146163146543%_
                           _%tl146164146545%_
                           _%__splice149159149160%_
                           _%target146165146548%_
                           _%tl146167146550%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop146192146617%_
                                               _%target146189146612%_
                                               '()))
                                            (_%__match149194149195%_
                                             _%e146162146540%_
                                             _%hd146163146543%_
                                             _%tl146164146545%_
                                             _%__splice149159149160%_
                                             _%target146165146548%_
                                             _%tl146167146550%_))))
                                    (_%__match149194149195%_
                                     _%e146162146540%_
                                     _%hd146163146543%_
                                     _%tl146164146545%_
                                     _%__splice149159149160%_
                                     _%target146165146548%_
                                     _%tl146167146550%_))
                                (_%__match149194149195%_
                                 _%e146162146540%_
                                 _%hd146163146543%_
                                 _%tl146164146545%_
                                 _%__splice149159149160%_
                                 _%target146165146548%_
                                 _%tl146167146550%_))))
                        (_%__match149194149195%_
                         _%e146162146540%_
                         _%hd146163146543%_
                         _%tl146164146545%_
                         _%__splice149159149160%_
                         _%target146165146548%_
                         _%tl146167146550%_))
                    (_%__match149194149195%_
                     _%e146162146540%_
                     _%hd146163146543%_
                     _%tl146164146545%_
                     _%__splice149159149160%_
                     _%target146165146548%_
                     _%tl146167146550%_))
                (_%__match149194149195%_
                 _%e146162146540%_
                 _%hd146163146543%_
                 _%tl146164146545%_
                 _%__splice149159149160%_
                 _%target146165146548%_
                 _%tl146167146550%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match149194149195%_
                                                 _%e146162146540%_
                                                 _%hd146163146543%_
                                                 _%tl146164146545%_
                                                 _%__splice149159149160%_
                                                 _%target146165146548%_
                                                 _%tl146167146550%_))))
                                        (_%__match149194149195%_
                                         _%e146162146540%_
                                         _%hd146163146543%_
                                         _%tl146164146545%_
                                         _%__splice149159149160%_
                                         _%target146165146548%_
                                         _%tl146167146550%_))
                                    (_%__match149194149195%_
                                     _%e146162146540%_
                                     _%hd146163146543%_
                                     _%tl146164146545%_
                                     _%__splice149159149160%_
                                     _%target146165146548%_
                                     _%tl146167146550%_))
                                (_%__match149194149195%_
                                 _%e146162146540%_
                                 _%hd146163146543%_
                                 _%tl146164146545%_
                                 _%__splice149159149160%_
                                 _%target146165146548%_
                                 _%tl146167146550%_))))
                        (_%__match149194149195%_
                         _%e146162146540%_
                         _%hd146163146543%_
                         _%tl146164146545%_
                         _%__splice149159149160%_
                         _%target146165146548%_
                         _%tl146167146550%_))))
                (_%__match149194149195%_
                 _%e146162146540%_
                 _%hd146163146543%_
                 _%tl146164146545%_
                 _%__splice149159149160%_
                 _%target146165146548%_
                 _%tl146167146550%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146168146553%_
                                     _%target146165146548%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx149155149156%_))
                              (let ((_%e146162146540%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx149155149156%_))))
                                (let ((_%tl146164146545%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146162146540%_)))
                                      (_%hd146163146543%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146162146540%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd146163146543%_))
                                      (let ((_%__splice149159149160%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd146163146543%_
                                                '0))))
                                        (let ((_%tl146167146550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice149159149160%_
                                                  '1)))
                                              (_%target146165146548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice149159149160%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146167146550%_))
                                              (_%__match149182149183%_
                                               _%e146162146540%_
                                               _%hd146163146543%_
                                               _%tl146164146545%_
                                               _%__splice149159149160%_
                                               _%target146165146548%_
                                               _%tl146167146550%_)
                                              (_%__match149194149195%_
                                               _%e146162146540%_
                                               _%hd146163146543%_
                                               _%tl146164146545%_
                                               _%__splice149159149160%_
                                               _%target146165146548%_
                                               _%tl146167146550%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl146164146545%_))
                                          (let ((_%e146250146294%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl146164146545%_))))
                                            (let ((_%tl146252146299%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e146250146294%_)))
                                                  (_%hd146251146297%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e146250146294%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146251146297%_))
                                                  (let ((_%e146253146302%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146251146297%_))))
                                                    (let ((_%tl146255146307%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146253146302%_)))
                                                          (_%hd146254146305%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146253146302%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd146254146305%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd146254146305%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146255146307%_))
                          (let ((_%e146256146310%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146255146307%_))))
                            (let ((_%tl146258146315%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146256146310%_)))
                                  (_%hd146257146313%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146256146310%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd146257146313%_))
                                  (let ((_%e146259146318%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd146257146313%_))))
                                    (let ((_%tl146261146323%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146259146318%_)))
                                          (_%hd146260146321%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146259146318%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd146260146321%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd146260146321%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl146261146323%_))
                                                  (let ((_%e146262146326%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl146261146323%_))))
                                                    (let ((_%tl146264146331%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146262146326%_)))
                                                          (_%hd146263146329%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146262146326%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146264146331%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl146258146315%_))
                      (let ((_%e146265146334%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl146258146315%_))))
                        (let ((_%tl146267146339%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146265146334%_)))
                              (_%hd146266146337%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146265146334%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd146266146337%_))
                              (let ((_%e146268146342%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd146266146337%_))))
                                (let ((_%tl146270146347%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146268146342%_)))
                                      (_%hd146269146345%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146268146342%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd146269146345%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd146269146345%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl146270146347%_))
                                              (let ((_%e146271146350%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl146270146347%_))))
                                                (let ((_%tl146273146355%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146271146350%_)))
                                                      (_%hd146272146353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146271146350%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146273146355%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl146267146339%_))
                                                          (let ((_%e146274146358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl146267146339%_))))
                    (let ((_%tl146276146363%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146274146358%_)))
                          (_%hd146275146361%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146274146358%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl146276146363%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl146252146299%_))
                              (_%__kont149167149168%_
                               _%hd146272146353%_
                               _%hd146263146329%_
                               _%hd146163146543%_)
                              (let ()
                                (declare (not safe))
                                (_%g146157146281%_)))
                          (let () (declare (not safe)) (_%g146157146281%_)))))
                  (let () (declare (not safe)) (_%g146157146281%_)))
              (let () (declare (not safe)) (_%g146157146281%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g146157146281%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g146157146281%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g146157146281%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g146157146281%_)))))
                      (let () (declare (not safe)) (_%g146157146281%_)))
                  (let () (declare (not safe)) (_%g146157146281%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g146157146281%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g146157146281%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g146157146281%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g146157146281%_)))))
                          (let () (declare (not safe)) (_%g146157146281%_)))
                      (let () (declare (not safe)) (_%g146157146281%_)))
                  (let () (declare (not safe)) (_%g146157146281%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g146157146281%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g146157146281%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g146157146281%_))))))))
                 (_%generate1146000%_
                  (lambda (_%args146135%_
                           _%arglen146136%_
                           _%hd146137%_
                           _%body146138%_)
                    (let* ((_%len146140%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd146137%_)))
                           (_%condition146145%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd146137%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen146136%_
                                                (cons _%len146140%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen146136%_ (cons _%len146140%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len146140%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen146136%_
                                                    (cons _%len146140%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen146136%_ (cons _%len146140%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch146147%_
                            (if (_%dispatch-case?145998%_
                                 _%hd146137%_
                                 _%body146138%_)
                                (_%dispatch-case-e145999%_
                                 _%hd146137%_
                                 _%body146138%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self145995%_
                                 _%hd146137%_
                                 _%body146138%_))))
                      (cons _%condition146145%_
                            (cons (cons 'apply
                                        (cons _%dispatch146147%_
                                              (cons _%args146135%_ '())))
                                  '()))))))
          (let* ((_%g146002146030%_
                  (lambda (_%g146003146027%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g146003146027%_))))
                 (_%g146001146132%_
                  (lambda (_%g146003146033%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g146003146033%_))
                        (let ((_%e146006146035%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g146003146033%_))))
                          (let ((_%hd146007146038%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146006146035%_)))
                                (_%tl146008146040%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146006146035%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl146008146040%_))
                                (let ((_g150324_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl146008146040%_
                                          '0))))
                                  (begin
                                    (let ((_g150325_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g150324_)
                                                 (##values-length _g150324_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g150325_ 2)))
                                          (error "Context expects 2 values"
                                                 _g150325_)))
                                    (let ((_%target146009146043%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150324_ 0)))
                                          (_%tl146011146045%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150324_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl146011146045%_))
                                          (letrec ((_%loop146012146048%_
                                                    (lambda (_%hd146010146051%_
                                                             _%body146016146053%_
                                                             _%hd146017146055%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd146010146051%_))
                                                          (let ((_%e146013146058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd146010146051%_))))
                    (let ((_%lp-hd146014146061%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146013146058%_)))
                          (_%lp-tl146015146063%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146013146058%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd146014146061%_))
                          (let ((_%e146020146066%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd146014146061%_))))
                            (let ((_%hd146021146069%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146020146066%_)))
                                  (_%tl146022146071%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146020146066%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl146022146071%_))
                                  (let ((_%e146023146074%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl146022146071%_))))
                                    (let ((_%hd146024146077%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146023146074%_)))
                                          (_%tl146025146079%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146023146074%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl146025146079%_))
                                          (_%loop146012146048%_
                                           _%lp-tl146015146063%_
                                           (cons _%hd146024146077%_
                                                 _%body146016146053%_)
                                           (cons _%hd146021146069%_
                                                 _%hd146017146055%_))
                                          (_%g146002146030%_
                                           _%g146003146033%_))))
                                  (_%g146002146030%_ _%g146003146033%_))))
                          (_%g146002146030%_ _%g146003146033%_))))
                  (let ((_%body146018146082%_ (reverse _%body146016146053%_))
                        (_%hd146019146084%_ (reverse _%hd146017146055%_)))
                    ((lambda (_%L146087%_ _%L146088%_)
                       (let ((_%args146107%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen146108%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name146109%_
                              (let ((_%$e146104%_
                                     (let ((__tmp150326
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp150326 _%stx145996%_))))
                                (if _%$e146104%_
                                    _%$e146104%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args146107%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen146108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args146107%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args146107%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp150330
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name146109%_
                                                                (cons _%args146107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp150327
                                  (map (lambda (_%g146110146113%_
                                                _%g146111146115%_)
                                         (_%generate1146000%_
                                          _%args146107%_
                                          _%arglen146108%_
                                          _%g146110146113%_
                                          _%g146111146115%_))
                                       (let ((__tmp150328
                                              (lambda (_%g146117146120%_
                                                       _%g146118146122%_)
                                                (cons _%g146117146120%_
                                                      _%g146118146122%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp150328
                                          '()
                                          _%L146088%_))
                                       (let ((__tmp150329
                                              (lambda (_%g146124146127%_
                                                       _%g146125146129%_)
                                                (cons _%g146124146127%_
                                                      _%g146125146129%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp150329
                                          '()
                                          _%L146087%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp150330 __tmp150327)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body146018146082%_
                     _%hd146019146084%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop146012146048%_
                                             _%target146009146043%_
                                             '()
                                             '()))
                                          (_%g146002146030%_
                                           _%g146003146033%_)))))
                                (_%g146002146030%_ _%g146003146033%_))))
                        (_%g146002146030%_ _%g146003146033%_)))))
            (_%g146001146132%_ _%stx145996%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self145232%_ _%stx145233%_ _%compiled-body?145234%_)
        (letrec ((_%generate-simple145236%_
                  (lambda (_%hd145980%_ _%body145981%_)
                    (_%coalesce-boolean145237%_
                     (_%simplify-let145238%_
                      (gxc#generate-runtime-simple-let
                       _%self145232%_
                       'let
                       _%hd145980%_
                       _%body145981%_
                       _%compiled-body?145234%_)))))
                 (_%coalesce-boolean145237%_
                  (lambda (_%code145841%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code145842145868%_ _%code145841%_)
                               (_%else145844145876%_
                                (lambda () _%code145841%_))
                               (_%K145846145913%_
                                (lambda (_%expr2145879%_
                                         _%expr1145880%_
                                         _%id145881%_)
                                  (let* ((_%expr2145882145890%_
                                          _%expr2145879%_)
                                         (_%else145884145898%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1145880%_
                                                        (cons _%expr2145879%_
                                                              '())))))
                                         (_%K145886145903%_
                                          (lambda (_%exprs145901%_)
                                            (cons 'or
                                                  (cons _%expr1145880%_
                                                        _%exprs145901%_)))))
                                    (if (pair? _%expr2145882145890%_)
                                        (let ((_%hd145887145906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2145882145890%_)))
                                              (_%tl145888145908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2145882145890%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd145887145906%_ 'or))
                                              (let ((_%exprs145911%_
                                                     _%tl145888145908%_))
                                                (_%K145886145903%_
                                                 _%exprs145911%_))
                                              (_%else145884145898%_)))
                                        (_%else145884145898%_))))))
                          (if (pair? _%code145842145868%_)
                              (let ((_%hd145847145916%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code145842145868%_)))
                                    (_%tl145848145918%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code145842145868%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd145847145916%_ 'let))
                                    (if (pair? _%tl145848145918%_)
                                        (let ((_%hd145849145921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl145848145918%_)))
                                              (_%tl145850145923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl145848145918%_))))
                                          (if (pair? _%hd145849145921%_)
                                              (let ((_%hd145861145926%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd145849145921%_)))
                                                    (_%tl145862145928%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd145849145921%_))))
                                                (if (pair? _%hd145861145926%_)
                                                    (let ((_%hd145863145931%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd145861145926%_)))
                                                          (_%tl145864145933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd145861145926%_))))
                                                      (let ((_%id145936%_
                                                             _%hd145863145931%_))
                                                        (if (pair? _%tl145864145933%_)
                                                            (let ((_%hd145865145938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl145864145933%_)))
                          (_%tl145866145940%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl145864145933%_))))
                      (let ((_%expr1145943%_ _%hd145865145938%_))
                        (if (null? _%tl145866145940%_)
                            (if (null? _%tl145862145928%_)
                                (if (pair? _%tl145850145923%_)
                                    (let ((_%hd145851145945%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl145850145923%_)))
                                          (_%tl145852145947%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl145850145923%_))))
                                      (if (pair? _%hd145851145945%_)
                                          (let ((_%hd145853145950%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd145851145945%_)))
                                                (_%tl145854145952%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd145851145945%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd145853145950%_
                                                         'if))
                                                (if (pair? _%tl145854145952%_)
                                                    (let ((_%hd145855145955%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl145854145952%_)))
                                                          (_%tl145856145957%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl145854145952%_))))
                                                      (if ((lambda (_%g145959145961%_)
                                                             (eq? _%g145959145961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id145936%_))
                   _%hd145855145955%_)
                  (if (pair? _%tl145856145957%_)
                      (let ((_%hd145857145964%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl145856145957%_)))
                            (_%tl145858145966%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl145856145957%_))))
                        (if ((lambda (_%g145968145970%_)
                               (eq? _%g145968145970%_ _%id145936%_))
                             _%hd145857145964%_)
                            (if (pair? _%tl145858145966%_)
                                (let ((_%hd145859145973%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl145858145966%_)))
                                      (_%tl145860145975%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl145858145966%_))))
                                  (let ((_%expr2145978%_ _%hd145859145973%_))
                                    (if (null? _%tl145860145975%_)
                                        (if (null? _%tl145852145947%_)
                                            (_%K145846145913%_
                                             _%expr2145978%_
                                             _%expr1145943%_
                                             _%id145936%_)
                                            (_%else145844145876%_))
                                        (_%else145844145876%_))))
                                (_%else145844145876%_))
                            (_%else145844145876%_)))
                      (_%else145844145876%_))
                  (_%else145844145876%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else145844145876%_))
                                                (_%else145844145876%_)))
                                          (_%else145844145876%_)))
                                    (_%else145844145876%_))
                                (_%else145844145876%_))
                            (_%else145844145876%_))))
                    (_%else145844145876%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else145844145876%_)))
                                              (_%else145844145876%_)))
                                        (_%else145844145876%_))
                                    (_%else145844145876%_)))
                              (_%else145844145876%_)))
                        _%code145841%_)))
                 (_%simplify-let145238%_
                  (lambda (_%code145540%_)
                    (let* ((_%code145541145613%_ _%code145540%_)
                           (_%else145546145621%_ (lambda () _%code145540%_)))
                      (let ((_%K145605145821%_
                             (lambda (_%expr145819%_) _%expr145819%_))
                            (_%K145588145767%_
                             (lambda (_%body145763%_
                                      _%expr145764%_
                                      _%id145765%_)
                               (cons 'let
                                     (cons (cons (cons _%id145765%_
                                                       (cons _%expr145764%_
                                                             '()))
                                                 '())
                                           _%body145763%_))))
                            (_%K145565145691%_
                             (lambda (_%body145685%_
                                      _%expr2145686%_
                                      _%id2145687%_
                                      _%expr1145688%_
                                      _%id1145689%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1145689%_
                                                       (cons _%expr1145688%_
                                                             '()))
                                                 (cons (cons _%id2145687%_
                                                             (cons _%expr2145686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body145685%_))))
                            (_%K145548145630%_
                             (lambda (_%body145625%_
                                      _%bind145626%_
                                      _%expr1145627%_
                                      _%id1145628%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1145628%_
                                                       (cons _%expr1145627%_
                                                             '()))
                                                 _%bind145626%_)
                                           _%body145625%_)))))
                        (if (pair? _%code145541145613%_)
                            (let ((_%tl145607145826%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code145541145613%_)))
                                  (_%hd145606145824%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code145541145613%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd145606145824%_ 'let))
                                  (if (pair? _%tl145607145826%_)
                                      (let ((_%tl145609145831%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl145607145826%_)))
                                            (_%hd145608145829%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl145607145826%_))))
                                        (if (null? _%hd145608145829%_)
                                            (if (pair? _%tl145609145831%_)
                                                (let ((_%tl145611145836%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl145609145831%_)))
                                                      (_%hd145610145834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl145609145831%_))))
                                                  (if (null? _%tl145611145836%_)
                                                      (let ((_%expr145839%_
                                                             _%hd145610145834%_))
                                                        (_%K145605145821%_
                                                         _%expr145839%_))
                                                      (_%else145546145621%_)))
                                                (_%else145546145621%_))
                                            (if (pair? _%hd145608145829%_)
                                                (let ((_%tl145600145782%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd145608145829%_)))
                                                      (_%hd145599145780%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd145608145829%_))))
                                                  (if (pair? _%hd145599145780%_)
                                                      (let ((_%tl145602145787%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd145599145780%_)))
                    (_%hd145601145785%_
                     (let () (declare (not safe)) (##car _%hd145599145780%_))))
                (if (pair? _%tl145602145787%_)
                    (let ((_%tl145604145794%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl145602145787%_)))
                          (_%hd145603145792%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl145602145787%_))))
                      (if (null? _%tl145604145794%_)
                          (if (null? _%tl145600145782%_)
                              (if (pair? _%tl145609145831%_)
                                  (let ((_%tl145594145801%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl145609145831%_)))
                                        (_%hd145593145799%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl145609145831%_))))
                                    (if (pair? _%hd145593145799%_)
                                        (let ((_%tl145596145806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd145593145799%_)))
                                              (_%hd145595145804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd145593145799%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd145595145804%_
                                                       'let))
                                              (if (pair? _%tl145596145806%_)
                                                  (let ((_%tl145598145811%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl145596145806%_)))
                                                        (_%hd145597145809%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl145596145806%_))))
                                                    (if (null? _%hd145597145809%_)
                                                        (if (null? _%tl145594145801%_)
                                                            (let ((_%id145790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd145601145785%_)
                          (_%expr145797%_ _%hd145603145792%_)
                          (_%body145814%_ _%tl145598145811%_))
                      (_%K145588145767%_
                       _%body145814%_
                       _%expr145797%_
                       _%id145790%_))
                    (_%else145546145621%_))
                (if (pair? _%hd145597145809%_)
                    (let ((_%tl145577145740%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd145597145809%_)))
                          (_%hd145576145738%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd145597145809%_))))
                      (if (pair? _%hd145576145738%_)
                          (let ((_%tl145579145745%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd145576145738%_)))
                                (_%hd145578145743%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd145576145738%_))))
                            (if (pair? _%tl145579145745%_)
                                (let ((_%tl145581145752%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl145579145745%_)))
                                      (_%hd145580145750%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl145579145745%_))))
                                  (if (null? _%tl145581145752%_)
                                      (if (null? _%tl145577145740%_)
                                          (if (null? _%tl145594145801%_)
                                              (let ((_%id1145714%_
                                                     _%hd145601145785%_)
                                                    (_%expr1145721%_
                                                     _%hd145603145792%_)
                                                    (_%id2145748%_
                                                     _%hd145578145743%_)
                                                    (_%expr2145755%_
                                                     _%hd145580145750%_)
                                                    (_%body145757%_
                                                     _%tl145598145811%_))
                                                (_%K145565145691%_
                                                 _%body145757%_
                                                 _%expr2145755%_
                                                 _%id2145748%_
                                                 _%expr1145721%_
                                                 _%id1145714%_))
                                              (_%else145546145621%_))
                                          (_%else145546145621%_))
                                      (_%else145546145621%_)))
                                (_%else145546145621%_)))
                          (_%else145546145621%_)))
                    (_%else145546145621%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else145546145621%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd145595145804%_
                                                           'let*))
                                                  (if (pair? _%tl145596145806%_)
                                                      (let ((_%tl145558145674%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl145596145806%_)))
                    (_%hd145557145672%_
                     (let () (declare (not safe)) (##car _%tl145596145806%_))))
                (if (null? _%tl145594145801%_)
                    (let ((_%id1145653%_ _%hd145601145785%_)
                          (_%expr1145660%_ _%hd145603145792%_)
                          (_%bind145677%_ _%hd145557145672%_)
                          (_%body145679%_ _%tl145558145674%_))
                      (_%K145548145630%_
                       _%body145679%_
                       _%bind145677%_
                       _%expr1145660%_
                       _%id1145653%_))
                    (_%else145546145621%_)))
              (_%else145546145621%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else145546145621%_))))
                                        (_%else145546145621%_)))
                                  (_%else145546145621%_))
                              (_%else145546145621%_))
                          (_%else145546145621%_)))
                    (_%else145546145621%_)))
              (_%else145546145621%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else145546145621%_))))
                                      (_%else145546145621%_))
                                  (_%else145546145621%_)))
                            (_%else145546145621%_))))))
                 (_%generate-values145239%_
                  (lambda (_%hd145353%_ _%body145354%_)
                    (let _%lp145356%_ ((_%rest145358%_ _%hd145353%_)
                                       (_%bind145359%_ '())
                                       (_%check145360%_ '())
                                       (_%post145361%_ '()))
                      (let* ((_%__stx149484149485%_ _%rest145358%_)
                             (_%g145364145375%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx149484149485%_)))))
                        (let ((_%__kont149486149487%_
                               (lambda (_%L145402%_ _%L145403%_)
                                 (let* ((_%__stx149440149441%_ _%L145403%_)
                                        (_%g145418145443%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx149440149441%_)))))
                                   (let ((_%__kont149442149443%_
                                          (lambda (_%L145516%_ _%L145517%_)
                                            (let ((_%eid145531%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L145517%_)))
                                                  (_%expr145532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self145232%_
                                                      _%L145516%_))))
                                              (_%lp145356%_
                                               _%L145402%_
                                               (cons (cons _%eid145531%_
                                                           (cons _%expr145532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind145359%_)
                                               _%check145360%_
                                               _%post145361%_))))
                                         (_%__kont149444149445%_
                                          (lambda (_%L145464%_ _%L145465%_)
                                            (let* ((_%vals145478%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values145480%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals145478%_
                                                     _%L145465%_
                                                     _%L145464%_))
                                                   (_%refs145482%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals145478%_
                                                     _%L145465%_))
                                                   (_%expr145484%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self145232%_
                                                       _%L145464%_))))
                                              (_%lp145356%_
                                               _%L145402%_
                                               (cons (cons _%vals145478%_
                                                           (cons _%expr145484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind145359%_)
                                               (cons _%check-values145480%_
                                                     _%check145360%_)
                                               (cons _%refs145482%_
                                                     _%post145361%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx149440149441%_))
                                         (let ((_%e145422145492%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx149440149441%_))))
                                           (let ((_%tl145424145497%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e145422145492%_)))
                                                 (_%hd145423145495%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e145422145492%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd145423145495%_))
                                                 (let ((_%e145425145500%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd145423145495%_))))
                                                   (let ((_%tl145427145505%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e145425145500%_)))
                                                         (_%hd145426145503%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e145425145500%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl145427145505%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl145424145497%_))
                     (let ((_%e145428145508%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl145424145497%_))))
                       (let ((_%tl145430145513%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e145428145508%_)))
                             (_%hd145429145511%_
                              (let ()
                                (declare (not safe))
                                (##car _%e145428145508%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145430145513%_))
                             (_%__kont149442149443%_
                              _%hd145429145511%_
                              _%hd145426145503%_)
                             (let ()
                               (declare (not safe))
                               (_%g145418145443%_)))))
                     (let () (declare (not safe)) (_%g145418145443%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl145424145497%_))
                     (let ((_%e145436145456%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl145424145497%_))))
                       (let ((_%tl145438145461%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e145436145456%_)))
                             (_%hd145437145459%_
                              (let ()
                                (declare (not safe))
                                (##car _%e145436145456%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145438145461%_))
                             (_%__kont149444149445%_
                              _%hd145437145459%_
                              _%hd145423145495%_)
                             (let ()
                               (declare (not safe))
                               (_%g145418145443%_)))))
                     (let () (declare (not safe)) (_%g145418145443%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl145424145497%_))
                                                     (let ((_%e145436145456%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl145424145497%_))))
                                                       (let ((_%tl145438145461%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e145436145456%_)))
                     (_%hd145437145459%_
                      (let () (declare (not safe)) (##car _%e145436145456%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl145438145461%_))
                     (_%__kont149444149445%_
                      _%hd145437145459%_
                      _%hd145423145495%_)
                     (let () (declare (not safe)) (_%g145418145443%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g145418145443%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g145418145443%_)))))))
                              (_%__kont149488149489%_
                               (lambda ()
                                 (let* ((_%body145382%_
                                         (if _%compiled-body?145234%_
                                             _%body145354%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self145232%_
                                                _%body145354%_))))
                                        (_%body145384%_
                                         (_%generate-values-post145240%_
                                          _%post145361%_
                                          _%body145382%_))
                                        (_%body145386%_
                                         (_%generate-values-check145241%_
                                          _%check145360%_
                                          _%body145384%_)))
                                   (cons 'let
                                         (cons (reverse _%bind145359%_)
                                               (cons _%body145386%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx149484149485%_))
                              (let ((_%e145368145394%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx149484149485%_))))
                                (let ((_%tl145370145399%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145368145394%_)))
                                      (_%hd145369145397%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145368145394%_))))
                                  (_%__kont149486149487%_
                                   _%tl145370145399%_
                                   _%hd145369145397%_)))
                              (_%__kont149488149489%_)))))))
                 (_%generate-values-post145240%_
                  (lambda (_%post145312%_ _%body145313%_)
                    (let _%lp145315%_ ((_%rest145317%_ _%post145312%_)
                                       (_%body145318%_ _%body145313%_))
                      (let* ((_%rest145319145327%_ _%rest145317%_)
                             (_%else145321145335%_ (lambda () _%body145318%_))
                             (_%K145323145341%_
                              (lambda (_%rest145338%_ _%bind145339%_)
                                (_%lp145315%_
                                 _%rest145338%_
                                 (cons 'let
                                       (cons _%bind145339%_
                                             (cons _%body145318%_ '())))))))
                        (if (pair? _%rest145319145327%_)
                            (let ((_%hd145324145344%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest145319145327%_)))
                                  (_%tl145325145346%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest145319145327%_))))
                              (let* ((_%bind145349%_ _%hd145324145344%_)
                                     (_%rest145351%_ _%tl145325145346%_))
                                (_%K145323145341%_
                                 _%rest145351%_
                                 _%bind145349%_)))
                            (_%else145321145335%_))))))
                 (_%generate-values-check145241%_
                  (lambda (_%check145309%_ _%body145310%_)
                    (cons 'begin
                          (let ((__tmp150332 (cons _%body145310%_ '()))
                                (__tmp150331 (reverse _%check145309%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp150332 __tmp150331))))))
          (let* ((_%g145243145260%_
                  (lambda (_%g145244145257%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g145244145257%_))))
                 (_%g145242145306%_
                  (lambda (_%g145244145263%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g145244145263%_))
                        (let ((_%e145247145265%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g145244145263%_))))
                          (let ((_%hd145248145268%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145247145265%_)))
                                (_%tl145249145270%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145247145265%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl145249145270%_))
                                (let ((_%e145250145273%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl145249145270%_))))
                                  (let ((_%hd145251145276%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e145250145273%_)))
                                        (_%tl145252145278%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e145250145273%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145252145278%_))
                                        (let ((_%e145253145281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145252145278%_))))
                                          (let ((_%hd145254145284%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145253145281%_)))
                                                (_%tl145255145286%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145253145281%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145255145286%_))
                                                ((lambda (_%L145289%_
                                                          _%L145290%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L145290%_)
                                                       (_%generate-simple145236%_
                                                        _%L145290%_
                                                        _%L145289%_)
                                                       (_%generate-values145239%_
                                                        _%L145290%_
                                                        _%L145289%_)))
                                                 _%hd145254145284%_
                                                 _%hd145251145276%_)
                                                (_%g145243145260%_
                                                 _%g145244145263%_))))
                                        (_%g145243145260%_
                                         _%g145244145263%_))))
                                (_%g145243145260%_ _%g145244145263%_))))
                        (_%g145243145260%_ _%g145244145263%_)))))
            (_%g145242145306%_ _%stx145233%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self145986%_ _%stx145987%_)
        (let ((_%compiled-body?145989%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self145986%_
           _%stx145987%_
           _%compiled-body?145989%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g150334_
        (let ((_g150333_ (let () (declare (not safe)) (##length _g150334_))))
          (cond ((let () (declare (not safe)) (##fx= _g150333_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g150334_))
                ((let () (declare (not safe)) (##fx= _g150333_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g150334_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g150334_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals145126%_ _%hd145127%_)
        (let _%lp145129%_ ((_%rest145131%_ _%hd145127%_)
                           (_%k145132%_ '0)
                           (_%r145133%_ '()))
          (let* ((_%__stx149498149499%_ _%rest145131%_)
                 (_%g145138145155%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx149498149499%_)))))
            (let ((_%__kont149500149501%_
                   (lambda (_%L145218%_)
                     (_%lp145129%_
                      _%L145218%_
                      (let () (declare (not safe)) (##fx+ _%k145132%_ '1))
                      _%r145133%_)))
                  (_%__kont149502149503%_
                   (lambda (_%L145191%_ _%L145192%_)
                     (_%lp145129%_
                      _%L145191%_
                      (let () (declare (not safe)) (##fx+ _%k145132%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L145192%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals145126%_
                                         _%k145132%_
                                         _%L145191%_)
                                        '()))
                            _%r145133%_))))
                  (_%__kont149504149505%_
                   (lambda (_%L145167%_)
                     (let ((__tmp150335
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L145167%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals145126%_
                                               _%k145132%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp150335 _%r145133%_))))
                  (_%__kont149506149507%_ (lambda () (reverse _%r145133%_))))
              (let ((_%g145136145178%_
                     (lambda ()
                       (let ((_%L145167%_ _%__stx149498149499%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L145167%_))
                             (_%__kont149504149505%_ _%L145167%_)
                             (_%__kont149506149507%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx149498149499%_))
                    (let ((_%e145141145207%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx149498149499%_))))
                      (let ((_%tl145143145212%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145141145207%_)))
                            (_%hd145142145210%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145141145207%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd145142145210%_))
                            (let ((_%e145144145215%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd145142145210%_))))
                              (if (equal? _%e145144145215%_ '#f)
                                  (_%__kont149500149501%_ _%tl145143145212%_)
                                  (_%__kont149502149503%_
                                   _%tl145143145212%_
                                   _%hd145142145210%_)))
                            (_%__kont149502149503%_
                             _%tl145143145212%_
                             _%hd145142145210%_))))
                    (let () (declare (not safe)) (_%g145136145178%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self144805%_ _%stx144806%_ _%compiled-body?144807%_)
        (letrec ((_%generate-simple144809%_
                  (lambda (_%hd145111%_ _%body145112%_)
                    (gxc#generate-runtime-simple-let
                     _%self144805%_
                     'letrec
                     _%hd145111%_
                     _%body145112%_
                     _%compiled-body?144807%_)))
                 (_%generate-values144810%_
                  (lambda (_%hd144890%_ _%body144891%_)
                    (let _%lp144893%_ ((_%rest144895%_ _%hd144890%_)
                                       (_%bind144896%_ '())
                                       (_%check144897%_ '())
                                       (_%post144898%_ '()))
                      (let* ((_%__stx149572149573%_ _%rest144895%_)
                             (_%g144901144912%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx149572149573%_)))))
                        (let ((_%__kont149574149575%_
                               (lambda (_%L144939%_ _%L144940%_)
                                 (let* ((_%__stx149528149529%_ _%L144940%_)
                                        (_%g144955144980%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx149528149529%_)))))
                                   (let ((_%__kont149530149531%_
                                          (lambda (_%L145087%_ _%L145088%_)
                                            (let ((_%eid145102%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L145088%_)))
                                                  (_%expr145103%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self144805%_
                                                      _%L145087%_))))
                                              (_%lp144893%_
                                               _%L144939%_
                                               (cons (cons _%eid145102%_
                                                           (cons _%expr145103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind144896%_)
                                               _%check144897%_
                                               _%post144898%_))))
                                         (_%__kont149532149533%_
                                          (lambda (_%L145001%_ _%L145002%_)
                                            (let* ((_%vals145015%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values145017%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals145015%_
                                                     _%L145002%_
                                                     _%L145001%_))
                                                   (_%refs145019%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals145015%_
                                                     _%L145002%_))
                                                   (_%expr145021%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self144805%_
                                                       _%L145001%_))))
                                              (_%lp144893%_
                                               _%L144939%_
                                               (let ((__tmp150337
                                                      (cons (cons _%vals145015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr145021%_ '()))
                    _%bind144896%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp150336
                                                      (map (lambda (_%e145023145025%_)
                                                             (let* ((_%g145027145036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e145023145025%_)
                            (_%E145029145040%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g145027145036%_
                                        '([eid _])))
                               '#!void))
                            (_%K145030145045%_
                             (lambda (_%eid145043%_)
                               (cons _%eid145043%_ (cons '#!void '())))))
                       (if (pair? _%g145027145036%_)
                           (let ((_%hd145031145048%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g145027145036%_)))
                                 (_%tl145032145050%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g145027145036%_))))
                             (let ((_%eid145053%_ _%hd145031145048%_))
                               (if (pair? _%tl145032145050%_)
                                   (let ((_%tl145034145055%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl145032145050%_))))
                                     (if (null? _%tl145034145055%_)
                                         (_%K145030145045%_ _%eid145053%_)
                                         (_%E145029145040%_)))
                                   (_%E145029145040%_))))
                           (_%E145029145040%_))))
                   _%refs145019%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp150337
                                                  __tmp150336))
                                               (cons _%check-values145017%_
                                                     _%check144897%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs145019%_
                                                  _%post144898%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx149528149529%_))
                                         (let ((_%e144959145063%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx149528149529%_))))
                                           (let ((_%tl144961145068%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e144959145063%_)))
                                                 (_%hd144960145066%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e144959145063%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd144960145066%_))
                                                 (let ((_%e144962145071%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd144960145066%_))))
                                                   (let ((_%tl144964145076%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e144962145071%_)))
                                                         (_%hd144963145074%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e144962145071%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl144964145076%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl144961145068%_))
                     (let ((_%e144965145079%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144961145068%_))))
                       (let ((_%tl144967145084%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144965145079%_)))
                             (_%hd144966145082%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144965145079%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144967145084%_))
                             (_%__kont149530149531%_
                              _%hd144966145082%_
                              _%hd144963145074%_)
                             (let ()
                               (declare (not safe))
                               (_%g144955144980%_)))))
                     (let () (declare (not safe)) (_%g144955144980%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl144961145068%_))
                     (let ((_%e144973144993%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144961145068%_))))
                       (let ((_%tl144975144998%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144973144993%_)))
                             (_%hd144974144996%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144973144993%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144975144998%_))
                             (_%__kont149532149533%_
                              _%hd144974144996%_
                              _%hd144960145066%_)
                             (let ()
                               (declare (not safe))
                               (_%g144955144980%_)))))
                     (let () (declare (not safe)) (_%g144955144980%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl144961145068%_))
                                                     (let ((_%e144973144993%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl144961145068%_))))
                                                       (let ((_%tl144975144998%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e144973144993%_)))
                     (_%hd144974144996%_
                      (let () (declare (not safe)) (##car _%e144973144993%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl144975144998%_))
                     (_%__kont149532149533%_
                      _%hd144974144996%_
                      _%hd144960145066%_)
                     (let () (declare (not safe)) (_%g144955144980%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g144955144980%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g144955144980%_)))))))
                              (_%__kont149576149577%_
                               (lambda ()
                                 (let* ((_%body144919%_
                                         (if _%compiled-body?144807%_
                                             _%body144891%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self144805%_
                                                _%body144891%_))))
                                        (_%body144921%_
                                         (_%generate-values-post144812%_
                                          _%post144898%_
                                          _%body144919%_))
                                        (_%body144923%_
                                         (_%generate-values-check144811%_
                                          _%check144897%_
                                          _%body144921%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind144896%_)
                                               (cons _%body144923%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx149572149573%_))
                              (let ((_%e144905144931%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx149572149573%_))))
                                (let ((_%tl144907144936%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144905144931%_)))
                                      (_%hd144906144934%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144905144931%_))))
                                  (_%__kont149574149575%_
                                   _%tl144907144936%_
                                   _%hd144906144934%_)))
                              (_%__kont149576149577%_)))))))
                 (_%generate-values-check144811%_
                  (lambda (_%check144887%_ _%body144888%_)
                    (cons 'begin
                          (let ((__tmp150339 (cons _%body144888%_ '()))
                                (__tmp150338 (reverse _%check144887%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp150339 __tmp150338)))))
                 (_%generate-values-post144812%_
                  (lambda (_%post144880%_ _%body144881%_)
                    (cons 'begin
                          (let ((__tmp150343 (cons _%body144881%_ '()))
                                (__tmp150340
                                 (let ((__tmp150342
                                        (lambda (_%g144882144884%_)
                                          (cons 'set! _%g144882144884%_)))
                                       (__tmp150341 (reverse _%post144880%_)))
                                   (declare (not safe))
                                   (##map __tmp150342 __tmp150341))))
                            (declare (not safe))
                            (__foldr1 cons __tmp150343 __tmp150340))))))
          (let* ((_%g144814144831%_
                  (lambda (_%g144815144828%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144815144828%_))))
                 (_%g144813144877%_
                  (lambda (_%g144815144834%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144815144834%_))
                        (let ((_%e144818144836%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144815144834%_))))
                          (let ((_%hd144819144839%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144818144836%_)))
                                (_%tl144820144841%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144818144836%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144820144841%_))
                                (let ((_%e144821144844%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144820144841%_))))
                                  (let ((_%hd144822144847%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144821144844%_)))
                                        (_%tl144823144849%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144821144844%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144823144849%_))
                                        (let ((_%e144824144852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144823144849%_))))
                                          (let ((_%hd144825144855%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144824144852%_)))
                                                (_%tl144826144857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144824144852%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144826144857%_))
                                                ((lambda (_%L144860%_
                                                          _%L144861%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L144861%_)
                                                       (_%generate-simple144809%_
                                                        _%L144861%_
                                                        _%L144860%_)
                                                       (_%generate-values144810%_
                                                        _%L144861%_
                                                        _%L144860%_)))
                                                 _%hd144825144855%_
                                                 _%hd144822144847%_)
                                                (_%g144814144831%_
                                                 _%g144815144834%_))))
                                        (_%g144814144831%_
                                         _%g144815144834%_))))
                                (_%g144814144831%_ _%g144815144834%_))))
                        (_%g144814144831%_ _%g144815144834%_)))))
            (_%g144813144877%_ _%stx144806%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self145117%_ _%stx145118%_)
        (let ((_%compiled-body?145120%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self145117%_
           _%stx145118%_
           _%compiled-body?145120%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g150345_
        (let ((_g150344_ (let () (declare (not safe)) (##length _g150345_))))
          (cond ((let () (declare (not safe)) (##fx= _g150344_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g150345_))
                ((let () (declare (not safe)) (##fx= _g150344_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g150345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g150345_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self144386%_ _%stx144387%_)
        (letrec ((_%generate-values144389%_
                  (lambda (_%hd144632%_ _%body144633%_)
                    (let _%lp144635%_ ((_%rest144637%_ _%hd144632%_)
                                       (_%bind144638%_ '()))
                      (let* ((_%rest144639144647%_ _%rest144637%_)
                             (_%else144641144658%_
                              (lambda ()
                                (let ((_%bind144655%_ (reverse _%bind144638%_))
                                      (_%body144656%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self144386%_
                                          _%body144633%_))))
                                  (cons 'letrec*
                                        (cons _%bind144655%_
                                              (cons _%body144656%_ '()))))))
                             (_%K144643144792%_
                              (lambda (_%rest144661%_ _%hd-bind144662%_)
                                (let* ((_%__stx149586149587%_
                                        _%hd-bind144662%_)
                                       (_%g144665144690%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx149586149587%_)))))
                                  (let ((_%__kont149588149589%_
                                         (lambda (_%L144771%_ _%L144772%_)
                                           (let ((_%eid144786%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L144772%_)))
                                                 (_%expr144787%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self144386%_
                                                     _%L144771%_))))
                                             (_%lp144635%_
                                              _%rest144661%_
                                              (cons (cons _%eid144786%_
                                                          (cons _%expr144787%_
                                                                '()))
                                                    _%bind144638%_)))))
                                        (_%__kont149590149591%_
                                         (lambda (_%L144711%_ _%L144712%_)
                                           (let* ((_%vals144731%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp144733%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values144735%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp144733%_
                                                    _%L144712%_
                                                    _%L144711%_))
                                                  (_%refs144737%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals144731%_
                                                    _%L144712%_))
                                                  (_%expr144739%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self144386%_
                                                      _%L144711%_))))
                                             (_%lp144635%_
                                              _%rest144661%_
                                              (let ((__tmp150346
                                                     (cons (cons _%vals144731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp144733%_
                                                       (cons _%expr144739%_
                                                             '()))
                                                 '())
                                           (cons _%check-values144735%_
                                                 (cons _%tmp144733%_ '()))))
                               '()))
                   _%bind144638%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp150346
                                                 _%refs144737%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx149586149587%_))
                                        (let ((_%e144669144747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx149586149587%_))))
                                          (let ((_%tl144671144752%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144669144747%_)))
                                                (_%hd144670144750%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144669144747%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd144670144750%_))
                                                (let ((_%e144672144755%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144670144750%_))))
                                                  (let ((_%tl144674144760%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144672144755%_)))
                                                        (_%hd144673144758%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144672144755%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl144674144760%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl144671144752%_))
                                                            (let ((_%e144675144763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl144671144752%_))))
                      (let ((_%tl144677144768%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144675144763%_)))
                            (_%hd144676144766%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144675144763%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl144677144768%_))
                            (_%__kont149588149589%_
                             _%hd144676144766%_
                             _%hd144673144758%_)
                            (let ()
                              (declare (not safe))
                              (_%g144665144690%_)))))
                    (let () (declare (not safe)) (_%g144665144690%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl144671144752%_))
                    (let ((_%e144683144703%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl144671144752%_))))
                      (let ((_%tl144685144708%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144683144703%_)))
                            (_%hd144684144706%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144683144703%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl144685144708%_))
                            (_%__kont149590149591%_
                             _%hd144684144706%_
                             _%hd144670144750%_)
                            (let ()
                              (declare (not safe))
                              (_%g144665144690%_)))))
                    (let () (declare (not safe)) (_%g144665144690%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl144671144752%_))
                                                    (let ((_%e144683144703%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl144671144752%_))))
                                                      (let ((_%tl144685144708%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e144683144703%_)))
                    (_%hd144684144706%_
                     (let () (declare (not safe)) (##car _%e144683144703%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl144685144708%_))
                    (_%__kont149590149591%_
                     _%hd144684144706%_
                     _%hd144670144750%_)
                    (let () (declare (not safe)) (_%g144665144690%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g144665144690%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g144665144690%_))))))))
                        (if (pair? _%rest144639144647%_)
                            (let ((_%hd144644144795%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144639144647%_)))
                                  (_%tl144645144797%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144639144647%_))))
                              (let* ((_%hd-bind144800%_ _%hd144644144795%_)
                                     (_%rest144802%_ _%tl144645144797%_))
                                (_%K144643144792%_
                                 _%rest144802%_
                                 _%hd-bind144800%_)))
                            (_%else144641144658%_))))))
                 (_%generate-letrec?144390%_
                  (lambda (_%hd144522%_)
                    (let _%lp144524%_ ((_%rest144526%_ _%hd144522%_))
                      (let* ((_%rest144527144535%_ _%rest144526%_)
                             (_%else144529144543%_ (lambda () '#t))
                             (_%K144531144620%_
                              (lambda (_%rest144546%_ _%hd-bind144547%_)
                                (let* ((_%g144549144566%_
                                        (lambda (_%g144550144563%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g144550144563%_))))
                                       (_%g144548144617%_
                                        (lambda (_%g144550144569%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g144550144569%_))
                                              (let ((_%e144553144571%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g144550144569%_))))
                                                (let ((_%hd144554144574%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144553144571%_)))
                                                      (_%tl144555144576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144553144571%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd144554144574%_))
                                                      (let ((_%e144556144579%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd144554144574%_))))
                (let ((_%hd144557144582%_
                       (let () (declare (not safe)) (##car _%e144556144579%_)))
                      (_%tl144558144584%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e144556144579%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl144558144584%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl144555144576%_))
                          (let ((_%e144559144587%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl144555144576%_))))
                            (let ((_%hd144560144590%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144559144587%_)))
                                  (_%tl144561144592%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144559144587%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl144561144592%_))
                                  ((lambda (_%L144595%_ _%L144596%_)
                                     (if (_%is-lambda-expr?144391%_
                                          _%L144595%_)
                                         (_%lp144524%_ _%rest144546%_)
                                         '#f))
                                   _%hd144560144590%_
                                   _%hd144557144582%_)
                                  (_%g144549144566%_ _%g144550144569%_))))
                          (_%g144549144566%_ _%g144550144569%_))
                      (_%g144549144566%_ _%g144550144569%_))))
              (_%g144549144566%_ _%g144550144569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g144549144566%_
                                               _%g144550144569%_)))))
                                  (_%g144548144617%_ _%hd-bind144547%_)))))
                        (if (pair? _%rest144527144535%_)
                            (let ((_%hd144532144623%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144527144535%_)))
                                  (_%tl144533144625%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144527144535%_))))
                              (let* ((_%hd-bind144628%_ _%hd144532144623%_)
                                     (_%rest144630%_ _%tl144533144625%_))
                                (_%K144531144620%_
                                 _%rest144630%_
                                 _%hd-bind144628%_)))
                            (_%else144529144543%_))))))
                 (_%is-lambda-expr?144391%_
                  (lambda (_%expr144459%_)
                    (let* ((_%__stx149630149631%_ _%expr144459%_)
                           (_%g144462144476%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx149630149631%_)))))
                      (let ((_%__kont149632149633%_
                             (lambda (_%L144504%_ _%L144505%_) '#t))
                            (_%__kont149634149635%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx149630149631%_))
                            (let ((_%e144466144488%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx149630149631%_))))
                              (let ((_%tl144468144493%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144466144488%_)))
                                    (_%hd144467144491%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144466144488%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd144467144491%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd144467144491%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144468144493%_))
                                            (let ((_%e144469144496%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144468144493%_))))
                                              (let ((_%tl144471144501%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144469144496%_)))
                                                    (_%hd144470144499%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144469144496%_))))
                                                (_%__kont149632149633%_
                                                 _%tl144471144501%_
                                                 _%hd144470144499%_)))
                                            (_%__kont149634149635%_))
                                        (_%__kont149634149635%_))
                                    (_%__kont149634149635%_))))
                            (_%__kont149634149635%_)))))))
          (let* ((_%g144393144410%_
                  (lambda (_%g144394144407%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144394144407%_))))
                 (_%g144392144456%_
                  (lambda (_%g144394144413%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144394144413%_))
                        (let ((_%e144397144415%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144394144413%_))))
                          (let ((_%hd144398144418%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144397144415%_)))
                                (_%tl144399144420%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144397144415%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144399144420%_))
                                (let ((_%e144400144423%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144399144420%_))))
                                  (let ((_%hd144401144426%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144400144423%_)))
                                        (_%tl144402144428%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144400144423%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144402144428%_))
                                        (let ((_%e144403144431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144402144428%_))))
                                          (let ((_%hd144404144434%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144403144431%_)))
                                                (_%tl144405144436%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144403144431%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144405144436%_))
                                                ((lambda (_%L144439%_
                                                          _%L144440%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L144440%_)
                                                       (if (_%generate-letrec?144390%_
                                                            _%L144440%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self144386%_
                                                            'letrec
                                                            _%L144440%_
                                                            _%L144439%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self144386%_
                                                            'letrec*
                                                            _%L144440%_
                                                            _%L144439%_
                                                            '#f))
                                                       (_%generate-values144389%_
                                                        _%L144440%_
                                                        _%L144439%_)))
                                                 _%hd144404144434%_
                                                 _%hd144401144426%_)
                                                (_%g144393144410%_
                                                 _%g144394144413%_))))
                                        (_%g144393144410%_
                                         _%g144394144413%_))))
                                (_%g144393144410%_ _%g144394144413%_))))
                        (_%g144393144410%_ _%g144394144413%_)))))
            (_%g144392144456%_ _%stx144387%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd144323%_)
        (let _%lp144325%_ ((_%rest144327%_ _%hd144323%_))
          (let* ((_%rest144328144344%_ _%rest144327%_)
                 (_%else144331144352%_ (lambda () '#f)))
            (let ((_%K144334144365%_
                   (lambda (_%rest144363%_) (_%lp144325%_ _%rest144363%_)))
                  (_%K144333144357%_ (lambda () '#t)))
              (let ((_%try-match144330144360%_
                     (lambda ()
                       (if (null? _%rest144328144344%_)
                           (_%K144333144357%_)
                           (_%else144331144352%_)))))
                (if (pair? _%rest144328144344%_)
                    (let ((_%tl144336144370%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest144328144344%_)))
                          (_%hd144335144368%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest144328144344%_))))
                      (if (pair? _%hd144335144368%_)
                          (let ((_%tl144338144375%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd144335144368%_)))
                                (_%hd144337144373%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd144335144368%_))))
                            (if (pair? _%hd144337144373%_)
                                (let ((_%tl144342144378%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd144337144373%_))))
                                  (if (null? _%tl144342144378%_)
                                      (if (pair? _%tl144338144375%_)
                                          (let ((_%tl144340144381%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl144338144375%_))))
                                            (if (null? _%tl144340144381%_)
                                                (let ((_%rest144384%_
                                                       _%tl144336144370%_))
                                                  (_%lp144325%_
                                                   _%rest144384%_))
                                                (_%else144331144352%_)))
                                          (_%else144331144352%_))
                                      (_%else144331144352%_)))
                                (_%else144331144352%_)))
                          (_%else144331144352%_)))
                    (_%try-match144330144360%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self144234%_
               _%form144235%_
               _%hd144236%_
               _%body144237%_
               _%compiled-body?144238%_)
        (letrec ((_%generate1144240%_
                  (lambda (_%bind144279%_)
                    (let* ((_%bind144280144291%_ _%bind144279%_)
                           (_%E144282144295%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind144280144291%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K144283144301%_
                            (lambda (_%expr144298%_ _%id144299%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id144299%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self144234%_
                                             _%expr144298%_))
                                          '())))))
                      (if (pair? _%bind144280144291%_)
                          (let ((_%hd144284144304%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind144280144291%_)))
                                (_%tl144285144306%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind144280144291%_))))
                            (if (pair? _%hd144284144304%_)
                                (let ((_%hd144288144309%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd144284144304%_)))
                                      (_%tl144289144311%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd144284144304%_))))
                                  (let ((_%id144314%_ _%hd144288144309%_))
                                    (if (null? _%tl144289144311%_)
                                        (if (pair? _%tl144285144306%_)
                                            (let ((_%hd144286144316%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl144285144306%_)))
                                                  (_%tl144287144318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl144285144306%_))))
                                              (let ((_%expr144321%_
                                                     _%hd144286144316%_))
                                                (if (null? _%tl144287144318%_)
                                                    (_%K144283144301%_
                                                     _%expr144321%_
                                                     _%id144314%_)
                                                    (_%E144282144295%_))))
                                            (_%E144282144295%_))
                                        (_%E144282144295%_))))
                                (_%E144282144295%_)))
                          (_%E144282144295%_))))))
          (let* ((_%bind144242%_ (map _%generate1144240%_ _%hd144236%_))
                 (_%body144244%_
                  (if _%compiled-body?144238%_
                      _%body144237%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self144234%_ _%body144237%_))))
                 (_%body144276%_
                  (let* ((_%body144245144253%_ _%body144244%_)
                         (_%else144247144261%_
                          (lambda () (cons _%body144244%_ '())))
                         (_%K144249144266%_
                          (lambda (_%exprs144264%_) _%exprs144264%_)))
                    (if (pair? _%body144245144253%_)
                        (let ((_%hd144250144269%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body144245144253%_)))
                              (_%tl144251144271%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body144245144253%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd144250144269%_ 'begin))
                              (let ((_%exprs144274%_ _%tl144251144271%_))
                                (_%K144249144266%_ _%exprs144274%_))
                              (_%else144247144261%_)))
                        (_%else144247144261%_)))))
            (cons _%form144235%_ (cons _%bind144242%_ _%body144276%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self144134%_ _%stx144135%_)
        (letrec ((_%generate1144137%_
                  (lambda (_%datum144189%_)
                    (if (or (null? _%datum144189%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum144189%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum144189%_))
                            (eof-object? _%datum144189%_))
                        _%datum144189%_
                        (if (uninterned-symbol? _%datum144189%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum144189%_
                               '#t))
                            (if (pair? _%datum144189%_)
                                (cons (_%generate1144137%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum144189%_)))
                                      (_%generate1144137%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum144189%_))))
                                (if (box? _%datum144189%_)
                                    (box (_%generate1144137%_
                                          (unbox _%datum144189%_)))
                                    (if (vector? _%datum144189%_)
                                        (vector-map
                                         _%generate1144137%_
                                         _%datum144189%_)
                                        (if (or (s8vector? _%datum144189%_)
                                                (u8vector? _%datum144189%_)
                                                (s16vector? _%datum144189%_)
                                                (u16vector? _%datum144189%_)
                                                (s32vector? _%datum144189%_)
                                                (u32vector? _%datum144189%_)
                                                (s64vector? _%datum144189%_)
                                                (u64vector? _%datum144189%_)
                                                (f32vector? _%datum144189%_)
                                                (f64vector? _%datum144189%_))
                                            _%datum144189%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx144135%_)))))))))))
          (let* ((_%g144139144152%_
                  (lambda (_%g144140144149%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144140144149%_))))
                 (_%g144138144186%_
                  (lambda (_%g144140144155%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144140144155%_))
                        (let ((_%e144142144157%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144140144155%_))))
                          (let ((_%hd144143144160%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144142144157%_)))
                                (_%tl144144144162%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144142144157%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144144144162%_))
                                (let ((_%e144145144165%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144144144162%_))))
                                  (let ((_%hd144146144168%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144145144165%_)))
                                        (_%tl144147144170%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144145144165%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl144147144170%_))
                                        ((lambda (_%L144173%_)
                                           (cons 'quote
                                                 (cons (_%generate1144137%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L144173%_)))
                                                       '())))
                                         _%hd144146144168%_)
                                        (_%g144139144152%_
                                         _%g144140144155%_))))
                                (_%g144139144152%_ _%g144140144155%_))))
                        (_%g144139144152%_ _%g144140144155%_)))))
            (_%g144138144186%_ _%stx144135%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self143575%_ _%stx143576%_)
        (letrec ((_%compile-call143578%_
                  (lambda (_%rator143867%_ _%rands143868%_)
                    (let ((_%rator143874%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self143575%_
                              _%rator143867%_)))
                          (_%rands143875%_
                           (map (lambda (_%g143869143871%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self143575%_
                                     _%g143869143871%_)))
                                _%rands143868%_)))
                      (let* ((_%__stx149677149678%_ _%rator143874%_)
                             (_%g143878143930%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx149677149678%_)))))
                        (let ((_%__kont149679149680%_
                               (lambda (_%L144054%_
                                        _%L144055%_
                                        _%L144056%_
                                        _%L144057%_)
                                 (if (let ((__tmp150349
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands143875%_)))
                                           (__tmp150347
                                            (length (let ((__tmp150348
                                                           (lambda (_%g144093144096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g144094144098%_)
                     (cons _%g144093144096%_ _%g144094144098%_))))
              (declare (not safe))
              (__foldr1 __tmp150348 '() _%L144056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp150349 __tmp150347))
                                     (let* ((_%id144101%_ _%L144057%_)
                                            (_%args144110%_
                                             (let ((__tmp150350
                                                    (lambda (_%g144102144105%_
                                                             _%g144103144107%_)
                                                      (cons _%g144102144105%_
                                                            _%g144103144107%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp150350
                                                '()
                                                _%L144056%_)))
                                            (_%body144119%_
                                             (let ((__tmp150351
                                                    (lambda (_%g144111144114%_
                                                             _%g144112144116%_)
                                                      (cons _%g144111144114%_
                                                            _%g144112144116%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp150351
                                                '()
                                                _%L144055%_)))
                                            (_%init144121%_
                                             (map list
                                                  _%args144110%_
                                                  _%rands143875%_)))
                                       (cons 'let
                                             (cons _%id144101%_
                                                   (cons _%init144121%_
                                                         _%body144119%_))))
                                     (let ((__tmp150352
                                            (let ((__tmp150353
                                                   (lambda (_%g144123144126%_
                                                            _%g144124144128%_)
                                                     (cons _%g144123144126%_
                                                           _%g144124144128%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150353
                                               '()
                                               _%L144056%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx143576%_
                                        __tmp150352
                                        _%rands143875%_)))))
                              (_%__kont149685149686%_
                               (lambda ()
                                 (cons _%rator143874%_ _%rands143875%_))))
                          (let ((_%__match149744149745%_
                                 (lambda (_%e143884143942%_
                                          _%hd143885143945%_
                                          _%tl143886143947%_
                                          _%e143887143950%_
                                          _%hd143888143953%_
                                          _%tl143889143955%_
                                          _%e143890143958%_
                                          _%hd143891143961%_
                                          _%tl143892143963%_
                                          _%e143893143966%_
                                          _%hd143894143969%_
                                          _%tl143895143971%_
                                          _%e143896143974%_
                                          _%hd143897143977%_
                                          _%tl143898143979%_
                                          _%e143899143982%_
                                          _%hd143900143985%_
                                          _%tl143901143987%_
                                          _%e143902143990%_
                                          _%hd143903143993%_
                                          _%tl143904143995%_
                                          _%__splice149681149682%_
                                          _%target143905143998%_
                                          _%tl143907144000%_)
                                   (letrec ((_%loop143908144003%_
                                             (lambda (_%hd143906144006%_
                                                      _%arg143912144008%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd143906144006%_))
                                                   (let ((_%e143909144011%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd143906144006%_))))
                                                     (let ((_%lp-tl143911144016%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e143909144011%_)))
                                                           (_%lp-hd143910144014%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e143909144011%_))))
                                                       (_%loop143908144003%_
                                                        _%lp-tl143911144016%_
                                                        (cons _%lp-hd143910144014%_
                                                              _%arg143912144008%_))))
                                                   (let ((_%arg143913144019%_
                                                          (reverse _%arg143912144008%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl143904143995%_))
                                                         (let ((_%__splice149683149684%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl143904143995%_
                           '0))))
                   (let ((_%tl143916144024%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice149683149684%_ '1)))
                         (_%target143914144022%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice149683149684%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl143916144024%_))
                         (letrec ((_%loop143917144027%_
                                   (lambda (_%hd143915144030%_
                                            _%body143921144032%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd143915144030%_))
                                         (let ((_%e143918144035%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd143915144030%_))))
                                           (let ((_%lp-tl143920144040%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e143918144035%_)))
                                                 (_%lp-hd143919144038%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e143918144035%_))))
                                             (_%loop143917144027%_
                                              _%lp-tl143920144040%_
                                              (cons _%lp-hd143919144038%_
                                                    _%body143921144032%_))))
                                         (let ((_%body143922144043%_
                                                (reverse _%body143921144032%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl143898143979%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl143892143963%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl143889143955%_))
                                                       (let ((_%e143923144046%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl143889143955%_))))
                 (let ((_%tl143925144051%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e143923144046%_)))
                       (_%hd143924144049%_
                        (let ()
                          (declare (not safe))
                          (##car _%e143923144046%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl143925144051%_))
                       (let ((_%L144054%_ _%hd143924144049%_)
                             (_%L144055%_ _%body143922144043%_)
                             (_%L144056%_ _%arg143913144019%_)
                             (_%L144057%_ _%hd143894143969%_))
                         (if (eq? _%L144057%_ _%L144054%_)
                             (_%__kont149679149680%_
                              _%L144054%_
                              _%L144055%_
                              _%L144056%_
                              _%L144057%_)
                             (_%__kont149685149686%_)))
                       (_%__kont149685149686%_))))
               (_%__kont149685149686%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont149685149686%_))
                                               (_%__kont149685149686%_)))))))
                           (_%loop143917144027%_ _%target143914144022%_ '()))
                         (_%__kont149685149686%_))))
                 (_%__kont149685149686%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop143908144003%_
                                      _%target143905143998%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx149677149678%_))
                                (let ((_%e143884143942%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx149677149678%_))))
                                  (let ((_%tl143886143947%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143884143942%_)))
                                        (_%hd143885143945%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143884143942%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd143885143945%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd143885143945%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl143886143947%_))
                                                (let ((_%e143887143950%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl143886143947%_))))
                                                  (let ((_%tl143889143955%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143887143950%_)))
                                                        (_%hd143888143953%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143887143950%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd143888143953%_))
                                                        (let ((_%e143890143958%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd143888143953%_))))
                  (let ((_%tl143892143963%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143890143958%_)))
                        (_%hd143891143961%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143890143958%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143891143961%_))
                        (let ((_%e143893143966%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143891143961%_))))
                          (let ((_%tl143895143971%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143893143966%_)))
                                (_%hd143894143969%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143893143966%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143895143971%_))
                                (let ((_%e143896143974%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143895143971%_))))
                                  (let ((_%tl143898143979%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143896143974%_)))
                                        (_%hd143897143977%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143896143974%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd143897143977%_))
                                        (let ((_%e143899143982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd143897143977%_))))
                                          (let ((_%tl143901143987%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143899143982%_)))
                                                (_%hd143900143985%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143899143982%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd143900143985%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd143900143985%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143901143987%_))
                                                        (let ((_%e143902143990%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143901143987%_))))
                  (let ((_%tl143904143995%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143902143990%_)))
                        (_%hd143903143993%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143902143990%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd143903143993%_))
                        (let ((_%__splice149681149682%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd143903143993%_
                                  '0))))
                          (let ((_%tl143907144000%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice149681149682%_ '1)))
                                (_%target143905143998%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice149681149682%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143907144000%_))
                                (_%__match149744149745%_
                                 _%e143884143942%_
                                 _%hd143885143945%_
                                 _%tl143886143947%_
                                 _%e143887143950%_
                                 _%hd143888143953%_
                                 _%tl143889143955%_
                                 _%e143890143958%_
                                 _%hd143891143961%_
                                 _%tl143892143963%_
                                 _%e143893143966%_
                                 _%hd143894143969%_
                                 _%tl143895143971%_
                                 _%e143896143974%_
                                 _%hd143897143977%_
                                 _%tl143898143979%_
                                 _%e143899143982%_
                                 _%hd143900143985%_
                                 _%tl143901143987%_
                                 _%e143902143990%_
                                 _%hd143903143993%_
                                 _%tl143904143995%_
                                 _%__splice149681149682%_
                                 _%target143905143998%_
                                 _%tl143907144000%_)
                                (_%__kont149685149686%_))))
                        (_%__kont149685149686%_))))
                (_%__kont149685149686%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont149685149686%_))
                                                (_%__kont149685149686%_))))
                                        (_%__kont149685149686%_))))
                                (_%__kont149685149686%_))))
                        (_%__kont149685149686%_))))
                (_%__kont149685149686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont149685149686%_))
                                            (_%__kont149685149686%_))
                                        (_%__kont149685149686%_))))
                                (_%__kont149685149686%_)))))))))
          (let* ((_%g143580143603%_
                  (lambda (_%g143581143600%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143581143600%_))))
                 (_%g143579143864%_
                  (lambda (_%g143581143606%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143581143606%_))
                        (let ((_%e143584143608%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143581143606%_))))
                          (let ((_%hd143585143611%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143584143608%_)))
                                (_%tl143586143613%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143584143608%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143586143613%_))
                                (let ((_%e143587143616%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143586143613%_))))
                                  (let ((_%hd143588143619%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143587143616%_)))
                                        (_%tl143589143621%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143587143616%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl143589143621%_))
                                        (let ((_g150354_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl143589143621%_
                                                  '0))))
                                          (begin
                                            (let ((_g150355_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g150354_)
                                                         (##values-length
                                                          _g150354_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g150355_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g150355_)))
                                            (let ((_%target143590143624%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g150354_
                                                      0)))
                                                  (_%tl143592143626%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g150354_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl143592143626%_))
                                                  (letrec ((_%loop143593143629%_
                                                            (lambda (_%hd143591143632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand143597143634%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd143591143632%_))
                          (let ((_%e143594143637%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd143591143632%_))))
                            (let ((_%lp-hd143595143640%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143594143637%_)))
                                  (_%lp-tl143596143642%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143594143637%_))))
                              (_%loop143593143629%_
                               _%lp-tl143596143642%_
                               (cons _%lp-hd143595143640%_
                                     _%rand143597143634%_))))
                          (let ((_%rand143598143645%_
                                 (reverse _%rand143597143634%_)))
                            ((lambda (_%L143648%_ _%L143649%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call143578%_
                                    _%L143649%_
                                    (let ((__tmp150356
                                           (lambda (_%g143666143669%_
                                                    _%g143667143671%_)
                                             (cons _%g143666143669%_
                                                   _%g143667143671%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp150356 '() _%L143648%_)))
                                   (let* ((_%__stx149793149794%_ _%L143649%_)
                                          (_%g143675143687%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx149793149794%_)))))
                                     (let ((_%__kont149795149796%_
                                            (lambda ()
                                              (let ((_%f143724%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self143575%_
                                                        _%L143649%_))))
                                                (if (and (let ((__tmp150357
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f143724%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp150357))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f143724%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp143726%_ ((_%rest143729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp150359
                                                (lambda (_%g143846143849%_
                                                         _%g143847143851%_)
                                                  (cons _%g143846143849%_
                                                        _%g143847143851%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp150359
                                            '()
                                            _%L143648%_))))
                               (_%bind143731%_ '())
                               (_%args143732%_ '()))
              (let* ((_%rest143733143741%_ _%rest143729%_)
                     (_%else143735143749%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind143731%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f143724%_
                                                      _%args143732%_)
                                                '()))))))
                     (_%K143737143835%_
                      (lambda (_%rest143752%_ _%e143753%_)
                        (let* ((_%__stx149747149748%_ _%e143753%_)
                               (_%g143758143776%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx149747149748%_)))))
                          (let ((_%__kont149749149750%_
                                 (lambda ()
                                   (_%lp143726%_
                                    _%rest143752%_
                                    _%bind143731%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e143753%_))
                                          _%args143732%_))))
                                (_%__kont149751149752%_
                                 (lambda ()
                                   (_%lp143726%_
                                    _%rest143752%_
                                    _%bind143731%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e143753%_))
                                          _%args143732%_))))
                                (_%__kont149753149754%_
                                 (lambda ()
                                   (let ((_%tmp143783%_
                                          (let ((__tmp150358
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp150358))))
                                     (_%lp143726%_
                                      _%rest143752%_
                                      (cons (cons _%tmp143783%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e143753%_))
                                                        '()))
                                            _%bind143731%_)
                                      (cons _%tmp143783%_ _%args143732%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx149747149748%_))
                                (let ((_%e143760143814%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx149747149748%_))))
                                  (let ((_%tl143762143819%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143760143814%_)))
                                        (_%hd143761143817%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143760143814%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd143761143817%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd143761143817%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl143762143819%_))
                                                (let ((_%e143763143822%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl143762143819%_))))
                                                  (let ((_%tl143765143827%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143763143822%_)))
                                                        (_%hd143764143825%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143763143822%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl143765143827%_))
                                                        (_%__kont149749149750%_)
                                                        (_%__kont149753149754%_))))
                                                (_%__kont149753149754%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd143761143817%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl143762143819%_))
                                                    (let ((_%e143769143799%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl143762143819%_))))
                                                      (let ((_%tl143771143804%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e143769143799%_)))
                    (_%hd143770143802%_
                     (let () (declare (not safe)) (##car _%e143769143799%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl143771143804%_))
                    (_%__kont149751149752%_)
                    (_%__kont149753149754%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont149753149754%_))
                                                (_%__kont149753149754%_)))
                                        (_%__kont149753149754%_))))
                                (_%__kont149753149754%_)))))))
                (if (pair? _%rest143733143741%_)
                    (let ((_%hd143738143838%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest143733143741%_)))
                          (_%tl143739143840%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest143733143741%_))))
                      (let* ((_%e143843%_ _%hd143738143838%_)
                             (_%rest143845%_ _%tl143739143840%_))
                        (_%K143737143835%_ _%rest143845%_ _%e143843%_)))
                    (_%else143735143749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call143578%_
                                                     _%L143649%_
                                                     (let ((__tmp150360
                                                            (lambda (_%g143853143856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g143854143858%_)
                      (cons _%g143853143856%_ _%g143854143858%_))))
               (declare (not safe))
               (__foldr1 __tmp150360 '() _%L143648%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont149797149798%_
                                            (lambda ()
                                              (_%compile-call143578%_
                                               _%L143649%_
                                               (let ((__tmp150361
                                                      (lambda (_%g143693143696%_
                                                               _%g143694143698%_)
                                                        (cons _%g143693143696%_
                                                              _%g143694143698%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp150361
                                                  '()
                                                  _%L143648%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx149793149794%_))
                                           (let ((_%e143677143706%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx149793149794%_))))
                                             (let ((_%tl143679143711%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e143677143706%_)))
                                                   (_%hd143678143709%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e143677143706%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd143678143709%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd143678143709%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl143679143711%_))
                                                           (let ((_%e143680143714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl143679143711%_))))
                     (let ((_%tl143682143719%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e143680143714%_)))
                           (_%hd143681143717%_
                            (let ()
                              (declare (not safe))
                              (##car _%e143680143714%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl143682143719%_))
                           (_%__kont149795149796%_)
                           (_%__kont149797149798%_))))
                   (_%__kont149797149798%_))
               (_%__kont149797149798%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont149797149798%_))))
                                           (_%__kont149797149798%_))))))
                             _%rand143598143645%_
                             _%hd143588143619%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop143593143629%_
                                                     _%target143590143624%_
                                                     '()))
                                                  (_%g143580143603%_
                                                   _%g143581143606%_)))))
                                        (_%g143580143603%_
                                         _%g143581143606%_))))
                                (_%g143580143603%_ _%g143581143606%_))))
                        (_%g143580143603%_ _%g143581143606%_)))))
            (_%g143579143864%_ _%stx143576%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self143318%_ _%stx143319%_)
        (let* ((_%__stx149865149866%_ _%stx143319%_)
               (_%g143322143351%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx149865149866%_)))))
          (let ((_%__kont149867149868%_
                 (lambda (_%L143419%_ _%L143420%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self143318%_
                        _%stx143319%_)
                       (let ((_%f143442%_
                              (let ((__tmp150362
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L143420%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self143318%_
                                 __tmp150362))))
                         (let _%lp143444%_ ((_%rest143447%_
                                             (reverse (let ((__tmp150364
                                                             (lambda (_%g143564143567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g143565143569%_)
                       (cons _%g143564143567%_ _%g143565143569%_))))
                (declare (not safe))
                (__foldr1 __tmp150364 '() _%L143419%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind143449%_ '())
                                            (_%args143450%_ '()))
                           (let* ((_%rest143451143459%_ _%rest143447%_)
                                  (_%else143453143467%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind143449%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f143442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args143450%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K143455143553%_
                                   (lambda (_%rest143470%_ _%e143471%_)
                                     (let* ((_%__stx149819149820%_ _%e143471%_)
                                            (_%g143476143494%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx149819149820%_)))))
                                       (let ((_%__kont149821149822%_
                                              (lambda ()
                                                (_%lp143444%_
                                                 _%rest143470%_
                                                 _%bind143449%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e143471%_))
                                                       _%args143450%_))))
                                             (_%__kont149823149824%_
                                              (lambda ()
                                                (_%lp143444%_
                                                 _%rest143470%_
                                                 _%bind143449%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e143471%_))
                                                       _%args143450%_))))
                                             (_%__kont149825149826%_
                                              (lambda ()
                                                (let ((_%tmp143501%_
                                                       (let ((__tmp150363
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp150363))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp143444%_
                                                   _%rest143470%_
                                                   (cons (cons _%tmp143501%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e143471%_))
                             '()))
                 _%bind143449%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp143501%_
                                                         _%args143450%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx149819149820%_))
                                             (let ((_%e143478143532%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx149819149820%_))))
                                               (let ((_%tl143480143537%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e143478143532%_)))
                                                     (_%hd143479143535%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e143478143532%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd143479143535%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd143479143535%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl143480143537%_))
                     (let ((_%e143481143540%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143480143537%_))))
                       (let ((_%tl143483143545%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e143481143540%_)))
                             (_%hd143482143543%_
                              (let ()
                                (declare (not safe))
                                (##car _%e143481143540%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143483143545%_))
                             (_%__kont149821149822%_)
                             (_%__kont149825149826%_))))
                     (_%__kont149825149826%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd143479143535%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl143480143537%_))
                         (let ((_%e143487143517%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl143480143537%_))))
                           (let ((_%tl143489143522%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e143487143517%_)))
                                 (_%hd143488143520%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e143487143517%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl143489143522%_))
                                 (_%__kont149823149824%_)
                                 (_%__kont149825149826%_))))
                         (_%__kont149825149826%_))
                     (_%__kont149825149826%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont149825149826%_))))
                                             (_%__kont149825149826%_)))))))
                             (if (pair? _%rest143451143459%_)
                                 (let ((_%hd143456143556%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest143451143459%_)))
                                       (_%tl143457143558%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest143451143459%_))))
                                   (let* ((_%e143561%_ _%hd143456143556%_)
                                          (_%rest143563%_ _%tl143457143558%_))
                                     (_%K143455143553%_
                                      _%rest143563%_
                                      _%e143561%_)))
                                 (_%else143453143467%_))))))))
                (_%__kont149871149872%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self143318%_ _%stx143319%_))))
            (let ((_%__match149910149911%_
                   (lambda (_%e143326143363%_
                            _%hd143327143366%_
                            _%tl143328143368%_
                            _%e143329143371%_
                            _%hd143330143374%_
                            _%tl143331143376%_
                            _%e143332143379%_
                            _%hd143333143382%_
                            _%tl143334143384%_
                            _%e143335143387%_
                            _%hd143336143390%_
                            _%tl143337143392%_
                            _%__splice149869149870%_
                            _%target143338143395%_
                            _%tl143340143397%_)
                     (letrec ((_%loop143341143400%_
                               (lambda (_%hd143339143403%_
                                        _%rand143345143405%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd143339143403%_))
                                     (let ((_%e143342143408%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd143339143403%_))))
                                       (let ((_%lp-tl143344143413%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e143342143408%_)))
                                             (_%lp-hd143343143411%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e143342143408%_))))
                                         (_%loop143341143400%_
                                          _%lp-tl143344143413%_
                                          (cons _%lp-hd143343143411%_
                                                _%rand143345143405%_))))
                                     (let ((_%rand143346143416%_
                                            (reverse _%rand143345143405%_)))
                                       (_%__kont149867149868%_
                                        _%rand143346143416%_
                                        _%hd143336143390%_))))))
                       (_%loop143341143400%_ _%target143338143395%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx149865149866%_))
                  (let ((_%e143326143363%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx149865149866%_))))
                    (let ((_%tl143328143368%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143326143363%_)))
                          (_%hd143327143366%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143326143363%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143328143368%_))
                          (let ((_%e143329143371%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143328143368%_))))
                            (let ((_%tl143331143376%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143329143371%_)))
                                  (_%hd143330143374%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143329143371%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143330143374%_))
                                  (let ((_%e143332143379%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143330143374%_))))
                                    (let ((_%tl143334143384%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143332143379%_)))
                                          (_%hd143333143382%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143332143379%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143333143382%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143333143382%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143334143384%_))
                                                  (let ((_%e143335143387%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143334143384%_))))
                                                    (let ((_%tl143337143392%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143335143387%_)))
                                                          (_%hd143336143390%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143335143387%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143337143392%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl143331143376%_))
                      (let ((_%__splice149869149870%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl143331143376%_
                                '0))))
                        (let ((_%tl143340143397%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149869149870%_ '1)))
                              (_%target143338143395%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149869149870%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl143340143397%_))
                              (_%__match149910149911%_
                               _%e143326143363%_
                               _%hd143327143366%_
                               _%tl143328143368%_
                               _%e143329143371%_
                               _%hd143330143374%_
                               _%tl143331143376%_
                               _%e143332143379%_
                               _%hd143333143382%_
                               _%tl143334143384%_
                               _%e143335143387%_
                               _%hd143336143390%_
                               _%tl143337143392%_
                               _%__splice149869149870%_
                               _%target143338143395%_
                               _%tl143340143397%_)
                              (_%__kont149871149872%_))))
                      (_%__kont149871149872%_))
                  (_%__kont149871149872%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont149871149872%_))
                                              (_%__kont149871149872%_))
                                          (_%__kont149871149872%_))))
                                  (_%__kont149871149872%_))))
                          (_%__kont149871149872%_))))
                  (_%__kont149871149872%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self143130%_ _%stx143131%_)
        (letrec ((_%simplify143133%_
                  (lambda (_%code143218%_)
                    (let* ((_%code143219143237%_ _%code143218%_)
                           (_%else143221143245%_ (lambda () _%code143218%_))
                           (_%K143223143281%_
                            (lambda (_%expr143248%_ _%test143249%_)
                              (let* ((_%expr143250143258%_ _%expr143248%_)
                                     (_%else143252143266%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test143249%_
                                                    (cons _%expr143248%_
                                                          '())))))
                                     (_%K143254143271%_
                                      (lambda (_%exprs143269%_)
                                        (cons 'and
                                              (cons _%test143249%_
                                                    _%exprs143269%_)))))
                                (if (pair? _%expr143250143258%_)
                                    (let ((_%hd143255143274%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr143250143258%_)))
                                          (_%tl143256143276%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr143250143258%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd143255143274%_ 'and))
                                          (let ((_%exprs143279%_
                                                 _%tl143256143276%_))
                                            (_%K143254143271%_
                                             _%exprs143279%_))
                                          (_%else143252143266%_)))
                                    (_%else143252143266%_))))))
                      (if (pair? _%code143219143237%_)
                          (let ((_%hd143224143284%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code143219143237%_)))
                                (_%tl143225143286%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code143219143237%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd143224143284%_ 'if))
                                (if (pair? _%tl143225143286%_)
                                    (let ((_%hd143226143289%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl143225143286%_)))
                                          (_%tl143227143291%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl143225143286%_))))
                                      (let ((_%test143294%_
                                             _%hd143226143289%_))
                                        (if (pair? _%tl143227143291%_)
                                            (let ((_%hd143228143296%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl143227143291%_)))
                                                  (_%tl143229143298%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl143227143291%_))))
                                              (let ((_%expr143301%_
                                                     _%hd143228143296%_))
                                                (if (pair? _%tl143229143298%_)
                                                    (let ((_%hd143230143303%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl143229143298%_)))
                                                          (_%tl143231143305%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl143229143298%_))))
                                                      (if (pair? _%hd143230143303%_)
                                                          (let ((_%hd143232143308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd143230143303%_)))
                        (_%tl143233143310%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd143230143303%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd143232143308%_ 'quote))
                        (if (pair? _%tl143233143310%_)
                            (let ((_%hd143234143313%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl143233143310%_)))
                                  (_%tl143235143315%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl143233143310%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd143234143313%_ '#f))
                                  (if (null? _%tl143235143315%_)
                                      (if (null? _%tl143231143305%_)
                                          (_%K143223143281%_
                                           _%expr143301%_
                                           _%test143294%_)
                                          (_%else143221143245%_))
                                      (_%else143221143245%_))
                                  (_%else143221143245%_)))
                            (_%else143221143245%_))
                        (_%else143221143245%_)))
                  (_%else143221143245%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else143221143245%_))))
                                            (_%else143221143245%_))))
                                    (_%else143221143245%_))
                                (_%else143221143245%_)))
                          (_%else143221143245%_))))))
          (let* ((_%g143135143156%_
                  (lambda (_%g143136143153%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143136143153%_))))
                 (_%g143134143215%_
                  (lambda (_%g143136143159%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143136143159%_))
                        (let ((_%e143140143161%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143136143159%_))))
                          (let ((_%hd143141143164%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143140143161%_)))
                                (_%tl143142143166%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143140143161%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143142143166%_))
                                (let ((_%e143143143169%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143142143166%_))))
                                  (let ((_%hd143144143172%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143143143169%_)))
                                        (_%tl143145143174%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143143143169%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143145143174%_))
                                        (let ((_%e143146143177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143145143174%_))))
                                          (let ((_%hd143147143180%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143146143177%_)))
                                                (_%tl143148143182%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143146143177%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl143148143182%_))
                                                (let ((_%e143149143185%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl143148143182%_))))
                                                  (let ((_%hd143150143188%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143149143185%_)))
                                                        (_%tl143151143190%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143149143185%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl143151143190%_))
                                                        ((lambda (_%L143193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L143194%_
                          _%L143195%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify143133%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self143130%_
                                       _%L143195%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self143130%_
                                             _%L143194%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143130%_
                                                   _%L143193%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp150365
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self143130%_
                                               _%L143195%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp150365
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self143130%_
                                            _%L143194%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self143130%_
                                                  _%L143193%_))
                                               '()))))))
                 _%hd143150143188%_
                 _%hd143147143180%_
                 _%hd143144143172%_)
                (_%g143135143156%_ _%g143136143159%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g143135143156%_
                                                 _%g143136143159%_))))
                                        (_%g143135143156%_
                                         _%g143136143159%_))))
                                (_%g143135143156%_ _%g143136143159%_))))
                        (_%g143135143156%_ _%g143136143159%_)))))
            (_%g143134143215%_ _%stx143131%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self143078%_ _%stx143079%_)
        (let* ((_%g143081143094%_
                (lambda (_%g143082143091%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143082143091%_))))
               (_%g143080143127%_
                (lambda (_%g143082143097%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143082143097%_))
                      (let ((_%e143084143099%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143082143097%_))))
                        (let ((_%hd143085143102%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143084143099%_)))
                              (_%tl143086143104%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143084143099%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143086143104%_))
                              (let ((_%e143087143107%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143086143104%_))))
                                (let ((_%hd143088143110%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143087143107%_)))
                                      (_%tl143089143112%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143087143107%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl143089143112%_))
                                      ((lambda (_%L143115%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L143115%_)))
                                       _%hd143088143110%_)
                                      (_%g143081143094%_ _%g143082143097%_))))
                              (_%g143081143094%_ _%g143082143097%_))))
                      (_%g143081143094%_ _%g143082143097%_)))))
          (_%g143080143127%_ _%stx143079%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self143010%_ _%stx143011%_)
        (let* ((_%g143013143030%_
                (lambda (_%g143014143027%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143014143027%_))))
               (_%g143012143075%_
                (lambda (_%g143014143033%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143014143033%_))
                      (let ((_%e143017143035%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143014143033%_))))
                        (let ((_%hd143018143038%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143017143035%_)))
                              (_%tl143019143040%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143017143035%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143019143040%_))
                              (let ((_%e143020143043%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143019143040%_))))
                                (let ((_%hd143021143046%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143020143043%_)))
                                      (_%tl143022143048%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143020143043%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143022143048%_))
                                      (let ((_%e143023143051%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143022143048%_))))
                                        (let ((_%hd143024143054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143023143051%_)))
                                              (_%tl143025143056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143023143051%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143025143056%_))
                                              ((lambda (_%L143059%_
                                                        _%L143060%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L143060%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self143010%_ _%L143059%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd143024143054%_
                                               _%hd143021143046%_)
                                              (_%g143013143030%_
                                               _%g143014143033%_))))
                                      (_%g143013143030%_ _%g143014143033%_))))
                              (_%g143013143030%_ _%g143014143033%_))))
                      (_%g143013143030%_ _%g143014143033%_)))))
          (_%g143012143075%_ _%stx143011%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self142821%_ _%stx142822%_)
        (let* ((_%g142824142841%_
                (lambda (_%g142825142838%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142825142838%_))))
               (_%g142823143007%_
                (lambda (_%g142825142844%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142825142844%_))
                      (let ((_%e142828142846%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142825142844%_))))
                        (let ((_%hd142829142849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142828142846%_)))
                              (_%tl142830142851%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142828142846%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142830142851%_))
                              (let ((_%e142831142854%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142830142851%_))))
                                (let ((_%hd142832142857%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142831142854%_)))
                                      (_%tl142833142859%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142831142854%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142833142859%_))
                                      (let ((_%e142834142862%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142833142859%_))))
                                        (let ((_%hd142835142865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142834142862%_)))
                                              (_%tl142836142867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142834142862%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142836142867%_))
                                              ((lambda (_%L142870%_
                                                        _%L142871%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self142821%_ _%L142870%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self142821%_ _%L142871%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp142886%_ ((_%rest142889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L142871%_ (cons _%L142870%_ '())))
                                (_%bind142891%_ '())
                                (_%args142892%_ '()))
               (let* ((_%rest142893142901%_ _%rest142889%_)
                      (_%else142895142909%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind142891%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args142892%_)
                                                 '()))))))
                      (_%K142897142995%_
                       (lambda (_%rest142912%_ _%e142913%_)
                         (let* ((_%__stx149913149914%_ _%e142913%_)
                                (_%g142918142936%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx149913149914%_)))))
                           (let ((_%__kont149915149916%_
                                  (lambda ()
                                    (_%lp142886%_
                                     _%rest142912%_
                                     _%bind142891%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142913%_))
                                           _%args142892%_))))
                                 (_%__kont149917149918%_
                                  (lambda ()
                                    (_%lp142886%_
                                     _%rest142912%_
                                     _%bind142891%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142913%_))
                                           _%args142892%_))))
                                 (_%__kont149919149920%_
                                  (lambda ()
                                    (let ((_%tmp142943%_
                                           (let ((__tmp150366
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp150366))))
                                      (_%lp142886%_
                                       _%rest142912%_
                                       (cons (cons _%tmp142943%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e142913%_))
                                                         '()))
                                             _%bind142891%_)
                                       (cons _%tmp142943%_ _%args142892%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx149913149914%_))
                                 (let ((_%e142920142974%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx149913149914%_))))
                                   (let ((_%tl142922142979%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e142920142974%_)))
                                         (_%hd142921142977%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e142920142974%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd142921142977%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd142921142977%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl142922142979%_))
                                                 (let ((_%e142923142982%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl142922142979%_))))
                                                   (let ((_%tl142925142987%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142923142982%_)))
                                                         (_%hd142924142985%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142923142982%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142925142987%_))
                                                         (_%__kont149915149916%_)
                                                         (_%__kont149919149920%_))))
                                                 (_%__kont149919149920%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd142921142977%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142922142979%_))
                                                     (let ((_%e142929142959%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142922142979%_))))
                                                       (let ((_%tl142931142964%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142929142959%_)))
                     (_%hd142930142962%_
                      (let () (declare (not safe)) (##car _%e142929142959%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142931142964%_))
                     (_%__kont149917149918%_)
                     (_%__kont149919149920%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont149919149920%_))
                                                 (_%__kont149919149920%_)))
                                         (_%__kont149919149920%_))))
                                 (_%__kont149919149920%_)))))))
                 (if (pair? _%rest142893142901%_)
                     (let ((_%hd142898142998%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest142893142901%_)))
                           (_%tl142899143000%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest142893142901%_))))
                       (let* ((_%e143003%_ _%hd142898142998%_)
                              (_%rest143005%_ _%tl142899143000%_))
                         (_%K142897142995%_ _%rest143005%_ _%e143003%_)))
                     (_%else142895142909%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142835142865%_
                                               _%hd142832142857%_)
                                              (_%g142824142841%_
                                               _%g142825142844%_))))
                                      (_%g142824142841%_ _%g142825142844%_))))
                              (_%g142824142841%_ _%g142825142844%_))))
                      (_%g142824142841%_ _%g142825142844%_)))))
          (_%g142823143007%_ _%stx142822%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self142632%_ _%stx142633%_)
        (let* ((_%g142635142652%_
                (lambda (_%g142636142649%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142636142649%_))))
               (_%g142634142818%_
                (lambda (_%g142636142655%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142636142655%_))
                      (let ((_%e142639142657%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142636142655%_))))
                        (let ((_%hd142640142660%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142639142657%_)))
                              (_%tl142641142662%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142639142657%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142641142662%_))
                              (let ((_%e142642142665%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142641142662%_))))
                                (let ((_%hd142643142668%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142642142665%_)))
                                      (_%tl142644142670%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142642142665%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142644142670%_))
                                      (let ((_%e142645142673%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142644142670%_))))
                                        (let ((_%hd142646142676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142645142673%_)))
                                              (_%tl142647142678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142645142673%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142647142678%_))
                                              ((lambda (_%L142681%_
                                                        _%L142682%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self142632%_ _%L142681%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self142632%_ _%L142682%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp142697%_ ((_%rest142700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L142682%_ (cons _%L142681%_ '())))
                                (_%bind142702%_ '())
                                (_%args142703%_ '()))
               (let* ((_%rest142704142712%_ _%rest142700%_)
                      (_%else142706142720%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind142702%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args142703%_)
                                                 '()))))))
                      (_%K142708142806%_
                       (lambda (_%rest142723%_ _%e142724%_)
                         (let* ((_%__stx149959149960%_ _%e142724%_)
                                (_%g142729142747%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx149959149960%_)))))
                           (let ((_%__kont149961149962%_
                                  (lambda ()
                                    (_%lp142697%_
                                     _%rest142723%_
                                     _%bind142702%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142724%_))
                                           _%args142703%_))))
                                 (_%__kont149963149964%_
                                  (lambda ()
                                    (_%lp142697%_
                                     _%rest142723%_
                                     _%bind142702%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142724%_))
                                           _%args142703%_))))
                                 (_%__kont149965149966%_
                                  (lambda ()
                                    (let ((_%tmp142754%_
                                           (let ((__tmp150367
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp150367))))
                                      (_%lp142697%_
                                       _%rest142723%_
                                       (cons (cons _%tmp142754%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e142724%_))
                                                         '()))
                                             _%bind142702%_)
                                       (cons _%tmp142754%_ _%args142703%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx149959149960%_))
                                 (let ((_%e142731142785%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx149959149960%_))))
                                   (let ((_%tl142733142790%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e142731142785%_)))
                                         (_%hd142732142788%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e142731142785%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd142732142788%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd142732142788%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl142733142790%_))
                                                 (let ((_%e142734142793%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl142733142790%_))))
                                                   (let ((_%tl142736142798%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142734142793%_)))
                                                         (_%hd142735142796%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142734142793%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142736142798%_))
                                                         (_%__kont149961149962%_)
                                                         (_%__kont149965149966%_))))
                                                 (_%__kont149965149966%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd142732142788%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142733142790%_))
                                                     (let ((_%e142740142770%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142733142790%_))))
                                                       (let ((_%tl142742142775%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142740142770%_)))
                     (_%hd142741142773%_
                      (let () (declare (not safe)) (##car _%e142740142770%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142742142775%_))
                     (_%__kont149963149964%_)
                     (_%__kont149965149966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont149965149966%_))
                                                 (_%__kont149965149966%_)))
                                         (_%__kont149965149966%_))))
                                 (_%__kont149965149966%_)))))))
                 (if (pair? _%rest142704142712%_)
                     (let ((_%hd142709142809%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest142704142712%_)))
                           (_%tl142710142811%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest142704142712%_))))
                       (let* ((_%e142814%_ _%hd142709142809%_)
                              (_%rest142816%_ _%tl142710142811%_))
                         (_%K142708142806%_ _%rest142816%_ _%e142814%_)))
                     (_%else142706142720%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142646142676%_
                                               _%hd142643142668%_)
                                              (_%g142635142652%_
                                               _%g142636142655%_))))
                                      (_%g142635142652%_ _%g142636142655%_))))
                              (_%g142635142652%_ _%g142636142655%_))))
                      (_%g142635142652%_ _%g142636142655%_)))))
          (_%g142634142818%_ _%stx142633%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self142548%_ _%stx142549%_)
        (let* ((_%g142551142572%_
                (lambda (_%g142552142569%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142552142569%_))))
               (_%g142550142629%_
                (lambda (_%g142552142575%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142552142575%_))
                      (let ((_%e142556142577%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142552142575%_))))
                        (let ((_%hd142557142580%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142556142577%_)))
                              (_%tl142558142582%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142556142577%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142558142582%_))
                              (let ((_%e142559142585%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142558142582%_))))
                                (let ((_%hd142560142588%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142559142585%_)))
                                      (_%tl142561142590%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142559142585%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142561142590%_))
                                      (let ((_%e142562142593%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142561142590%_))))
                                        (let ((_%hd142563142596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142562142593%_)))
                                              (_%tl142564142598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142562142593%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142564142598%_))
                                              (let ((_%e142565142601%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142564142598%_))))
                                                (let ((_%hd142566142604%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142565142601%_)))
                                                      (_%tl142567142606%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142565142601%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142567142606%_))
                                                      ((lambda (_%L142609%_
                                                                _%L142610%_
                                                                _%L142611%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self142548%_ _%L142609%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self142548%_
                                      _%L142610%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self142548%_
                                            _%L142611%_))
                                         (cons ''#f '()))))))
               _%hd142566142604%_
               _%hd142563142596%_
               _%hd142560142588%_)
              (_%g142551142572%_ _%g142552142575%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142551142572%_
                                               _%g142552142575%_))))
                                      (_%g142551142572%_ _%g142552142575%_))))
                              (_%g142551142572%_ _%g142552142575%_))))
                      (_%g142551142572%_ _%g142552142575%_)))))
          (_%g142550142629%_ _%stx142549%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self142448%_ _%stx142449%_)
        (let* ((_%g142451142476%_
                (lambda (_%g142452142473%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142452142473%_))))
               (_%g142450142545%_
                (lambda (_%g142452142479%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142452142479%_))
                      (let ((_%e142457142481%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142452142479%_))))
                        (let ((_%hd142458142484%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142457142481%_)))
                              (_%tl142459142486%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142457142481%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142459142486%_))
                              (let ((_%e142460142489%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142459142486%_))))
                                (let ((_%hd142461142492%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142460142489%_)))
                                      (_%tl142462142494%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142460142489%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142462142494%_))
                                      (let ((_%e142463142497%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142462142494%_))))
                                        (let ((_%hd142464142500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142463142497%_)))
                                              (_%tl142465142502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142463142497%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142465142502%_))
                                              (let ((_%e142466142505%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142465142502%_))))
                                                (let ((_%hd142467142508%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142466142505%_)))
                                                      (_%tl142468142510%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142466142505%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl142468142510%_))
                                                      (let ((_%e142469142513%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl142468142510%_))))
                (let ((_%hd142470142516%_
                       (let () (declare (not safe)) (##car _%e142469142513%_)))
                      (_%tl142471142518%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e142469142513%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142471142518%_))
                      ((lambda (_%L142521%_
                                _%L142522%_
                                _%L142523%_
                                _%L142524%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self142448%_
                                        _%L142522%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self142448%_
                                              _%L142521%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self142448%_
                                                    _%L142523%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self142448%_
                                                          _%L142524%_))
                                                       (cons ''#f '())))))))
                       _%hd142470142516%_
                       _%hd142467142508%_
                       _%hd142464142500%_
                       _%hd142461142492%_)
                      (_%g142451142476%_ _%g142452142479%_))))
              (_%g142451142476%_ _%g142452142479%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142451142476%_
                                               _%g142452142479%_))))
                                      (_%g142451142476%_ _%g142452142479%_))))
                              (_%g142451142476%_ _%g142452142479%_))))
                      (_%g142451142476%_ _%g142452142479%_)))))
          (_%g142450142545%_ _%stx142449%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self142364%_ _%stx142365%_)
        (let* ((_%g142367142388%_
                (lambda (_%g142368142385%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142368142385%_))))
               (_%g142366142445%_
                (lambda (_%g142368142391%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142368142391%_))
                      (let ((_%e142372142393%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142368142391%_))))
                        (let ((_%hd142373142396%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142372142393%_)))
                              (_%tl142374142398%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142372142393%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142374142398%_))
                              (let ((_%e142375142401%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142374142398%_))))
                                (let ((_%hd142376142404%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142375142401%_)))
                                      (_%tl142377142406%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142375142401%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142377142406%_))
                                      (let ((_%e142378142409%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142377142406%_))))
                                        (let ((_%hd142379142412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142378142409%_)))
                                              (_%tl142380142414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142378142409%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142380142414%_))
                                              (let ((_%e142381142417%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142380142414%_))))
                                                (let ((_%hd142382142420%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142381142417%_)))
                                                      (_%tl142383142422%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142381142417%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142383142422%_))
                                                      ((lambda (_%L142425%_
                                                                _%L142426%_
                                                                _%L142427%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self142364%_ _%L142425%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self142364%_
                                      _%L142426%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self142364%_
                                            _%L142427%_))
                                         (cons ''#f '()))))))
               _%hd142382142420%_
               _%hd142379142412%_
               _%hd142376142404%_)
              (_%g142367142388%_ _%g142368142391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142367142388%_
                                               _%g142368142391%_))))
                                      (_%g142367142388%_ _%g142368142391%_))))
                              (_%g142367142388%_ _%g142368142391%_))))
                      (_%g142367142388%_ _%g142368142391%_)))))
          (_%g142366142445%_ _%stx142365%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self142264%_ _%stx142265%_)
        (let* ((_%g142267142292%_
                (lambda (_%g142268142289%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142268142289%_))))
               (_%g142266142361%_
                (lambda (_%g142268142295%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142268142295%_))
                      (let ((_%e142273142297%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142268142295%_))))
                        (let ((_%hd142274142300%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142273142297%_)))
                              (_%tl142275142302%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142273142297%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142275142302%_))
                              (let ((_%e142276142305%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142275142302%_))))
                                (let ((_%hd142277142308%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142276142305%_)))
                                      (_%tl142278142310%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142276142305%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142278142310%_))
                                      (let ((_%e142279142313%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142278142310%_))))
                                        (let ((_%hd142280142316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142279142313%_)))
                                              (_%tl142281142318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142279142313%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142281142318%_))
                                              (let ((_%e142282142321%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142281142318%_))))
                                                (let ((_%hd142283142324%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142282142321%_)))
                                                      (_%tl142284142326%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142282142321%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl142284142326%_))
                                                      (let ((_%e142285142329%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl142284142326%_))))
                (let ((_%hd142286142332%_
                       (let () (declare (not safe)) (##car _%e142285142329%_)))
                      (_%tl142287142334%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e142285142329%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142287142334%_))
                      ((lambda (_%L142337%_
                                _%L142338%_
                                _%L142339%_
                                _%L142340%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self142264%_
                                        _%L142338%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self142264%_
                                              _%L142337%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self142264%_
                                                    _%L142339%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self142264%_
                                                          _%L142340%_))
                                                       (cons ''#f '())))))))
                       _%hd142286142332%_
                       _%hd142283142324%_
                       _%hd142280142316%_
                       _%hd142277142308%_)
                      (_%g142267142292%_ _%g142268142295%_))))
              (_%g142267142292%_ _%g142268142295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142267142292%_
                                               _%g142268142295%_))))
                                      (_%g142267142292%_ _%g142268142295%_))))
                              (_%g142267142292%_ _%g142268142295%_))))
                      (_%g142267142292%_ _%g142268142295%_)))))
          (_%g142266142361%_ _%stx142265%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self142059%_ _%stx142060%_)
        (let* ((_%g142062142083%_
                (lambda (_%g142063142080%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142063142080%_))))
               (_%g142061142261%_
                (lambda (_%g142063142086%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142063142086%_))
                      (let ((_%e142067142088%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142063142086%_))))
                        (let ((_%hd142068142091%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142067142088%_)))
                              (_%tl142069142093%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142067142088%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142069142093%_))
                              (let ((_%e142070142096%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142069142093%_))))
                                (let ((_%hd142071142099%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142070142096%_)))
                                      (_%tl142072142101%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142070142096%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142072142101%_))
                                      (let ((_%e142073142104%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142072142101%_))))
                                        (let ((_%hd142074142107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142073142104%_)))
                                              (_%tl142075142109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142073142104%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142075142109%_))
                                              (let ((_%e142076142112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142075142109%_))))
                                                (let ((_%hd142077142115%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142076142112%_)))
                                                      (_%tl142078142117%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142076142112%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142078142117%_))
                                                      ((lambda (_%L142120%_
                                                                _%L142121%_
                                                                _%L142122%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self142059%_
                                    _%L142120%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self142059%_
                                          _%L142121%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp142140%_ ((_%rest142143%_
                                         (cons _%L142121%_
                                               (cons _%L142120%_ '())))
                                        (_%bind142145%_ '())
                                        (_%args142146%_ '()))
                       (let* ((_%rest142147142155%_ _%rest142143%_)
                              (_%else142149142163%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind142145%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp150368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp150368 _%args142146%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K142151142249%_
                               (lambda (_%rest142166%_ _%e142167%_)
                                 (let* ((_%__stx150005150006%_ _%e142167%_)
                                        (_%g142172142190%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx150005150006%_)))))
                                   (let ((_%__kont150007150008%_
                                          (lambda ()
                                            (_%lp142140%_
                                             _%rest142166%_
                                             _%bind142145%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e142167%_))
                                                   _%args142146%_))))
                                         (_%__kont150009150010%_
                                          (lambda ()
                                            (_%lp142140%_
                                             _%rest142166%_
                                             _%bind142145%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e142167%_))
                                                   _%args142146%_))))
                                         (_%__kont150011150012%_
                                          (lambda ()
                                            (let ((_%tmp142197%_
                                                   (let ((__tmp150369
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp150369))))
                                              (_%lp142140%_
                                               _%rest142166%_
                                               (cons (cons _%tmp142197%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e142167%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142145%_)
                                               (cons _%tmp142197%_
                                                     _%args142146%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx150005150006%_))
                                         (let ((_%e142174142228%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx150005150006%_))))
                                           (let ((_%tl142176142233%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142174142228%_)))
                                                 (_%hd142175142231%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142174142228%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd142175142231%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd142175142231%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl142176142233%_))
                                                         (let ((_%e142177142236%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl142176142233%_))))
                   (let ((_%tl142179142241%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e142177142236%_)))
                         (_%hd142178142239%_
                          (let ()
                            (declare (not safe))
                            (##car _%e142177142236%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl142179142241%_))
                         (_%__kont150007150008%_)
                         (_%__kont150011150012%_))))
                 (_%__kont150011150012%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd142175142231%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142176142233%_))
                     (let ((_%e142183142213%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142176142233%_))))
                       (let ((_%tl142185142218%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142183142213%_)))
                             (_%hd142184142216%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142183142213%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142185142218%_))
                             (_%__kont150009150010%_)
                             (_%__kont150011150012%_))))
                     (_%__kont150011150012%_))
                 (_%__kont150011150012%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont150011150012%_))))
                                         (_%__kont150011150012%_)))))))
                         (if (pair? _%rest142147142155%_)
                             (let ((_%hd142152142252%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest142147142155%_)))
                                   (_%tl142153142254%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest142147142155%_))))
                               (let* ((_%e142257%_ _%hd142152142252%_)
                                      (_%rest142259%_ _%tl142153142254%_))
                                 (_%K142151142249%_
                                  _%rest142259%_
                                  _%e142257%_)))
                             (_%else142149142163%_))))))
               _%hd142077142115%_
               _%hd142074142107%_
               _%hd142071142099%_)
              (_%g142062142083%_ _%g142063142086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142062142083%_
                                               _%g142063142086%_))))
                                      (_%g142062142083%_ _%g142063142086%_))))
                              (_%g142062142083%_ _%g142063142086%_))))
                      (_%g142062142083%_ _%g142063142086%_)))))
          (_%g142061142261%_ _%stx142060%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self141838%_ _%stx141839%_)
        (let* ((_%g141841141866%_
                (lambda (_%g141842141863%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141842141863%_))))
               (_%g141840142056%_
                (lambda (_%g141842141869%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141842141869%_))
                      (let ((_%e141847141871%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141842141869%_))))
                        (let ((_%hd141848141874%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141847141871%_)))
                              (_%tl141849141876%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141847141871%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141849141876%_))
                              (let ((_%e141850141879%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141849141876%_))))
                                (let ((_%hd141851141882%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141850141879%_)))
                                      (_%tl141852141884%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141850141879%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141852141884%_))
                                      (let ((_%e141853141887%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141852141884%_))))
                                        (let ((_%hd141854141890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141853141887%_)))
                                              (_%tl141855141892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141853141887%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141855141892%_))
                                              (let ((_%e141856141895%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141855141892%_))))
                                                (let ((_%hd141857141898%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141856141895%_)))
                                                      (_%tl141858141900%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141856141895%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl141858141900%_))
                                                      (let ((_%e141859141903%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl141858141900%_))))
                (let ((_%hd141860141906%_
                       (let () (declare (not safe)) (##car _%e141859141903%_)))
                      (_%tl141861141908%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141859141903%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141861141908%_))
                      ((lambda (_%L141911%_
                                _%L141912%_
                                _%L141913%_
                                _%L141914%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self141838%_
                                            _%L141912%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self141838%_
                                                  _%L141911%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self141838%_
                                                        _%L141913%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp141935%_ ((_%rest141938%_
                                                 (cons _%L141913%_
                                                       (cons _%L141911%_
                                                             (cons _%L141912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind141940%_ '())
                                                (_%args141941%_ '()))
                               (let* ((_%rest141942141950%_ _%rest141938%_)
                                      (_%else141944141958%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind141940%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp150370 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp150370 _%args141941%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K141946142044%_
                                       (lambda (_%rest141961%_ _%e141962%_)
                                         (let* ((_%__stx150051150052%_
                                                 _%e141962%_)
                                                (_%g141967141985%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx150051150052%_)))))
                                           (let ((_%__kont150053150054%_
                                                  (lambda ()
                                                    (_%lp141935%_
                                                     _%rest141961%_
                                                     _%bind141940%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e141962%_))
                                                           _%args141941%_))))
                                                 (_%__kont150055150056%_
                                                  (lambda ()
                                                    (_%lp141935%_
                                                     _%rest141961%_
                                                     _%bind141940%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e141962%_))
                                                           _%args141941%_))))
                                                 (_%__kont150057150058%_
                                                  (lambda ()
                                                    (let ((_%tmp141992%_
                                                           (let ((__tmp150371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp150371))))
              (_%lp141935%_
               _%rest141961%_
               (cons (cons _%tmp141992%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e141962%_))
                                 '()))
                     _%bind141940%_)
               (cons _%tmp141992%_ _%args141941%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx150051150052%_))
                                                 (let ((_%e141969142023%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx150051150052%_))))
                                                   (let ((_%tl141971142028%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141969142023%_)))
                                                         (_%hd141970142026%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141969142023%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd141970142026%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd141970142026%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl141971142028%_))
                         (let ((_%e141972142031%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl141971142028%_))))
                           (let ((_%tl141974142036%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e141972142031%_)))
                                 (_%hd141973142034%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e141972142031%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl141974142036%_))
                                 (_%__kont150053150054%_)
                                 (_%__kont150057150058%_))))
                         (_%__kont150057150058%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd141970142026%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl141971142028%_))
                             (let ((_%e141978142008%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl141971142028%_))))
                               (let ((_%tl141980142013%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e141978142008%_)))
                                     (_%hd141979142011%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e141978142008%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl141980142013%_))
                                     (_%__kont150055150056%_)
                                     (_%__kont150057150058%_))))
                             (_%__kont150057150058%_))
                         (_%__kont150057150058%_)))
                 (_%__kont150057150058%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont150057150058%_)))))))
                                 (if (pair? _%rest141942141950%_)
                                     (let ((_%hd141947142047%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest141942141950%_)))
                                           (_%tl141948142049%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest141942141950%_))))
                                       (let* ((_%e142052%_ _%hd141947142047%_)
                                              (_%rest142054%_
                                               _%tl141948142049%_))
                                         (_%K141946142044%_
                                          _%rest142054%_
                                          _%e142052%_)))
                                     (_%else141944141958%_))))))
                       _%hd141860141906%_
                       _%hd141857141898%_
                       _%hd141854141890%_
                       _%hd141851141882%_)
                      (_%g141841141866%_ _%g141842141869%_))))
              (_%g141841141866%_ _%g141842141869%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141841141866%_
                                               _%g141842141869%_))))
                                      (_%g141841141866%_ _%g141842141869%_))))
                              (_%g141841141866%_ _%g141842141869%_))))
                      (_%g141841141866%_ _%g141842141869%_)))))
          (_%g141840142056%_ _%stx141839%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self141677%_ _%stx141678%_)
        (letrec ((_%import-set-template141680%_
                  (lambda (_%in141783%_ _%phi141784%_)
                    (let ((_%iphi141786%_
                           (fx+ _%phi141784%_
                                (##direct-structure-ref
                                 _%in141783%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports141787%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in141783%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp141789%_ ((_%rest141791%_ _%imports141787%_)
                                         (_%r141792%_ '()))
                        (let* ((_%rest141793141801%_ _%rest141791%_)
                               (_%else141795141809%_ (lambda () _%r141792%_))
                               (_%K141797141826%_
                                (lambda (_%rest141812%_ _%in141813%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in141813%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi141786%_))
                                          (_%lp141789%_
                                           _%rest141812%_
                                           (cons _%in141813%_ _%r141792%_))
                                          (_%lp141789%_
                                           _%rest141812%_
                                           _%r141792%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in141813%_
                                             'gx#module-import::t))
                                          (let ((_%iphi141817%_
                                                 (fx+ _%phi141784%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in141813%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi141817%_))
                                                (_%lp141789%_
                                                 _%rest141812%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in141813%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r141792%_))
                                                (_%lp141789%_
                                                 _%rest141812%_
                                                 _%r141792%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in141813%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi141820%_
                                                     (fx+ _%iphi141786%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in141813%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi141820%_))
                                                    (_%lp141789%_
                                                     _%rest141812%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in141813%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r141792%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi141820%_))
                                                        (_%lp141789%_
                                                         _%rest141812%_
                                                         (let ((__tmp150372
                                                                (_%import-set-template141680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in141813%_
                         _%iphi141786%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r141792%_ __tmp150372)))
                (_%lp141789%_ _%rest141812%_ _%r141792%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp141789%_
                                               _%rest141812%_
                                               _%r141792%_)))))))
                          (if (pair? _%rest141793141801%_)
                              (let ((_%hd141798141829%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest141793141801%_)))
                                    (_%tl141799141831%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest141793141801%_))))
                                (let* ((_%in141834%_ _%hd141798141829%_)
                                       (_%rest141836%_ _%tl141799141831%_))
                                  (_%K141797141826%_
                                   _%rest141836%_
                                   _%in141834%_)))
                              (_%else141795141809%_))))))))
          (let* ((_%g141682141692%_
                  (lambda (_%g141683141689%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141683141689%_))))
                 (_%g141681141780%_
                  (lambda (_%g141683141695%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141683141695%_))
                        (let ((_%e141685141697%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141683141695%_))))
                          (let ((_%hd141686141700%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141685141697%_)))
                                (_%tl141687141702%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141685141697%_))))
                            ((lambda (_%L141705%_)
                               (let ((_%ht141716%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp141718%_ ((_%rest141720%_
                                                     _%L141705%_)
                                                    (_%loads141721%_ '()))
                                   (letrec ((_%K141723%_
                                             (lambda (_%ctx141773%_
                                                      _%rest141774%_)
                                               (let ((_%id141776%_
                                                      (##structure-ref
                                                       _%ctx141773%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht141716%_
                                                        _%id141776%_))
                                                     (_%lp141718%_
                                                      _%rest141774%_
                                                      _%loads141721%_)
                                                     (let ((_%rt141778%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id141776%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht141716%_
                                                          _%id141776%_
                                                          _%rt141778%_))
                                                       (_%lp141718%_
                                                        _%rest141774%_
                                                        (cons _%rt141778%_
                                                              _%loads141721%_))))))))
                                     (let* ((_%rest141724141732%_
                                             _%rest141720%_)
                                            (_%else141726141744%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp150374
                                                            (lambda (_%g141739141741%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g141739141741%_)))
                   (__tmp150373 (reverse _%loads141721%_)))
               (declare (not safe))
               (##map __tmp150374 __tmp150373)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K141728141761%_
                                             (lambda (_%rest141747%_
                                                      _%in141748%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in141748%_
                                                      'gx#module-context::t))
                                                   (_%K141723%_
                                                    _%in141748%_
                                                    _%rest141747%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in141748%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in141748%_
                               '3
                               '#f
                               '#f)))
                   (_%K141723%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in141748%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest141747%_)
                   (_%lp141718%_ _%rest141747%_ _%loads141721%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in141748%_
                      'gx#import-set::t))
                   (let ((_%phi141753%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in141748%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi141753%_)
                         (_%K141723%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in141748%_
                             '1
                             '#f
                             '#f))
                          _%rest141747%_)
                         (if (fxpositive? _%phi141753%_)
                             (let ((_%deps141757%_
                                    (_%import-set-template141680%_
                                     _%in141748%_
                                     '0)))
                               (_%lp141718%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest141747%_
                                   _%deps141757%_))
                                _%loads141721%_))
                             (_%lp141718%_ _%rest141747%_ _%loads141721%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx141678%_
                      _%in141748%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest141724141732%_)
                                           (let ((_%hd141729141764%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest141724141732%_)))
                                                 (_%tl141730141766%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest141724141732%_))))
                                             (let* ((_%in141769%_
                                                     _%hd141729141764%_)
                                                    (_%rest141771%_
                                                     _%tl141730141766%_))
                                               (_%K141728141761%_
                                                _%rest141771%_
                                                _%in141769%_)))
                                           (_%else141726141744%_)))))))
                             _%tl141687141702%_)))
                        (_%g141682141692%_ _%g141683141695%_)))))
            (_%g141681141780%_ _%stx141678%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self141490%_ _%stx141491%_)
        (letrec ((_%add-lift!141493%_
                  (lambda (_%expr141675%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr141675%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote141494%_
                  (lambda (_%id141672%_ _%marks141673%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id141672%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks141673%_
                                                        '()))))))))
                 (_%generate-simple141495%_
                  (lambda (_%stxq141667%_)
                    (let ((_%gid141669%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid141670%_
                           (gxc#generate-runtime-identifier _%stxq141667%_)))
                      (_%add-lift!141493%_
                       (cons 'define
                             (cons _%gid141669%_
                                   (cons (_%generate-syntax-quote141494%_
                                          _%qid141670%_
                                          ''())
                                         '()))))
                      (let ((__tmp150375
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp150375 _%stxq141667%_ _%gid141669%_))
                      _%gid141669%_)))
                 (_%generate-serialized141496%_
                  (lambda (_%stxq141657%_ _%marks141658%_)
                    (let* ((_%mark-refs141660%_
                            (map _%generate-mark141497%_ _%marks141658%_))
                           (_%gid141662%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid141664%_
                            (gxc#generate-runtime-identifier _%stxq141657%_)))
                      (_%add-lift!141493%_
                       (cons 'define
                             (cons _%gid141662%_
                                   (cons (_%generate-syntax-quote141494%_
                                          _%qid141664%_
                                          (cons 'list _%mark-refs141660%_))
                                         '()))))
                      (let ((__tmp150376
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp150376 _%stxq141657%_ _%gid141662%_))
                      _%gid141662%_)))
                 (_%generate-mark141497%_
                  (lambda (_%mark141642%_)
                    (let ((_%$e141644%_
                           (let ((__tmp150377
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp150377 _%mark141642%_))))
                      (if _%$e141644%_
                          _%$e141644%_
                          (let* ((_%gid141648%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr141650%_
                                  (_%serialize-mark141498%_ _%mark141642%_))
                                 (_%ctx141652%_
                                  (let ((__tmp150378
                                         (##structure-ref
                                          _%mark141642%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp150378)))
                                 (_%ctx-ref141654%_
                                  (if (eq? _%ctx141652%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref141499%_
                                                               _%ctx141652%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp150379
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp150379
                               _%mark141642%_
                               _%gid141648%_))
                            (_%add-lift!141493%_
                             (cons 'define
                                   (cons _%gid141648%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr141650%_ '()))
                   (cons _%ctx-ref141654%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid141648%_)))))
                 (_%serialize-mark141498%_
                  (lambda (_%mark141589%_)
                    (letrec ((_%quote-e141591%_
                              (lambda (_%sym141640%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym141640%_))
                                    _%sym141640%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym141640%_))))))
                      (let* ((_%mark141592141601%_ _%mark141589%_)
                             (_%E141594141605%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark141592141601%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K141595141617%_
                              (lambda (_%trace141608%_
                                       _%phi141609%_
                                       _%ctx141610%_
                                       _%subst141611%_)
                                (let ((_%subs141613%_
                                       (if _%subst141611%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst141611%_))
                                           '())))
                                  (cons _%phi141609%_
                                        (map (lambda (_%pair141615%_)
                                               (cons (_%quote-e141591%_
                                                      (car _%pair141615%_))
                                                     (_%quote-e141591%_
                                                      (cdr _%pair141615%_))))
                                             _%subs141613%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark141592141601%_
                               'gx#expander-mark::t))
                            (let* ((_%e141596141620%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141592141601%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst141623%_ _%e141596141620%_)
                                   (_%e141597141625%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141592141601%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx141628%_ _%e141597141625%_)
                                   (_%e141598141630%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141592141601%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi141633%_ _%e141598141630%_)
                                   (_%e141599141635%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141592141601%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace141638%_ _%e141599141635%_))
                              (_%K141595141617%_
                               _%trace141638%_
                               _%phi141633%_
                               _%ctx141628%_
                               _%subst141623%_))
                            (_%E141594141605%_))))))
                 (_%context-ref141499%_
                  (lambda (_%ctx141576%_)
                    (if (let ((__tmp150380
                               (##structure-ref
                                _%ctx141576%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp150380
                           'gx#module-context::t))
                        (let ((_%ctx-ref141578%_
                               (_%context-ref-nested141501%_ _%ctx141576%_))
                              (_%ctx-origin141579%_
                               (_%context-ref-origin141500%_ _%ctx141576%_))
                              (_%origin141580%_
                               (_%context-ref-origin141500%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin141580%_ _%ctx-origin141579%_)
                              (let ((_%ref141582%_
                                     (_%context-ref-nested141501%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp141584%_ ((_%ref141586%_
                                                    (cdr _%ref141582%_))
                                                   (_%ctx-ref141587%_
                                                    (cdr _%ctx-ref141578%_)))
                                  (if (and (pair? _%ref141586%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref141586%_))
                                                (car _%ctx-ref141587%_)))
                                      (_%lp141584%_
                                       (cdr _%ref141586%_)
                                       (cdr _%ctx-ref141587%_))
                                      (cons '#f _%ctx-ref141587%_))))
                              _%ctx-ref141578%_))
                        (let ((__tmp150381
                               (##structure-ref
                                _%ctx141576%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp150381)))))
                 (_%context-ref-origin141500%_
                  (lambda (_%ctx141568%_)
                    (let _%lp141570%_ ((_%ctx141572%_ _%ctx141568%_))
                      (let ((_%super141574%_
                             (##structure-ref
                              _%ctx141572%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super141574%_
                               'gx#module-context::t))
                            (_%lp141570%_ _%super141574%_)
                            _%ctx141572%_)))))
                 (_%context-ref-nested141501%_
                  (lambda (_%ctx141559%_)
                    (let _%lp141561%_ ((_%ctx141563%_ _%ctx141559%_)
                                       (_%r141564%_ '()))
                      (let ((_%super141566%_
                             (##structure-ref
                              _%ctx141563%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super141566%_
                               'gx#module-context::t))
                            (_%lp141561%_
                             _%super141566%_
                             (cons (car (##structure-ref
                                         _%ctx141563%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r141564%_))
                            (cons (let ((__tmp150382
                                         (##structure-ref
                                          _%ctx141563%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp150382))
                                  _%r141564%_)))))))
          (let* ((_%g141503141516%_
                  (lambda (_%g141504141513%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141504141513%_))))
                 (_%g141502141556%_
                  (lambda (_%g141504141519%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141504141519%_))
                        (let ((_%e141506141521%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141504141519%_))))
                          (let ((_%hd141507141524%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141506141521%_)))
                                (_%tl141508141526%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141506141521%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141508141526%_))
                                (let ((_%e141509141529%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141508141526%_))))
                                  (let ((_%hd141510141532%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141509141529%_)))
                                        (_%tl141511141534%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141509141529%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141511141534%_))
                                        ((lambda (_%L141537%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L141537%_))
                                               (let ((_%$e141550%_
                                                      (let ((__tmp150383
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp150383 _%L141537%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e141550%_
                                                     _%$e141550%_
                                                     (let ((_%marks141554%_
                                                            (##direct-structure-ref
                                                             _%L141537%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks141554%_)
                                                           (_%generate-simple141495%_
                                                            _%L141537%_)
                                                           (_%generate-serialized141496%_
                                                            _%L141537%_
                                                            _%marks141554%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L141537%_))))
                                         _%hd141510141532%_)
                                        (_%g141503141516%_
                                         _%g141504141519%_))))
                                (_%g141503141516%_ _%g141504141519%_))))
                        (_%g141503141516%_ _%g141504141519%_)))))
            (_%g141502141556%_ _%stx141491%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self141422%_ _%stx141423%_)
        (let* ((_%g141425141442%_
                (lambda (_%g141426141439%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141426141439%_))))
               (_%g141424141487%_
                (lambda (_%g141426141445%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141426141445%_))
                      (let ((_%e141429141447%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141426141445%_))))
                        (let ((_%hd141430141450%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141429141447%_)))
                              (_%tl141431141452%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141429141447%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141431141452%_))
                              (let ((_%e141432141455%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141431141452%_))))
                                (let ((_%hd141433141458%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141432141455%_)))
                                      (_%tl141434141460%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141432141455%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141434141460%_))
                                      (let ((_%e141435141463%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141434141460%_))))
                                        (let ((_%hd141436141466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141435141463%_)))
                                              (_%tl141437141468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141435141463%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141437141468%_))
                                              ((lambda (_%L141471%_
                                                        _%L141472%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L141472%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self141422%_ _%L141471%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141436141466%_
                                               _%hd141433141458%_)
                                              (_%g141425141442%_
                                               _%g141426141445%_))))
                                      (_%g141425141442%_ _%g141426141445%_))))
                              (_%g141425141442%_ _%g141426141445%_))))
                      (_%g141425141442%_ _%g141426141445%_)))))
          (_%g141424141487%_ _%stx141423%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self141371%_ _%stx141372%_)
        (let* ((_%g141374141384%_
                (lambda (_%g141375141381%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141375141381%_))))
               (_%g141373141419%_
                (lambda (_%g141375141387%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141375141387%_))
                      (let ((_%e141377141389%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141375141387%_))))
                        (let ((_%hd141378141392%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141377141389%_)))
                              (_%tl141379141394%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141377141389%_))))
                          ((lambda (_%L141397%_)
                             (let* ((_%c-body141411%_
                                     (map (lambda (_%g141406141408%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self141371%_
                                               _%g141406141408%_)))
                                          _%L141397%_))
                                    (_%c-body141416%_
                                     (let ((__tmp150384
                                            (lambda (_%$obj141413%_)
                                              (not (eq? _%$obj141413%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp150384
                                        _%c-body141411%_))))
                               (cons '%#begin _%c-body141416%_)))
                           _%tl141379141394%_)))
                      (_%g141374141384%_ _%g141375141387%_)))))
          (_%g141373141419%_ _%stx141372%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self141276%_ _%stx141277%_)
        (let* ((_%g141279141289%_
                (lambda (_%g141280141286%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141280141286%_))))
               (_%g141278141368%_
                (lambda (_%g141280141292%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141280141292%_))
                      (let ((_%e141282141294%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141280141292%_))))
                        (let ((_%hd141283141297%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141282141294%_)))
                              (_%tl141284141299%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141282141294%_))))
                          ((lambda (_%L141302%_)
                             (let* ((_%phi141312%_
                                     (let ((__tmp150385
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp150385 '1)))
                                    (_%block141314%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self141276%_ 'state))
                                      _%phi141312%_))
                                    (_%compiled141317%_
                                     (let ((__tmp150386
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self141276%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L141302%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp150386
                                        gx#current-expander-phi
                                        _%phi141312%_)))
                                    (_%g141320141330%_
                                     (lambda (_%g141321141327%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g141321141327%_))))
                                    (_%g141319141365%_
                                     (lambda (_%g141321141333%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g141321141333%_))
                                           (let ((_%e141323141335%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g141321141333%_))))
                                             (let ((_%hd141324141338%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e141323141335%_)))
                                                   (_%tl141325141340%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e141323141335%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd141324141338%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd141324141338%_))
                                                       ((lambda (_%L141343%_)
                                                          (let ((_%c-body141360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj141357%_)
                                   (not (eq? _%$obj141357%_ '#!void)))
                                 _%L141343%_)))
                    (if _%block141314%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block141314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body141360%_))
                        (if (null? _%c-body141360%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body141360%_)))))
                _%tl141325141340%_)
               (_%g141320141330%_ _%g141321141333%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g141320141330%_
                                                    _%g141321141333%_))))
                                           (_%g141320141330%_
                                            _%g141321141333%_)))))
                               (_%g141319141365%_ _%compiled141317%_)))
                           _%tl141284141299%_)))
                      (_%g141279141289%_ _%g141280141292%_)))))
          (_%g141278141368%_ _%stx141277%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self141207%_ _%stx141208%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self141207%_ 'state)))
        (let* ((_%g141210141224%_
                (lambda (_%g141211141221%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141211141221%_))))
               (_%g141209141273%_
                (lambda (_%g141211141227%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141211141227%_))
                      (let ((_%e141214141229%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141211141227%_))))
                        (let ((_%hd141215141232%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141214141229%_)))
                              (_%tl141216141234%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141214141229%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141216141234%_))
                              (let ((_%e141217141237%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141216141234%_))))
                                (let ((_%hd141218141240%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141217141237%_)))
                                      (_%tl141219141242%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141217141237%_))))
                                  ((lambda (_%L141245%_ _%L141246%_)
                                     (let ((_%key141259%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L141246%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key141259%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx141208%_
                                              _%L141246%_
                                              _%key141259%_)))
                                       (let* ((_%ctx141261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L141246%_)))
                                              (_%code141264%_
                                               (let ((__tmp150387
                                                      (lambda ()
                                                        (let ((__tmp150388
                                                               (##structure-ref
                                                                _%ctx141261%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self141207%_
                                                           __tmp150388)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp150387
                                                  gx#current-expander-context
                                                  _%ctx141261%_)))
                                              (_%rt141266%_
                                               (let ((__tmp150389
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp150389
                                                  _%ctx141261%_)))
                                              (_%loader141268%_
                                               (if _%rt141266%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt141266%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid141270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L141246%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self141207%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid141270%_
                                                     (cons _%code141264%_
                                                           _%loader141268%_))))))
                                   _%tl141219141242%_
                                   _%hd141218141240%_)))
                              (_%g141210141224%_ _%g141211141227%_))))
                      (_%g141210141224%_ _%g141211141227%_)))))
          (_%g141209141273%_ _%stx141208%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx141194%_ _%context-chain141195%_)
        (let _%lp141197%_ ((_%ctx141199%_ _%ctx141194%_) (_%path141200%_ '()))
          (let ((_%super141202%_
                 (##structure-ref _%ctx141199%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super141202%_ _%context-chain141195%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx141199%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path141200%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super141202%_
                       'gx#module-context::t))
                    (_%lp141197%_
                     _%super141202%_
                     (cons (car (##structure-ref
                                 _%ctx141199%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path141200%_))
                    (cons (let ((__tmp150390
                                 (##structure-ref
                                  _%ctx141199%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp150390))
                          _%path141200%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp141187%_ ((_%ctx141189%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r141190%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx141189%_ 'gx#module-context::t))
              (_%lp141187%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx141189%_ '3 '#f '#f))
               (cons _%ctx141189%_ _%r141190%_))
              _%r141190%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self140950%_ _%stx140951%_)
        (letrec* ((_%context-chain140953%_ (gxc#current-context-chain))
                  (_%make-import-spec140954%_
                   (lambda (_%in141123%_)
                     (let* ((_%in141124141136%_ _%in141123%_)
                            (_%E141126141140%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in141124141136%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K141127141150%_
                             (lambda (_%phi141143%_
                                      _%name141144%_
                                      _%src-name141145%_
                                      _%src-phi141146%_
                                      _%src-key141147%_
                                      _%src-ctx141148%_)
                               (cons _%phi141143%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name141144%_)
                                           (cons _%src-phi141146%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name141145%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in141124141136%_
                              'gx#module-import::t))
                           (let ((_%e141128141153%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in141124141136%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e141128141153%_
                                    'gx#module-export::t))
                                 (let* ((_%e141131141156%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e141128141153%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx141159%_ _%e141131141156%_)
                                        (_%e141132141161%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e141128141153%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key141164%_ _%e141132141161%_)
                                        (_%e141133141166%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e141128141153%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi141169%_ _%e141133141166%_)
                                        (_%e141134141171%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e141128141153%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name141174%_ _%e141134141171%_)
                                        (_%e141129141176%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in141124141136%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name141179%_ _%e141129141176%_)
                                        (_%e141130141181%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in141124141136%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi141184%_ _%e141130141181%_))
                                   (_%K141127141150%_
                                    _%phi141184%_
                                    _%name141179%_
                                    _%src-name141174%_
                                    _%src-phi141169%_
                                    _%src-key141164%_
                                    _%src-ctx141159%_))
                                 (_%E141126141140%_)))
                           (_%E141126141140%_)))))
                  (_%make-import-path140955%_
                   (lambda (_%ctx141121%_)
                     (gxc#generate-meta-import-path
                      _%ctx141121%_
                      _%context-chain140953%_)))
                  (_%make-import-spec-in140956%_
                   (lambda (_%ctx141118%_ _%in141119%_)
                     (cons 'spec:
                           (cons (_%make-import-path140955%_ _%ctx141118%_)
                                 (reverse _%in141119%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self140950%_ 'state)))
          (let* ((_%g140958140968%_
                  (lambda (_%g140959140965%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140959140965%_))))
                 (_%g140957141115%_
                  (lambda (_%g140959140971%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140959140971%_))
                        (let ((_%e140961140973%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140959140971%_))))
                          (let ((_%hd140962140976%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140961140973%_)))
                                (_%tl140963140978%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140961140973%_))))
                            ((lambda (_%L140981%_)
                               (let _%lp140992%_ ((_%rest140994%_ _%L140981%_)
                                                  (_%current-src140995%_ '#f)
                                                  (_%current-in140996%_ '())
                                                  (_%r140997%_ '()))
                                 (let* ((_%rest140998141006%_ _%rest140994%_)
                                        (_%else141000141016%_
                                         (lambda ()
                                           (let ((_%r141014%_
                                                  (if _%current-src140995%_
                                                      (cons (_%make-import-spec-in140956%_
                                                             _%current-src140995%_
                                                             _%current-in140996%_)
                                                            _%r140997%_)
                                                      _%r140997%_)))
                                             (cons '%#import
                                                   (reverse _%r141014%_)))))
                                        (_%K141002141103%_
                                         (lambda (_%rest141019%_ _%in141020%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in141020%_
                                                  'gx#module-import::t))
                                               (let* ((_%in141022141029%_
                                                       _%in141020%_)
                                                      (_%E141024141033%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in141022141029%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K141025141041%_
               (lambda (_%src-ctx141036%_)
                 (if (eq? _%current-src140995%_ _%src-ctx141036%_)
                     (_%lp140992%_
                      _%rest141019%_
                      _%current-src140995%_
                      (cons (_%make-import-spec140954%_ _%in141020%_)
                            _%current-in140996%_)
                      _%r140997%_)
                     (if _%current-src140995%_
                         (_%lp140992%_
                          _%rest141019%_
                          _%src-ctx141036%_
                          (cons (_%make-import-spec140954%_ _%in141020%_) '())
                          (cons (_%make-import-spec-in140956%_
                                 _%current-src140995%_
                                 _%current-in140996%_)
                                _%r140997%_))
                         (_%lp140992%_
                          _%rest141019%_
                          _%src-ctx141036%_
                          (cons (_%make-import-spec140954%_ _%in141020%_) '())
                          _%r140997%_)))))
              (_%e141026141044%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in141022141029%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e141026141044%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e141027141047%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e141026141044%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx141050%_ _%e141027141047%_))
               (_%K141025141041%_ _%src-ctx141050%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E141024141033%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in141020%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi141053%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in141020%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src141055%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in141020%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in141095%_
                                                           (let* ((_%g141056141065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path140955%_ _%src141055%_))
                          (_%E141059141069%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g141056141065%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K141061141085%_
                            (lambda (_%path141083%_) _%path141083%_))
                           (_%K141060141075%_
                            (lambda (_%path141073%_)
                              (cons 'in: _%path141073%_))))
                       (if (pair? _%g141056141065%_)
                           (let ((_%tl141063141090%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g141056141065%_)))
                                 (_%hd141062141088%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g141056141065%_))))
                             (if (null? _%tl141063141090%_)
                                 (let ((_%path141093%_ _%hd141062141088%_))
                                   (_%K141061141085%_ _%path141093%_))
                                 (let ((_%path141078%_ _%g141056141065%_))
                                   (_%K141060141075%_ _%path141078%_))))
                           (let ((_%path141078%_ _%g141056141065%_))
                             (_%K141060141075%_ _%path141078%_))))))
                  (_%r141097%_
                   (if _%current-src140995%_
                       (cons (_%make-import-spec-in140956%_
                              _%current-src140995%_
                              _%current-in140996%_)
                             _%r140997%_)
                       _%r140997%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp140992%_
                                                      _%rest141019%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi141053%_)
                                                                _%src-in141095%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi141053%_
                                    (cons _%src-in141095%_ '()))))
                    _%r141097%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in141020%_
                                                          'gx#module-context::t))
                                                       (let ((_%r141101%_
                                                              (if _%current-src140995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in140956%_
                                 _%current-src140995%_
                                 _%current-in140996%_)
                                _%r140997%_)
                          _%r140997%_)))
                 (_%lp140992%_
                  _%rest141019%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path140955%_ _%in141020%_))
                        _%r141101%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest140998141006%_)
                                       (let ((_%hd141003141106%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest140998141006%_)))
                                             (_%tl141004141108%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest140998141006%_))))
                                         (let* ((_%in141111%_
                                                 _%hd141003141106%_)
                                                (_%rest141113%_
                                                 _%tl141004141108%_))
                                           (_%K141002141103%_
                                            _%rest141113%_
                                            _%in141111%_)))
                                       (_%else141000141016%_)))))
                             _%tl140963140978%_)))
                        (_%g140958140968%_ _%g140959140971%_)))))
            (_%g140957141115%_ _%stx140951%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self140760%_ _%stx140761%_)
        (letrec* ((_%context-chain140763%_ (gxc#current-context-chain))
                  (_%make-import-path140764%_
                   (lambda (_%ctx140948%_)
                     (gxc#generate-meta-import-path
                      _%ctx140948%_
                      _%context-chain140763%_))))
          (let* ((_%g140766140776%_
                  (lambda (_%g140767140773%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140767140773%_))))
                 (_%g140765140945%_
                  (lambda (_%g140767140779%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140767140779%_))
                        (let ((_%e140769140781%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140767140779%_))))
                          (let ((_%hd140770140784%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140769140781%_)))
                                (_%tl140771140786%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140769140781%_))))
                            ((lambda (_%L140789%_)
                               (let _%lp140800%_ ((_%rest140802%_ _%L140789%_)
                                                  (_%r140803%_ '()))
                                 (let* ((_%rest140804140812%_ _%rest140802%_)
                                        (_%else140806140820%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r140803%_))))
                                        (_%K140808140933%_
                                         (lambda (_%rest140823%_ _%out140824%_)
                                           (let* ((_%out140825140838%_
                                                   _%out140824%_)
                                                  (_%E140828140842%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out140825140838%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K140832140912%_
                                                    (lambda (_%name140908%_
                                                             _%phi140909%_
                                                             _%key140910%_)
                                                      (_%lp140800%_
                                                       _%rest140823%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi140909%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key140910%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name140908%_)
                                             '()))))
                     _%r140803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K140829140892%_
                                                    (lambda (_%phi140846%_
                                                             _%src140847%_)
                                                      (let* ((_%out140887%_
                                                              (if _%src140847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g140848140857%_
                                              (_%make-import-path140764%_
                                               _%src140847%_))
                                             (_%E140851140861%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g140848140857%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K140853140877%_
                                               (lambda (_%path140875%_)
                                                 _%path140875%_))
                                              (_%K140852140867%_
                                               (lambda (_%path140865%_)
                                                 (cons 'in: _%path140865%_))))
                                          (if (pair? _%g140848140857%_)
                                              (let ((_%tl140855140882%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g140848140857%_)))
                                                    (_%hd140854140880%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g140848140857%_))))
                                                (if (null? _%tl140855140882%_)
                                                    (let ((_%path140885%_
                                                           _%hd140854140880%_))
                                                      (_%K140853140877%_
                                                       _%path140885%_))
                                                    (let ((_%path140870%_
                                                           _%g140848140857%_))
                                                      (_%K140852140867%_
                                                       _%path140870%_))))
                                              (let ((_%path140870%_
                                                     _%g140848140857%_))
                                                (_%K140852140867%_
                                                 _%path140870%_)))))
                                      '()))
                          '#t))
                     (_%out140889%_
                      (if (fxzero? _%phi140846%_)
                          _%out140887%_
                          (cons 'phi:
                                (cons _%phi140846%_
                                      (cons _%out140887%_ '()))))))
                (_%lp140800%_
                 _%rest140823%_
                 (cons _%out140889%_ _%r140803%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match140827140905%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out140825140838%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e140830140895%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out140825140838%_
                               '1
                               '#f
                               '#f)))
                           (_%e140831140900%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out140825140838%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src140898%_ _%e140830140895%_)
                            (_%phi140903%_ _%e140831140900%_))
                        (_%K140829140892%_ _%phi140903%_ _%src140898%_)))
                    (_%E140828140842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out140825140838%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e140833140915%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out140825140838%_
                        '1
                        '#f
                        '#f)))
                    (_%e140834140918%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out140825140838%_
                        '2
                        '#f
                        '#f)))
                    (_%e140835140923%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out140825140838%_
                        '3
                        '#f
                        '#f)))
                    (_%e140836140928%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out140825140838%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key140921%_ _%e140834140918%_)
                     (_%phi140926%_ _%e140835140923%_)
                     (_%name140931%_ _%e140836140928%_))
                 (_%K140832140912%_
                  _%name140931%_
                  _%phi140926%_
                  _%key140921%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match140827140905%_))))))))
                                   (if (pair? _%rest140804140812%_)
                                       (let ((_%hd140809140936%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest140804140812%_)))
                                             (_%tl140810140938%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest140804140812%_))))
                                         (let* ((_%out140941%_
                                                 _%hd140809140936%_)
                                                (_%rest140943%_
                                                 _%tl140810140938%_))
                                           (_%K140808140933%_
                                            _%rest140943%_
                                            _%out140941%_)))
                                       (_%else140806140820%_)))))
                             _%tl140771140786%_)))
                        (_%g140766140776%_ _%g140767140779%_)))))
            (_%g140765140945%_ _%stx140761%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self140721%_ _%stx140722%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140721%_ 'state)))
        (let* ((_%g140724140734%_
                (lambda (_%g140725140731%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140725140731%_))))
               (_%g140723140757%_
                (lambda (_%g140725140737%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140725140737%_))
                      (let ((_%e140727140739%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140725140737%_))))
                        (let ((_%hd140728140742%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140727140739%_)))
                              (_%tl140729140744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140727140739%_))))
                          ((lambda (_%L140747%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L140747%_)))
                           _%tl140729140744%_)))
                      (_%g140724140734%_ _%g140725140737%_)))))
          (_%g140723140757%_ _%stx140722%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self140592%_ _%stx140593%_)
        (letrec ((_%generate1140595%_
                  (lambda (_%id140716%_ _%eid140717%_)
                    (let ((_%eid140719%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid140717%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid140719%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx140593%_
                             _%eid140719%_)))
                      (cons (gxc#generate-runtime-identifier _%id140716%_)
                            (cons _%eid140719%_ '()))))))
          (let* ((_%g140597140625%_
                  (lambda (_%g140598140622%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140598140622%_))))
                 (_%g140596140713%_
                  (lambda (_%g140598140628%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140598140628%_))
                        (let ((_%e140601140630%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140598140628%_))))
                          (let ((_%hd140602140633%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140601140630%_)))
                                (_%tl140603140635%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140601140630%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl140603140635%_))
                                (let ((_g150391_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl140603140635%_
                                          '0))))
                                  (begin
                                    (let ((_g150392_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g150391_)
                                                 (##values-length _g150391_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g150392_ 2)))
                                          (error "Context expects 2 values"
                                                 _g150392_)))
                                    (let ((_%target140604140638%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150391_ 0)))
                                          (_%tl140606140640%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150391_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140606140640%_))
                                          (letrec ((_%loop140607140643%_
                                                    (lambda (_%hd140605140646%_
                                                             _%eid140611140648%_
                                                             _%id140612140650%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd140605140646%_))
                                                          (let ((_%e140608140653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd140605140646%_))))
                    (let ((_%lp-hd140609140656%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140608140653%_)))
                          (_%lp-tl140610140658%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140608140653%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd140609140656%_))
                          (let ((_%e140615140661%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd140609140656%_))))
                            (let ((_%hd140616140664%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140615140661%_)))
                                  (_%tl140617140666%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140615140661%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl140617140666%_))
                                  (let ((_%e140618140669%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl140617140666%_))))
                                    (let ((_%hd140619140672%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140618140669%_)))
                                          (_%tl140620140674%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140618140669%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140620140674%_))
                                          (_%loop140607140643%_
                                           _%lp-tl140610140658%_
                                           (cons _%hd140619140672%_
                                                 _%eid140611140648%_)
                                           (cons _%hd140616140664%_
                                                 _%id140612140650%_))
                                          (_%g140597140625%_
                                           _%g140598140628%_))))
                                  (_%g140597140625%_ _%g140598140628%_))))
                          (_%g140597140625%_ _%g140598140628%_))))
                  (let ((_%eid140613140677%_ (reverse _%eid140611140648%_))
                        (_%id140614140679%_ (reverse _%id140612140650%_)))
                    ((lambda (_%L140682%_ _%L140683%_)
                       (cons '%#extern
                             (map _%generate1140595%_
                                  (let ((__tmp150393
                                         (lambda (_%g140698140701%_
                                                  _%g140699140703%_)
                                           (cons _%g140698140701%_
                                                 _%g140699140703%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp150393 '() _%L140683%_))
                                  (let ((__tmp150394
                                         (lambda (_%g140705140708%_
                                                  _%g140706140710%_)
                                           (cons _%g140705140708%_
                                                 _%g140706140710%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp150394 '() _%L140682%_)))))
                     _%eid140613140677%_
                     _%id140614140679%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop140607140643%_
                                             _%target140604140638%_
                                             '()
                                             '()))
                                          (_%g140597140625%_
                                           _%g140598140628%_)))))
                                (_%g140597140625%_ _%g140598140628%_))))
                        (_%g140597140625%_ _%g140598140628%_)))))
            (_%g140596140713%_ _%stx140593%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self140382%_ _%stx140383%_)
        (letrec ((_%generate1140385%_
                  (lambda (_%id140587%_)
                    (let ((_%eid140589%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id140587%_)))
                          (_%ident140590%_
                           (gxc#generate-runtime-identifier _%id140587%_)))
                      (cons '%#define-runtime
                            (cons _%ident140590%_ (cons _%eid140589%_ '()))))))
                 (_%generate*140386%_
                  (lambda (_%all140555%_)
                    (let* ((_%all140556140564%_ _%all140555%_)
                           (_%else140558140572%_
                            (lambda () (cons '%#begin _%all140555%_)))
                           (_%K140560140577%_
                            (lambda (_%one140575%_) _%one140575%_)))
                      (if (pair? _%all140556140564%_)
                          (let ((_%hd140561140580%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all140556140564%_)))
                                (_%tl140562140582%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all140556140564%_))))
                            (let ((_%one140585%_ _%hd140561140580%_))
                              (if (null? _%tl140562140582%_)
                                  (_%K140560140577%_ _%one140585%_)
                                  (_%else140558140572%_))))
                          (_%else140558140572%_))))))
          (let* ((_%g140388140405%_
                  (lambda (_%g140389140402%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140389140402%_))))
                 (_%g140387140552%_
                  (lambda (_%g140389140408%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140389140408%_))
                        (let ((_%e140392140410%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140389140408%_))))
                          (let ((_%hd140393140413%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140392140410%_)))
                                (_%tl140394140415%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140392140410%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140394140415%_))
                                (let ((_%e140395140418%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140394140415%_))))
                                  (let ((_%hd140396140421%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140395140418%_)))
                                        (_%tl140397140423%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140395140418%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140397140423%_))
                                        (let ((_%e140398140426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140397140423%_))))
                                          (let ((_%hd140399140429%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140398140426%_)))
                                                (_%tl140400140431%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140398140426%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140400140431%_))
                                                ((lambda (_%L140434%_
                                                          _%L140435%_)
                                                   (let _%lp140451%_ ((_%rest140453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L140435%_)
                              (_%r140454%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx150130150131%_
                                                             _%rest140453%_)
                                                            (_%g140459140476%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx150130150131%_)))))
               (let ((_%__kont150132150133%_
                      (lambda (_%L140539%_)
                        (_%lp140451%_ _%L140539%_ _%r140454%_)))
                     (_%__kont150134150135%_
                      (lambda (_%L140512%_ _%L140513%_)
                        (_%lp140451%_
                         _%L140512%_
                         (cons (_%generate1140385%_ _%L140513%_)
                               _%r140454%_))))
                     (_%__kont150136150137%_
                      (lambda (_%L140488%_)
                        (_%generate*140386%_
                         (let ((__tmp150395
                                (cons (_%generate1140385%_ _%L140488%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp150395 _%r140454%_)))))
                     (_%__kont150138150139%_
                      (lambda () (_%generate*140386%_ (reverse _%r140454%_)))))
                 (let ((_%g140457140499%_
                        (lambda ()
                          (let ((_%L140488%_ _%__stx150130150131%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L140488%_))
                                (_%__kont150136150137%_ _%L140488%_)
                                (_%__kont150138150139%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx150130150131%_))
                       (let ((_%e140462140528%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx150130150131%_))))
                         (let ((_%tl140464140533%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e140462140528%_)))
                               (_%hd140463140531%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e140462140528%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd140463140531%_))
                               (let ((_%e140465140536%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd140463140531%_))))
                                 (if (equal? _%e140465140536%_ '#f)
                                     (_%__kont150132150133%_
                                      _%tl140464140533%_)
                                     (_%__kont150134150135%_
                                      _%tl140464140533%_
                                      _%hd140463140531%_)))
                               (_%__kont150134150135%_
                                _%tl140464140533%_
                                _%hd140463140531%_))))
                       (let () (declare (not safe)) (_%g140457140499%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd140399140429%_
                                                 _%hd140396140421%_)
                                                (_%g140388140405%_
                                                 _%g140389140408%_))))
                                        (_%g140388140405%_
                                         _%g140389140408%_))))
                                (_%g140388140405%_ _%g140389140408%_))))
                        (_%g140388140405%_ _%g140389140408%_)))))
            (_%g140387140552%_ _%stx140383%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self140279%_ _%stx140280%_)
        (let* ((_%g140282140299%_
                (lambda (_%g140283140296%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140283140296%_))))
               (_%g140281140379%_
                (lambda (_%g140283140302%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140283140302%_))
                      (let ((_%e140286140304%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140283140302%_))))
                        (let ((_%hd140287140307%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140286140304%_)))
                              (_%tl140288140309%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140286140304%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140288140309%_))
                              (let ((_%e140289140312%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140288140309%_))))
                                (let ((_%hd140290140315%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140289140312%_)))
                                      (_%tl140291140317%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140289140312%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140291140317%_))
                                      (let ((_%e140292140320%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140291140317%_))))
                                        (let ((_%hd140293140323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140292140320%_)))
                                              (_%tl140294140325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140292140320%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140294140325%_))
                                              ((lambda (_%L140328%_
                                                        _%L140329%_)
                                                 (let* ((_%eid140344%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L140329%_)))
                                                        (_%phi140346%_
                                                         (let ((__tmp150396
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp150396 '1)))
                (_%block140348%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self140279%_ 'state))
                  _%phi140346%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g140351140358%_
                                                           (lambda (_%g140352140355%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g140352140355%_))))
                  (_%g140350140376%_
                   (lambda (_%g140352140361%_)
                     ((lambda (_%L140363%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self140279%_ 'state))
                         _%phi140346%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L140363%_ (cons _%L140328%_ '())))))
                      _%g140352140361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g140350140376%_
                                                      _%eid140344%_))
                                                   (if _%block140348%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block140348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L140329%_)
                                             (cons _%eid140344%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L140329%_)
                           (cons _%eid140344%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140293140323%_
                                               _%hd140290140315%_)
                                              (_%g140282140299%_
                                               _%g140283140302%_))))
                                      (_%g140282140299%_ _%g140283140302%_))))
                              (_%g140282140299%_ _%g140283140302%_))))
                      (_%g140282140299%_ _%g140283140302%_)))))
          (_%g140281140379%_ _%stx140280%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self140211%_ _%stx140212%_)
        (let* ((_%g140214140231%_
                (lambda (_%g140215140228%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140215140228%_))))
               (_%g140213140276%_
                (lambda (_%g140215140234%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140215140234%_))
                      (let ((_%e140218140236%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140215140234%_))))
                        (let ((_%hd140219140239%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140218140236%_)))
                              (_%tl140220140241%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140218140236%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140220140241%_))
                              (let ((_%e140221140244%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140220140241%_))))
                                (let ((_%hd140222140247%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140221140244%_)))
                                      (_%tl140223140249%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140221140244%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140223140249%_))
                                      (let ((_%e140224140252%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140223140249%_))))
                                        (let ((_%hd140225140255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140224140252%_)))
                                              (_%tl140226140257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140224140252%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140226140257%_))
                                              ((lambda (_%L140260%_
                                                        _%L140261%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L140261%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L140260%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140225140255%_
                                               _%hd140222140247%_)
                                              (_%g140214140231%_
                                               _%g140215140234%_))))
                                      (_%g140214140231%_ _%g140215140234%_))))
                              (_%g140214140231%_ _%g140215140234%_))))
                      (_%g140214140231%_ _%g140215140234%_)))))
          (_%g140213140276%_ _%stx140212%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self140208%_ _%stx140209%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140208%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx140209%_)
        (gxc#generate-meta-define-values% _%self140208%_ _%stx140209%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self140205%_ _%stx140206%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140205%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx140206%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp150398 (list)) (__tmp150397 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp150398
         '(src n open blocks)
         __tmp150397
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args140202%_
        (apply make-instance gxc#meta-state::t _%$args140202%_)))
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
      (lambda (_%self139547140186%_ _%ctx140188%_)
        (let* ((_%self140190%_ _%self139547140186%_)
               (_%self140192%_ _%self140190%_))
          (if (let ((__tmp150399
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self140192%_))))
                (declare (not safe))
                (##fx< '4 __tmp150399))
              (begin
                (let ((__tmp150400
                       (let ((__tmp150401
                              (##structure-ref
                               _%ctx140188%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp150401))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self140192%_
                   __tmp150400
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self140192%_ '1 '2 '#f '#f))
                (let ((__tmp150402
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self140192%_
                   __tmp150402
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self140192%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp150403
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self140192%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self140192%_
                       '4
                       __tmp150403))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp150405 (list)) (__tmp150404 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp150405
         '(ctx phi n code)
         __tmp150404
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args140061%_
        (apply make-instance gxc#meta-state-block::t _%$args140061%_)))
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
      (lambda (_%state140020%_ _%phi140021%_)
        (let* ((_%state140022140030%_ _%state140020%_)
               (_%E140024140034%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state140022140030%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K140025140043%_
                (lambda (_%open140037%_ _%n140038%_ _%src140039%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open140037%_ _%phi140021%_))
                      '#f
                      (let ((_%block-ref140041%_
                             (let ((__tmp150406 (number->string _%n140038%_)))
                               (declare (not safe))
                               (##string-append
                                _%src140039%_
                                '"~"
                                __tmp150406))))
                        (##structure-set!
                         _%state140020%_
                         (let () (declare (not safe)) (##fx+ _%n140038%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp150407
                               (let ((__tmp150408
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp150408
                                  _%phi140021%_
                                  _%n140038%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open140037%_ _%phi140021%_ __tmp150407))
                        _%block-ref140041%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state140022140030%_
                 'gxc#meta-state::t))
              (let* ((_%e140026140046%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state140022140030%_
                         '1
                         '#f
                         '#f)))
                     (_%src140049%_ _%e140026140046%_)
                     (_%e140027140051%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state140022140030%_
                         '2
                         '#f
                         '#f)))
                     (_%n140054%_ _%e140027140051%_)
                     (_%e140028140056%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state140022140030%_
                         '3
                         '#f
                         '#f)))
                     (_%open140059%_ _%e140028140056%_))
                (_%K140025140043%_ _%open140059%_ _%n140054%_ _%src140049%_))
              (_%E140024140034%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state140014%_ _%phi140015%_ _%stx140016%_)
        (let ((_%block140018%_
               (let ((__tmp150409
                      (##structure-ref
                       _%state140014%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp150409 _%phi140015%_))))
          (##structure-set!
           _%block140018%_
           (cons _%stx140016%_
                 (##structure-ref
                  _%block140018%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state140008%_)
        (##structure-set!
         _%state140008%_
         (let ((__tmp150412
                (lambda (_%_140010%_ _%block140011%_ _%r140012%_)
                  (cons _%block140011%_ _%r140012%_)))
               (__tmp150411
                (##structure-ref _%state140008%_ '4 gxc#meta-state::t '#f))
               (__tmp150410
                (##structure-ref _%state140008%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp150412 __tmp150411 __tmp150410))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state140008%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state139960%_)
        (gxc#meta-state-end-phi! _%state139960%_)
        (let ((__tmp150414
               (lambda (_%block139962%_ _%r139963%_)
                 (let* ((_%block139964139973%_ _%block139962%_)
                        (_%E139966139977%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block139964139973%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K139967139985%_
                         (lambda (_%code139980%_
                                  _%n139981%_
                                  _%phi139982%_
                                  _%ctx139983%_)
                           (if (null? _%code139980%_)
                               _%r139963%_
                               (cons (cons _%ctx139983%_
                                           (cons _%phi139982%_
                                                 (cons _%n139981%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code139980%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r139963%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block139964139973%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e139968139988%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139964139973%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx139991%_ _%e139968139988%_)
                              (_%e139969139993%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139964139973%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi139996%_ _%e139969139993%_)
                              (_%e139970139998%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139964139973%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n140001%_ _%e139970139998%_)
                              (_%e139971140003%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139964139973%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code140006%_ _%e139971140003%_))
                         (_%K139967139985%_
                          _%code140006%_
                          _%n140001%_
                          _%phi139996%_
                          _%ctx139991%_))
                       (_%E139966139977%_)))))
              (__tmp150413
               (##structure-ref _%state139960%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp150414 '() __tmp150413))))
    (define gxc#collect-expression-refs
      (lambda (_%stx139956%_)
        (let ((_%ht139958%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht139958%_ _%stx139956%_)
          _%ht139958%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self139899%_ _%stx139900%_)
        (let* ((_%g139902139915%_
                (lambda (_%g139903139912%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139903139912%_))))
               (_%g139901139953%_
                (lambda (_%g139903139918%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139903139918%_))
                      (let ((_%e139905139920%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139903139918%_))))
                        (let ((_%hd139906139923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139905139920%_)))
                              (_%tl139907139925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139905139920%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139907139925%_))
                              (let ((_%e139908139928%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139907139925%_))))
                                (let ((_%hd139909139931%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139908139928%_)))
                                      (_%tl139910139933%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139908139928%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl139910139933%_))
                                      ((lambda (_%L139936%_)
                                         (let* ((_%bind139948%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L139936%_)))
                                                (_%eid139950%_
                                                 (if _%bind139948%_
                                                     (##structure-ref
                                                      _%bind139948%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L139936%_))))
                                                (__tmp150415
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self139899%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp150415
                                            _%eid139950%_
                                            _%eid139950%_)))
                                       _%hd139909139931%_)
                                      (_%g139902139915%_ _%g139903139918%_))))
                              (_%g139902139915%_ _%g139903139918%_))))
                      (_%g139902139915%_ _%g139903139918%_)))))
          (_%g139901139953%_ _%stx139900%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self139826%_ _%stx139827%_)
        (let* ((_%g139829139846%_
                (lambda (_%g139830139843%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139830139843%_))))
               (_%g139828139896%_
                (lambda (_%g139830139849%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139830139849%_))
                      (let ((_%e139833139851%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139830139849%_))))
                        (let ((_%hd139834139854%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139833139851%_)))
                              (_%tl139835139856%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139833139851%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139835139856%_))
                              (let ((_%e139836139859%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139835139856%_))))
                                (let ((_%hd139837139862%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139836139859%_)))
                                      (_%tl139838139864%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139836139859%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139838139864%_))
                                      (let ((_%e139839139867%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139838139864%_))))
                                        (let ((_%hd139840139870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139839139867%_)))
                                              (_%tl139841139872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139839139867%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139841139872%_))
                                              ((lambda (_%L139875%_
                                                        _%L139876%_)
                                                 (let* ((_%bind139891%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L139876%_)))
                                                        (_%eid139893%_
                                                         (if _%bind139891%_
                                                             (##structure-ref
                                                              _%bind139891%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L139876%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150416
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self139826%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp150416
                                                      _%eid139893%_
                                                      _%eid139893%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139826%_
                                                      _%L139875%_))))
                                               _%hd139840139870%_
                                               _%hd139837139862%_)
                                              (_%g139829139846%_
                                               _%g139830139849%_))))
                                      (_%g139829139846%_ _%g139830139849%_))))
                              (_%g139829139846%_ _%g139830139849%_))))
                      (_%g139829139846%_ _%g139830139849%_)))))
          (_%g139828139896%_ _%stx139827%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self139783%_ _%stx139784%_)
        (let* ((_%g139786139796%_
                (lambda (_%g139787139793%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139787139793%_))))
               (_%g139785139823%_
                (lambda (_%g139787139799%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139787139799%_))
                      (let ((_%e139789139801%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139787139799%_))))
                        (let ((_%hd139790139804%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139789139801%_)))
                              (_%tl139791139806%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139789139801%_))))
                          ((lambda (_%L139809%_)
                             (let ((__tmp150417
                                    (lambda (_%g139818139820%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self139783%_
                                         _%g139818139820%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp150417 _%L139809%_)))
                           _%tl139791139806%_)))
                      (_%g139786139796%_ _%g139787139799%_)))))
          (_%g139785139823%_ _%stx139784%_))))
    (define gxc#count-values-single%
      (lambda (_%self139780%_ _%stx139781%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self139646%_ _%stx139647%_)
        (let* ((_%__stx150160150161%_ _%stx139647%_)
               (_%g139650139679%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx150160150161%_)))))
          (let ((_%__kont150162150163%_
                 (lambda (_%L139747%_ _%L139748%_)
                   (length (let ((__tmp150418
                                  (lambda (_%g139769139772%_ _%g139770139774%_)
                                    (cons _%g139769139772%_
                                          _%g139770139774%_))))
                             (declare (not safe))
                             (__foldr1 __tmp150418 '() _%L139747%_)))))
                (_%__kont150166150167%_ (lambda () '#f)))
            (let ((_%__match150205150206%_
                   (lambda (_%e139654139691%_
                            _%hd139655139694%_
                            _%tl139656139696%_
                            _%e139657139699%_
                            _%hd139658139702%_
                            _%tl139659139704%_
                            _%e139660139707%_
                            _%hd139661139710%_
                            _%tl139662139712%_
                            _%e139663139715%_
                            _%hd139664139718%_
                            _%tl139665139720%_
                            _%__splice150164150165%_
                            _%target139666139723%_
                            _%tl139668139725%_)
                     (letrec ((_%loop139669139728%_
                               (lambda (_%hd139667139731%_
                                        _%rand139673139733%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd139667139731%_))
                                     (let ((_%e139670139736%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd139667139731%_))))
                                       (let ((_%lp-tl139672139741%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e139670139736%_)))
                                             (_%lp-hd139671139739%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e139670139736%_))))
                                         (_%loop139669139728%_
                                          _%lp-tl139672139741%_
                                          (cons _%lp-hd139671139739%_
                                                _%rand139673139733%_))))
                                     (let ((_%rand139674139744%_
                                            (reverse _%rand139673139733%_)))
                                       (let ((_%L139747%_ _%rand139674139744%_)
                                             (_%L139748%_ _%hd139664139718%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L139748%_
                                                'values))
                                             (_%__kont150162150163%_
                                              _%L139747%_
                                              _%L139748%_)
                                             (_%__kont150166150167%_))))))))
                       (_%loop139669139728%_ _%target139666139723%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx150160150161%_))
                  (let ((_%e139654139691%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx150160150161%_))))
                    (let ((_%tl139656139696%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e139654139691%_)))
                          (_%hd139655139694%_
                           (let ()
                             (declare (not safe))
                             (##car _%e139654139691%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139656139696%_))
                          (let ((_%e139657139699%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139656139696%_))))
                            (let ((_%tl139659139704%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139657139699%_)))
                                  (_%hd139658139702%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139657139699%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd139658139702%_))
                                  (let ((_%e139660139707%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd139658139702%_))))
                                    (let ((_%tl139662139712%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e139660139707%_)))
                                          (_%hd139661139710%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e139660139707%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd139661139710%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd139661139710%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl139662139712%_))
                                                  (let ((_%e139663139715%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl139662139712%_))))
                                                    (let ((_%tl139665139720%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e139663139715%_)))
                                                          (_%hd139664139718%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e139663139715%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl139665139720%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl139659139704%_))
                      (let ((_%__splice150164150165%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl139659139704%_
                                '0))))
                        (let ((_%tl139668139725%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice150164150165%_ '1)))
                              (_%target139666139723%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice150164150165%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl139668139725%_))
                              (_%__match150205150206%_
                               _%e139654139691%_
                               _%hd139655139694%_
                               _%tl139656139696%_
                               _%e139657139699%_
                               _%hd139658139702%_
                               _%tl139659139704%_
                               _%e139660139707%_
                               _%hd139661139710%_
                               _%tl139662139712%_
                               _%e139663139715%_
                               _%hd139664139718%_
                               _%tl139665139720%_
                               _%__splice150164150165%_
                               _%target139666139723%_
                               _%tl139668139725%_)
                              (_%__kont150166150167%_))))
                      (_%__kont150166150167%_))
                  (_%__kont150166150167%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150166150167%_))
                                              (_%__kont150166150167%_))
                                          (_%__kont150166150167%_))))
                                  (_%__kont150166150167%_))))
                          (_%__kont150166150167%_))))
                  (_%__kont150166150167%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self139549%_ _%stx139550%_)
        (let* ((_%g139552139573%_
                (lambda (_%g139553139570%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139553139570%_))))
               (_%g139551139643%_
                (lambda (_%g139553139576%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139553139576%_))
                      (let ((_%e139557139578%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139553139576%_))))
                        (let ((_%hd139558139581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139557139578%_)))
                              (_%tl139559139583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139557139578%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139559139583%_))
                              (let ((_%e139560139586%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139559139583%_))))
                                (let ((_%hd139561139589%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139560139586%_)))
                                      (_%tl139562139591%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139560139586%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139562139591%_))
                                      (let ((_%e139563139594%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139562139591%_))))
                                        (let ((_%hd139564139597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139563139594%_)))
                                              (_%tl139565139599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139563139594%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139565139599%_))
                                              (let ((_%e139566139602%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139565139599%_))))
                                                (let ((_%hd139567139605%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139566139602%_)))
                                                      (_%tl139568139607%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139566139602%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139568139607%_))
                                                      ((lambda (_%L139610%_
                                                                _%L139611%_
                                                                _%L139612%_)
                                                         (let ((_%c1139629139631%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self139549%_ _%L139611%_))))
                   (if _%c1139629139631%_
                       (let* ((_%c1139634%_ _%c1139629139631%_)
                              (_%c2139635139637%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self139549%_
                                  _%L139610%_))))
                         (if _%c2139635139637%_
                             (let ((_%c2139640%_ _%c2139635139637%_))
                               (if (fx= _%c1139634%_ _%c2139640%_)
                                   _%c1139634%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd139567139605%_
               _%hd139564139597%_
               _%hd139561139589%_)
              (_%g139552139573%_ _%g139553139576%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139552139573%_
                                               _%g139553139576%_))))
                                      (_%g139552139573%_ _%g139553139576%_))))
                              (_%g139552139573%_ _%g139553139576%_))))
                      (_%g139552139573%_ _%g139553139576%_)))))
          (_%g139551139643%_ _%stx139550%_))))))
