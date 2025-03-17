(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1742237313)
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
        (letrec ((_%hash-e148865%_
                  (lambda (_%id148867%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id148867%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e148865%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp150252 (list gxc#::void::t))
            (__tmp150251 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp150252
         '()
         __tmp150251
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args148861%_
        (apply make-instance gxc#::collect-bindings::t _%$args148861%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp150253
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
        (__make-promise __tmp150253)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx148853%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self148856%_
                (let ((__obj150227
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj150227))
               (__tmp150254
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148856%_ _%stx148853%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150254
           gxc#current-compile-method
           _%self148856%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp150256 (list gxc#::void::t))
            (__tmp150255 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp150256
         '(modules)
         __tmp150255
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args148850%_
        (apply make-instance gxc#::lift-modules::t _%$args148850%_)))
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
      (let ((__tmp150257
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
        (__make-promise __tmp150257)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords148824%_ _%modules148821148825%_ _%stx148827%_)
        (let ((_%modules148830%_
               (if (eq? _%modules148821148825%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules148821148825%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self148832%_
                  (let ((__obj150229
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150229
                       _%modules148830%_
                       '1
                       '#f
                       '#f))
                    __obj150229))
                 (__tmp150258
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148832%_ _%stx148827%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150258
             gxc#current-compile-method
             _%self148832%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords148839%_ . _%args148840%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords148839%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148839%_
                  'modules:
                  absent-value))
               _%args148840%_)))
    (define gxc#apply-lift-modules
      (lambda _%args148822148846%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args148822148846%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp150260 (list)) (__tmp150259 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp150260
         '()
         __tmp150259
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args148817%_
        (apply make-instance gxc#::find-runtime-code::t _%$args148817%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp150261
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
        (__make-promise __tmp150261)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx148809%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self148812%_
                (let ((__obj150231
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj150231))
               (__tmp150262
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148812%_ _%stx148809%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150262
           gxc#current-compile-method
           _%self148812%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp150264 (list gxc#::false::t))
            (__tmp150263 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp150264
         '()
         __tmp150263
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args148806%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args148806%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp150265
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
        (__make-promise __tmp150265)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx148798%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self148801%_
                (let ((__obj150233
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj150233))
               (__tmp150266
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148801%_ _%stx148798%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150266
           gxc#current-compile-method
           _%self148801%_))))
    (define gxc#::count-values::t
      (let ((__tmp150268 (list gxc#::false-expression::t))
            (__tmp150267 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp150268
         '()
         __tmp150267
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args148795%_
        (apply make-instance gxc#::count-values::t _%$args148795%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp150269
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
        (__make-promise __tmp150269)))
    (define gxc#apply-count-values
      (lambda (_%stx148787%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self148790%_
                (let ((__obj150235
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj150235))
               (__tmp150270
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148790%_ _%stx148787%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150270
           gxc#current-compile-method
           _%self148790%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp150271 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp150271
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args148784%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args148784%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp150272
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
        (__make-promise __tmp150272)))
    (define gxc#::generate-loader::t
      (let ((__tmp150274 (list gxc#::generate-runtime-empty::t))
            (__tmp150273 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp150274
         '()
         __tmp150273
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args148780%_
        (apply make-instance gxc#::generate-loader::t _%$args148780%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp150275
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
        (__make-promise __tmp150275)))
    (define gxc#apply-generate-loader
      (lambda (_%stx148772%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self148775%_
                (let ((__obj150238
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj150238))
               (__tmp150276
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148775%_ _%stx148772%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150276
           gxc#current-compile-method
           _%self148775%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp150277 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp150277
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args148769%_
        (apply make-instance gxc#::generate-runtime::t _%$args148769%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp150278
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
        (__make-promise __tmp150278)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx148761%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self148764%_
                (let ((__obj150240
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj150240))
               (__tmp150279
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148764%_ _%stx148761%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150279
           gxc#current-compile-method
           _%self148764%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp150281 (list gxc#::generate-runtime::t))
            (__tmp150280 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp150281
         '()
         __tmp150280
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args148758%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args148758%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp150282
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
        (__make-promise __tmp150282)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx148750%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self148753%_
                (let ((__obj150242
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj150242))
               (__tmp150283
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self148753%_ _%stx148750%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150283
           gxc#current-compile-method
           _%self148753%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp150284 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp150284
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args148747%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args148747%_)))
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
      (let ((__tmp150285
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
        (__make-promise __tmp150285)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords148721%_ _%table148718148722%_ _%stx148724%_)
        (let ((_%table148727%_
               (if (eq? _%table148718148722%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table148718148722%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self148729%_
                  (let ((__obj150244
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150244
                       _%table148727%_
                       '1
                       '#f
                       '#f))
                    __obj150244))
                 (__tmp150286
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148729%_ _%stx148724%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150286
             gxc#current-compile-method
             _%self148729%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords148736%_ . _%args148737%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords148736%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148736%_
                  'table:
                  absent-value))
               _%args148737%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args148719148743%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args148719148743%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp150288 (list gxc#::void-expression::t))
            (__tmp150287 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp150288
         '(state)
         __tmp150287
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args148714%_
        (apply make-instance gxc#::generate-meta::t _%$args148714%_)))
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
      (let ((__tmp150289
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
        (__make-promise __tmp150289)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords148688%_ _%state148685148689%_ _%stx148691%_)
        (let ((_%state148694%_
               (if (eq? _%state148685148689%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state148685148689%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self148696%_
                  (let ((__obj150246
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150246
                       _%state148694%_
                       '1
                       '#f
                       '#f))
                    __obj150246))
                 (__tmp150290
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148696%_ _%stx148691%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150290
             gxc#current-compile-method
             _%self148696%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords148703%_ . _%args148704%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords148703%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148703%_
                  'state:
                  absent-value))
               _%args148704%_)))
    (define gxc#apply-generate-meta
      (lambda _%args148686148710%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args148686148710%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp150292 (list)) (__tmp150291 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp150292
         '(state)
         __tmp150291
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args148681%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args148681%_)))
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
      (let ((__tmp150293
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
        (__make-promise __tmp150293)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords148655%_ _%state148652148656%_ _%stx148658%_)
        (let ((_%state148661%_
               (if (eq? _%state148652148656%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state148652148656%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self148663%_
                  (let ((__obj150248
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150248
                       _%state148661%_
                       '1
                       '#f
                       '#f))
                    __obj150248))
                 (__tmp150294
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self148663%_ _%stx148658%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150294
             gxc#current-compile-method
             _%self148663%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords148670%_ . _%args148671%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords148670%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148670%_
                  'state:
                  absent-value))
               _%args148671%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args148653148677%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args148653148677%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self148581%_ _%stx148582%_)
        (let* ((_%g148584148601%_
                (lambda (_%g148585148598%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148585148598%_))))
               (_%g148583148648%_
                (lambda (_%g148585148604%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148585148604%_))
                      (let ((_%e148588148606%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148585148604%_))))
                        (let ((_%hd148589148609%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148588148606%_)))
                              (_%tl148590148611%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148588148606%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148590148611%_))
                              (let ((_%e148591148614%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148590148611%_))))
                                (let ((_%hd148592148617%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148591148614%_)))
                                      (_%tl148593148619%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148591148614%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148593148619%_))
                                      (let ((_%e148594148622%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148593148619%_))))
                                        (let ((_%hd148595148625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148594148622%_)))
                                              (_%tl148596148627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148594148622%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148596148627%_))
                                              ((lambda (_%L148630%_
                                                        _%L148631%_)
                                                 (let ((__tmp150295
                                                        (lambda (_%bind148646%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind148646%_))
                      (gxc#add-module-binding! _%bind148646%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp150295
                                                    _%L148631%_)))
                                               _%hd148595148625%_
                                               _%hd148592148617%_)
                                              (_%g148584148601%_
                                               _%g148585148604%_))))
                                      (_%g148584148601%_ _%g148585148604%_))))
                              (_%g148584148601%_ _%g148585148604%_))))
                      (_%g148584148601%_ _%g148585148604%_)))))
          (_%g148583148648%_ _%stx148582%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self148513%_ _%stx148514%_)
        (let* ((_%g148516148533%_
                (lambda (_%g148517148530%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148517148530%_))))
               (_%g148515148578%_
                (lambda (_%g148517148536%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148517148536%_))
                      (let ((_%e148520148538%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148517148536%_))))
                        (let ((_%hd148521148541%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148520148538%_)))
                              (_%tl148522148543%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148520148538%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148522148543%_))
                              (let ((_%e148523148546%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148522148543%_))))
                                (let ((_%hd148524148549%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148523148546%_)))
                                      (_%tl148525148551%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148523148546%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148525148551%_))
                                      (let ((_%e148526148554%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148525148551%_))))
                                        (let ((_%hd148527148557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148526148554%_)))
                                              (_%tl148528148559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148526148554%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148528148559%_))
                                              ((lambda (_%L148562%_
                                                        _%L148563%_)
                                                 (gxc#add-module-binding!
                                                  _%L148563%_
                                                  '#t))
                                               _%hd148527148557%_
                                               _%hd148524148549%_)
                                              (_%g148516148533%_
                                               _%g148517148536%_))))
                                      (_%g148516148533%_ _%g148517148536%_))))
                              (_%g148516148533%_ _%g148517148536%_))))
                      (_%g148516148533%_ _%g148517148536%_)))))
          (_%g148515148578%_ _%stx148514%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self148455%_ _%stx148456%_)
        (let* ((_%g148458148472%_
                (lambda (_%g148459148469%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148459148469%_))))
               (_%g148457148510%_
                (lambda (_%g148459148475%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148459148475%_))
                      (let ((_%e148462148477%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148459148475%_))))
                        (let ((_%hd148463148480%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148462148477%_)))
                              (_%tl148464148482%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148462148477%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148464148482%_))
                              (let ((_%e148465148485%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148464148482%_))))
                                (let ((_%hd148466148488%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148465148485%_)))
                                      (_%tl148467148490%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148465148485%_))))
                                  ((lambda (_%L148493%_ _%L148494%_)
                                     (let ((_%ctx148507%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L148494%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self148455%_
                                           'modules))
                                        (cons _%ctx148507%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self148455%_
                                                        'modules)))))
                                       (let ((__tmp150296
                                              (lambda ()
                                                (let ((__tmp150297
                                                       (##structure-ref
                                                        _%ctx148507%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self148455%_
                                                   __tmp150297)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp150296
                                          gx#current-expander-context
                                          _%ctx148507%_))))
                                   _%tl148467148490%_
                                   _%hd148466148488%_)))
                              (_%g148458148472%_ _%g148459148475%_))))
                      (_%g148458148472%_ _%g148459148475%_)))))
          (_%g148457148510%_ _%stx148456%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls148408148410%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls148408148410%_
              (let ((_%decls148413%_ _%decls148408148410%_))
                (let _%lp148415%_ ((_%rest148417%_ _%decls148413%_))
                  (let* ((_%rest148418148426%_ _%rest148417%_)
                         (_%else148420148434%_ (lambda () '#f))
                         (_%K148422148443%_
                          (lambda (_%decls148437%_ _%decl148438%_)
                            (if (equal? _%decl148438%_ '(not safe))
                                '#t
                                (if (equal? _%decl148438%_ '(safe))
                                    '#f
                                    (_%lp148415%_ _%decls148437%_))))))
                    (if (pair? _%rest148418148426%_)
                        (let ((_%hd148423148446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest148418148426%_)))
                              (_%tl148424148448%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest148418148426%_))))
                          (let* ((_%decl148451%_ _%hd148423148446%_)
                                 (_%decls148453%_ _%tl148424148448%_))
                            (_%K148422148443%_
                             _%decls148453%_
                             _%decl148451%_)))
                        (_%else148420148434%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id148402%_ _%syntax?148403%_)
        (let ((_%eid148405%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id148402%_))
                '1
                gx#binding::t
                '#f))
              (_%ht148406%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid148405%_))
              '#!void
              (let ((__tmp150298
                     (let ((__tmp150299
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid148405%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp150299 _%syntax?148403%_))))
                (declare (not safe))
                (hash-put! _%ht148406%_ _%eid148405%_ __tmp150298))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id148400%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id148400%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key148355%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key148355%_))
            _%key148355%_
            (if (uninterned-symbol? _%key148355%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key148355%_))
                (let* ((_%key148359148366%_ _%key148355%_)
                       (_%E148361148370%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key148359148366%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K148362148388%_
                        (lambda (_%mark148373%_ _%eid148374%_)
                          (let ((_%$e148376%_
                                 (##structure-ref
                                  _%mark148373%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e148376%_
                                ((lambda (_%ht148379%_)
                                   (let ((_%$e148381%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht148379%_
                                             _%eid148374%_))))
                                     (if _%$e148381%_
                                         ((lambda (_%id148384%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id148384%_))
                                                _%id148384%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id148384%_))))
                                          _%$e148381%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid148374%_))))
                                 _%$e148376%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid148374%_))))))
                  (if (pair? _%key148359148366%_)
                      (let ((_%hd148363148391%_
                             (let ()
                               (declare (not safe))
                               (##car _%key148359148366%_)))
                            (_%tl148364148393%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key148359148366%_))))
                        (let* ((_%eid148396%_ _%hd148363148391%_)
                               (_%mark148398%_ _%tl148364148393%_))
                          (_%K148362148388%_ _%mark148398%_ _%eid148396%_)))
                      (_%E148361148370%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self148352%_ _%stx148353%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self148199%_ _%stx148200%_)
        (letrec ((_%simplify148202%_
                  (lambda (_%body148250%_)
                    (let _%lp148252%_ ((_%rest148254%_ _%body148250%_)
                                       (_%r148255%_ '()))
                      (let* ((_%rest148256148264%_ _%rest148254%_)
                             (_%else148258148272%_
                              (lambda () (reverse _%r148255%_)))
                             (_%K148260148340%_
                              (lambda (_%rest148275%_ _%hd148276%_)
                                (let* ((_%hd148277148293%_ _%hd148276%_)
                                       (_%else148281148301%_
                                        (lambda ()
                                          (_%lp148252%_
                                           _%rest148275%_
                                           (cons _%hd148276%_ _%r148255%_)))))
                                  (let ((_%K148289148330%_
                                         (lambda (_%exprs148328%_)
                                           (_%lp148252%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest148275%_
                                               _%exprs148328%_))
                                            _%r148255%_)))
                                        (_%K148284148314%_
                                         (lambda ()
                                           (if (null? _%rest148275%_)
                                               (_%lp148252%_
                                                _%rest148275%_
                                                (cons _%hd148276%_
                                                      _%r148255%_))
                                               (_%lp148252%_
                                                _%rest148275%_
                                                _%r148255%_))))
                                        (_%K148283148306%_
                                         (lambda ()
                                           (if (null? _%rest148275%_)
                                               (_%lp148252%_
                                                _%rest148275%_
                                                (cons _%hd148276%_
                                                      _%r148255%_))
                                               (_%lp148252%_
                                                _%rest148275%_
                                                _%r148255%_)))))
                                    (let ((_%try-match148280148309%_
                                           (lambda ()
                                             (if (symbol? _%hd148277148293%_)
                                                 (_%K148283148306%_)
                                                 (_%else148281148301%_)))))
                                      (if (pair? _%hd148277148293%_)
                                          (let ((_%tl148291148335%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd148277148293%_)))
                                                (_%hd148290148333%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd148277148293%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd148290148333%_
                                                         'begin))
                                                (let ((_%exprs148338%_
                                                       _%tl148291148335%_))
                                                  (_%K148289148330%_
                                                   _%exprs148338%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd148290148333%_
                                                             'quote))
                                                    (if (pair? _%tl148291148335%_)
                                                        (let ((_%tl148288148322%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl148291148335%_))))
                  (if (null? _%tl148288148322%_)
                      (_%K148284148314%_)
                      (_%try-match148280148309%_)))
                (_%try-match148280148309%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match148280148309%_))))
                                          (_%try-match148280148309%_))))))))
                        (if (pair? _%rest148256148264%_)
                            (let ((_%hd148261148343%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest148256148264%_)))
                                  (_%tl148262148345%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest148256148264%_))))
                              (let* ((_%hd148348%_ _%hd148261148343%_)
                                     (_%rest148350%_ _%tl148262148345%_))
                                (_%K148260148340%_
                                 _%rest148350%_
                                 _%hd148348%_)))
                            (_%else148258148272%_)))))))
          (let* ((_%g148204148214%_
                  (lambda (_%g148205148211%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148205148211%_))))
                 (_%g148203148247%_
                  (lambda (_%g148205148217%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148205148217%_))
                        (let ((_%e148207148219%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148205148217%_))))
                          (let ((_%hd148208148222%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148207148219%_)))
                                (_%tl148209148224%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148207148219%_))))
                            ((lambda (_%L148227%_)
                               (let* ((_%body148242%_
                                       (map (lambda (_%g148237148239%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self148199%_
                                                 _%g148237148239%_)))
                                            _%L148227%_))
                                      (_%body148244%_
                                       (_%simplify148202%_ _%body148242%_)))
                                 (if (let ((__tmp150300
                                            (length _%body148244%_)))
                                       (declare (not safe))
                                       (##fx= __tmp150300 '1))
                                     (car _%body148244%_)
                                     (cons 'begin _%body148244%_))))
                             _%tl148209148224%_)))
                        (_%g148204148214%_ _%g148205148217%_)))))
            (_%g148203148247%_ _%stx148200%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self148160%_ _%stx148161%_)
        (let* ((_%g148163148173%_
                (lambda (_%g148164148170%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148164148170%_))))
               (_%g148162148196%_
                (lambda (_%g148164148176%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148164148176%_))
                      (let ((_%e148166148178%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148164148176%_))))
                        (let ((_%hd148167148181%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148166148178%_)))
                              (_%tl148168148183%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148166148178%_))))
                          ((lambda (_%L148186%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L148186%_))))
                           _%tl148168148183%_)))
                      (_%g148163148173%_ _%g148164148176%_)))))
          (_%g148162148196%_ _%stx148161%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self147924%_ _%stx147925%_)
        (let* ((_%__stx148890148891%_ _%stx147925%_)
               (_%g147929147981%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx148890148891%_)))))
          (let ((_%__kont148892148893%_
                 (lambda (_%L148142%_ _%L148143%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self147924%_ _%L148142%_))))
                (_%__kont148894148895%_
                 (lambda (_%L148090%_ _%L148091%_ _%L148092%_)
                   (if (let ((__tmp150301
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L148092%_))))
                         (declare (not safe))
                         (##memq __tmp150301 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self147924%_ _%L148090%_)))))
                (_%__kont148898148899%_
                 (lambda (_%L148010%_ _%L148011%_)
                   (let ((_%decls148026%_ (map gx#syntax->datum _%L148011%_)))
                     (let ((__tmp150304
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls148026%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self147924%_
                                                   _%L148010%_))
                                                '())))))
                           (__tmp150302
                            (let ((__tmp150303
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp150303 _%decls148026%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp150304
                        gxc#current-compile-decls
                        __tmp150302))))))
            (let* ((_%__match148945148946%_
                    (lambda (_%e147945148034%_
                             _%hd147946148037%_
                             _%tl147947148039%_
                             _%e147948148042%_
                             _%hd147949148045%_
                             _%tl147950148047%_
                             _%e147951148050%_
                             _%hd147952148053%_
                             _%tl147953148055%_
                             _%__splice148896148897%_
                             _%target147954148058%_
                             _%tl147956148060%_)
                      (letrec ((_%loop147957148063%_
                                (lambda (_%hd147955148066%_
                                         _%param147961148068%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd147955148066%_))
                                      (let ((_%e147958148071%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd147955148066%_))))
                                        (let ((_%lp-tl147960148076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147958148071%_)))
                                              (_%lp-hd147959148074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147958148071%_))))
                                          (_%loop147957148063%_
                                           _%lp-tl147960148076%_
                                           (cons _%lp-hd147959148074%_
                                                 _%param147961148068%_))))
                                      (let ((_%param147962148079%_
                                             (reverse _%param147961148068%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl147950148047%_))
                                            (let ((_%e147963148082%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl147950148047%_))))
                                              (let ((_%tl147965148087%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e147963148082%_)))
                                                    (_%hd147964148085%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e147963148082%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl147965148087%_))
                                                    (let ((_%L148090%_
                                                           _%hd147964148085%_)
                                                          (_%L148091%_
                                                           _%param147962148079%_)
                                                          (_%L148092%_
                                                           _%hd147952148053%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L148092%_))
                       (not (let ((__tmp150305
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L148092%_))))
                              (declare (not safe))
                              (##memq __tmp150305 gxc#gambit-annotations))))
                  (_%__kont148894148895%_ _%L148090%_ _%L148091%_ _%L148092%_)
                  (_%__kont148898148899%_
                   _%hd147964148085%_
                   _%hd147949148045%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g147929147981%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g147929147981%_))))))))
                        (_%loop147957148063%_ _%target147954148058%_ '()))))
                   (_%__match148919148920%_
                    (lambda (_%e147933148118%_
                             _%hd147934148121%_
                             _%tl147935148123%_
                             _%e147936148126%_
                             _%hd147937148129%_
                             _%tl147938148131%_
                             _%e147939148134%_
                             _%hd147940148137%_
                             _%tl147941148139%_)
                      (let ((_%L148142%_ _%hd147940148137%_)
                            (_%L148143%_ _%hd147937148129%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L148143%_))
                            (_%__kont148892148893%_ _%L148142%_ _%L148143%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd147937148129%_))
                                (let ((_%e147951148050%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd147937148129%_))))
                                  (let ((_%tl147953148055%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147951148050%_)))
                                        (_%hd147952148053%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147951148050%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl147953148055%_))
                                        (let ((_%__splice148896148897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl147953148055%_
                                                  '0))))
                                          (let ((_%tl147956148060%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice148896148897%_
                                                    '1)))
                                                (_%target147954148058%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice148896148897%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl147956148060%_))
                                                (_%__match148945148946%_
                                                 _%e147933148118%_
                                                 _%hd147934148121%_
                                                 _%tl147935148123%_
                                                 _%e147936148126%_
                                                 _%hd147937148129%_
                                                 _%tl147938148131%_
                                                 _%e147951148050%_
                                                 _%hd147952148053%_
                                                 _%tl147953148055%_
                                                 _%__splice148896148897%_
                                                 _%target147954148058%_
                                                 _%tl147956148060%_)
                                                (_%__kont148898148899%_
                                                 _%hd147940148137%_
                                                 _%hd147937148129%_))))
                                        (_%__kont148898148899%_
                                         _%hd147940148137%_
                                         _%hd147937148129%_))))
                                (_%__kont148898148899%_
                                 _%hd147940148137%_
                                 _%hd147937148129%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx148890148891%_))
                  (let ((_%e147933148118%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx148890148891%_))))
                    (let ((_%tl147935148123%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e147933148118%_)))
                          (_%hd147934148121%_
                           (let ()
                             (declare (not safe))
                             (##car _%e147933148118%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl147935148123%_))
                          (let ((_%e147936148126%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl147935148123%_))))
                            (let ((_%tl147938148131%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e147936148126%_)))
                                  (_%hd147937148129%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e147936148126%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl147938148131%_))
                                  (let ((_%e147939148134%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl147938148131%_))))
                                    (let ((_%tl147941148139%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e147939148134%_)))
                                          (_%hd147940148137%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e147939148134%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl147941148139%_))
                                          (_%__match148919148920%_
                                           _%e147933148118%_
                                           _%hd147934148121%_
                                           _%tl147935148123%_
                                           _%e147936148126%_
                                           _%hd147937148129%_
                                           _%tl147938148131%_
                                           _%e147939148134%_
                                           _%hd147940148137%_
                                           _%tl147941148139%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd147937148129%_))
                                              (let ((_%e147951148050%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd147937148129%_))))
                                                (let ((_%tl147953148055%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e147951148050%_)))
                                                      (_%hd147952148053%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e147951148050%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl147953148055%_))
                                                      (let ((_%__splice148896148897%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl147953148055%_
                        '0))))
                (let ((_%tl147956148060%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice148896148897%_ '1)))
                      (_%target147954148058%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice148896148897%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl147956148060%_))
                      (_%__match148945148946%_
                       _%e147933148118%_
                       _%hd147934148121%_
                       _%tl147935148123%_
                       _%e147936148126%_
                       _%hd147937148129%_
                       _%tl147938148131%_
                       _%e147951148050%_
                       _%hd147952148053%_
                       _%tl147953148055%_
                       _%__splice148896148897%_
                       _%target147954148058%_
                       _%tl147956148060%_)
                      (let () (declare (not safe)) (_%g147929147981%_)))))
              (let () (declare (not safe)) (_%g147929147981%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g147929147981%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd147937148129%_))
                                      (let ((_%e147951148050%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd147937148129%_))))
                                        (let ((_%tl147953148055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147951148050%_)))
                                              (_%hd147952148053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147951148050%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl147953148055%_))
                                              (let ((_%__splice148896148897%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl147953148055%_
                                                        '0))))
                                                (let ((_%tl147956148060%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice148896148897%_
                                                          '1)))
                                                      (_%target147954148058%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice148896148897%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl147956148060%_))
                                                      (_%__match148945148946%_
                                                       _%e147933148118%_
                                                       _%hd147934148121%_
                                                       _%tl147935148123%_
                                                       _%e147936148126%_
                                                       _%hd147937148129%_
                                                       _%tl147938148131%_
                                                       _%e147951148050%_
                                                       _%hd147952148053%_
                                                       _%tl147953148055%_
                                                       _%__splice148896148897%_
                                                       _%target147954148058%_
                                                       _%tl147956148060%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g147929147981%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g147929147981%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g147929147981%_))))))
                          (let () (declare (not safe)) (_%g147929147981%_)))))
                  (let () (declare (not safe)) (_%g147929147981%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self147883%_ _%stx147884%_)
        (let* ((_%g147886147896%_
                (lambda (_%g147887147893%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147887147893%_))))
               (_%g147885147921%_
                (lambda (_%g147887147899%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147887147899%_))
                      (let ((_%e147889147901%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147887147899%_))))
                        (let ((_%hd147890147904%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147889147901%_)))
                              (_%tl147891147906%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147889147901%_))))
                          ((lambda (_%L147909%_)
                             (let ((_%decls147919%_
                                    (map gx#syntax->datum _%L147909%_)))
                               (let ((__tmp150306
                                      (let ((__tmp150307
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp150307
                                         _%decls147919%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp150306))
                               (cons 'declare _%decls147919%_)))
                           _%tl147891147906%_)))
                      (_%g147886147896%_ _%g147887147899%_)))))
          (_%g147885147921%_ _%stx147884%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self147629%_ _%stx147630%_)
        (let* ((_%g147632147649%_
                (lambda (_%g147633147646%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147633147646%_))))
               (_%g147631147880%_
                (lambda (_%g147633147652%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147633147652%_))
                      (let ((_%e147636147654%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147633147652%_))))
                        (let ((_%hd147637147657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147636147654%_)))
                              (_%tl147638147659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147636147654%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147638147659%_))
                              (let ((_%e147639147662%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147638147659%_))))
                                (let ((_%hd147640147665%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147639147662%_)))
                                      (_%tl147641147667%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147639147662%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147641147667%_))
                                      (let ((_%e147642147670%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147641147667%_))))
                                        (let ((_%hd147643147673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147642147670%_)))
                                              (_%tl147644147675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147642147670%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147644147675%_))
                                              ((lambda (_%L147678%_
                                                        _%L147679%_)
                                                 (let* ((_%__stx148998148999%_
                                                         _%L147679%_)
                                                        (_%g147696147710%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx148998148999%_)))))
                                                   (let ((_%__kont149000149001%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self147629%_
                                                               _%L147678%_))))
                                                         (_%__kont149002149003%_
                                                          (lambda (_%L147842%_)
                                                            (let ((_%eid147851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L147842%_))))
                      (let ((_%lambda-expr147852147854%_
                             (gxc#apply-find-lambda-expression _%L147678%_)))
                        (if _%lambda-expr147852147854%_
                            (let* ((_%lambda-expr147857%_
                                    _%lambda-expr147852147854%_)
                                   (__tmp150308
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp150308
                               _%lambda-expr147857%_
                               _%eid147851%_))
                            '#f))
                      (cons 'define
                            (cons _%eid147851%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self147629%_
                                           _%L147678%_))
                                        '()))))))
                 (_%__kont149004149005%_
                  (lambda ()
                    (let* ((_%tmp147717%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body147826%_
                            (let _%lp147719%_ ((_%rest147721%_ _%L147679%_)
                                               (_%k147722%_ '0)
                                               (_%r147723%_ '()))
                              (let* ((_%__stx148968148969%_ _%rest147721%_)
                                     (_%g147728147745%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx148968148969%_)))))
                                (let ((_%__kont148970148971%_
                                       (lambda (_%L147813%_)
                                         (_%lp147719%_
                                          _%L147813%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k147722%_ '1))
                                          _%r147723%_)))
                                      (_%__kont148972148973%_
                                       (lambda (_%L147786%_ _%L147787%_)
                                         (_%lp147719%_
                                          _%L147786%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k147722%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L147787%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp147717%_
                           _%k147722%_
                           _%L147786%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r147723%_))))
                                      (_%__kont148974148975%_
                                       (lambda (_%L147757%_)
                                         (let ((__tmp150309
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L147757%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp147717%_
                                 _%k147722%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp150309
                                            _%r147723%_))))
                                      (_%__kont148976148977%_
                                       (lambda () (reverse _%r147723%_))))
                                  (let ((_%g147726147773%_
                                         (lambda ()
                                           (let ((_%L147757%_
                                                  _%__stx148968148969%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L147757%_))
                                                 (_%__kont148974148975%_
                                                  _%L147757%_)
                                                 (_%__kont148976148977%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx148968148969%_))
                                        (let ((_%e147731147802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx148968148969%_))))
                                          (let ((_%tl147733147807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e147731147802%_)))
                                                (_%hd147732147805%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e147731147802%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd147732147805%_))
                                                (let ((_%e147734147810%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd147732147805%_))))
                                                  (if (equal? _%e147734147810%_
                                                              '#f)
                                                      (_%__kont148970148971%_
                                                       _%tl147733147807%_)
                                                      (_%__kont148972148973%_
                                                       _%tl147733147807%_
                                                       _%hd147732147805%_)))
                                                (_%__kont148972148973%_
                                                 _%tl147733147807%_
                                                 _%hd147732147805%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g147726147773%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp147717%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self147629%_
                                                       _%L147678%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp147717%_
                                         _%L147679%_
                                         _%L147678%_)
                                        _%body147826%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx148998148999%_))
                                                         (let ((_%e147698147864%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx148998148999%_))))
                   (let ((_%tl147700147869%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e147698147864%_)))
                         (_%hd147699147867%_
                          (let ()
                            (declare (not safe))
                            (##car _%e147698147864%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd147699147867%_))
                         (let ((_%e147701147872%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd147699147867%_))))
                           (if (equal? _%e147701147872%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl147700147869%_))
                                   (_%__kont149000149001%_)
                                   (_%__kont149004149005%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl147700147869%_))
                                   (_%__kont149002149003%_ _%hd147699147867%_)
                                   (_%__kont149004149005%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl147700147869%_))
                             (_%__kont149002149003%_ _%hd147699147867%_)
                             (_%__kont149004149005%_)))))
                 (_%__kont149004149005%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd147643147673%_
                                               _%hd147640147665%_)
                                              (_%g147632147649%_
                                               _%g147633147652%_))))
                                      (_%g147632147649%_ _%g147633147652%_))))
                              (_%g147632147649%_ _%g147633147652%_))))
                      (_%g147632147649%_ _%g147633147652%_)))))
          (_%g147631147880%_ _%stx147630%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals147604%_ _%hd147605%_ _%expr147606%_)
        (let ((_%$e147608%_ (gxc#apply-count-values _%expr147606%_)))
          (if _%$e147608%_
              ((lambda (_%count147611%_)
                 (let ((_%len147613%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd147605%_)))
                       (_%cmp147614%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd147605%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len147613%_ '0))
                           (_%cmp147614%_ _%count147611%_ _%len147613%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr147606%_
                          _%hd147605%_)))))
               _%$e147608%_)
              (let* ((_%len147620%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd147605%_)))
                     (_%cmp147622%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd147605%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg147624%_
                      (let ((__tmp150311
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd147605%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp150310 (number->string _%len147620%_)))
                        (declare (not safe))
                        (##string-append __tmp150311 __tmp150310 '" values")))
                     (_%count147626%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd147605%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len147620%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count147626%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals147604%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp147622%_
                                (cons _%count147626%_
                                      (cons _%len147620%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp147622%_
                                                        (cons _%count147626%_
                                                              (cons _%len147620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg147624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count147626%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var147599%_)
        (letrec ((_%generate-inline147601%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var147599%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var147599%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline147601%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline147601%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var147592%_ _%i147593%_ _%rest147594%_)
        (letrec ((_%generate-inline147596%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i147593%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest147594%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var147592%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var147592%_
                                                      (cons '0 '())))
                                          (cons _%var147592%_ '()))))
                        (cons '##values-ref
                              (cons _%var147592%_ (cons _%i147593%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline147596%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline147596%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var147586%_ _%i147587%_)
        (if (let () (declare (not safe)) (##fx= _%i147587%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var147586%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var147586%_ '()))
                                  (cons (cons 'list (cons _%var147586%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var147586%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var147586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var147586%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i147587%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var147586%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var147586%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var147586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var147586%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var147586%_ '()))
                                (cons _%i147587%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var147586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i147587%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self147518%_ _%stx147519%_)
        (let* ((_%g147521147538%_
                (lambda (_%g147522147535%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147522147535%_))))
               (_%g147520147583%_
                (lambda (_%g147522147541%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147522147541%_))
                      (let ((_%e147525147543%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147522147541%_))))
                        (let ((_%hd147526147546%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147525147543%_)))
                              (_%tl147527147548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147525147543%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147527147548%_))
                              (let ((_%e147528147551%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147527147548%_))))
                                (let ((_%hd147529147554%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147528147551%_)))
                                      (_%tl147530147556%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147528147551%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147530147556%_))
                                      (let ((_%e147531147559%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147530147556%_))))
                                        (let ((_%hd147532147562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147531147559%_)))
                                              (_%tl147533147564%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147531147559%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147533147564%_))
                                              ((lambda (_%L147567%_
                                                        _%L147568%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self147518%_
                                                  _%L147568%_
                                                  _%L147567%_))
                                               _%hd147532147562%_
                                               _%hd147529147554%_)
                                              (_%g147521147538%_
                                               _%g147522147541%_))))
                                      (_%g147521147538%_ _%g147522147541%_))))
                              (_%g147521147538%_ _%g147522147541%_))))
                      (_%g147521147538%_ _%g147522147541%_)))))
          (_%g147520147583%_ _%stx147519%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self147477%_ _%hd147478%_ _%body147479%_)
        (let* ((_%hd147481%_ (gxc#generate-runtime-lambda-head _%hd147478%_))
               (_%body147483%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self147477%_ _%body147479%_)))
               (_%body147515%_
                (let* ((_%body147484147492%_ _%body147483%_)
                       (_%else147486147500%_
                        (lambda () (cons _%body147483%_ '())))
                       (_%K147488147505%_
                        (lambda (_%exprs147503%_) _%exprs147503%_)))
                  (if (pair? _%body147484147492%_)
                      (let ((_%hd147489147508%_
                             (let ()
                               (declare (not safe))
                               (##car _%body147484147492%_)))
                            (_%tl147490147510%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body147484147492%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd147489147508%_ 'begin))
                            (let ((_%exprs147513%_ _%tl147490147510%_))
                              (_%K147488147505%_ _%exprs147513%_))
                            (_%else147486147500%_)))
                      (_%else147486147500%_)))))
          (cons 'lambda (cons _%hd147481%_ _%body147515%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd147475%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd147475%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self146014%_ _%stx146015%_)
        (letrec ((_%dispatch-case?146017%_
                  (lambda (_%hd146705%_ _%body146706%_)
                    (let* ((_%form146708%_
                            (cons _%hd146705%_ (cons _%body146706%_ '())))
                           (_%__stx149030149031%_ _%form146708%_)
                           (_%g146713146870%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx149030149031%_)))))
                      (let ((_%__kont149032149033%_
                             (lambda (_%L147395%_ _%L147396%_ _%L147397%_)
                               '#t))
                            (_%__kont149038149039%_
                             (lambda (_%L147183%_
                                      _%L147184%_
                                      _%L147185%_
                                      _%L147186%_
                                      _%L147187%_
                                      _%L147188%_)
                               '#t))
                            (_%__kont149044149045%_
                             (lambda (_%L146978%_
                                      _%L146979%_
                                      _%L146980%_
                                      _%L146981%_)
                               '#t))
                            (_%__kont149046149047%_ (lambda () '#f)))
                        (let* ((_%__match149171149172%_
                                (lambda (_%e146830146882%_
                                         _%hd146831146885%_
                                         _%tl146832146887%_
                                         _%e146833146890%_
                                         _%hd146834146893%_
                                         _%tl146835146895%_
                                         _%e146836146898%_
                                         _%hd146837146901%_
                                         _%tl146838146903%_
                                         _%e146839146906%_
                                         _%hd146840146909%_
                                         _%tl146841146911%_
                                         _%e146842146914%_
                                         _%hd146843146917%_
                                         _%tl146844146919%_
                                         _%e146845146922%_
                                         _%hd146846146925%_
                                         _%tl146847146927%_
                                         _%e146848146930%_
                                         _%hd146849146933%_
                                         _%tl146850146935%_
                                         _%e146851146938%_
                                         _%hd146852146941%_
                                         _%tl146853146943%_
                                         _%e146854146946%_
                                         _%hd146855146949%_
                                         _%tl146856146951%_
                                         _%e146857146954%_
                                         _%hd146858146957%_
                                         _%tl146859146959%_
                                         _%e146860146962%_
                                         _%hd146861146965%_
                                         _%tl146862146967%_
                                         _%e146863146970%_
                                         _%hd146864146973%_
                                         _%tl146865146975%_)
                                  (let ((_%L146978%_ _%hd146864146973%_)
                                        (_%L146979%_ _%hd146855146949%_)
                                        (_%L146980%_ _%hd146846146925%_)
                                        (_%L146981%_ _%hd146831146885%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L146981%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L146980%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L146981%_
                                                _%L146978%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L146979%_
                                                     _%L146981%_))))
                                        (_%__kont149044149045%_
                                         _%L146978%_
                                         _%L146979%_
                                         _%L146980%_
                                         _%L146981%_)
                                        (_%__kont149046149047%_)))))
                               (_%__match149143149144%_
                                (lambda (_%e146830146882%_
                                         _%hd146831146885%_
                                         _%tl146832146887%_
                                         _%e146833146890%_
                                         _%hd146834146893%_
                                         _%tl146835146895%_
                                         _%e146836146898%_
                                         _%hd146837146901%_
                                         _%tl146838146903%_
                                         _%e146839146906%_
                                         _%hd146840146909%_
                                         _%tl146841146911%_
                                         _%e146842146914%_
                                         _%hd146843146917%_
                                         _%tl146844146919%_
                                         _%e146845146922%_
                                         _%hd146846146925%_
                                         _%tl146847146927%_
                                         _%e146848146930%_
                                         _%hd146849146933%_
                                         _%tl146850146935%_
                                         _%e146851146938%_
                                         _%hd146852146941%_
                                         _%tl146853146943%_
                                         _%e146854146946%_
                                         _%hd146855146949%_
                                         _%tl146856146951%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146850146935%_))
                                      (let ((_%e146857146954%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146850146935%_))))
                                        (let ((_%tl146859146959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146857146954%_)))
                                              (_%hd146858146957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146857146954%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd146858146957%_))
                                              (let ((_%e146860146962%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd146858146957%_))))
                                                (let ((_%tl146862146967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146860146962%_)))
                                                      (_%hd146861146965%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146860146962%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd146861146965%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd146861146965%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl146862146967%_))
                      (let ((_%e146863146970%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl146862146967%_))))
                        (let ((_%tl146865146975%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146863146970%_)))
                              (_%hd146864146973%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146863146970%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl146865146975%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl146859146959%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl146835146895%_))
                                      (_%__match149171149172%_
                                       _%e146830146882%_
                                       _%hd146831146885%_
                                       _%tl146832146887%_
                                       _%e146833146890%_
                                       _%hd146834146893%_
                                       _%tl146835146895%_
                                       _%e146836146898%_
                                       _%hd146837146901%_
                                       _%tl146838146903%_
                                       _%e146839146906%_
                                       _%hd146840146909%_
                                       _%tl146841146911%_
                                       _%e146842146914%_
                                       _%hd146843146917%_
                                       _%tl146844146919%_
                                       _%e146845146922%_
                                       _%hd146846146925%_
                                       _%tl146847146927%_
                                       _%e146848146930%_
                                       _%hd146849146933%_
                                       _%tl146850146935%_
                                       _%e146851146938%_
                                       _%hd146852146941%_
                                       _%tl146853146943%_
                                       _%e146854146946%_
                                       _%hd146855146949%_
                                       _%tl146856146951%_
                                       _%e146857146954%_
                                       _%hd146858146957%_
                                       _%tl146859146959%_
                                       _%e146860146962%_
                                       _%hd146861146965%_
                                       _%tl146862146967%_
                                       _%e146863146970%_
                                       _%hd146864146973%_
                                       _%tl146865146975%_)
                                      (_%__kont149046149047%_))
                                  (_%__kont149046149047%_))
                              (_%__kont149046149047%_))))
                      (_%__kont149046149047%_))
                  (_%__kont149046149047%_))
              (_%__kont149046149047%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont149046149047%_))))
                                      (_%__kont149046149047%_))))
                               (_%__match149073149074%_
                                (lambda (_%e146766147023%_
                                         _%hd146767147026%_
                                         _%tl146768147028%_
                                         _%__splice149040149041%_
                                         _%target146769147031%_
                                         _%tl146771147033%_)
                                  (letrec ((_%loop146772147036%_
                                            (lambda (_%hd146770147039%_
                                                     _%arg146776147041%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146770147039%_))
                                                  (let ((_%e146773147044%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146770147039%_))))
                                                    (let ((_%lp-tl146775147049%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146773147044%_)))
                                                          (_%lp-hd146774147047%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146773147044%_))))
                                                      (_%loop146772147036%_
                                                       _%lp-tl146775147049%_
                                                       (cons _%lp-hd146774147047%_
                                                             _%arg146776147041%_))))
                                                  (let ((_%arg146777147052%_
                                                         (reverse _%arg146776147041%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146768147028%_))
                                                        (let ((_%e146778147055%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146768147028%_))))
                  (let ((_%tl146780147060%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146778147055%_)))
                        (_%hd146779147058%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146778147055%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146779147058%_))
                        (let ((_%e146781147063%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146779147058%_))))
                          (let ((_%tl146783147068%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146781147063%_)))
                                (_%hd146782147066%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146781147063%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146782147066%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146782147066%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146783147068%_))
                                        (let ((_%e146784147071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146783147068%_))))
                                          (let ((_%tl146786147076%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146784147071%_)))
                                                (_%hd146785147074%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146784147071%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146785147074%_))
                                                (let ((_%e146787147079%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146785147074%_))))
                                                  (let ((_%tl146789147084%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146787147079%_)))
                                                        (_%hd146788147082%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146787147079%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146788147082%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146788147082%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146789147084%_))
                        (let ((_%e146790147087%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146789147084%_))))
                          (let ((_%tl146792147092%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146790147087%_)))
                                (_%hd146791147090%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146790147087%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146792147092%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl146786147076%_))
                                    (let ((_%e146793147095%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl146786147076%_))))
                                      (let ((_%tl146795147100%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e146793147095%_)))
                                            (_%hd146794147098%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e146793147095%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd146794147098%_))
                                            (let ((_%e146796147103%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd146794147098%_))))
                                              (let ((_%tl146798147108%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146796147103%_)))
                                                    (_%hd146797147106%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146796147103%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd146797147106%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd146797147106%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl146798147108%_))
                                                            (let ((_%e146799147111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl146798147108%_))))
                      (let ((_%tl146801147116%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146799147111%_)))
                            (_%hd146800147114%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146799147111%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl146801147116%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl146795147100%_))
                                (if (let ((__tmp150312
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl146795147100%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp150312 '1))
                                    (let ((_%__splice149042149043%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl146795147100%_
                                              '1))))
                                      (let ((_%tl146804147121%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice149042149043%_
                                                '1)))
                                            (_%target146802147119%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice149042149043%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146804147121%_))
                                            (let ((_%e146811147124%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146804147121%_))))
                                              (let ((_%tl146813147129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146811147124%_)))
                                                    (_%hd146812147127%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146811147124%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd146812147127%_))
                                                    (let ((_%e146814147132%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd146812147127%_))))
                                                      (let ((_%tl146816147137%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e146814147132%_)))
                    (_%hd146815147135%_
                     (let () (declare (not safe)) (##car _%e146814147132%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd146815147135%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd146815147135%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl146816147137%_))
                            (let ((_%e146817147140%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl146816147137%_))))
                              (let ((_%tl146819147145%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e146817147140%_)))
                                    (_%hd146818147143%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e146817147140%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl146819147145%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl146813147129%_))
                                        (letrec ((_%loop146805147148%_
                                                  (lambda (_%hd146803147151%_
                                                           _%xarg146809147153%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd146803147151%_))
                                                        (let ((_%e146806147156%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd146803147151%_))))
                  (let ((_%lp-tl146808147161%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146806147156%_)))
                        (_%lp-hd146807147159%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146806147156%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd146807147159%_))
                        (let ((_%e146820147164%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd146807147159%_))))
                          (let ((_%tl146822147169%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146820147164%_)))
                                (_%hd146821147167%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146820147164%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146821147167%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd146821147167%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146822147169%_))
                                        (let ((_%e146823147172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146822147169%_))))
                                          (let ((_%tl146825147177%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146823147172%_)))
                                                (_%hd146824147175%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146823147172%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl146825147177%_))
                                                (_%loop146805147148%_
                                                 _%lp-tl146808147161%_
                                                 (cons _%hd146824147175%_
                                                       _%xarg146809147153%_))
                                                (_%__match149143149144%_
                                                 _%e146766147023%_
                                                 _%hd146767147026%_
                                                 _%tl146768147028%_
                                                 _%e146778147055%_
                                                 _%hd146779147058%_
                                                 _%tl146780147060%_
                                                 _%e146781147063%_
                                                 _%hd146782147066%_
                                                 _%tl146783147068%_
                                                 _%e146784147071%_
                                                 _%hd146785147074%_
                                                 _%tl146786147076%_
                                                 _%e146787147079%_
                                                 _%hd146788147082%_
                                                 _%tl146789147084%_
                                                 _%e146790147087%_
                                                 _%hd146791147090%_
                                                 _%tl146792147092%_
                                                 _%e146793147095%_
                                                 _%hd146794147098%_
                                                 _%tl146795147100%_
                                                 _%e146796147103%_
                                                 _%hd146797147106%_
                                                 _%tl146798147108%_
                                                 _%e146799147111%_
                                                 _%hd146800147114%_
                                                 _%tl146801147116%_))))
                                        (_%__match149143149144%_
                                         _%e146766147023%_
                                         _%hd146767147026%_
                                         _%tl146768147028%_
                                         _%e146778147055%_
                                         _%hd146779147058%_
                                         _%tl146780147060%_
                                         _%e146781147063%_
                                         _%hd146782147066%_
                                         _%tl146783147068%_
                                         _%e146784147071%_
                                         _%hd146785147074%_
                                         _%tl146786147076%_
                                         _%e146787147079%_
                                         _%hd146788147082%_
                                         _%tl146789147084%_
                                         _%e146790147087%_
                                         _%hd146791147090%_
                                         _%tl146792147092%_
                                         _%e146793147095%_
                                         _%hd146794147098%_
                                         _%tl146795147100%_
                                         _%e146796147103%_
                                         _%hd146797147106%_
                                         _%tl146798147108%_
                                         _%e146799147111%_
                                         _%hd146800147114%_
                                         _%tl146801147116%_))
                                    (_%__match149143149144%_
                                     _%e146766147023%_
                                     _%hd146767147026%_
                                     _%tl146768147028%_
                                     _%e146778147055%_
                                     _%hd146779147058%_
                                     _%tl146780147060%_
                                     _%e146781147063%_
                                     _%hd146782147066%_
                                     _%tl146783147068%_
                                     _%e146784147071%_
                                     _%hd146785147074%_
                                     _%tl146786147076%_
                                     _%e146787147079%_
                                     _%hd146788147082%_
                                     _%tl146789147084%_
                                     _%e146790147087%_
                                     _%hd146791147090%_
                                     _%tl146792147092%_
                                     _%e146793147095%_
                                     _%hd146794147098%_
                                     _%tl146795147100%_
                                     _%e146796147103%_
                                     _%hd146797147106%_
                                     _%tl146798147108%_
                                     _%e146799147111%_
                                     _%hd146800147114%_
                                     _%tl146801147116%_))
                                (_%__match149143149144%_
                                 _%e146766147023%_
                                 _%hd146767147026%_
                                 _%tl146768147028%_
                                 _%e146778147055%_
                                 _%hd146779147058%_
                                 _%tl146780147060%_
                                 _%e146781147063%_
                                 _%hd146782147066%_
                                 _%tl146783147068%_
                                 _%e146784147071%_
                                 _%hd146785147074%_
                                 _%tl146786147076%_
                                 _%e146787147079%_
                                 _%hd146788147082%_
                                 _%tl146789147084%_
                                 _%e146790147087%_
                                 _%hd146791147090%_
                                 _%tl146792147092%_
                                 _%e146793147095%_
                                 _%hd146794147098%_
                                 _%tl146795147100%_
                                 _%e146796147103%_
                                 _%hd146797147106%_
                                 _%tl146798147108%_
                                 _%e146799147111%_
                                 _%hd146800147114%_
                                 _%tl146801147116%_))))
                        (_%__match149143149144%_
                         _%e146766147023%_
                         _%hd146767147026%_
                         _%tl146768147028%_
                         _%e146778147055%_
                         _%hd146779147058%_
                         _%tl146780147060%_
                         _%e146781147063%_
                         _%hd146782147066%_
                         _%tl146783147068%_
                         _%e146784147071%_
                         _%hd146785147074%_
                         _%tl146786147076%_
                         _%e146787147079%_
                         _%hd146788147082%_
                         _%tl146789147084%_
                         _%e146790147087%_
                         _%hd146791147090%_
                         _%tl146792147092%_
                         _%e146793147095%_
                         _%hd146794147098%_
                         _%tl146795147100%_
                         _%e146796147103%_
                         _%hd146797147106%_
                         _%tl146798147108%_
                         _%e146799147111%_
                         _%hd146800147114%_
                         _%tl146801147116%_))))
                (let ((_%xarg146810147180%_ (reverse _%xarg146809147153%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl146780147060%_))
                      (let ((_%L147183%_ _%hd146818147143%_)
                            (_%L147184%_ _%xarg146810147180%_)
                            (_%L147185%_ _%hd146800147114%_)
                            (_%L147186%_ _%hd146791147090%_)
                            (_%L147187%_ _%tl146771147033%_)
                            (_%L147188%_ _%arg146777147052%_))
                        (if (and (let ((__tmp150313
                                        (let ((__tmp150314
                                               (lambda (_%g147231147234%_
                                                        _%g147232147236%_)
                                                 (cons _%g147231147234%_
                                                       _%g147232147236%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp150314
                                           '()
                                           _%L147188%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp150313))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L147187%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L147186%_
                                    'apply))
                                 (let ((__tmp150317
                                        (length (let ((__tmp150318
                                                       (lambda (_%g147238147241%_
                                                                _%g147239147243%_)
                                                         (cons _%g147238147241%_
                                                               _%g147239147243%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp150318
                                                   '()
                                                   _%L147188%_))))
                                       (__tmp150315
                                        (length (let ((__tmp150316
                                                       (lambda (_%g147245147248%_
                                                                _%g147246147250%_)
                                                         (cons _%g147245147248%_
                                                               _%g147246147250%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp150316
                                                   '()
                                                   _%L147184%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp150317 __tmp150315))
                                 (let ((__tmp150321
                                        (let ((__tmp150322
                                               (lambda (_%g147252147255%_
                                                        _%g147253147257%_)
                                                 (cons _%g147252147255%_
                                                       _%g147253147257%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp150322
                                           '()
                                           _%L147188%_)))
                                       (__tmp150319
                                        (let ((__tmp150320
                                               (lambda (_%g147259147262%_
                                                        _%g147260147264%_)
                                                 (cons _%g147259147262%_
                                                       _%g147260147264%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp150320
                                           '()
                                           _%L147184%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp150321
                                    __tmp150319))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L147187%_
                                    _%L147183%_))
                                 (not (let ((__tmp150326
                                             (lambda (_%g147266147268%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g147266147268%_
                                                  _%L147185%_))))
                                            (__tmp150323
                                             (let ((__tmp150325
                                                    (lambda (_%g147270147273%_
                                                             _%g147271147275%_)
                                                      (cons _%g147270147273%_
                                                            _%g147271147275%_)))
                                                   (__tmp150324
                                                    (cons _%L147187%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp150325
                                                __tmp150324
                                                _%L147188%_))))
                                        (declare (not safe))
                                        (__find __tmp150326 __tmp150323))))
                            (_%__kont149038149039%_
                             _%L147183%_
                             _%L147184%_
                             _%L147185%_
                             _%L147186%_
                             _%L147187%_
                             _%L147188%_)
                            (_%__match149143149144%_
                             _%e146766147023%_
                             _%hd146767147026%_
                             _%tl146768147028%_
                             _%e146778147055%_
                             _%hd146779147058%_
                             _%tl146780147060%_
                             _%e146781147063%_
                             _%hd146782147066%_
                             _%tl146783147068%_
                             _%e146784147071%_
                             _%hd146785147074%_
                             _%tl146786147076%_
                             _%e146787147079%_
                             _%hd146788147082%_
                             _%tl146789147084%_
                             _%e146790147087%_
                             _%hd146791147090%_
                             _%tl146792147092%_
                             _%e146793147095%_
                             _%hd146794147098%_
                             _%tl146795147100%_
                             _%e146796147103%_
                             _%hd146797147106%_
                             _%tl146798147108%_
                             _%e146799147111%_
                             _%hd146800147114%_
                             _%tl146801147116%_)))
                      (_%__match149143149144%_
                       _%e146766147023%_
                       _%hd146767147026%_
                       _%tl146768147028%_
                       _%e146778147055%_
                       _%hd146779147058%_
                       _%tl146780147060%_
                       _%e146781147063%_
                       _%hd146782147066%_
                       _%tl146783147068%_
                       _%e146784147071%_
                       _%hd146785147074%_
                       _%tl146786147076%_
                       _%e146787147079%_
                       _%hd146788147082%_
                       _%tl146789147084%_
                       _%e146790147087%_
                       _%hd146791147090%_
                       _%tl146792147092%_
                       _%e146793147095%_
                       _%hd146794147098%_
                       _%tl146795147100%_
                       _%e146796147103%_
                       _%hd146797147106%_
                       _%tl146798147108%_
                       _%e146799147111%_
                       _%hd146800147114%_
                       _%tl146801147116%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop146805147148%_
                                           _%target146802147119%_
                                           '()))
                                        (_%__match149143149144%_
                                         _%e146766147023%_
                                         _%hd146767147026%_
                                         _%tl146768147028%_
                                         _%e146778147055%_
                                         _%hd146779147058%_
                                         _%tl146780147060%_
                                         _%e146781147063%_
                                         _%hd146782147066%_
                                         _%tl146783147068%_
                                         _%e146784147071%_
                                         _%hd146785147074%_
                                         _%tl146786147076%_
                                         _%e146787147079%_
                                         _%hd146788147082%_
                                         _%tl146789147084%_
                                         _%e146790147087%_
                                         _%hd146791147090%_
                                         _%tl146792147092%_
                                         _%e146793147095%_
                                         _%hd146794147098%_
                                         _%tl146795147100%_
                                         _%e146796147103%_
                                         _%hd146797147106%_
                                         _%tl146798147108%_
                                         _%e146799147111%_
                                         _%hd146800147114%_
                                         _%tl146801147116%_))
                                    (_%__match149143149144%_
                                     _%e146766147023%_
                                     _%hd146767147026%_
                                     _%tl146768147028%_
                                     _%e146778147055%_
                                     _%hd146779147058%_
                                     _%tl146780147060%_
                                     _%e146781147063%_
                                     _%hd146782147066%_
                                     _%tl146783147068%_
                                     _%e146784147071%_
                                     _%hd146785147074%_
                                     _%tl146786147076%_
                                     _%e146787147079%_
                                     _%hd146788147082%_
                                     _%tl146789147084%_
                                     _%e146790147087%_
                                     _%hd146791147090%_
                                     _%tl146792147092%_
                                     _%e146793147095%_
                                     _%hd146794147098%_
                                     _%tl146795147100%_
                                     _%e146796147103%_
                                     _%hd146797147106%_
                                     _%tl146798147108%_
                                     _%e146799147111%_
                                     _%hd146800147114%_
                                     _%tl146801147116%_))))
                            (_%__match149143149144%_
                             _%e146766147023%_
                             _%hd146767147026%_
                             _%tl146768147028%_
                             _%e146778147055%_
                             _%hd146779147058%_
                             _%tl146780147060%_
                             _%e146781147063%_
                             _%hd146782147066%_
                             _%tl146783147068%_
                             _%e146784147071%_
                             _%hd146785147074%_
                             _%tl146786147076%_
                             _%e146787147079%_
                             _%hd146788147082%_
                             _%tl146789147084%_
                             _%e146790147087%_
                             _%hd146791147090%_
                             _%tl146792147092%_
                             _%e146793147095%_
                             _%hd146794147098%_
                             _%tl146795147100%_
                             _%e146796147103%_
                             _%hd146797147106%_
                             _%tl146798147108%_
                             _%e146799147111%_
                             _%hd146800147114%_
                             _%tl146801147116%_))
                        (_%__match149143149144%_
                         _%e146766147023%_
                         _%hd146767147026%_
                         _%tl146768147028%_
                         _%e146778147055%_
                         _%hd146779147058%_
                         _%tl146780147060%_
                         _%e146781147063%_
                         _%hd146782147066%_
                         _%tl146783147068%_
                         _%e146784147071%_
                         _%hd146785147074%_
                         _%tl146786147076%_
                         _%e146787147079%_
                         _%hd146788147082%_
                         _%tl146789147084%_
                         _%e146790147087%_
                         _%hd146791147090%_
                         _%tl146792147092%_
                         _%e146793147095%_
                         _%hd146794147098%_
                         _%tl146795147100%_
                         _%e146796147103%_
                         _%hd146797147106%_
                         _%tl146798147108%_
                         _%e146799147111%_
                         _%hd146800147114%_
                         _%tl146801147116%_))
                    (_%__match149143149144%_
                     _%e146766147023%_
                     _%hd146767147026%_
                     _%tl146768147028%_
                     _%e146778147055%_
                     _%hd146779147058%_
                     _%tl146780147060%_
                     _%e146781147063%_
                     _%hd146782147066%_
                     _%tl146783147068%_
                     _%e146784147071%_
                     _%hd146785147074%_
                     _%tl146786147076%_
                     _%e146787147079%_
                     _%hd146788147082%_
                     _%tl146789147084%_
                     _%e146790147087%_
                     _%hd146791147090%_
                     _%tl146792147092%_
                     _%e146793147095%_
                     _%hd146794147098%_
                     _%tl146795147100%_
                     _%e146796147103%_
                     _%hd146797147106%_
                     _%tl146798147108%_
                     _%e146799147111%_
                     _%hd146800147114%_
                     _%tl146801147116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match149143149144%_
                                                     _%e146766147023%_
                                                     _%hd146767147026%_
                                                     _%tl146768147028%_
                                                     _%e146778147055%_
                                                     _%hd146779147058%_
                                                     _%tl146780147060%_
                                                     _%e146781147063%_
                                                     _%hd146782147066%_
                                                     _%tl146783147068%_
                                                     _%e146784147071%_
                                                     _%hd146785147074%_
                                                     _%tl146786147076%_
                                                     _%e146787147079%_
                                                     _%hd146788147082%_
                                                     _%tl146789147084%_
                                                     _%e146790147087%_
                                                     _%hd146791147090%_
                                                     _%tl146792147092%_
                                                     _%e146793147095%_
                                                     _%hd146794147098%_
                                                     _%tl146795147100%_
                                                     _%e146796147103%_
                                                     _%hd146797147106%_
                                                     _%tl146798147108%_
                                                     _%e146799147111%_
                                                     _%hd146800147114%_
                                                     _%tl146801147116%_))))
                                            (_%__match149143149144%_
                                             _%e146766147023%_
                                             _%hd146767147026%_
                                             _%tl146768147028%_
                                             _%e146778147055%_
                                             _%hd146779147058%_
                                             _%tl146780147060%_
                                             _%e146781147063%_
                                             _%hd146782147066%_
                                             _%tl146783147068%_
                                             _%e146784147071%_
                                             _%hd146785147074%_
                                             _%tl146786147076%_
                                             _%e146787147079%_
                                             _%hd146788147082%_
                                             _%tl146789147084%_
                                             _%e146790147087%_
                                             _%hd146791147090%_
                                             _%tl146792147092%_
                                             _%e146793147095%_
                                             _%hd146794147098%_
                                             _%tl146795147100%_
                                             _%e146796147103%_
                                             _%hd146797147106%_
                                             _%tl146798147108%_
                                             _%e146799147111%_
                                             _%hd146800147114%_
                                             _%tl146801147116%_))))
                                    (_%__match149143149144%_
                                     _%e146766147023%_
                                     _%hd146767147026%_
                                     _%tl146768147028%_
                                     _%e146778147055%_
                                     _%hd146779147058%_
                                     _%tl146780147060%_
                                     _%e146781147063%_
                                     _%hd146782147066%_
                                     _%tl146783147068%_
                                     _%e146784147071%_
                                     _%hd146785147074%_
                                     _%tl146786147076%_
                                     _%e146787147079%_
                                     _%hd146788147082%_
                                     _%tl146789147084%_
                                     _%e146790147087%_
                                     _%hd146791147090%_
                                     _%tl146792147092%_
                                     _%e146793147095%_
                                     _%hd146794147098%_
                                     _%tl146795147100%_
                                     _%e146796147103%_
                                     _%hd146797147106%_
                                     _%tl146798147108%_
                                     _%e146799147111%_
                                     _%hd146800147114%_
                                     _%tl146801147116%_))
                                (_%__match149143149144%_
                                 _%e146766147023%_
                                 _%hd146767147026%_
                                 _%tl146768147028%_
                                 _%e146778147055%_
                                 _%hd146779147058%_
                                 _%tl146780147060%_
                                 _%e146781147063%_
                                 _%hd146782147066%_
                                 _%tl146783147068%_
                                 _%e146784147071%_
                                 _%hd146785147074%_
                                 _%tl146786147076%_
                                 _%e146787147079%_
                                 _%hd146788147082%_
                                 _%tl146789147084%_
                                 _%e146790147087%_
                                 _%hd146791147090%_
                                 _%tl146792147092%_
                                 _%e146793147095%_
                                 _%hd146794147098%_
                                 _%tl146795147100%_
                                 _%e146796147103%_
                                 _%hd146797147106%_
                                 _%tl146798147108%_
                                 _%e146799147111%_
                                 _%hd146800147114%_
                                 _%tl146801147116%_))
                            (_%__kont149046149047%_))))
                    (_%__kont149046149047%_))
                (_%__kont149046149047%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont149046149047%_))))
                                            (_%__kont149046149047%_))))
                                    (_%__kont149046149047%_))
                                (_%__kont149046149047%_))))
                        (_%__kont149046149047%_))
                    (_%__kont149046149047%_))
                (_%__kont149046149047%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont149046149047%_))))
                                        (_%__kont149046149047%_))
                                    (_%__kont149046149047%_))
                                (_%__kont149046149047%_))))
                        (_%__kont149046149047%_))))
                (_%__kont149046149047%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146772147036%_
                                     _%target146769147031%_
                                     '()))))
                               (_%__match149061149062%_
                                (lambda (_%e146718147283%_
                                         _%hd146719147286%_
                                         _%tl146720147288%_
                                         _%__splice149034149035%_
                                         _%target146721147291%_
                                         _%tl146723147293%_)
                                  (letrec ((_%loop146724147296%_
                                            (lambda (_%hd146722147299%_
                                                     _%arg146728147301%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146722147299%_))
                                                  (let ((_%e146725147304%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146722147299%_))))
                                                    (let ((_%lp-tl146727147309%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146725147304%_)))
                                                          (_%lp-hd146726147307%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146725147304%_))))
                                                      (_%loop146724147296%_
                                                       _%lp-tl146727147309%_
                                                       (cons _%lp-hd146726147307%_
                                                             _%arg146728147301%_))))
                                                  (let ((_%arg146729147312%_
                                                         (reverse _%arg146728147301%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146720147288%_))
                                                        (let ((_%e146730147315%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146720147288%_))))
                  (let ((_%tl146732147320%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146730147315%_)))
                        (_%hd146731147318%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146730147315%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146731147318%_))
                        (let ((_%e146733147323%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146731147318%_))))
                          (let ((_%tl146735147328%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146733147323%_)))
                                (_%hd146734147326%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146733147323%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146734147326%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146734147326%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146735147328%_))
                                        (let ((_%e146736147331%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146735147328%_))))
                                          (let ((_%tl146738147336%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146736147331%_)))
                                                (_%hd146737147334%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146736147331%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146737147334%_))
                                                (let ((_%e146739147339%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146737147334%_))))
                                                  (let ((_%tl146741147344%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146739147339%_)))
                                                        (_%hd146740147342%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146739147339%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146740147342%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146740147342%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146741147344%_))
                        (let ((_%e146742147347%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146741147344%_))))
                          (let ((_%tl146744147352%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146742147347%_)))
                                (_%hd146743147350%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146742147347%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146744147352%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl146738147336%_))
                                    (let ((_%__splice149036149037%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl146738147336%_
                                              '0))))
                                      (let ((_%tl146747147357%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice149036149037%_
                                                '1)))
                                            (_%target146745147355%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice149036149037%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl146747147357%_))
                                            (letrec ((_%loop146748147360%_
                                                      (lambda (_%hd146746147363%_
                                                               _%xarg146752147365%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd146746147363%_))
                                                            (let ((_%e146749147368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd146746147363%_))))
                      (let ((_%lp-tl146751147373%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146749147368%_)))
                            (_%lp-hd146750147371%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146749147368%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd146750147371%_))
                            (let ((_%e146754147376%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd146750147371%_))))
                              (let ((_%tl146756147381%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e146754147376%_)))
                                    (_%hd146755147379%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e146754147376%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd146755147379%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd146755147379%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146756147381%_))
                                            (let ((_%e146757147384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146756147381%_))))
                                              (let ((_%tl146759147389%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146757147384%_)))
                                                    (_%hd146758147387%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146757147384%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl146759147389%_))
                                                    (_%loop146748147360%_
                                                     _%lp-tl146751147373%_
                                                     (cons _%hd146758147387%_
                                                           _%xarg146752147365%_))
                                                    (_%__match149073149074%_
                                                     _%e146718147283%_
                                                     _%hd146719147286%_
                                                     _%tl146720147288%_
                                                     _%__splice149034149035%_
                                                     _%target146721147291%_
                                                     _%tl146723147293%_))))
                                            (_%__match149073149074%_
                                             _%e146718147283%_
                                             _%hd146719147286%_
                                             _%tl146720147288%_
                                             _%__splice149034149035%_
                                             _%target146721147291%_
                                             _%tl146723147293%_))
                                        (_%__match149073149074%_
                                         _%e146718147283%_
                                         _%hd146719147286%_
                                         _%tl146720147288%_
                                         _%__splice149034149035%_
                                         _%target146721147291%_
                                         _%tl146723147293%_))
                                    (_%__match149073149074%_
                                     _%e146718147283%_
                                     _%hd146719147286%_
                                     _%tl146720147288%_
                                     _%__splice149034149035%_
                                     _%target146721147291%_
                                     _%tl146723147293%_))))
                            (_%__match149073149074%_
                             _%e146718147283%_
                             _%hd146719147286%_
                             _%tl146720147288%_
                             _%__splice149034149035%_
                             _%target146721147291%_
                             _%tl146723147293%_))))
                    (let ((_%xarg146753147392%_
                           (reverse _%xarg146752147365%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl146732147320%_))
                          (let ((_%L147395%_ _%xarg146753147392%_)
                                (_%L147396%_ _%hd146743147350%_)
                                (_%L147397%_ _%arg146729147312%_))
                            (if (and (let ((__tmp150327
                                            (let ((__tmp150328
                                                   (lambda (_%g147425147428%_
                                                            _%g147426147430%_)
                                                     (cons _%g147425147428%_
                                                           _%g147426147430%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150328
                                               '()
                                               _%L147397%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp150327))
                                     (let ((__tmp150331
                                            (length (let ((__tmp150332
                                                           (lambda (_%g147432147435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g147433147437%_)
                     (cons _%g147432147435%_ _%g147433147437%_))))
              (declare (not safe))
              (__foldr1 __tmp150332 '() _%L147397%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp150329
                                            (length (let ((__tmp150330
                                                           (lambda (_%g147439147442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g147440147444%_)
                     (cons _%g147439147442%_ _%g147440147444%_))))
              (declare (not safe))
              (__foldr1 __tmp150330 '() _%L147395%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp150331 __tmp150329))
                                     (let ((__tmp150335
                                            (let ((__tmp150336
                                                   (lambda (_%g147446147449%_
                                                            _%g147447147451%_)
                                                     (cons _%g147446147449%_
                                                           _%g147447147451%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150336
                                               '()
                                               _%L147397%_)))
                                           (__tmp150333
                                            (let ((__tmp150334
                                                   (lambda (_%g147453147456%_
                                                            _%g147454147458%_)
                                                     (cons _%g147453147456%_
                                                           _%g147454147458%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150334
                                               '()
                                               _%L147395%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp150335
                                        __tmp150333))
                                     (not (let ((__tmp150339
                                                 (lambda (_%g147460147462%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g147460147462%_
                                                      _%L147396%_))))
                                                (__tmp150337
                                                 (let ((__tmp150338
                                                        (lambda (_%g147464147467%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g147465147469%_)
                  (cons _%g147464147467%_ _%g147465147469%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp150338
                                                    '()
                                                    _%L147397%_))))
                                            (declare (not safe))
                                            (__find __tmp150339 __tmp150337))))
                                (_%__kont149032149033%_
                                 _%L147395%_
                                 _%L147396%_
                                 _%L147397%_)
                                (_%__match149073149074%_
                                 _%e146718147283%_
                                 _%hd146719147286%_
                                 _%tl146720147288%_
                                 _%__splice149034149035%_
                                 _%target146721147291%_
                                 _%tl146723147293%_)))
                          (_%__match149073149074%_
                           _%e146718147283%_
                           _%hd146719147286%_
                           _%tl146720147288%_
                           _%__splice149034149035%_
                           _%target146721147291%_
                           _%tl146723147293%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop146748147360%_
                                               _%target146745147355%_
                                               '()))
                                            (_%__match149073149074%_
                                             _%e146718147283%_
                                             _%hd146719147286%_
                                             _%tl146720147288%_
                                             _%__splice149034149035%_
                                             _%target146721147291%_
                                             _%tl146723147293%_))))
                                    (_%__match149073149074%_
                                     _%e146718147283%_
                                     _%hd146719147286%_
                                     _%tl146720147288%_
                                     _%__splice149034149035%_
                                     _%target146721147291%_
                                     _%tl146723147293%_))
                                (_%__match149073149074%_
                                 _%e146718147283%_
                                 _%hd146719147286%_
                                 _%tl146720147288%_
                                 _%__splice149034149035%_
                                 _%target146721147291%_
                                 _%tl146723147293%_))))
                        (_%__match149073149074%_
                         _%e146718147283%_
                         _%hd146719147286%_
                         _%tl146720147288%_
                         _%__splice149034149035%_
                         _%target146721147291%_
                         _%tl146723147293%_))
                    (_%__match149073149074%_
                     _%e146718147283%_
                     _%hd146719147286%_
                     _%tl146720147288%_
                     _%__splice149034149035%_
                     _%target146721147291%_
                     _%tl146723147293%_))
                (_%__match149073149074%_
                 _%e146718147283%_
                 _%hd146719147286%_
                 _%tl146720147288%_
                 _%__splice149034149035%_
                 _%target146721147291%_
                 _%tl146723147293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match149073149074%_
                                                 _%e146718147283%_
                                                 _%hd146719147286%_
                                                 _%tl146720147288%_
                                                 _%__splice149034149035%_
                                                 _%target146721147291%_
                                                 _%tl146723147293%_))))
                                        (_%__match149073149074%_
                                         _%e146718147283%_
                                         _%hd146719147286%_
                                         _%tl146720147288%_
                                         _%__splice149034149035%_
                                         _%target146721147291%_
                                         _%tl146723147293%_))
                                    (_%__match149073149074%_
                                     _%e146718147283%_
                                     _%hd146719147286%_
                                     _%tl146720147288%_
                                     _%__splice149034149035%_
                                     _%target146721147291%_
                                     _%tl146723147293%_))
                                (_%__match149073149074%_
                                 _%e146718147283%_
                                 _%hd146719147286%_
                                 _%tl146720147288%_
                                 _%__splice149034149035%_
                                 _%target146721147291%_
                                 _%tl146723147293%_))))
                        (_%__match149073149074%_
                         _%e146718147283%_
                         _%hd146719147286%_
                         _%tl146720147288%_
                         _%__splice149034149035%_
                         _%target146721147291%_
                         _%tl146723147293%_))))
                (_%__match149073149074%_
                 _%e146718147283%_
                 _%hd146719147286%_
                 _%tl146720147288%_
                 _%__splice149034149035%_
                 _%target146721147291%_
                 _%tl146723147293%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146724147296%_
                                     _%target146721147291%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx149030149031%_))
                              (let ((_%e146718147283%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx149030149031%_))))
                                (let ((_%tl146720147288%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146718147283%_)))
                                      (_%hd146719147286%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146718147283%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd146719147286%_))
                                      (let ((_%__splice149034149035%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd146719147286%_
                                                '0))))
                                        (let ((_%tl146723147293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice149034149035%_
                                                  '1)))
                                              (_%target146721147291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice149034149035%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146723147293%_))
                                              (_%__match149061149062%_
                                               _%e146718147283%_
                                               _%hd146719147286%_
                                               _%tl146720147288%_
                                               _%__splice149034149035%_
                                               _%target146721147291%_
                                               _%tl146723147293%_)
                                              (_%__match149073149074%_
                                               _%e146718147283%_
                                               _%hd146719147286%_
                                               _%tl146720147288%_
                                               _%__splice149034149035%_
                                               _%target146721147291%_
                                               _%tl146723147293%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl146720147288%_))
                                          (let ((_%e146833146890%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl146720147288%_))))
                                            (let ((_%tl146835146895%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e146833146890%_)))
                                                  (_%hd146834146893%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e146833146890%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146834146893%_))
                                                  (let ((_%e146836146898%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146834146893%_))))
                                                    (let ((_%tl146838146903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146836146898%_)))
                                                          (_%hd146837146901%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146836146898%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd146837146901%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd146837146901%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146838146903%_))
                          (let ((_%e146839146906%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146838146903%_))))
                            (let ((_%tl146841146911%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146839146906%_)))
                                  (_%hd146840146909%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146839146906%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd146840146909%_))
                                  (let ((_%e146842146914%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd146840146909%_))))
                                    (let ((_%tl146844146919%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146842146914%_)))
                                          (_%hd146843146917%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146842146914%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd146843146917%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd146843146917%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl146844146919%_))
                                                  (let ((_%e146845146922%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl146844146919%_))))
                                                    (let ((_%tl146847146927%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146845146922%_)))
                                                          (_%hd146846146925%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146845146922%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146847146927%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl146841146911%_))
                      (let ((_%e146848146930%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl146841146911%_))))
                        (let ((_%tl146850146935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146848146930%_)))
                              (_%hd146849146933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146848146930%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd146849146933%_))
                              (let ((_%e146851146938%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd146849146933%_))))
                                (let ((_%tl146853146943%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146851146938%_)))
                                      (_%hd146852146941%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146851146938%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd146852146941%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd146852146941%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl146853146943%_))
                                              (let ((_%e146854146946%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl146853146943%_))))
                                                (let ((_%tl146856146951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146854146946%_)))
                                                      (_%hd146855146949%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146854146946%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146856146951%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl146850146935%_))
                                                          (let ((_%e146857146954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl146850146935%_))))
                    (let ((_%tl146859146959%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146857146954%_)))
                          (_%hd146858146957%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146857146954%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd146858146957%_))
                          (let ((_%e146860146962%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd146858146957%_))))
                            (let ((_%tl146862146967%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146860146962%_)))
                                  (_%hd146861146965%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146860146962%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd146861146965%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd146861146965%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl146862146967%_))
                                          (let ((_%e146863146970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl146862146967%_))))
                                            (let ((_%tl146865146975%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e146863146970%_)))
                                                  (_%hd146864146973%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e146863146970%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl146865146975%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146859146959%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146835146895%_))
                                                          (_%__match149171149172%_
                                                           _%e146718147283%_
                                                           _%hd146719147286%_
                                                           _%tl146720147288%_
                                                           _%e146833146890%_
                                                           _%hd146834146893%_
                                                           _%tl146835146895%_
                                                           _%e146836146898%_
                                                           _%hd146837146901%_
                                                           _%tl146838146903%_
                                                           _%e146839146906%_
                                                           _%hd146840146909%_
                                                           _%tl146841146911%_
                                                           _%e146842146914%_
                                                           _%hd146843146917%_
                                                           _%tl146844146919%_
                                                           _%e146845146922%_
                                                           _%hd146846146925%_
                                                           _%tl146847146927%_
                                                           _%e146848146930%_
                                                           _%hd146849146933%_
                                                           _%tl146850146935%_
                                                           _%e146851146938%_
                                                           _%hd146852146941%_
                                                           _%tl146853146943%_
                                                           _%e146854146946%_
                                                           _%hd146855146949%_
                                                           _%tl146856146951%_
                                                           _%e146857146954%_
                                                           _%hd146858146957%_
                                                           _%tl146859146959%_
                                                           _%e146860146962%_
                                                           _%hd146861146965%_
                                                           _%tl146862146967%_
                                                           _%e146863146970%_
                                                           _%hd146864146973%_
                                                           _%tl146865146975%_)
                                                          (_%__kont149046149047%_))
                                                      (_%__kont149046149047%_))
                                                  (_%__kont149046149047%_))))
                                          (_%__kont149046149047%_))
                                      (_%__kont149046149047%_))
                                  (_%__kont149046149047%_))))
                          (_%__kont149046149047%_))))
                  (_%__kont149046149047%_))
              (_%__kont149046149047%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont149046149047%_))
                                          (_%__kont149046149047%_))
                                      (_%__kont149046149047%_))))
                              (_%__kont149046149047%_))))
                      (_%__kont149046149047%_))
                  (_%__kont149046149047%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont149046149047%_))
                                              (_%__kont149046149047%_))
                                          (_%__kont149046149047%_))))
                                  (_%__kont149046149047%_))))
                          (_%__kont149046149047%_))
                      (_%__kont149046149047%_))
                  (_%__kont149046149047%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont149046149047%_))))
                                          (_%__kont149046149047%_)))))
                              (_%__kont149046149047%_)))))))
                 (_%dispatch-case-e146018%_
                  (lambda (_%hd146169%_ _%body146170%_)
                    (let* ((_%form146172%_
                            (cons _%hd146169%_ (cons _%body146170%_ '())))
                           (_%__stx149174149175%_ _%form146172%_)
                           (_%g146176146300%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx149174149175%_)))))
                      (let ((_%__kont149176149177%_
                             (lambda (_%L146671%_ _%L146672%_ _%L146673%_)
                               (let ((__tmp150340
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L146672%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self146014%_
                                  __tmp150340))))
                            (_%__kont149182149183%_
                             (lambda (_%L146519%_
                                      _%L146520%_
                                      _%L146521%_
                                      _%L146522%_)
                               (let ((__tmp150341
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L146519%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self146014%_
                                  __tmp150341))))
                            (_%__kont149186149187%_
                             (lambda (_%L146385%_ _%L146386%_ _%L146387%_)
                               (let ((__tmp150342
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L146385%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self146014%_
                                  __tmp150342)))))
                        (let* ((_%__match149283149284%_
                                (lambda (_%e146266146305%_
                                         _%hd146267146308%_
                                         _%tl146268146310%_
                                         _%e146269146313%_
                                         _%hd146270146316%_
                                         _%tl146271146318%_
                                         _%e146272146321%_
                                         _%hd146273146324%_
                                         _%tl146274146326%_
                                         _%e146275146329%_
                                         _%hd146276146332%_
                                         _%tl146277146334%_
                                         _%e146278146337%_
                                         _%hd146279146340%_
                                         _%tl146280146342%_
                                         _%e146281146345%_
                                         _%hd146282146348%_
                                         _%tl146283146350%_
                                         _%e146284146353%_
                                         _%hd146285146356%_
                                         _%tl146286146358%_
                                         _%e146287146361%_
                                         _%hd146288146364%_
                                         _%tl146289146366%_
                                         _%e146290146369%_
                                         _%hd146291146372%_
                                         _%tl146292146374%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146286146358%_))
                                      (let ((_%e146293146377%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146286146358%_))))
                                        (let ((_%tl146295146382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146293146377%_)))
                                              (_%hd146294146380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146293146377%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146295146382%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl146271146318%_))
                                                  (_%__kont149186149187%_
                                                   _%hd146291146372%_
                                                   _%hd146282146348%_
                                                   _%hd146267146308%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g146176146300%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g146176146300%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g146176146300%_)))))
                               (_%__match149213149214%_
                                (lambda (_%e146227146423%_
                                         _%hd146228146426%_
                                         _%tl146229146428%_
                                         _%__splice149184149185%_
                                         _%target146230146431%_
                                         _%tl146232146433%_)
                                  (letrec ((_%loop146233146436%_
                                            (lambda (_%hd146231146439%_
                                                     _%arg146237146441%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146231146439%_))
                                                  (let ((_%e146234146444%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146231146439%_))))
                                                    (let ((_%lp-tl146236146449%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146234146444%_)))
                                                          (_%lp-hd146235146447%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146234146444%_))))
                                                      (_%loop146233146436%_
                                                       _%lp-tl146236146449%_
                                                       (cons _%lp-hd146235146447%_
                                                             _%arg146237146441%_))))
                                                  (let ((_%arg146238146452%_
                                                         (reverse _%arg146237146441%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146229146428%_))
                                                        (let ((_%e146239146455%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146229146428%_))))
                  (let ((_%tl146241146460%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146239146455%_)))
                        (_%hd146240146458%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146239146455%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146240146458%_))
                        (let ((_%e146242146463%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146240146458%_))))
                          (let ((_%tl146244146468%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146242146463%_)))
                                (_%hd146243146466%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146242146463%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146243146466%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146243146466%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146244146468%_))
                                        (let ((_%e146245146471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146244146468%_))))
                                          (let ((_%tl146247146476%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146245146471%_)))
                                                (_%hd146246146474%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146245146471%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146246146474%_))
                                                (let ((_%e146248146479%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146246146474%_))))
                                                  (let ((_%tl146250146484%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146248146479%_)))
                                                        (_%hd146249146482%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146248146479%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146249146482%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146249146482%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146250146484%_))
                        (let ((_%e146251146487%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146250146484%_))))
                          (let ((_%tl146253146492%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146251146487%_)))
                                (_%hd146252146490%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146251146487%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146253146492%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl146247146476%_))
                                    (let ((_%e146254146495%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl146247146476%_))))
                                      (let ((_%tl146256146500%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e146254146495%_)))
                                            (_%hd146255146498%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e146254146495%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd146255146498%_))
                                            (let ((_%e146257146503%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd146255146498%_))))
                                              (let ((_%tl146259146508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146257146503%_)))
                                                    (_%hd146258146506%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146257146503%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd146258146506%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd146258146506%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl146259146508%_))
                                                            (let ((_%e146260146511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl146259146508%_))))
                      (let ((_%tl146262146516%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146260146511%_)))
                            (_%hd146261146514%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146260146511%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl146262146516%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146241146460%_))
                                (_%__kont149182149183%_
                                 _%hd146261146514%_
                                 _%hd146252146490%_
                                 _%tl146232146433%_
                                 _%arg146238146452%_)
                                (_%__match149283149284%_
                                 _%e146227146423%_
                                 _%hd146228146426%_
                                 _%tl146229146428%_
                                 _%e146239146455%_
                                 _%hd146240146458%_
                                 _%tl146241146460%_
                                 _%e146242146463%_
                                 _%hd146243146466%_
                                 _%tl146244146468%_
                                 _%e146245146471%_
                                 _%hd146246146474%_
                                 _%tl146247146476%_
                                 _%e146248146479%_
                                 _%hd146249146482%_
                                 _%tl146250146484%_
                                 _%e146251146487%_
                                 _%hd146252146490%_
                                 _%tl146253146492%_
                                 _%e146254146495%_
                                 _%hd146255146498%_
                                 _%tl146256146500%_
                                 _%e146257146503%_
                                 _%hd146258146506%_
                                 _%tl146259146508%_
                                 _%e146260146511%_
                                 _%hd146261146514%_
                                 _%tl146262146516%_))
                            (let ()
                              (declare (not safe))
                              (_%g146176146300%_)))))
                    (let () (declare (not safe)) (_%g146176146300%_)))
                (let () (declare (not safe)) (_%g146176146300%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g146176146300%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g146176146300%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g146176146300%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g146176146300%_)))))
                        (let () (declare (not safe)) (_%g146176146300%_)))
                    (let () (declare (not safe)) (_%g146176146300%_)))
                (let () (declare (not safe)) (_%g146176146300%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g146176146300%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g146176146300%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g146176146300%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g146176146300%_)))))
                        (let () (declare (not safe)) (_%g146176146300%_)))))
                (let () (declare (not safe)) (_%g146176146300%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146233146436%_
                                     _%target146230146431%_
                                     '()))))
                               (_%__match149201149202%_
                                (lambda (_%e146181146559%_
                                         _%hd146182146562%_
                                         _%tl146183146564%_
                                         _%__splice149178149179%_
                                         _%target146184146567%_
                                         _%tl146186146569%_)
                                  (letrec ((_%loop146187146572%_
                                            (lambda (_%hd146185146575%_
                                                     _%arg146191146577%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146185146575%_))
                                                  (let ((_%e146188146580%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146185146575%_))))
                                                    (let ((_%lp-tl146190146585%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146188146580%_)))
                                                          (_%lp-hd146189146583%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146188146580%_))))
                                                      (_%loop146187146572%_
                                                       _%lp-tl146190146585%_
                                                       (cons _%lp-hd146189146583%_
                                                             _%arg146191146577%_))))
                                                  (let ((_%arg146192146588%_
                                                         (reverse _%arg146191146577%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl146183146564%_))
                                                        (let ((_%e146193146591%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl146183146564%_))))
                  (let ((_%tl146195146596%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e146193146591%_)))
                        (_%hd146194146594%_
                         (let ()
                           (declare (not safe))
                           (##car _%e146193146591%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd146194146594%_))
                        (let ((_%e146196146599%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd146194146594%_))))
                          (let ((_%tl146198146604%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146196146599%_)))
                                (_%hd146197146602%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146196146599%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd146197146602%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd146197146602%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl146198146604%_))
                                        (let ((_%e146199146607%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl146198146604%_))))
                                          (let ((_%tl146201146612%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146199146607%_)))
                                                (_%hd146200146610%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146199146607%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd146200146610%_))
                                                (let ((_%e146202146615%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146200146610%_))))
                                                  (let ((_%tl146204146620%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e146202146615%_)))
                                                        (_%hd146203146618%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e146202146615%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd146203146618%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd146203146618%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl146204146620%_))
                        (let ((_%e146205146623%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl146204146620%_))))
                          (let ((_%tl146207146628%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146205146623%_)))
                                (_%hd146206146626%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146205146623%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl146207146628%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl146201146612%_))
                                    (let ((_%__splice149180149181%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl146201146612%_
                                              '0))))
                                      (let ((_%tl146210146633%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice149180149181%_
                                                '1)))
                                            (_%target146208146631%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice149180149181%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl146210146633%_))
                                            (letrec ((_%loop146211146636%_
                                                      (lambda (_%hd146209146639%_
                                                               _%xarg146215146641%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd146209146639%_))
                                                            (let ((_%e146212146644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd146209146639%_))))
                      (let ((_%lp-tl146214146649%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e146212146644%_)))
                            (_%lp-hd146213146647%_
                             (let ()
                               (declare (not safe))
                               (##car _%e146212146644%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd146213146647%_))
                            (let ((_%e146217146652%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd146213146647%_))))
                              (let ((_%tl146219146657%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e146217146652%_)))
                                    (_%hd146218146655%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e146217146652%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd146218146655%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd146218146655%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146219146657%_))
                                            (let ((_%e146220146660%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146219146657%_))))
                                              (let ((_%tl146222146665%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146220146660%_)))
                                                    (_%hd146221146663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146220146660%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl146222146665%_))
                                                    (_%loop146211146636%_
                                                     _%lp-tl146214146649%_
                                                     (cons _%hd146221146663%_
                                                           _%xarg146215146641%_))
                                                    (_%__match149213149214%_
                                                     _%e146181146559%_
                                                     _%hd146182146562%_
                                                     _%tl146183146564%_
                                                     _%__splice149178149179%_
                                                     _%target146184146567%_
                                                     _%tl146186146569%_))))
                                            (_%__match149213149214%_
                                             _%e146181146559%_
                                             _%hd146182146562%_
                                             _%tl146183146564%_
                                             _%__splice149178149179%_
                                             _%target146184146567%_
                                             _%tl146186146569%_))
                                        (_%__match149213149214%_
                                         _%e146181146559%_
                                         _%hd146182146562%_
                                         _%tl146183146564%_
                                         _%__splice149178149179%_
                                         _%target146184146567%_
                                         _%tl146186146569%_))
                                    (_%__match149213149214%_
                                     _%e146181146559%_
                                     _%hd146182146562%_
                                     _%tl146183146564%_
                                     _%__splice149178149179%_
                                     _%target146184146567%_
                                     _%tl146186146569%_))))
                            (_%__match149213149214%_
                             _%e146181146559%_
                             _%hd146182146562%_
                             _%tl146183146564%_
                             _%__splice149178149179%_
                             _%target146184146567%_
                             _%tl146186146569%_))))
                    (let ((_%xarg146216146668%_
                           (reverse _%xarg146215146641%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl146195146596%_))
                          (_%__kont149176149177%_
                           _%xarg146216146668%_
                           _%hd146206146626%_
                           _%arg146192146588%_)
                          (_%__match149213149214%_
                           _%e146181146559%_
                           _%hd146182146562%_
                           _%tl146183146564%_
                           _%__splice149178149179%_
                           _%target146184146567%_
                           _%tl146186146569%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop146211146636%_
                                               _%target146208146631%_
                                               '()))
                                            (_%__match149213149214%_
                                             _%e146181146559%_
                                             _%hd146182146562%_
                                             _%tl146183146564%_
                                             _%__splice149178149179%_
                                             _%target146184146567%_
                                             _%tl146186146569%_))))
                                    (_%__match149213149214%_
                                     _%e146181146559%_
                                     _%hd146182146562%_
                                     _%tl146183146564%_
                                     _%__splice149178149179%_
                                     _%target146184146567%_
                                     _%tl146186146569%_))
                                (_%__match149213149214%_
                                 _%e146181146559%_
                                 _%hd146182146562%_
                                 _%tl146183146564%_
                                 _%__splice149178149179%_
                                 _%target146184146567%_
                                 _%tl146186146569%_))))
                        (_%__match149213149214%_
                         _%e146181146559%_
                         _%hd146182146562%_
                         _%tl146183146564%_
                         _%__splice149178149179%_
                         _%target146184146567%_
                         _%tl146186146569%_))
                    (_%__match149213149214%_
                     _%e146181146559%_
                     _%hd146182146562%_
                     _%tl146183146564%_
                     _%__splice149178149179%_
                     _%target146184146567%_
                     _%tl146186146569%_))
                (_%__match149213149214%_
                 _%e146181146559%_
                 _%hd146182146562%_
                 _%tl146183146564%_
                 _%__splice149178149179%_
                 _%target146184146567%_
                 _%tl146186146569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match149213149214%_
                                                 _%e146181146559%_
                                                 _%hd146182146562%_
                                                 _%tl146183146564%_
                                                 _%__splice149178149179%_
                                                 _%target146184146567%_
                                                 _%tl146186146569%_))))
                                        (_%__match149213149214%_
                                         _%e146181146559%_
                                         _%hd146182146562%_
                                         _%tl146183146564%_
                                         _%__splice149178149179%_
                                         _%target146184146567%_
                                         _%tl146186146569%_))
                                    (_%__match149213149214%_
                                     _%e146181146559%_
                                     _%hd146182146562%_
                                     _%tl146183146564%_
                                     _%__splice149178149179%_
                                     _%target146184146567%_
                                     _%tl146186146569%_))
                                (_%__match149213149214%_
                                 _%e146181146559%_
                                 _%hd146182146562%_
                                 _%tl146183146564%_
                                 _%__splice149178149179%_
                                 _%target146184146567%_
                                 _%tl146186146569%_))))
                        (_%__match149213149214%_
                         _%e146181146559%_
                         _%hd146182146562%_
                         _%tl146183146564%_
                         _%__splice149178149179%_
                         _%target146184146567%_
                         _%tl146186146569%_))))
                (_%__match149213149214%_
                 _%e146181146559%_
                 _%hd146182146562%_
                 _%tl146183146564%_
                 _%__splice149178149179%_
                 _%target146184146567%_
                 _%tl146186146569%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop146187146572%_
                                     _%target146184146567%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx149174149175%_))
                              (let ((_%e146181146559%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx149174149175%_))))
                                (let ((_%tl146183146564%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146181146559%_)))
                                      (_%hd146182146562%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146181146559%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd146182146562%_))
                                      (let ((_%__splice149178149179%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd146182146562%_
                                                '0))))
                                        (let ((_%tl146186146569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice149178149179%_
                                                  '1)))
                                              (_%target146184146567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice149178149179%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146186146569%_))
                                              (_%__match149201149202%_
                                               _%e146181146559%_
                                               _%hd146182146562%_
                                               _%tl146183146564%_
                                               _%__splice149178149179%_
                                               _%target146184146567%_
                                               _%tl146186146569%_)
                                              (_%__match149213149214%_
                                               _%e146181146559%_
                                               _%hd146182146562%_
                                               _%tl146183146564%_
                                               _%__splice149178149179%_
                                               _%target146184146567%_
                                               _%tl146186146569%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl146183146564%_))
                                          (let ((_%e146269146313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl146183146564%_))))
                                            (let ((_%tl146271146318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e146269146313%_)))
                                                  (_%hd146270146316%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e146269146313%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd146270146316%_))
                                                  (let ((_%e146272146321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd146270146316%_))))
                                                    (let ((_%tl146274146326%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146272146321%_)))
                                                          (_%hd146273146324%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146272146321%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd146273146324%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd146273146324%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146274146326%_))
                          (let ((_%e146275146329%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146274146326%_))))
                            (let ((_%tl146277146334%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146275146329%_)))
                                  (_%hd146276146332%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146275146329%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd146276146332%_))
                                  (let ((_%e146278146337%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd146276146332%_))))
                                    (let ((_%tl146280146342%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146278146337%_)))
                                          (_%hd146279146340%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146278146337%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd146279146340%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd146279146340%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl146280146342%_))
                                                  (let ((_%e146281146345%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl146280146342%_))))
                                                    (let ((_%tl146283146350%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e146281146345%_)))
                                                          (_%hd146282146348%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e146281146345%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl146283146350%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl146277146334%_))
                      (let ((_%e146284146353%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl146277146334%_))))
                        (let ((_%tl146286146358%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146284146353%_)))
                              (_%hd146285146356%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146284146353%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd146285146356%_))
                              (let ((_%e146287146361%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd146285146356%_))))
                                (let ((_%tl146289146366%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146287146361%_)))
                                      (_%hd146288146364%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146287146361%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd146288146364%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd146288146364%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl146289146366%_))
                                              (let ((_%e146290146369%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl146289146366%_))))
                                                (let ((_%tl146292146374%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146290146369%_)))
                                                      (_%hd146291146372%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146290146369%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146292146374%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl146286146358%_))
                                                          (let ((_%e146293146377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl146286146358%_))))
                    (let ((_%tl146295146382%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146293146377%_)))
                          (_%hd146294146380%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146293146377%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl146295146382%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl146271146318%_))
                              (_%__kont149186149187%_
                               _%hd146291146372%_
                               _%hd146282146348%_
                               _%hd146182146562%_)
                              (let ()
                                (declare (not safe))
                                (_%g146176146300%_)))
                          (let () (declare (not safe)) (_%g146176146300%_)))))
                  (let () (declare (not safe)) (_%g146176146300%_)))
              (let () (declare (not safe)) (_%g146176146300%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g146176146300%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g146176146300%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g146176146300%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g146176146300%_)))))
                      (let () (declare (not safe)) (_%g146176146300%_)))
                  (let () (declare (not safe)) (_%g146176146300%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g146176146300%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g146176146300%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g146176146300%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g146176146300%_)))))
                          (let () (declare (not safe)) (_%g146176146300%_)))
                      (let () (declare (not safe)) (_%g146176146300%_)))
                  (let () (declare (not safe)) (_%g146176146300%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g146176146300%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g146176146300%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g146176146300%_))))))))
                 (_%generate1146019%_
                  (lambda (_%args146154%_
                           _%arglen146155%_
                           _%hd146156%_
                           _%body146157%_)
                    (let* ((_%len146159%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd146156%_)))
                           (_%condition146164%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd146156%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen146155%_
                                                (cons _%len146159%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen146155%_ (cons _%len146159%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len146159%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen146155%_
                                                    (cons _%len146159%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen146155%_ (cons _%len146159%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch146166%_
                            (if (_%dispatch-case?146017%_
                                 _%hd146156%_
                                 _%body146157%_)
                                (_%dispatch-case-e146018%_
                                 _%hd146156%_
                                 _%body146157%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self146014%_
                                 _%hd146156%_
                                 _%body146157%_))))
                      (cons _%condition146164%_
                            (cons (cons 'apply
                                        (cons _%dispatch146166%_
                                              (cons _%args146154%_ '())))
                                  '()))))))
          (let* ((_%g146021146049%_
                  (lambda (_%g146022146046%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g146022146046%_))))
                 (_%g146020146151%_
                  (lambda (_%g146022146052%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g146022146052%_))
                        (let ((_%e146025146054%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g146022146052%_))))
                          (let ((_%hd146026146057%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146025146054%_)))
                                (_%tl146027146059%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146025146054%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl146027146059%_))
                                (let ((_g150343_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl146027146059%_
                                          '0))))
                                  (begin
                                    (let ((_g150344_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g150343_)
                                                 (##values-length _g150343_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g150344_ 2)))
                                          (error "Context expects 2 values"
                                                 _g150344_)))
                                    (let ((_%target146028146062%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150343_ 0)))
                                          (_%tl146030146064%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150343_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl146030146064%_))
                                          (letrec ((_%loop146031146067%_
                                                    (lambda (_%hd146029146070%_
                                                             _%body146035146072%_
                                                             _%hd146036146074%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd146029146070%_))
                                                          (let ((_%e146032146077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd146029146070%_))))
                    (let ((_%lp-hd146033146080%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146032146077%_)))
                          (_%lp-tl146034146082%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146032146077%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd146033146080%_))
                          (let ((_%e146039146085%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd146033146080%_))))
                            (let ((_%hd146040146088%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146039146085%_)))
                                  (_%tl146041146090%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146039146085%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl146041146090%_))
                                  (let ((_%e146042146093%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl146041146090%_))))
                                    (let ((_%hd146043146096%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146042146093%_)))
                                          (_%tl146044146098%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146042146093%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl146044146098%_))
                                          (_%loop146031146067%_
                                           _%lp-tl146034146082%_
                                           (cons _%hd146043146096%_
                                                 _%body146035146072%_)
                                           (cons _%hd146040146088%_
                                                 _%hd146036146074%_))
                                          (_%g146021146049%_
                                           _%g146022146052%_))))
                                  (_%g146021146049%_ _%g146022146052%_))))
                          (_%g146021146049%_ _%g146022146052%_))))
                  (let ((_%body146037146101%_ (reverse _%body146035146072%_))
                        (_%hd146038146103%_ (reverse _%hd146036146074%_)))
                    ((lambda (_%L146106%_ _%L146107%_)
                       (let ((_%args146126%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen146127%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name146128%_
                              (let ((_%$e146123%_
                                     (let ((__tmp150345
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp150345 _%stx146015%_))))
                                (if _%$e146123%_
                                    _%$e146123%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args146126%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen146127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args146126%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args146126%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp150349
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name146128%_
                                                                (cons _%args146126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp150346
                                  (map (lambda (_%g146129146132%_
                                                _%g146130146134%_)
                                         (_%generate1146019%_
                                          _%args146126%_
                                          _%arglen146127%_
                                          _%g146129146132%_
                                          _%g146130146134%_))
                                       (let ((__tmp150347
                                              (lambda (_%g146136146139%_
                                                       _%g146137146141%_)
                                                (cons _%g146136146139%_
                                                      _%g146137146141%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp150347
                                          '()
                                          _%L146107%_))
                                       (let ((__tmp150348
                                              (lambda (_%g146143146146%_
                                                       _%g146144146148%_)
                                                (cons _%g146143146146%_
                                                      _%g146144146148%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp150348
                                          '()
                                          _%L146106%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp150349 __tmp150346)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body146037146101%_
                     _%hd146038146103%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop146031146067%_
                                             _%target146028146062%_
                                             '()
                                             '()))
                                          (_%g146021146049%_
                                           _%g146022146052%_)))))
                                (_%g146021146049%_ _%g146022146052%_))))
                        (_%g146021146049%_ _%g146022146052%_)))))
            (_%g146020146151%_ _%stx146015%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self145251%_ _%stx145252%_ _%compiled-body?145253%_)
        (letrec ((_%generate-simple145255%_
                  (lambda (_%hd145999%_ _%body146000%_)
                    (_%coalesce-boolean145256%_
                     (_%simplify-let145257%_
                      (gxc#generate-runtime-simple-let
                       _%self145251%_
                       'let
                       _%hd145999%_
                       _%body146000%_
                       _%compiled-body?145253%_)))))
                 (_%coalesce-boolean145256%_
                  (lambda (_%code145860%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code145861145887%_ _%code145860%_)
                               (_%else145863145895%_
                                (lambda () _%code145860%_))
                               (_%K145865145932%_
                                (lambda (_%expr2145898%_
                                         _%expr1145899%_
                                         _%id145900%_)
                                  (let* ((_%expr2145901145909%_
                                          _%expr2145898%_)
                                         (_%else145903145917%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1145899%_
                                                        (cons _%expr2145898%_
                                                              '())))))
                                         (_%K145905145922%_
                                          (lambda (_%exprs145920%_)
                                            (cons 'or
                                                  (cons _%expr1145899%_
                                                        _%exprs145920%_)))))
                                    (if (pair? _%expr2145901145909%_)
                                        (let ((_%hd145906145925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2145901145909%_)))
                                              (_%tl145907145927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2145901145909%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd145906145925%_ 'or))
                                              (let ((_%exprs145930%_
                                                     _%tl145907145927%_))
                                                (_%K145905145922%_
                                                 _%exprs145930%_))
                                              (_%else145903145917%_)))
                                        (_%else145903145917%_))))))
                          (if (pair? _%code145861145887%_)
                              (let ((_%hd145866145935%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code145861145887%_)))
                                    (_%tl145867145937%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code145861145887%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd145866145935%_ 'let))
                                    (if (pair? _%tl145867145937%_)
                                        (let ((_%hd145868145940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl145867145937%_)))
                                              (_%tl145869145942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl145867145937%_))))
                                          (if (pair? _%hd145868145940%_)
                                              (let ((_%hd145880145945%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd145868145940%_)))
                                                    (_%tl145881145947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd145868145940%_))))
                                                (if (pair? _%hd145880145945%_)
                                                    (let ((_%hd145882145950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd145880145945%_)))
                                                          (_%tl145883145952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd145880145945%_))))
                                                      (let ((_%id145955%_
                                                             _%hd145882145950%_))
                                                        (if (pair? _%tl145883145952%_)
                                                            (let ((_%hd145884145957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl145883145952%_)))
                          (_%tl145885145959%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl145883145952%_))))
                      (let ((_%expr1145962%_ _%hd145884145957%_))
                        (if (null? _%tl145885145959%_)
                            (if (null? _%tl145881145947%_)
                                (if (pair? _%tl145869145942%_)
                                    (let ((_%hd145870145964%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl145869145942%_)))
                                          (_%tl145871145966%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl145869145942%_))))
                                      (if (pair? _%hd145870145964%_)
                                          (let ((_%hd145872145969%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd145870145964%_)))
                                                (_%tl145873145971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd145870145964%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd145872145969%_
                                                         'if))
                                                (if (pair? _%tl145873145971%_)
                                                    (let ((_%hd145874145974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl145873145971%_)))
                                                          (_%tl145875145976%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl145873145971%_))))
                                                      (if ((lambda (_%g145978145980%_)
                                                             (eq? _%g145978145980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id145955%_))
                   _%hd145874145974%_)
                  (if (pair? _%tl145875145976%_)
                      (let ((_%hd145876145983%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl145875145976%_)))
                            (_%tl145877145985%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl145875145976%_))))
                        (if ((lambda (_%g145987145989%_)
                               (eq? _%g145987145989%_ _%id145955%_))
                             _%hd145876145983%_)
                            (if (pair? _%tl145877145985%_)
                                (let ((_%hd145878145992%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl145877145985%_)))
                                      (_%tl145879145994%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl145877145985%_))))
                                  (let ((_%expr2145997%_ _%hd145878145992%_))
                                    (if (null? _%tl145879145994%_)
                                        (if (null? _%tl145871145966%_)
                                            (_%K145865145932%_
                                             _%expr2145997%_
                                             _%expr1145962%_
                                             _%id145955%_)
                                            (_%else145863145895%_))
                                        (_%else145863145895%_))))
                                (_%else145863145895%_))
                            (_%else145863145895%_)))
                      (_%else145863145895%_))
                  (_%else145863145895%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else145863145895%_))
                                                (_%else145863145895%_)))
                                          (_%else145863145895%_)))
                                    (_%else145863145895%_))
                                (_%else145863145895%_))
                            (_%else145863145895%_))))
                    (_%else145863145895%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else145863145895%_)))
                                              (_%else145863145895%_)))
                                        (_%else145863145895%_))
                                    (_%else145863145895%_)))
                              (_%else145863145895%_)))
                        _%code145860%_)))
                 (_%simplify-let145257%_
                  (lambda (_%code145559%_)
                    (let* ((_%code145560145632%_ _%code145559%_)
                           (_%else145565145640%_ (lambda () _%code145559%_)))
                      (let ((_%K145624145840%_
                             (lambda (_%expr145838%_) _%expr145838%_))
                            (_%K145607145786%_
                             (lambda (_%body145782%_
                                      _%expr145783%_
                                      _%id145784%_)
                               (cons 'let
                                     (cons (cons (cons _%id145784%_
                                                       (cons _%expr145783%_
                                                             '()))
                                                 '())
                                           _%body145782%_))))
                            (_%K145584145710%_
                             (lambda (_%body145704%_
                                      _%expr2145705%_
                                      _%id2145706%_
                                      _%expr1145707%_
                                      _%id1145708%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1145708%_
                                                       (cons _%expr1145707%_
                                                             '()))
                                                 (cons (cons _%id2145706%_
                                                             (cons _%expr2145705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body145704%_))))
                            (_%K145567145649%_
                             (lambda (_%body145644%_
                                      _%bind145645%_
                                      _%expr1145646%_
                                      _%id1145647%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1145647%_
                                                       (cons _%expr1145646%_
                                                             '()))
                                                 _%bind145645%_)
                                           _%body145644%_)))))
                        (if (pair? _%code145560145632%_)
                            (let ((_%tl145626145845%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code145560145632%_)))
                                  (_%hd145625145843%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code145560145632%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd145625145843%_ 'let))
                                  (if (pair? _%tl145626145845%_)
                                      (let ((_%tl145628145850%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl145626145845%_)))
                                            (_%hd145627145848%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl145626145845%_))))
                                        (if (null? _%hd145627145848%_)
                                            (if (pair? _%tl145628145850%_)
                                                (let ((_%tl145630145855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl145628145850%_)))
                                                      (_%hd145629145853%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl145628145850%_))))
                                                  (if (null? _%tl145630145855%_)
                                                      (let ((_%expr145858%_
                                                             _%hd145629145853%_))
                                                        (_%K145624145840%_
                                                         _%expr145858%_))
                                                      (_%else145565145640%_)))
                                                (_%else145565145640%_))
                                            (if (pair? _%hd145627145848%_)
                                                (let ((_%tl145619145801%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd145627145848%_)))
                                                      (_%hd145618145799%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd145627145848%_))))
                                                  (if (pair? _%hd145618145799%_)
                                                      (let ((_%tl145621145806%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd145618145799%_)))
                    (_%hd145620145804%_
                     (let () (declare (not safe)) (##car _%hd145618145799%_))))
                (if (pair? _%tl145621145806%_)
                    (let ((_%tl145623145813%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl145621145806%_)))
                          (_%hd145622145811%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl145621145806%_))))
                      (if (null? _%tl145623145813%_)
                          (if (null? _%tl145619145801%_)
                              (if (pair? _%tl145628145850%_)
                                  (let ((_%tl145613145820%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl145628145850%_)))
                                        (_%hd145612145818%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl145628145850%_))))
                                    (if (pair? _%hd145612145818%_)
                                        (let ((_%tl145615145825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd145612145818%_)))
                                              (_%hd145614145823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd145612145818%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd145614145823%_
                                                       'let))
                                              (if (pair? _%tl145615145825%_)
                                                  (let ((_%tl145617145830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl145615145825%_)))
                                                        (_%hd145616145828%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl145615145825%_))))
                                                    (if (null? _%hd145616145828%_)
                                                        (if (null? _%tl145613145820%_)
                                                            (let ((_%id145809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd145620145804%_)
                          (_%expr145816%_ _%hd145622145811%_)
                          (_%body145833%_ _%tl145617145830%_))
                      (_%K145607145786%_
                       _%body145833%_
                       _%expr145816%_
                       _%id145809%_))
                    (_%else145565145640%_))
                (if (pair? _%hd145616145828%_)
                    (let ((_%tl145596145759%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd145616145828%_)))
                          (_%hd145595145757%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd145616145828%_))))
                      (if (pair? _%hd145595145757%_)
                          (let ((_%tl145598145764%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd145595145757%_)))
                                (_%hd145597145762%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd145595145757%_))))
                            (if (pair? _%tl145598145764%_)
                                (let ((_%tl145600145771%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl145598145764%_)))
                                      (_%hd145599145769%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl145598145764%_))))
                                  (if (null? _%tl145600145771%_)
                                      (if (null? _%tl145596145759%_)
                                          (if (null? _%tl145613145820%_)
                                              (let ((_%id1145733%_
                                                     _%hd145620145804%_)
                                                    (_%expr1145740%_
                                                     _%hd145622145811%_)
                                                    (_%id2145767%_
                                                     _%hd145597145762%_)
                                                    (_%expr2145774%_
                                                     _%hd145599145769%_)
                                                    (_%body145776%_
                                                     _%tl145617145830%_))
                                                (_%K145584145710%_
                                                 _%body145776%_
                                                 _%expr2145774%_
                                                 _%id2145767%_
                                                 _%expr1145740%_
                                                 _%id1145733%_))
                                              (_%else145565145640%_))
                                          (_%else145565145640%_))
                                      (_%else145565145640%_)))
                                (_%else145565145640%_)))
                          (_%else145565145640%_)))
                    (_%else145565145640%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else145565145640%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd145614145823%_
                                                           'let*))
                                                  (if (pair? _%tl145615145825%_)
                                                      (let ((_%tl145577145693%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl145615145825%_)))
                    (_%hd145576145691%_
                     (let () (declare (not safe)) (##car _%tl145615145825%_))))
                (if (null? _%tl145613145820%_)
                    (let ((_%id1145672%_ _%hd145620145804%_)
                          (_%expr1145679%_ _%hd145622145811%_)
                          (_%bind145696%_ _%hd145576145691%_)
                          (_%body145698%_ _%tl145577145693%_))
                      (_%K145567145649%_
                       _%body145698%_
                       _%bind145696%_
                       _%expr1145679%_
                       _%id1145672%_))
                    (_%else145565145640%_)))
              (_%else145565145640%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else145565145640%_))))
                                        (_%else145565145640%_)))
                                  (_%else145565145640%_))
                              (_%else145565145640%_))
                          (_%else145565145640%_)))
                    (_%else145565145640%_)))
              (_%else145565145640%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else145565145640%_))))
                                      (_%else145565145640%_))
                                  (_%else145565145640%_)))
                            (_%else145565145640%_))))))
                 (_%generate-values145258%_
                  (lambda (_%hd145372%_ _%body145373%_)
                    (let _%lp145375%_ ((_%rest145377%_ _%hd145372%_)
                                       (_%bind145378%_ '())
                                       (_%check145379%_ '())
                                       (_%post145380%_ '()))
                      (let* ((_%__stx149503149504%_ _%rest145377%_)
                             (_%g145383145394%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx149503149504%_)))))
                        (let ((_%__kont149505149506%_
                               (lambda (_%L145421%_ _%L145422%_)
                                 (let* ((_%__stx149459149460%_ _%L145422%_)
                                        (_%g145437145462%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx149459149460%_)))))
                                   (let ((_%__kont149461149462%_
                                          (lambda (_%L145535%_ _%L145536%_)
                                            (let ((_%eid145550%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L145536%_)))
                                                  (_%expr145551%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self145251%_
                                                      _%L145535%_))))
                                              (_%lp145375%_
                                               _%L145421%_
                                               (cons (cons _%eid145550%_
                                                           (cons _%expr145551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind145378%_)
                                               _%check145379%_
                                               _%post145380%_))))
                                         (_%__kont149463149464%_
                                          (lambda (_%L145483%_ _%L145484%_)
                                            (let* ((_%vals145497%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values145499%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals145497%_
                                                     _%L145484%_
                                                     _%L145483%_))
                                                   (_%refs145501%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals145497%_
                                                     _%L145484%_))
                                                   (_%expr145503%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self145251%_
                                                       _%L145483%_))))
                                              (_%lp145375%_
                                               _%L145421%_
                                               (cons (cons _%vals145497%_
                                                           (cons _%expr145503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind145378%_)
                                               (cons _%check-values145499%_
                                                     _%check145379%_)
                                               (cons _%refs145501%_
                                                     _%post145380%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx149459149460%_))
                                         (let ((_%e145441145511%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx149459149460%_))))
                                           (let ((_%tl145443145516%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e145441145511%_)))
                                                 (_%hd145442145514%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e145441145511%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd145442145514%_))
                                                 (let ((_%e145444145519%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd145442145514%_))))
                                                   (let ((_%tl145446145524%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e145444145519%_)))
                                                         (_%hd145445145522%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e145444145519%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl145446145524%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl145443145516%_))
                     (let ((_%e145447145527%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl145443145516%_))))
                       (let ((_%tl145449145532%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e145447145527%_)))
                             (_%hd145448145530%_
                              (let ()
                                (declare (not safe))
                                (##car _%e145447145527%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145449145532%_))
                             (_%__kont149461149462%_
                              _%hd145448145530%_
                              _%hd145445145522%_)
                             (let ()
                               (declare (not safe))
                               (_%g145437145462%_)))))
                     (let () (declare (not safe)) (_%g145437145462%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl145443145516%_))
                     (let ((_%e145455145475%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl145443145516%_))))
                       (let ((_%tl145457145480%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e145455145475%_)))
                             (_%hd145456145478%_
                              (let ()
                                (declare (not safe))
                                (##car _%e145455145475%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl145457145480%_))
                             (_%__kont149463149464%_
                              _%hd145456145478%_
                              _%hd145442145514%_)
                             (let ()
                               (declare (not safe))
                               (_%g145437145462%_)))))
                     (let () (declare (not safe)) (_%g145437145462%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl145443145516%_))
                                                     (let ((_%e145455145475%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl145443145516%_))))
                                                       (let ((_%tl145457145480%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e145455145475%_)))
                     (_%hd145456145478%_
                      (let () (declare (not safe)) (##car _%e145455145475%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl145457145480%_))
                     (_%__kont149463149464%_
                      _%hd145456145478%_
                      _%hd145442145514%_)
                     (let () (declare (not safe)) (_%g145437145462%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g145437145462%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g145437145462%_)))))))
                              (_%__kont149507149508%_
                               (lambda ()
                                 (let* ((_%body145401%_
                                         (if _%compiled-body?145253%_
                                             _%body145373%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self145251%_
                                                _%body145373%_))))
                                        (_%body145403%_
                                         (_%generate-values-post145259%_
                                          _%post145380%_
                                          _%body145401%_))
                                        (_%body145405%_
                                         (_%generate-values-check145260%_
                                          _%check145379%_
                                          _%body145403%_)))
                                   (cons 'let
                                         (cons (reverse _%bind145378%_)
                                               (cons _%body145405%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx149503149504%_))
                              (let ((_%e145387145413%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx149503149504%_))))
                                (let ((_%tl145389145418%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145387145413%_)))
                                      (_%hd145388145416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145387145413%_))))
                                  (_%__kont149505149506%_
                                   _%tl145389145418%_
                                   _%hd145388145416%_)))
                              (_%__kont149507149508%_)))))))
                 (_%generate-values-post145259%_
                  (lambda (_%post145331%_ _%body145332%_)
                    (let _%lp145334%_ ((_%rest145336%_ _%post145331%_)
                                       (_%body145337%_ _%body145332%_))
                      (let* ((_%rest145338145346%_ _%rest145336%_)
                             (_%else145340145354%_ (lambda () _%body145337%_))
                             (_%K145342145360%_
                              (lambda (_%rest145357%_ _%bind145358%_)
                                (_%lp145334%_
                                 _%rest145357%_
                                 (cons 'let
                                       (cons _%bind145358%_
                                             (cons _%body145337%_ '())))))))
                        (if (pair? _%rest145338145346%_)
                            (let ((_%hd145343145363%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest145338145346%_)))
                                  (_%tl145344145365%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest145338145346%_))))
                              (let* ((_%bind145368%_ _%hd145343145363%_)
                                     (_%rest145370%_ _%tl145344145365%_))
                                (_%K145342145360%_
                                 _%rest145370%_
                                 _%bind145368%_)))
                            (_%else145340145354%_))))))
                 (_%generate-values-check145260%_
                  (lambda (_%check145328%_ _%body145329%_)
                    (cons 'begin
                          (let ((__tmp150351 (cons _%body145329%_ '()))
                                (__tmp150350 (reverse _%check145328%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp150351 __tmp150350))))))
          (let* ((_%g145262145279%_
                  (lambda (_%g145263145276%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g145263145276%_))))
                 (_%g145261145325%_
                  (lambda (_%g145263145282%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g145263145282%_))
                        (let ((_%e145266145284%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g145263145282%_))))
                          (let ((_%hd145267145287%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145266145284%_)))
                                (_%tl145268145289%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145266145284%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl145268145289%_))
                                (let ((_%e145269145292%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl145268145289%_))))
                                  (let ((_%hd145270145295%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e145269145292%_)))
                                        (_%tl145271145297%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e145269145292%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145271145297%_))
                                        (let ((_%e145272145300%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145271145297%_))))
                                          (let ((_%hd145273145303%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145272145300%_)))
                                                (_%tl145274145305%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145272145300%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145274145305%_))
                                                ((lambda (_%L145308%_
                                                          _%L145309%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L145309%_)
                                                       (_%generate-simple145255%_
                                                        _%L145309%_
                                                        _%L145308%_)
                                                       (_%generate-values145258%_
                                                        _%L145309%_
                                                        _%L145308%_)))
                                                 _%hd145273145303%_
                                                 _%hd145270145295%_)
                                                (_%g145262145279%_
                                                 _%g145263145282%_))))
                                        (_%g145262145279%_
                                         _%g145263145282%_))))
                                (_%g145262145279%_ _%g145263145282%_))))
                        (_%g145262145279%_ _%g145263145282%_)))))
            (_%g145261145325%_ _%stx145252%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self146005%_ _%stx146006%_)
        (let ((_%compiled-body?146008%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self146005%_
           _%stx146006%_
           _%compiled-body?146008%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g150353_
        (let ((_g150352_ (let () (declare (not safe)) (##length _g150353_))))
          (cond ((let () (declare (not safe)) (##fx= _g150352_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g150353_))
                ((let () (declare (not safe)) (##fx= _g150352_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g150353_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g150353_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals145145%_ _%hd145146%_)
        (let _%lp145148%_ ((_%rest145150%_ _%hd145146%_)
                           (_%k145151%_ '0)
                           (_%r145152%_ '()))
          (let* ((_%__stx149517149518%_ _%rest145150%_)
                 (_%g145157145174%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx149517149518%_)))))
            (let ((_%__kont149519149520%_
                   (lambda (_%L145237%_)
                     (_%lp145148%_
                      _%L145237%_
                      (let () (declare (not safe)) (##fx+ _%k145151%_ '1))
                      _%r145152%_)))
                  (_%__kont149521149522%_
                   (lambda (_%L145210%_ _%L145211%_)
                     (_%lp145148%_
                      _%L145210%_
                      (let () (declare (not safe)) (##fx+ _%k145151%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L145211%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals145145%_
                                         _%k145151%_
                                         _%L145210%_)
                                        '()))
                            _%r145152%_))))
                  (_%__kont149523149524%_
                   (lambda (_%L145186%_)
                     (let ((__tmp150354
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L145186%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals145145%_
                                               _%k145151%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp150354 _%r145152%_))))
                  (_%__kont149525149526%_ (lambda () (reverse _%r145152%_))))
              (let ((_%g145155145197%_
                     (lambda ()
                       (let ((_%L145186%_ _%__stx149517149518%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L145186%_))
                             (_%__kont149523149524%_ _%L145186%_)
                             (_%__kont149525149526%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx149517149518%_))
                    (let ((_%e145160145226%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx149517149518%_))))
                      (let ((_%tl145162145231%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145160145226%_)))
                            (_%hd145161145229%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145160145226%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd145161145229%_))
                            (let ((_%e145163145234%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd145161145229%_))))
                              (if (equal? _%e145163145234%_ '#f)
                                  (_%__kont149519149520%_ _%tl145162145231%_)
                                  (_%__kont149521149522%_
                                   _%tl145162145231%_
                                   _%hd145161145229%_)))
                            (_%__kont149521149522%_
                             _%tl145162145231%_
                             _%hd145161145229%_))))
                    (let () (declare (not safe)) (_%g145155145197%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self144824%_ _%stx144825%_ _%compiled-body?144826%_)
        (letrec ((_%generate-simple144828%_
                  (lambda (_%hd145130%_ _%body145131%_)
                    (gxc#generate-runtime-simple-let
                     _%self144824%_
                     'letrec
                     _%hd145130%_
                     _%body145131%_
                     _%compiled-body?144826%_)))
                 (_%generate-values144829%_
                  (lambda (_%hd144909%_ _%body144910%_)
                    (let _%lp144912%_ ((_%rest144914%_ _%hd144909%_)
                                       (_%bind144915%_ '())
                                       (_%check144916%_ '())
                                       (_%post144917%_ '()))
                      (let* ((_%__stx149591149592%_ _%rest144914%_)
                             (_%g144920144931%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx149591149592%_)))))
                        (let ((_%__kont149593149594%_
                               (lambda (_%L144958%_ _%L144959%_)
                                 (let* ((_%__stx149547149548%_ _%L144959%_)
                                        (_%g144974144999%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx149547149548%_)))))
                                   (let ((_%__kont149549149550%_
                                          (lambda (_%L145106%_ _%L145107%_)
                                            (let ((_%eid145121%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L145107%_)))
                                                  (_%expr145122%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self144824%_
                                                      _%L145106%_))))
                                              (_%lp144912%_
                                               _%L144958%_
                                               (cons (cons _%eid145121%_
                                                           (cons _%expr145122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind144915%_)
                                               _%check144916%_
                                               _%post144917%_))))
                                         (_%__kont149551149552%_
                                          (lambda (_%L145020%_ _%L145021%_)
                                            (let* ((_%vals145034%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values145036%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals145034%_
                                                     _%L145021%_
                                                     _%L145020%_))
                                                   (_%refs145038%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals145034%_
                                                     _%L145021%_))
                                                   (_%expr145040%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self144824%_
                                                       _%L145020%_))))
                                              (_%lp144912%_
                                               _%L144958%_
                                               (let ((__tmp150356
                                                      (cons (cons _%vals145034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr145040%_ '()))
                    _%bind144915%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp150355
                                                      (map (lambda (_%e145042145044%_)
                                                             (let* ((_%g145046145055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e145042145044%_)
                            (_%E145048145059%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g145046145055%_
                                        '([eid _])))
                               '#!void))
                            (_%K145049145064%_
                             (lambda (_%eid145062%_)
                               (cons _%eid145062%_ (cons '#!void '())))))
                       (if (pair? _%g145046145055%_)
                           (let ((_%hd145050145067%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g145046145055%_)))
                                 (_%tl145051145069%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g145046145055%_))))
                             (let ((_%eid145072%_ _%hd145050145067%_))
                               (if (pair? _%tl145051145069%_)
                                   (let ((_%tl145053145074%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl145051145069%_))))
                                     (if (null? _%tl145053145074%_)
                                         (_%K145049145064%_ _%eid145072%_)
                                         (_%E145048145059%_)))
                                   (_%E145048145059%_))))
                           (_%E145048145059%_))))
                   _%refs145038%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp150356
                                                  __tmp150355))
                                               (cons _%check-values145036%_
                                                     _%check144916%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs145038%_
                                                  _%post144917%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx149547149548%_))
                                         (let ((_%e144978145082%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx149547149548%_))))
                                           (let ((_%tl144980145087%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e144978145082%_)))
                                                 (_%hd144979145085%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e144978145082%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd144979145085%_))
                                                 (let ((_%e144981145090%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd144979145085%_))))
                                                   (let ((_%tl144983145095%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e144981145090%_)))
                                                         (_%hd144982145093%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e144981145090%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl144983145095%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl144980145087%_))
                     (let ((_%e144984145098%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144980145087%_))))
                       (let ((_%tl144986145103%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144984145098%_)))
                             (_%hd144985145101%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144984145098%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144986145103%_))
                             (_%__kont149549149550%_
                              _%hd144985145101%_
                              _%hd144982145093%_)
                             (let ()
                               (declare (not safe))
                               (_%g144974144999%_)))))
                     (let () (declare (not safe)) (_%g144974144999%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl144980145087%_))
                     (let ((_%e144992145012%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144980145087%_))))
                       (let ((_%tl144994145017%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144992145012%_)))
                             (_%hd144993145015%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144992145012%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144994145017%_))
                             (_%__kont149551149552%_
                              _%hd144993145015%_
                              _%hd144979145085%_)
                             (let ()
                               (declare (not safe))
                               (_%g144974144999%_)))))
                     (let () (declare (not safe)) (_%g144974144999%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl144980145087%_))
                                                     (let ((_%e144992145012%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl144980145087%_))))
                                                       (let ((_%tl144994145017%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e144992145012%_)))
                     (_%hd144993145015%_
                      (let () (declare (not safe)) (##car _%e144992145012%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl144994145017%_))
                     (_%__kont149551149552%_
                      _%hd144993145015%_
                      _%hd144979145085%_)
                     (let () (declare (not safe)) (_%g144974144999%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g144974144999%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g144974144999%_)))))))
                              (_%__kont149595149596%_
                               (lambda ()
                                 (let* ((_%body144938%_
                                         (if _%compiled-body?144826%_
                                             _%body144910%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self144824%_
                                                _%body144910%_))))
                                        (_%body144940%_
                                         (_%generate-values-post144831%_
                                          _%post144917%_
                                          _%body144938%_))
                                        (_%body144942%_
                                         (_%generate-values-check144830%_
                                          _%check144916%_
                                          _%body144940%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind144915%_)
                                               (cons _%body144942%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx149591149592%_))
                              (let ((_%e144924144950%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx149591149592%_))))
                                (let ((_%tl144926144955%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144924144950%_)))
                                      (_%hd144925144953%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144924144950%_))))
                                  (_%__kont149593149594%_
                                   _%tl144926144955%_
                                   _%hd144925144953%_)))
                              (_%__kont149595149596%_)))))))
                 (_%generate-values-check144830%_
                  (lambda (_%check144906%_ _%body144907%_)
                    (cons 'begin
                          (let ((__tmp150358 (cons _%body144907%_ '()))
                                (__tmp150357 (reverse _%check144906%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp150358 __tmp150357)))))
                 (_%generate-values-post144831%_
                  (lambda (_%post144899%_ _%body144900%_)
                    (cons 'begin
                          (let ((__tmp150362 (cons _%body144900%_ '()))
                                (__tmp150359
                                 (let ((__tmp150361
                                        (lambda (_%g144901144903%_)
                                          (cons 'set! _%g144901144903%_)))
                                       (__tmp150360 (reverse _%post144899%_)))
                                   (declare (not safe))
                                   (##map __tmp150361 __tmp150360))))
                            (declare (not safe))
                            (__foldr1 cons __tmp150362 __tmp150359))))))
          (let* ((_%g144833144850%_
                  (lambda (_%g144834144847%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144834144847%_))))
                 (_%g144832144896%_
                  (lambda (_%g144834144853%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144834144853%_))
                        (let ((_%e144837144855%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144834144853%_))))
                          (let ((_%hd144838144858%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144837144855%_)))
                                (_%tl144839144860%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144837144855%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144839144860%_))
                                (let ((_%e144840144863%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144839144860%_))))
                                  (let ((_%hd144841144866%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144840144863%_)))
                                        (_%tl144842144868%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144840144863%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144842144868%_))
                                        (let ((_%e144843144871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144842144868%_))))
                                          (let ((_%hd144844144874%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144843144871%_)))
                                                (_%tl144845144876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144843144871%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144845144876%_))
                                                ((lambda (_%L144879%_
                                                          _%L144880%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L144880%_)
                                                       (_%generate-simple144828%_
                                                        _%L144880%_
                                                        _%L144879%_)
                                                       (_%generate-values144829%_
                                                        _%L144880%_
                                                        _%L144879%_)))
                                                 _%hd144844144874%_
                                                 _%hd144841144866%_)
                                                (_%g144833144850%_
                                                 _%g144834144853%_))))
                                        (_%g144833144850%_
                                         _%g144834144853%_))))
                                (_%g144833144850%_ _%g144834144853%_))))
                        (_%g144833144850%_ _%g144834144853%_)))))
            (_%g144832144896%_ _%stx144825%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self145136%_ _%stx145137%_)
        (let ((_%compiled-body?145139%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self145136%_
           _%stx145137%_
           _%compiled-body?145139%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g150364_
        (let ((_g150363_ (let () (declare (not safe)) (##length _g150364_))))
          (cond ((let () (declare (not safe)) (##fx= _g150363_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g150364_))
                ((let () (declare (not safe)) (##fx= _g150363_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g150364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g150364_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self144405%_ _%stx144406%_)
        (letrec ((_%generate-values144408%_
                  (lambda (_%hd144651%_ _%body144652%_)
                    (let _%lp144654%_ ((_%rest144656%_ _%hd144651%_)
                                       (_%bind144657%_ '()))
                      (let* ((_%rest144658144666%_ _%rest144656%_)
                             (_%else144660144677%_
                              (lambda ()
                                (let ((_%bind144674%_ (reverse _%bind144657%_))
                                      (_%body144675%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self144405%_
                                          _%body144652%_))))
                                  (cons 'letrec*
                                        (cons _%bind144674%_
                                              (cons _%body144675%_ '()))))))
                             (_%K144662144811%_
                              (lambda (_%rest144680%_ _%hd-bind144681%_)
                                (let* ((_%__stx149605149606%_
                                        _%hd-bind144681%_)
                                       (_%g144684144709%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx149605149606%_)))))
                                  (let ((_%__kont149607149608%_
                                         (lambda (_%L144790%_ _%L144791%_)
                                           (let ((_%eid144805%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L144791%_)))
                                                 (_%expr144806%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self144405%_
                                                     _%L144790%_))))
                                             (_%lp144654%_
                                              _%rest144680%_
                                              (cons (cons _%eid144805%_
                                                          (cons _%expr144806%_
                                                                '()))
                                                    _%bind144657%_)))))
                                        (_%__kont149609149610%_
                                         (lambda (_%L144730%_ _%L144731%_)
                                           (let* ((_%vals144750%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp144752%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values144754%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp144752%_
                                                    _%L144731%_
                                                    _%L144730%_))
                                                  (_%refs144756%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals144750%_
                                                    _%L144731%_))
                                                  (_%expr144758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self144405%_
                                                      _%L144730%_))))
                                             (_%lp144654%_
                                              _%rest144680%_
                                              (let ((__tmp150365
                                                     (cons (cons _%vals144750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp144752%_
                                                       (cons _%expr144758%_
                                                             '()))
                                                 '())
                                           (cons _%check-values144754%_
                                                 (cons _%tmp144752%_ '()))))
                               '()))
                   _%bind144657%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp150365
                                                 _%refs144756%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx149605149606%_))
                                        (let ((_%e144688144766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx149605149606%_))))
                                          (let ((_%tl144690144771%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144688144766%_)))
                                                (_%hd144689144769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144688144766%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd144689144769%_))
                                                (let ((_%e144691144774%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144689144769%_))))
                                                  (let ((_%tl144693144779%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144691144774%_)))
                                                        (_%hd144692144777%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144691144774%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl144693144779%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl144690144771%_))
                                                            (let ((_%e144694144782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl144690144771%_))))
                      (let ((_%tl144696144787%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144694144782%_)))
                            (_%hd144695144785%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144694144782%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl144696144787%_))
                            (_%__kont149607149608%_
                             _%hd144695144785%_
                             _%hd144692144777%_)
                            (let ()
                              (declare (not safe))
                              (_%g144684144709%_)))))
                    (let () (declare (not safe)) (_%g144684144709%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl144690144771%_))
                    (let ((_%e144702144722%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl144690144771%_))))
                      (let ((_%tl144704144727%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144702144722%_)))
                            (_%hd144703144725%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144702144722%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl144704144727%_))
                            (_%__kont149609149610%_
                             _%hd144703144725%_
                             _%hd144689144769%_)
                            (let ()
                              (declare (not safe))
                              (_%g144684144709%_)))))
                    (let () (declare (not safe)) (_%g144684144709%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl144690144771%_))
                                                    (let ((_%e144702144722%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl144690144771%_))))
                                                      (let ((_%tl144704144727%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e144702144722%_)))
                    (_%hd144703144725%_
                     (let () (declare (not safe)) (##car _%e144702144722%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl144704144727%_))
                    (_%__kont149609149610%_
                     _%hd144703144725%_
                     _%hd144689144769%_)
                    (let () (declare (not safe)) (_%g144684144709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g144684144709%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g144684144709%_))))))))
                        (if (pair? _%rest144658144666%_)
                            (let ((_%hd144663144814%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144658144666%_)))
                                  (_%tl144664144816%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144658144666%_))))
                              (let* ((_%hd-bind144819%_ _%hd144663144814%_)
                                     (_%rest144821%_ _%tl144664144816%_))
                                (_%K144662144811%_
                                 _%rest144821%_
                                 _%hd-bind144819%_)))
                            (_%else144660144677%_))))))
                 (_%generate-letrec?144409%_
                  (lambda (_%hd144541%_)
                    (let _%lp144543%_ ((_%rest144545%_ _%hd144541%_))
                      (let* ((_%rest144546144554%_ _%rest144545%_)
                             (_%else144548144562%_ (lambda () '#t))
                             (_%K144550144639%_
                              (lambda (_%rest144565%_ _%hd-bind144566%_)
                                (let* ((_%g144568144585%_
                                        (lambda (_%g144569144582%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g144569144582%_))))
                                       (_%g144567144636%_
                                        (lambda (_%g144569144588%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g144569144588%_))
                                              (let ((_%e144572144590%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g144569144588%_))))
                                                (let ((_%hd144573144593%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144572144590%_)))
                                                      (_%tl144574144595%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144572144590%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd144573144593%_))
                                                      (let ((_%e144575144598%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd144573144593%_))))
                (let ((_%hd144576144601%_
                       (let () (declare (not safe)) (##car _%e144575144598%_)))
                      (_%tl144577144603%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e144575144598%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl144577144603%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl144574144595%_))
                          (let ((_%e144578144606%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl144574144595%_))))
                            (let ((_%hd144579144609%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144578144606%_)))
                                  (_%tl144580144611%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144578144606%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl144580144611%_))
                                  ((lambda (_%L144614%_ _%L144615%_)
                                     (if (_%is-lambda-expr?144410%_
                                          _%L144614%_)
                                         (_%lp144543%_ _%rest144565%_)
                                         '#f))
                                   _%hd144579144609%_
                                   _%hd144576144601%_)
                                  (_%g144568144585%_ _%g144569144588%_))))
                          (_%g144568144585%_ _%g144569144588%_))
                      (_%g144568144585%_ _%g144569144588%_))))
              (_%g144568144585%_ _%g144569144588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g144568144585%_
                                               _%g144569144588%_)))))
                                  (_%g144567144636%_ _%hd-bind144566%_)))))
                        (if (pair? _%rest144546144554%_)
                            (let ((_%hd144551144642%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144546144554%_)))
                                  (_%tl144552144644%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144546144554%_))))
                              (let* ((_%hd-bind144647%_ _%hd144551144642%_)
                                     (_%rest144649%_ _%tl144552144644%_))
                                (_%K144550144639%_
                                 _%rest144649%_
                                 _%hd-bind144647%_)))
                            (_%else144548144562%_))))))
                 (_%is-lambda-expr?144410%_
                  (lambda (_%expr144478%_)
                    (let* ((_%__stx149649149650%_ _%expr144478%_)
                           (_%g144481144495%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx149649149650%_)))))
                      (let ((_%__kont149651149652%_
                             (lambda (_%L144523%_ _%L144524%_) '#t))
                            (_%__kont149653149654%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx149649149650%_))
                            (let ((_%e144485144507%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx149649149650%_))))
                              (let ((_%tl144487144512%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144485144507%_)))
                                    (_%hd144486144510%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144485144507%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd144486144510%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd144486144510%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144487144512%_))
                                            (let ((_%e144488144515%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144487144512%_))))
                                              (let ((_%tl144490144520%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144488144515%_)))
                                                    (_%hd144489144518%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144488144515%_))))
                                                (_%__kont149651149652%_
                                                 _%tl144490144520%_
                                                 _%hd144489144518%_)))
                                            (_%__kont149653149654%_))
                                        (_%__kont149653149654%_))
                                    (_%__kont149653149654%_))))
                            (_%__kont149653149654%_)))))))
          (let* ((_%g144412144429%_
                  (lambda (_%g144413144426%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144413144426%_))))
                 (_%g144411144475%_
                  (lambda (_%g144413144432%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144413144432%_))
                        (let ((_%e144416144434%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144413144432%_))))
                          (let ((_%hd144417144437%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144416144434%_)))
                                (_%tl144418144439%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144416144434%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144418144439%_))
                                (let ((_%e144419144442%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144418144439%_))))
                                  (let ((_%hd144420144445%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144419144442%_)))
                                        (_%tl144421144447%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144419144442%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144421144447%_))
                                        (let ((_%e144422144450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144421144447%_))))
                                          (let ((_%hd144423144453%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144422144450%_)))
                                                (_%tl144424144455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144422144450%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144424144455%_))
                                                ((lambda (_%L144458%_
                                                          _%L144459%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L144459%_)
                                                       (if (_%generate-letrec?144409%_
                                                            _%L144459%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self144405%_
                                                            'letrec
                                                            _%L144459%_
                                                            _%L144458%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self144405%_
                                                            'letrec*
                                                            _%L144459%_
                                                            _%L144458%_
                                                            '#f))
                                                       (_%generate-values144408%_
                                                        _%L144459%_
                                                        _%L144458%_)))
                                                 _%hd144423144453%_
                                                 _%hd144420144445%_)
                                                (_%g144412144429%_
                                                 _%g144413144432%_))))
                                        (_%g144412144429%_
                                         _%g144413144432%_))))
                                (_%g144412144429%_ _%g144413144432%_))))
                        (_%g144412144429%_ _%g144413144432%_)))))
            (_%g144411144475%_ _%stx144406%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd144342%_)
        (let _%lp144344%_ ((_%rest144346%_ _%hd144342%_))
          (let* ((_%rest144347144363%_ _%rest144346%_)
                 (_%else144350144371%_ (lambda () '#f)))
            (let ((_%K144353144384%_
                   (lambda (_%rest144382%_) (_%lp144344%_ _%rest144382%_)))
                  (_%K144352144376%_ (lambda () '#t)))
              (let ((_%try-match144349144379%_
                     (lambda ()
                       (if (null? _%rest144347144363%_)
                           (_%K144352144376%_)
                           (_%else144350144371%_)))))
                (if (pair? _%rest144347144363%_)
                    (let ((_%tl144355144389%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest144347144363%_)))
                          (_%hd144354144387%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest144347144363%_))))
                      (if (pair? _%hd144354144387%_)
                          (let ((_%tl144357144394%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd144354144387%_)))
                                (_%hd144356144392%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd144354144387%_))))
                            (if (pair? _%hd144356144392%_)
                                (let ((_%tl144361144397%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd144356144392%_))))
                                  (if (null? _%tl144361144397%_)
                                      (if (pair? _%tl144357144394%_)
                                          (let ((_%tl144359144400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl144357144394%_))))
                                            (if (null? _%tl144359144400%_)
                                                (let ((_%rest144403%_
                                                       _%tl144355144389%_))
                                                  (_%lp144344%_
                                                   _%rest144403%_))
                                                (_%else144350144371%_)))
                                          (_%else144350144371%_))
                                      (_%else144350144371%_)))
                                (_%else144350144371%_)))
                          (_%else144350144371%_)))
                    (_%try-match144349144379%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self144253%_
               _%form144254%_
               _%hd144255%_
               _%body144256%_
               _%compiled-body?144257%_)
        (letrec ((_%generate1144259%_
                  (lambda (_%bind144298%_)
                    (let* ((_%bind144299144310%_ _%bind144298%_)
                           (_%E144301144314%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind144299144310%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K144302144320%_
                            (lambda (_%expr144317%_ _%id144318%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id144318%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self144253%_
                                             _%expr144317%_))
                                          '())))))
                      (if (pair? _%bind144299144310%_)
                          (let ((_%hd144303144323%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind144299144310%_)))
                                (_%tl144304144325%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind144299144310%_))))
                            (if (pair? _%hd144303144323%_)
                                (let ((_%hd144307144328%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd144303144323%_)))
                                      (_%tl144308144330%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd144303144323%_))))
                                  (let ((_%id144333%_ _%hd144307144328%_))
                                    (if (null? _%tl144308144330%_)
                                        (if (pair? _%tl144304144325%_)
                                            (let ((_%hd144305144335%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl144304144325%_)))
                                                  (_%tl144306144337%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl144304144325%_))))
                                              (let ((_%expr144340%_
                                                     _%hd144305144335%_))
                                                (if (null? _%tl144306144337%_)
                                                    (_%K144302144320%_
                                                     _%expr144340%_
                                                     _%id144333%_)
                                                    (_%E144301144314%_))))
                                            (_%E144301144314%_))
                                        (_%E144301144314%_))))
                                (_%E144301144314%_)))
                          (_%E144301144314%_))))))
          (let* ((_%bind144261%_ (map _%generate1144259%_ _%hd144255%_))
                 (_%body144263%_
                  (if _%compiled-body?144257%_
                      _%body144256%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self144253%_ _%body144256%_))))
                 (_%body144295%_
                  (let* ((_%body144264144272%_ _%body144263%_)
                         (_%else144266144280%_
                          (lambda () (cons _%body144263%_ '())))
                         (_%K144268144285%_
                          (lambda (_%exprs144283%_) _%exprs144283%_)))
                    (if (pair? _%body144264144272%_)
                        (let ((_%hd144269144288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body144264144272%_)))
                              (_%tl144270144290%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body144264144272%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd144269144288%_ 'begin))
                              (let ((_%exprs144293%_ _%tl144270144290%_))
                                (_%K144268144285%_ _%exprs144293%_))
                              (_%else144266144280%_)))
                        (_%else144266144280%_)))))
            (cons _%form144254%_ (cons _%bind144261%_ _%body144295%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self144153%_ _%stx144154%_)
        (letrec ((_%generate1144156%_
                  (lambda (_%datum144208%_)
                    (if (or (null? _%datum144208%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum144208%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum144208%_))
                            (eof-object? _%datum144208%_))
                        _%datum144208%_
                        (if (uninterned-symbol? _%datum144208%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum144208%_
                               '#t))
                            (if (pair? _%datum144208%_)
                                (cons (_%generate1144156%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum144208%_)))
                                      (_%generate1144156%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum144208%_))))
                                (if (box? _%datum144208%_)
                                    (box (_%generate1144156%_
                                          (unbox _%datum144208%_)))
                                    (if (vector? _%datum144208%_)
                                        (vector-map
                                         _%generate1144156%_
                                         _%datum144208%_)
                                        (if (or (s8vector? _%datum144208%_)
                                                (u8vector? _%datum144208%_)
                                                (s16vector? _%datum144208%_)
                                                (u16vector? _%datum144208%_)
                                                (s32vector? _%datum144208%_)
                                                (u32vector? _%datum144208%_)
                                                (s64vector? _%datum144208%_)
                                                (u64vector? _%datum144208%_)
                                                (f32vector? _%datum144208%_)
                                                (f64vector? _%datum144208%_))
                                            _%datum144208%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx144154%_)))))))))))
          (let* ((_%g144158144171%_
                  (lambda (_%g144159144168%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144159144168%_))))
                 (_%g144157144205%_
                  (lambda (_%g144159144174%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144159144174%_))
                        (let ((_%e144161144176%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144159144174%_))))
                          (let ((_%hd144162144179%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144161144176%_)))
                                (_%tl144163144181%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144161144176%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144163144181%_))
                                (let ((_%e144164144184%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144163144181%_))))
                                  (let ((_%hd144165144187%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144164144184%_)))
                                        (_%tl144166144189%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144164144184%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl144166144189%_))
                                        ((lambda (_%L144192%_)
                                           (cons 'quote
                                                 (cons (_%generate1144156%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L144192%_)))
                                                       '())))
                                         _%hd144165144187%_)
                                        (_%g144158144171%_
                                         _%g144159144174%_))))
                                (_%g144158144171%_ _%g144159144174%_))))
                        (_%g144158144171%_ _%g144159144174%_)))))
            (_%g144157144205%_ _%stx144154%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self143594%_ _%stx143595%_)
        (letrec ((_%compile-call143597%_
                  (lambda (_%rator143886%_ _%rands143887%_)
                    (let ((_%rator143893%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self143594%_
                              _%rator143886%_)))
                          (_%rands143894%_
                           (map (lambda (_%g143888143890%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self143594%_
                                     _%g143888143890%_)))
                                _%rands143887%_)))
                      (let* ((_%__stx149696149697%_ _%rator143893%_)
                             (_%g143897143949%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx149696149697%_)))))
                        (let ((_%__kont149698149699%_
                               (lambda (_%L144073%_
                                        _%L144074%_
                                        _%L144075%_
                                        _%L144076%_)
                                 (if (let ((__tmp150368
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands143894%_)))
                                           (__tmp150366
                                            (length (let ((__tmp150367
                                                           (lambda (_%g144112144115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g144113144117%_)
                     (cons _%g144112144115%_ _%g144113144117%_))))
              (declare (not safe))
              (__foldr1 __tmp150367 '() _%L144075%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp150368 __tmp150366))
                                     (let* ((_%id144120%_ _%L144076%_)
                                            (_%args144129%_
                                             (let ((__tmp150369
                                                    (lambda (_%g144121144124%_
                                                             _%g144122144126%_)
                                                      (cons _%g144121144124%_
                                                            _%g144122144126%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp150369
                                                '()
                                                _%L144075%_)))
                                            (_%body144138%_
                                             (let ((__tmp150370
                                                    (lambda (_%g144130144133%_
                                                             _%g144131144135%_)
                                                      (cons _%g144130144133%_
                                                            _%g144131144135%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp150370
                                                '()
                                                _%L144074%_)))
                                            (_%init144140%_
                                             (map list
                                                  _%args144129%_
                                                  _%rands143894%_)))
                                       (cons 'let
                                             (cons _%id144120%_
                                                   (cons _%init144140%_
                                                         _%body144138%_))))
                                     (let ((__tmp150371
                                            (let ((__tmp150372
                                                   (lambda (_%g144142144145%_
                                                            _%g144143144147%_)
                                                     (cons _%g144142144145%_
                                                           _%g144143144147%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp150372
                                               '()
                                               _%L144075%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx143595%_
                                        __tmp150371
                                        _%rands143894%_)))))
                              (_%__kont149704149705%_
                               (lambda ()
                                 (cons _%rator143893%_ _%rands143894%_))))
                          (let ((_%__match149763149764%_
                                 (lambda (_%e143903143961%_
                                          _%hd143904143964%_
                                          _%tl143905143966%_
                                          _%e143906143969%_
                                          _%hd143907143972%_
                                          _%tl143908143974%_
                                          _%e143909143977%_
                                          _%hd143910143980%_
                                          _%tl143911143982%_
                                          _%e143912143985%_
                                          _%hd143913143988%_
                                          _%tl143914143990%_
                                          _%e143915143993%_
                                          _%hd143916143996%_
                                          _%tl143917143998%_
                                          _%e143918144001%_
                                          _%hd143919144004%_
                                          _%tl143920144006%_
                                          _%e143921144009%_
                                          _%hd143922144012%_
                                          _%tl143923144014%_
                                          _%__splice149700149701%_
                                          _%target143924144017%_
                                          _%tl143926144019%_)
                                   (letrec ((_%loop143927144022%_
                                             (lambda (_%hd143925144025%_
                                                      _%arg143931144027%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd143925144025%_))
                                                   (let ((_%e143928144030%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd143925144025%_))))
                                                     (let ((_%lp-tl143930144035%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e143928144030%_)))
                                                           (_%lp-hd143929144033%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e143928144030%_))))
                                                       (_%loop143927144022%_
                                                        _%lp-tl143930144035%_
                                                        (cons _%lp-hd143929144033%_
                                                              _%arg143931144027%_))))
                                                   (let ((_%arg143932144038%_
                                                          (reverse _%arg143931144027%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl143923144014%_))
                                                         (let ((_%__splice149702149703%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl143923144014%_
                           '0))))
                   (let ((_%tl143935144043%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice149702149703%_ '1)))
                         (_%target143933144041%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice149702149703%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl143935144043%_))
                         (letrec ((_%loop143936144046%_
                                   (lambda (_%hd143934144049%_
                                            _%body143940144051%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd143934144049%_))
                                         (let ((_%e143937144054%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd143934144049%_))))
                                           (let ((_%lp-tl143939144059%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e143937144054%_)))
                                                 (_%lp-hd143938144057%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e143937144054%_))))
                                             (_%loop143936144046%_
                                              _%lp-tl143939144059%_
                                              (cons _%lp-hd143938144057%_
                                                    _%body143940144051%_))))
                                         (let ((_%body143941144062%_
                                                (reverse _%body143940144051%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl143917143998%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl143911143982%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl143908143974%_))
                                                       (let ((_%e143942144065%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl143908143974%_))))
                 (let ((_%tl143944144070%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e143942144065%_)))
                       (_%hd143943144068%_
                        (let ()
                          (declare (not safe))
                          (##car _%e143942144065%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl143944144070%_))
                       (let ((_%L144073%_ _%hd143943144068%_)
                             (_%L144074%_ _%body143941144062%_)
                             (_%L144075%_ _%arg143932144038%_)
                             (_%L144076%_ _%hd143913143988%_))
                         (if (eq? _%L144076%_ _%L144073%_)
                             (_%__kont149698149699%_
                              _%L144073%_
                              _%L144074%_
                              _%L144075%_
                              _%L144076%_)
                             (_%__kont149704149705%_)))
                       (_%__kont149704149705%_))))
               (_%__kont149704149705%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont149704149705%_))
                                               (_%__kont149704149705%_)))))))
                           (_%loop143936144046%_ _%target143933144041%_ '()))
                         (_%__kont149704149705%_))))
                 (_%__kont149704149705%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop143927144022%_
                                      _%target143924144017%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx149696149697%_))
                                (let ((_%e143903143961%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx149696149697%_))))
                                  (let ((_%tl143905143966%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143903143961%_)))
                                        (_%hd143904143964%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143903143961%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd143904143964%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd143904143964%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl143905143966%_))
                                                (let ((_%e143906143969%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl143905143966%_))))
                                                  (let ((_%tl143908143974%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143906143969%_)))
                                                        (_%hd143907143972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143906143969%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd143907143972%_))
                                                        (let ((_%e143909143977%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd143907143972%_))))
                  (let ((_%tl143911143982%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143909143977%_)))
                        (_%hd143910143980%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143909143977%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143910143980%_))
                        (let ((_%e143912143985%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143910143980%_))))
                          (let ((_%tl143914143990%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143912143985%_)))
                                (_%hd143913143988%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143912143985%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143914143990%_))
                                (let ((_%e143915143993%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143914143990%_))))
                                  (let ((_%tl143917143998%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143915143993%_)))
                                        (_%hd143916143996%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143915143993%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd143916143996%_))
                                        (let ((_%e143918144001%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd143916143996%_))))
                                          (let ((_%tl143920144006%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143918144001%_)))
                                                (_%hd143919144004%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143918144001%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd143919144004%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd143919144004%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143920144006%_))
                                                        (let ((_%e143921144009%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143920144006%_))))
                  (let ((_%tl143923144014%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143921144009%_)))
                        (_%hd143922144012%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143921144009%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd143922144012%_))
                        (let ((_%__splice149700149701%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd143922144012%_
                                  '0))))
                          (let ((_%tl143926144019%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice149700149701%_ '1)))
                                (_%target143924144017%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice149700149701%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143926144019%_))
                                (_%__match149763149764%_
                                 _%e143903143961%_
                                 _%hd143904143964%_
                                 _%tl143905143966%_
                                 _%e143906143969%_
                                 _%hd143907143972%_
                                 _%tl143908143974%_
                                 _%e143909143977%_
                                 _%hd143910143980%_
                                 _%tl143911143982%_
                                 _%e143912143985%_
                                 _%hd143913143988%_
                                 _%tl143914143990%_
                                 _%e143915143993%_
                                 _%hd143916143996%_
                                 _%tl143917143998%_
                                 _%e143918144001%_
                                 _%hd143919144004%_
                                 _%tl143920144006%_
                                 _%e143921144009%_
                                 _%hd143922144012%_
                                 _%tl143923144014%_
                                 _%__splice149700149701%_
                                 _%target143924144017%_
                                 _%tl143926144019%_)
                                (_%__kont149704149705%_))))
                        (_%__kont149704149705%_))))
                (_%__kont149704149705%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont149704149705%_))
                                                (_%__kont149704149705%_))))
                                        (_%__kont149704149705%_))))
                                (_%__kont149704149705%_))))
                        (_%__kont149704149705%_))))
                (_%__kont149704149705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont149704149705%_))
                                            (_%__kont149704149705%_))
                                        (_%__kont149704149705%_))))
                                (_%__kont149704149705%_)))))))))
          (let* ((_%g143599143622%_
                  (lambda (_%g143600143619%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143600143619%_))))
                 (_%g143598143883%_
                  (lambda (_%g143600143625%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143600143625%_))
                        (let ((_%e143603143627%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143600143625%_))))
                          (let ((_%hd143604143630%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143603143627%_)))
                                (_%tl143605143632%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143603143627%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143605143632%_))
                                (let ((_%e143606143635%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143605143632%_))))
                                  (let ((_%hd143607143638%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143606143635%_)))
                                        (_%tl143608143640%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143606143635%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl143608143640%_))
                                        (let ((_g150373_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl143608143640%_
                                                  '0))))
                                          (begin
                                            (let ((_g150374_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g150373_)
                                                         (##values-length
                                                          _g150373_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g150374_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g150374_)))
                                            (let ((_%target143609143643%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g150373_
                                                      0)))
                                                  (_%tl143611143645%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g150373_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl143611143645%_))
                                                  (letrec ((_%loop143612143648%_
                                                            (lambda (_%hd143610143651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand143616143653%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd143610143651%_))
                          (let ((_%e143613143656%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd143610143651%_))))
                            (let ((_%lp-hd143614143659%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143613143656%_)))
                                  (_%lp-tl143615143661%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143613143656%_))))
                              (_%loop143612143648%_
                               _%lp-tl143615143661%_
                               (cons _%lp-hd143614143659%_
                                     _%rand143616143653%_))))
                          (let ((_%rand143617143664%_
                                 (reverse _%rand143616143653%_)))
                            ((lambda (_%L143667%_ _%L143668%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call143597%_
                                    _%L143668%_
                                    (let ((__tmp150375
                                           (lambda (_%g143685143688%_
                                                    _%g143686143690%_)
                                             (cons _%g143685143688%_
                                                   _%g143686143690%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp150375 '() _%L143667%_)))
                                   (let* ((_%__stx149812149813%_ _%L143668%_)
                                          (_%g143694143706%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx149812149813%_)))))
                                     (let ((_%__kont149814149815%_
                                            (lambda ()
                                              (let ((_%f143743%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self143594%_
                                                        _%L143668%_))))
                                                (if (and (let ((__tmp150376
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f143743%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp150376))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f143743%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp143745%_ ((_%rest143748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp150378
                                                (lambda (_%g143865143868%_
                                                         _%g143866143870%_)
                                                  (cons _%g143865143868%_
                                                        _%g143866143870%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp150378
                                            '()
                                            _%L143667%_))))
                               (_%bind143750%_ '())
                               (_%args143751%_ '()))
              (let* ((_%rest143752143760%_ _%rest143748%_)
                     (_%else143754143768%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind143750%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f143743%_
                                                      _%args143751%_)
                                                '()))))))
                     (_%K143756143854%_
                      (lambda (_%rest143771%_ _%e143772%_)
                        (let* ((_%__stx149766149767%_ _%e143772%_)
                               (_%g143777143795%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx149766149767%_)))))
                          (let ((_%__kont149768149769%_
                                 (lambda ()
                                   (_%lp143745%_
                                    _%rest143771%_
                                    _%bind143750%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e143772%_))
                                          _%args143751%_))))
                                (_%__kont149770149771%_
                                 (lambda ()
                                   (_%lp143745%_
                                    _%rest143771%_
                                    _%bind143750%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e143772%_))
                                          _%args143751%_))))
                                (_%__kont149772149773%_
                                 (lambda ()
                                   (let ((_%tmp143802%_
                                          (let ((__tmp150377
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp150377))))
                                     (_%lp143745%_
                                      _%rest143771%_
                                      (cons (cons _%tmp143802%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e143772%_))
                                                        '()))
                                            _%bind143750%_)
                                      (cons _%tmp143802%_ _%args143751%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx149766149767%_))
                                (let ((_%e143779143833%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx149766149767%_))))
                                  (let ((_%tl143781143838%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143779143833%_)))
                                        (_%hd143780143836%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143779143833%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd143780143836%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd143780143836%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl143781143838%_))
                                                (let ((_%e143782143841%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl143781143838%_))))
                                                  (let ((_%tl143784143846%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143782143841%_)))
                                                        (_%hd143783143844%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143782143841%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl143784143846%_))
                                                        (_%__kont149768149769%_)
                                                        (_%__kont149772149773%_))))
                                                (_%__kont149772149773%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd143780143836%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl143781143838%_))
                                                    (let ((_%e143788143818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl143781143838%_))))
                                                      (let ((_%tl143790143823%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e143788143818%_)))
                    (_%hd143789143821%_
                     (let () (declare (not safe)) (##car _%e143788143818%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl143790143823%_))
                    (_%__kont149770149771%_)
                    (_%__kont149772149773%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont149772149773%_))
                                                (_%__kont149772149773%_)))
                                        (_%__kont149772149773%_))))
                                (_%__kont149772149773%_)))))))
                (if (pair? _%rest143752143760%_)
                    (let ((_%hd143757143857%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest143752143760%_)))
                          (_%tl143758143859%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest143752143760%_))))
                      (let* ((_%e143862%_ _%hd143757143857%_)
                             (_%rest143864%_ _%tl143758143859%_))
                        (_%K143756143854%_ _%rest143864%_ _%e143862%_)))
                    (_%else143754143768%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call143597%_
                                                     _%L143668%_
                                                     (let ((__tmp150379
                                                            (lambda (_%g143872143875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g143873143877%_)
                      (cons _%g143872143875%_ _%g143873143877%_))))
               (declare (not safe))
               (__foldr1 __tmp150379 '() _%L143667%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont149816149817%_
                                            (lambda ()
                                              (_%compile-call143597%_
                                               _%L143668%_
                                               (let ((__tmp150380
                                                      (lambda (_%g143712143715%_
                                                               _%g143713143717%_)
                                                        (cons _%g143712143715%_
                                                              _%g143713143717%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp150380
                                                  '()
                                                  _%L143667%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx149812149813%_))
                                           (let ((_%e143696143725%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx149812149813%_))))
                                             (let ((_%tl143698143730%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e143696143725%_)))
                                                   (_%hd143697143728%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e143696143725%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd143697143728%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd143697143728%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl143698143730%_))
                                                           (let ((_%e143699143733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl143698143730%_))))
                     (let ((_%tl143701143738%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e143699143733%_)))
                           (_%hd143700143736%_
                            (let ()
                              (declare (not safe))
                              (##car _%e143699143733%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl143701143738%_))
                           (_%__kont149814149815%_)
                           (_%__kont149816149817%_))))
                   (_%__kont149816149817%_))
               (_%__kont149816149817%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont149816149817%_))))
                                           (_%__kont149816149817%_))))))
                             _%rand143617143664%_
                             _%hd143607143638%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop143612143648%_
                                                     _%target143609143643%_
                                                     '()))
                                                  (_%g143599143622%_
                                                   _%g143600143625%_)))))
                                        (_%g143599143622%_
                                         _%g143600143625%_))))
                                (_%g143599143622%_ _%g143600143625%_))))
                        (_%g143599143622%_ _%g143600143625%_)))))
            (_%g143598143883%_ _%stx143595%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self143337%_ _%stx143338%_)
        (let* ((_%__stx149884149885%_ _%stx143338%_)
               (_%g143341143370%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx149884149885%_)))))
          (let ((_%__kont149886149887%_
                 (lambda (_%L143438%_ _%L143439%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self143337%_
                        _%stx143338%_)
                       (let ((_%f143461%_
                              (let ((__tmp150381
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L143439%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self143337%_
                                 __tmp150381))))
                         (let _%lp143463%_ ((_%rest143466%_
                                             (reverse (let ((__tmp150383
                                                             (lambda (_%g143583143586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g143584143588%_)
                       (cons _%g143583143586%_ _%g143584143588%_))))
                (declare (not safe))
                (__foldr1 __tmp150383 '() _%L143438%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind143468%_ '())
                                            (_%args143469%_ '()))
                           (let* ((_%rest143470143478%_ _%rest143466%_)
                                  (_%else143472143486%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind143468%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f143461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args143469%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K143474143572%_
                                   (lambda (_%rest143489%_ _%e143490%_)
                                     (let* ((_%__stx149838149839%_ _%e143490%_)
                                            (_%g143495143513%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx149838149839%_)))))
                                       (let ((_%__kont149840149841%_
                                              (lambda ()
                                                (_%lp143463%_
                                                 _%rest143489%_
                                                 _%bind143468%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e143490%_))
                                                       _%args143469%_))))
                                             (_%__kont149842149843%_
                                              (lambda ()
                                                (_%lp143463%_
                                                 _%rest143489%_
                                                 _%bind143468%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e143490%_))
                                                       _%args143469%_))))
                                             (_%__kont149844149845%_
                                              (lambda ()
                                                (let ((_%tmp143520%_
                                                       (let ((__tmp150382
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp150382))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp143463%_
                                                   _%rest143489%_
                                                   (cons (cons _%tmp143520%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e143490%_))
                             '()))
                 _%bind143468%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp143520%_
                                                         _%args143469%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx149838149839%_))
                                             (let ((_%e143497143551%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx149838149839%_))))
                                               (let ((_%tl143499143556%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e143497143551%_)))
                                                     (_%hd143498143554%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e143497143551%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd143498143554%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd143498143554%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl143499143556%_))
                     (let ((_%e143500143559%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143499143556%_))))
                       (let ((_%tl143502143564%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e143500143559%_)))
                             (_%hd143501143562%_
                              (let ()
                                (declare (not safe))
                                (##car _%e143500143559%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143502143564%_))
                             (_%__kont149840149841%_)
                             (_%__kont149844149845%_))))
                     (_%__kont149844149845%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd143498143554%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl143499143556%_))
                         (let ((_%e143506143536%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl143499143556%_))))
                           (let ((_%tl143508143541%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e143506143536%_)))
                                 (_%hd143507143539%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e143506143536%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl143508143541%_))
                                 (_%__kont149842149843%_)
                                 (_%__kont149844149845%_))))
                         (_%__kont149844149845%_))
                     (_%__kont149844149845%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont149844149845%_))))
                                             (_%__kont149844149845%_)))))))
                             (if (pair? _%rest143470143478%_)
                                 (let ((_%hd143475143575%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest143470143478%_)))
                                       (_%tl143476143577%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest143470143478%_))))
                                   (let* ((_%e143580%_ _%hd143475143575%_)
                                          (_%rest143582%_ _%tl143476143577%_))
                                     (_%K143474143572%_
                                      _%rest143582%_
                                      _%e143580%_)))
                                 (_%else143472143486%_))))))))
                (_%__kont149890149891%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self143337%_ _%stx143338%_))))
            (let ((_%__match149929149930%_
                   (lambda (_%e143345143382%_
                            _%hd143346143385%_
                            _%tl143347143387%_
                            _%e143348143390%_
                            _%hd143349143393%_
                            _%tl143350143395%_
                            _%e143351143398%_
                            _%hd143352143401%_
                            _%tl143353143403%_
                            _%e143354143406%_
                            _%hd143355143409%_
                            _%tl143356143411%_
                            _%__splice149888149889%_
                            _%target143357143414%_
                            _%tl143359143416%_)
                     (letrec ((_%loop143360143419%_
                               (lambda (_%hd143358143422%_
                                        _%rand143364143424%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd143358143422%_))
                                     (let ((_%e143361143427%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd143358143422%_))))
                                       (let ((_%lp-tl143363143432%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e143361143427%_)))
                                             (_%lp-hd143362143430%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e143361143427%_))))
                                         (_%loop143360143419%_
                                          _%lp-tl143363143432%_
                                          (cons _%lp-hd143362143430%_
                                                _%rand143364143424%_))))
                                     (let ((_%rand143365143435%_
                                            (reverse _%rand143364143424%_)))
                                       (_%__kont149886149887%_
                                        _%rand143365143435%_
                                        _%hd143355143409%_))))))
                       (_%loop143360143419%_ _%target143357143414%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx149884149885%_))
                  (let ((_%e143345143382%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx149884149885%_))))
                    (let ((_%tl143347143387%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143345143382%_)))
                          (_%hd143346143385%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143345143382%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143347143387%_))
                          (let ((_%e143348143390%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143347143387%_))))
                            (let ((_%tl143350143395%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143348143390%_)))
                                  (_%hd143349143393%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143348143390%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143349143393%_))
                                  (let ((_%e143351143398%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143349143393%_))))
                                    (let ((_%tl143353143403%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143351143398%_)))
                                          (_%hd143352143401%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143351143398%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143352143401%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143352143401%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143353143403%_))
                                                  (let ((_%e143354143406%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143353143403%_))))
                                                    (let ((_%tl143356143411%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143354143406%_)))
                                                          (_%hd143355143409%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143354143406%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143356143411%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl143350143395%_))
                      (let ((_%__splice149888149889%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl143350143395%_
                                '0))))
                        (let ((_%tl143359143416%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149888149889%_ '1)))
                              (_%target143357143414%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice149888149889%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl143359143416%_))
                              (_%__match149929149930%_
                               _%e143345143382%_
                               _%hd143346143385%_
                               _%tl143347143387%_
                               _%e143348143390%_
                               _%hd143349143393%_
                               _%tl143350143395%_
                               _%e143351143398%_
                               _%hd143352143401%_
                               _%tl143353143403%_
                               _%e143354143406%_
                               _%hd143355143409%_
                               _%tl143356143411%_
                               _%__splice149888149889%_
                               _%target143357143414%_
                               _%tl143359143416%_)
                              (_%__kont149890149891%_))))
                      (_%__kont149890149891%_))
                  (_%__kont149890149891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont149890149891%_))
                                              (_%__kont149890149891%_))
                                          (_%__kont149890149891%_))))
                                  (_%__kont149890149891%_))))
                          (_%__kont149890149891%_))))
                  (_%__kont149890149891%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self143149%_ _%stx143150%_)
        (letrec ((_%simplify143152%_
                  (lambda (_%code143237%_)
                    (let* ((_%code143238143256%_ _%code143237%_)
                           (_%else143240143264%_ (lambda () _%code143237%_))
                           (_%K143242143300%_
                            (lambda (_%expr143267%_ _%test143268%_)
                              (let* ((_%expr143269143277%_ _%expr143267%_)
                                     (_%else143271143285%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test143268%_
                                                    (cons _%expr143267%_
                                                          '())))))
                                     (_%K143273143290%_
                                      (lambda (_%exprs143288%_)
                                        (cons 'and
                                              (cons _%test143268%_
                                                    _%exprs143288%_)))))
                                (if (pair? _%expr143269143277%_)
                                    (let ((_%hd143274143293%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr143269143277%_)))
                                          (_%tl143275143295%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr143269143277%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd143274143293%_ 'and))
                                          (let ((_%exprs143298%_
                                                 _%tl143275143295%_))
                                            (_%K143273143290%_
                                             _%exprs143298%_))
                                          (_%else143271143285%_)))
                                    (_%else143271143285%_))))))
                      (if (pair? _%code143238143256%_)
                          (let ((_%hd143243143303%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code143238143256%_)))
                                (_%tl143244143305%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code143238143256%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd143243143303%_ 'if))
                                (if (pair? _%tl143244143305%_)
                                    (let ((_%hd143245143308%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl143244143305%_)))
                                          (_%tl143246143310%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl143244143305%_))))
                                      (let ((_%test143313%_
                                             _%hd143245143308%_))
                                        (if (pair? _%tl143246143310%_)
                                            (let ((_%hd143247143315%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl143246143310%_)))
                                                  (_%tl143248143317%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl143246143310%_))))
                                              (let ((_%expr143320%_
                                                     _%hd143247143315%_))
                                                (if (pair? _%tl143248143317%_)
                                                    (let ((_%hd143249143322%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl143248143317%_)))
                                                          (_%tl143250143324%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl143248143317%_))))
                                                      (if (pair? _%hd143249143322%_)
                                                          (let ((_%hd143251143327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd143249143322%_)))
                        (_%tl143252143329%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd143249143322%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd143251143327%_ 'quote))
                        (if (pair? _%tl143252143329%_)
                            (let ((_%hd143253143332%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl143252143329%_)))
                                  (_%tl143254143334%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl143252143329%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd143253143332%_ '#f))
                                  (if (null? _%tl143254143334%_)
                                      (if (null? _%tl143250143324%_)
                                          (_%K143242143300%_
                                           _%expr143320%_
                                           _%test143313%_)
                                          (_%else143240143264%_))
                                      (_%else143240143264%_))
                                  (_%else143240143264%_)))
                            (_%else143240143264%_))
                        (_%else143240143264%_)))
                  (_%else143240143264%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else143240143264%_))))
                                            (_%else143240143264%_))))
                                    (_%else143240143264%_))
                                (_%else143240143264%_)))
                          (_%else143240143264%_))))))
          (let* ((_%g143154143175%_
                  (lambda (_%g143155143172%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143155143172%_))))
                 (_%g143153143234%_
                  (lambda (_%g143155143178%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143155143178%_))
                        (let ((_%e143159143180%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143155143178%_))))
                          (let ((_%hd143160143183%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143159143180%_)))
                                (_%tl143161143185%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143159143180%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143161143185%_))
                                (let ((_%e143162143188%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143161143185%_))))
                                  (let ((_%hd143163143191%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143162143188%_)))
                                        (_%tl143164143193%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143162143188%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143164143193%_))
                                        (let ((_%e143165143196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143164143193%_))))
                                          (let ((_%hd143166143199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143165143196%_)))
                                                (_%tl143167143201%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143165143196%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl143167143201%_))
                                                (let ((_%e143168143204%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl143167143201%_))))
                                                  (let ((_%hd143169143207%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143168143204%_)))
                                                        (_%tl143170143209%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143168143204%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl143170143209%_))
                                                        ((lambda (_%L143212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L143213%_
                          _%L143214%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify143152%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self143149%_
                                       _%L143214%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self143149%_
                                             _%L143213%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143149%_
                                                   _%L143212%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp150384
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self143149%_
                                               _%L143214%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp150384
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self143149%_
                                            _%L143213%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self143149%_
                                                  _%L143212%_))
                                               '()))))))
                 _%hd143169143207%_
                 _%hd143166143199%_
                 _%hd143163143191%_)
                (_%g143154143175%_ _%g143155143178%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g143154143175%_
                                                 _%g143155143178%_))))
                                        (_%g143154143175%_
                                         _%g143155143178%_))))
                                (_%g143154143175%_ _%g143155143178%_))))
                        (_%g143154143175%_ _%g143155143178%_)))))
            (_%g143153143234%_ _%stx143150%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self143097%_ _%stx143098%_)
        (let* ((_%g143100143113%_
                (lambda (_%g143101143110%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143101143110%_))))
               (_%g143099143146%_
                (lambda (_%g143101143116%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143101143116%_))
                      (let ((_%e143103143118%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143101143116%_))))
                        (let ((_%hd143104143121%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143103143118%_)))
                              (_%tl143105143123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143103143118%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143105143123%_))
                              (let ((_%e143106143126%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143105143123%_))))
                                (let ((_%hd143107143129%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143106143126%_)))
                                      (_%tl143108143131%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143106143126%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl143108143131%_))
                                      ((lambda (_%L143134%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L143134%_)))
                                       _%hd143107143129%_)
                                      (_%g143100143113%_ _%g143101143116%_))))
                              (_%g143100143113%_ _%g143101143116%_))))
                      (_%g143100143113%_ _%g143101143116%_)))))
          (_%g143099143146%_ _%stx143098%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self143029%_ _%stx143030%_)
        (let* ((_%g143032143049%_
                (lambda (_%g143033143046%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143033143046%_))))
               (_%g143031143094%_
                (lambda (_%g143033143052%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143033143052%_))
                      (let ((_%e143036143054%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143033143052%_))))
                        (let ((_%hd143037143057%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143036143054%_)))
                              (_%tl143038143059%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143036143054%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143038143059%_))
                              (let ((_%e143039143062%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143038143059%_))))
                                (let ((_%hd143040143065%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143039143062%_)))
                                      (_%tl143041143067%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143039143062%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143041143067%_))
                                      (let ((_%e143042143070%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143041143067%_))))
                                        (let ((_%hd143043143073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143042143070%_)))
                                              (_%tl143044143075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143042143070%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143044143075%_))
                                              ((lambda (_%L143078%_
                                                        _%L143079%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L143079%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self143029%_ _%L143078%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd143043143073%_
                                               _%hd143040143065%_)
                                              (_%g143032143049%_
                                               _%g143033143052%_))))
                                      (_%g143032143049%_ _%g143033143052%_))))
                              (_%g143032143049%_ _%g143033143052%_))))
                      (_%g143032143049%_ _%g143033143052%_)))))
          (_%g143031143094%_ _%stx143030%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self142840%_ _%stx142841%_)
        (let* ((_%g142843142860%_
                (lambda (_%g142844142857%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142844142857%_))))
               (_%g142842143026%_
                (lambda (_%g142844142863%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142844142863%_))
                      (let ((_%e142847142865%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142844142863%_))))
                        (let ((_%hd142848142868%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142847142865%_)))
                              (_%tl142849142870%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142847142865%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142849142870%_))
                              (let ((_%e142850142873%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142849142870%_))))
                                (let ((_%hd142851142876%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142850142873%_)))
                                      (_%tl142852142878%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142850142873%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142852142878%_))
                                      (let ((_%e142853142881%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142852142878%_))))
                                        (let ((_%hd142854142884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142853142881%_)))
                                              (_%tl142855142886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142853142881%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142855142886%_))
                                              ((lambda (_%L142889%_
                                                        _%L142890%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self142840%_ _%L142889%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self142840%_ _%L142890%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp142905%_ ((_%rest142908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L142890%_ (cons _%L142889%_ '())))
                                (_%bind142910%_ '())
                                (_%args142911%_ '()))
               (let* ((_%rest142912142920%_ _%rest142908%_)
                      (_%else142914142928%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind142910%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args142911%_)
                                                 '()))))))
                      (_%K142916143014%_
                       (lambda (_%rest142931%_ _%e142932%_)
                         (let* ((_%__stx149932149933%_ _%e142932%_)
                                (_%g142937142955%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx149932149933%_)))))
                           (let ((_%__kont149934149935%_
                                  (lambda ()
                                    (_%lp142905%_
                                     _%rest142931%_
                                     _%bind142910%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142932%_))
                                           _%args142911%_))))
                                 (_%__kont149936149937%_
                                  (lambda ()
                                    (_%lp142905%_
                                     _%rest142931%_
                                     _%bind142910%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142932%_))
                                           _%args142911%_))))
                                 (_%__kont149938149939%_
                                  (lambda ()
                                    (let ((_%tmp142962%_
                                           (let ((__tmp150385
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp150385))))
                                      (_%lp142905%_
                                       _%rest142931%_
                                       (cons (cons _%tmp142962%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e142932%_))
                                                         '()))
                                             _%bind142910%_)
                                       (cons _%tmp142962%_ _%args142911%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx149932149933%_))
                                 (let ((_%e142939142993%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx149932149933%_))))
                                   (let ((_%tl142941142998%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e142939142993%_)))
                                         (_%hd142940142996%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e142939142993%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd142940142996%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd142940142996%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl142941142998%_))
                                                 (let ((_%e142942143001%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl142941142998%_))))
                                                   (let ((_%tl142944143006%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142942143001%_)))
                                                         (_%hd142943143004%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142942143001%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142944143006%_))
                                                         (_%__kont149934149935%_)
                                                         (_%__kont149938149939%_))))
                                                 (_%__kont149938149939%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd142940142996%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142941142998%_))
                                                     (let ((_%e142948142978%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142941142998%_))))
                                                       (let ((_%tl142950142983%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142948142978%_)))
                     (_%hd142949142981%_
                      (let () (declare (not safe)) (##car _%e142948142978%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142950142983%_))
                     (_%__kont149936149937%_)
                     (_%__kont149938149939%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont149938149939%_))
                                                 (_%__kont149938149939%_)))
                                         (_%__kont149938149939%_))))
                                 (_%__kont149938149939%_)))))))
                 (if (pair? _%rest142912142920%_)
                     (let ((_%hd142917143017%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest142912142920%_)))
                           (_%tl142918143019%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest142912142920%_))))
                       (let* ((_%e143022%_ _%hd142917143017%_)
                              (_%rest143024%_ _%tl142918143019%_))
                         (_%K142916143014%_ _%rest143024%_ _%e143022%_)))
                     (_%else142914142928%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142854142884%_
                                               _%hd142851142876%_)
                                              (_%g142843142860%_
                                               _%g142844142863%_))))
                                      (_%g142843142860%_ _%g142844142863%_))))
                              (_%g142843142860%_ _%g142844142863%_))))
                      (_%g142843142860%_ _%g142844142863%_)))))
          (_%g142842143026%_ _%stx142841%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self142651%_ _%stx142652%_)
        (let* ((_%g142654142671%_
                (lambda (_%g142655142668%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142655142668%_))))
               (_%g142653142837%_
                (lambda (_%g142655142674%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142655142674%_))
                      (let ((_%e142658142676%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142655142674%_))))
                        (let ((_%hd142659142679%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142658142676%_)))
                              (_%tl142660142681%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142658142676%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142660142681%_))
                              (let ((_%e142661142684%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142660142681%_))))
                                (let ((_%hd142662142687%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142661142684%_)))
                                      (_%tl142663142689%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142661142684%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142663142689%_))
                                      (let ((_%e142664142692%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142663142689%_))))
                                        (let ((_%hd142665142695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142664142692%_)))
                                              (_%tl142666142697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142664142692%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142666142697%_))
                                              ((lambda (_%L142700%_
                                                        _%L142701%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self142651%_ _%L142700%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self142651%_ _%L142701%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp142716%_ ((_%rest142719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L142701%_ (cons _%L142700%_ '())))
                                (_%bind142721%_ '())
                                (_%args142722%_ '()))
               (let* ((_%rest142723142731%_ _%rest142719%_)
                      (_%else142725142739%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind142721%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args142722%_)
                                                 '()))))))
                      (_%K142727142825%_
                       (lambda (_%rest142742%_ _%e142743%_)
                         (let* ((_%__stx149978149979%_ _%e142743%_)
                                (_%g142748142766%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx149978149979%_)))))
                           (let ((_%__kont149980149981%_
                                  (lambda ()
                                    (_%lp142716%_
                                     _%rest142742%_
                                     _%bind142721%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142743%_))
                                           _%args142722%_))))
                                 (_%__kont149982149983%_
                                  (lambda ()
                                    (_%lp142716%_
                                     _%rest142742%_
                                     _%bind142721%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e142743%_))
                                           _%args142722%_))))
                                 (_%__kont149984149985%_
                                  (lambda ()
                                    (let ((_%tmp142773%_
                                           (let ((__tmp150386
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp150386))))
                                      (_%lp142716%_
                                       _%rest142742%_
                                       (cons (cons _%tmp142773%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e142743%_))
                                                         '()))
                                             _%bind142721%_)
                                       (cons _%tmp142773%_ _%args142722%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx149978149979%_))
                                 (let ((_%e142750142804%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx149978149979%_))))
                                   (let ((_%tl142752142809%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e142750142804%_)))
                                         (_%hd142751142807%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e142750142804%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd142751142807%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd142751142807%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl142752142809%_))
                                                 (let ((_%e142753142812%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl142752142809%_))))
                                                   (let ((_%tl142755142817%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142753142812%_)))
                                                         (_%hd142754142815%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142753142812%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142755142817%_))
                                                         (_%__kont149980149981%_)
                                                         (_%__kont149984149985%_))))
                                                 (_%__kont149984149985%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd142751142807%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142752142809%_))
                                                     (let ((_%e142759142789%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142752142809%_))))
                                                       (let ((_%tl142761142794%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142759142789%_)))
                     (_%hd142760142792%_
                      (let () (declare (not safe)) (##car _%e142759142789%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142761142794%_))
                     (_%__kont149982149983%_)
                     (_%__kont149984149985%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont149984149985%_))
                                                 (_%__kont149984149985%_)))
                                         (_%__kont149984149985%_))))
                                 (_%__kont149984149985%_)))))))
                 (if (pair? _%rest142723142731%_)
                     (let ((_%hd142728142828%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest142723142731%_)))
                           (_%tl142729142830%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest142723142731%_))))
                       (let* ((_%e142833%_ _%hd142728142828%_)
                              (_%rest142835%_ _%tl142729142830%_))
                         (_%K142727142825%_ _%rest142835%_ _%e142833%_)))
                     (_%else142725142739%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142665142695%_
                                               _%hd142662142687%_)
                                              (_%g142654142671%_
                                               _%g142655142674%_))))
                                      (_%g142654142671%_ _%g142655142674%_))))
                              (_%g142654142671%_ _%g142655142674%_))))
                      (_%g142654142671%_ _%g142655142674%_)))))
          (_%g142653142837%_ _%stx142652%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self142567%_ _%stx142568%_)
        (let* ((_%g142570142591%_
                (lambda (_%g142571142588%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142571142588%_))))
               (_%g142569142648%_
                (lambda (_%g142571142594%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142571142594%_))
                      (let ((_%e142575142596%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142571142594%_))))
                        (let ((_%hd142576142599%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142575142596%_)))
                              (_%tl142577142601%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142575142596%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142577142601%_))
                              (let ((_%e142578142604%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142577142601%_))))
                                (let ((_%hd142579142607%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142578142604%_)))
                                      (_%tl142580142609%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142578142604%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142580142609%_))
                                      (let ((_%e142581142612%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142580142609%_))))
                                        (let ((_%hd142582142615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142581142612%_)))
                                              (_%tl142583142617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142581142612%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142583142617%_))
                                              (let ((_%e142584142620%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142583142617%_))))
                                                (let ((_%hd142585142623%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142584142620%_)))
                                                      (_%tl142586142625%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142584142620%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142586142625%_))
                                                      ((lambda (_%L142628%_
                                                                _%L142629%_
                                                                _%L142630%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self142567%_ _%L142628%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self142567%_
                                      _%L142629%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self142567%_
                                            _%L142630%_))
                                         (cons ''#f '()))))))
               _%hd142585142623%_
               _%hd142582142615%_
               _%hd142579142607%_)
              (_%g142570142591%_ _%g142571142594%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142570142591%_
                                               _%g142571142594%_))))
                                      (_%g142570142591%_ _%g142571142594%_))))
                              (_%g142570142591%_ _%g142571142594%_))))
                      (_%g142570142591%_ _%g142571142594%_)))))
          (_%g142569142648%_ _%stx142568%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self142467%_ _%stx142468%_)
        (let* ((_%g142470142495%_
                (lambda (_%g142471142492%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142471142492%_))))
               (_%g142469142564%_
                (lambda (_%g142471142498%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142471142498%_))
                      (let ((_%e142476142500%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142471142498%_))))
                        (let ((_%hd142477142503%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142476142500%_)))
                              (_%tl142478142505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142476142500%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142478142505%_))
                              (let ((_%e142479142508%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142478142505%_))))
                                (let ((_%hd142480142511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142479142508%_)))
                                      (_%tl142481142513%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142479142508%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142481142513%_))
                                      (let ((_%e142482142516%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142481142513%_))))
                                        (let ((_%hd142483142519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142482142516%_)))
                                              (_%tl142484142521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142482142516%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142484142521%_))
                                              (let ((_%e142485142524%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142484142521%_))))
                                                (let ((_%hd142486142527%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142485142524%_)))
                                                      (_%tl142487142529%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142485142524%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl142487142529%_))
                                                      (let ((_%e142488142532%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl142487142529%_))))
                (let ((_%hd142489142535%_
                       (let () (declare (not safe)) (##car _%e142488142532%_)))
                      (_%tl142490142537%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e142488142532%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142490142537%_))
                      ((lambda (_%L142540%_
                                _%L142541%_
                                _%L142542%_
                                _%L142543%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self142467%_
                                        _%L142541%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self142467%_
                                              _%L142540%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self142467%_
                                                    _%L142542%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self142467%_
                                                          _%L142543%_))
                                                       (cons ''#f '())))))))
                       _%hd142489142535%_
                       _%hd142486142527%_
                       _%hd142483142519%_
                       _%hd142480142511%_)
                      (_%g142470142495%_ _%g142471142498%_))))
              (_%g142470142495%_ _%g142471142498%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142470142495%_
                                               _%g142471142498%_))))
                                      (_%g142470142495%_ _%g142471142498%_))))
                              (_%g142470142495%_ _%g142471142498%_))))
                      (_%g142470142495%_ _%g142471142498%_)))))
          (_%g142469142564%_ _%stx142468%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self142383%_ _%stx142384%_)
        (let* ((_%g142386142407%_
                (lambda (_%g142387142404%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142387142404%_))))
               (_%g142385142464%_
                (lambda (_%g142387142410%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142387142410%_))
                      (let ((_%e142391142412%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142387142410%_))))
                        (let ((_%hd142392142415%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142391142412%_)))
                              (_%tl142393142417%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142391142412%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142393142417%_))
                              (let ((_%e142394142420%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142393142417%_))))
                                (let ((_%hd142395142423%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142394142420%_)))
                                      (_%tl142396142425%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142394142420%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142396142425%_))
                                      (let ((_%e142397142428%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142396142425%_))))
                                        (let ((_%hd142398142431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142397142428%_)))
                                              (_%tl142399142433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142397142428%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142399142433%_))
                                              (let ((_%e142400142436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142399142433%_))))
                                                (let ((_%hd142401142439%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142400142436%_)))
                                                      (_%tl142402142441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142400142436%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142402142441%_))
                                                      ((lambda (_%L142444%_
                                                                _%L142445%_
                                                                _%L142446%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self142383%_ _%L142444%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self142383%_
                                      _%L142445%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self142383%_
                                            _%L142446%_))
                                         (cons ''#f '()))))))
               _%hd142401142439%_
               _%hd142398142431%_
               _%hd142395142423%_)
              (_%g142386142407%_ _%g142387142410%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142386142407%_
                                               _%g142387142410%_))))
                                      (_%g142386142407%_ _%g142387142410%_))))
                              (_%g142386142407%_ _%g142387142410%_))))
                      (_%g142386142407%_ _%g142387142410%_)))))
          (_%g142385142464%_ _%stx142384%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self142283%_ _%stx142284%_)
        (let* ((_%g142286142311%_
                (lambda (_%g142287142308%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142287142308%_))))
               (_%g142285142380%_
                (lambda (_%g142287142314%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142287142314%_))
                      (let ((_%e142292142316%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142287142314%_))))
                        (let ((_%hd142293142319%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142292142316%_)))
                              (_%tl142294142321%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142292142316%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142294142321%_))
                              (let ((_%e142295142324%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142294142321%_))))
                                (let ((_%hd142296142327%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142295142324%_)))
                                      (_%tl142297142329%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142295142324%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142297142329%_))
                                      (let ((_%e142298142332%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142297142329%_))))
                                        (let ((_%hd142299142335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142298142332%_)))
                                              (_%tl142300142337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142298142332%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142300142337%_))
                                              (let ((_%e142301142340%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142300142337%_))))
                                                (let ((_%hd142302142343%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142301142340%_)))
                                                      (_%tl142303142345%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142301142340%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl142303142345%_))
                                                      (let ((_%e142304142348%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl142303142345%_))))
                (let ((_%hd142305142351%_
                       (let () (declare (not safe)) (##car _%e142304142348%_)))
                      (_%tl142306142353%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e142304142348%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142306142353%_))
                      ((lambda (_%L142356%_
                                _%L142357%_
                                _%L142358%_
                                _%L142359%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self142283%_
                                        _%L142357%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self142283%_
                                              _%L142356%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self142283%_
                                                    _%L142358%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self142283%_
                                                          _%L142359%_))
                                                       (cons ''#f '())))))))
                       _%hd142305142351%_
                       _%hd142302142343%_
                       _%hd142299142335%_
                       _%hd142296142327%_)
                      (_%g142286142311%_ _%g142287142314%_))))
              (_%g142286142311%_ _%g142287142314%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142286142311%_
                                               _%g142287142314%_))))
                                      (_%g142286142311%_ _%g142287142314%_))))
                              (_%g142286142311%_ _%g142287142314%_))))
                      (_%g142286142311%_ _%g142287142314%_)))))
          (_%g142285142380%_ _%stx142284%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self142078%_ _%stx142079%_)
        (let* ((_%g142081142102%_
                (lambda (_%g142082142099%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142082142099%_))))
               (_%g142080142280%_
                (lambda (_%g142082142105%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142082142105%_))
                      (let ((_%e142086142107%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142082142105%_))))
                        (let ((_%hd142087142110%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142086142107%_)))
                              (_%tl142088142112%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142086142107%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142088142112%_))
                              (let ((_%e142089142115%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142088142112%_))))
                                (let ((_%hd142090142118%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142089142115%_)))
                                      (_%tl142091142120%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142089142115%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142091142120%_))
                                      (let ((_%e142092142123%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142091142120%_))))
                                        (let ((_%hd142093142126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142092142123%_)))
                                              (_%tl142094142128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142092142123%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142094142128%_))
                                              (let ((_%e142095142131%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142094142128%_))))
                                                (let ((_%hd142096142134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142095142131%_)))
                                                      (_%tl142097142136%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142095142131%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142097142136%_))
                                                      ((lambda (_%L142139%_
                                                                _%L142140%_
                                                                _%L142141%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self142078%_
                                    _%L142139%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self142078%_
                                          _%L142140%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp142159%_ ((_%rest142162%_
                                         (cons _%L142140%_
                                               (cons _%L142139%_ '())))
                                        (_%bind142164%_ '())
                                        (_%args142165%_ '()))
                       (let* ((_%rest142166142174%_ _%rest142162%_)
                              (_%else142168142182%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind142164%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp150387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp150387 _%args142165%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K142170142268%_
                               (lambda (_%rest142185%_ _%e142186%_)
                                 (let* ((_%__stx150024150025%_ _%e142186%_)
                                        (_%g142191142209%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx150024150025%_)))))
                                   (let ((_%__kont150026150027%_
                                          (lambda ()
                                            (_%lp142159%_
                                             _%rest142185%_
                                             _%bind142164%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e142186%_))
                                                   _%args142165%_))))
                                         (_%__kont150028150029%_
                                          (lambda ()
                                            (_%lp142159%_
                                             _%rest142185%_
                                             _%bind142164%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e142186%_))
                                                   _%args142165%_))))
                                         (_%__kont150030150031%_
                                          (lambda ()
                                            (let ((_%tmp142216%_
                                                   (let ((__tmp150388
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp150388))))
                                              (_%lp142159%_
                                               _%rest142185%_
                                               (cons (cons _%tmp142216%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e142186%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142164%_)
                                               (cons _%tmp142216%_
                                                     _%args142165%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx150024150025%_))
                                         (let ((_%e142193142247%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx150024150025%_))))
                                           (let ((_%tl142195142252%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142193142247%_)))
                                                 (_%hd142194142250%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142193142247%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd142194142250%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd142194142250%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl142195142252%_))
                                                         (let ((_%e142196142255%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl142195142252%_))))
                   (let ((_%tl142198142260%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e142196142255%_)))
                         (_%hd142197142258%_
                          (let ()
                            (declare (not safe))
                            (##car _%e142196142255%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl142198142260%_))
                         (_%__kont150026150027%_)
                         (_%__kont150030150031%_))))
                 (_%__kont150030150031%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd142194142250%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142195142252%_))
                     (let ((_%e142202142232%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142195142252%_))))
                       (let ((_%tl142204142237%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142202142232%_)))
                             (_%hd142203142235%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142202142232%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142204142237%_))
                             (_%__kont150028150029%_)
                             (_%__kont150030150031%_))))
                     (_%__kont150030150031%_))
                 (_%__kont150030150031%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont150030150031%_))))
                                         (_%__kont150030150031%_)))))))
                         (if (pair? _%rest142166142174%_)
                             (let ((_%hd142171142271%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest142166142174%_)))
                                   (_%tl142172142273%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest142166142174%_))))
                               (let* ((_%e142276%_ _%hd142171142271%_)
                                      (_%rest142278%_ _%tl142172142273%_))
                                 (_%K142170142268%_
                                  _%rest142278%_
                                  _%e142276%_)))
                             (_%else142168142182%_))))))
               _%hd142096142134%_
               _%hd142093142126%_
               _%hd142090142118%_)
              (_%g142081142102%_ _%g142082142105%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g142081142102%_
                                               _%g142082142105%_))))
                                      (_%g142081142102%_ _%g142082142105%_))))
                              (_%g142081142102%_ _%g142082142105%_))))
                      (_%g142081142102%_ _%g142082142105%_)))))
          (_%g142080142280%_ _%stx142079%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self141857%_ _%stx141858%_)
        (let* ((_%g141860141885%_
                (lambda (_%g141861141882%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141861141882%_))))
               (_%g141859142075%_
                (lambda (_%g141861141888%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141861141888%_))
                      (let ((_%e141866141890%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141861141888%_))))
                        (let ((_%hd141867141893%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141866141890%_)))
                              (_%tl141868141895%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141866141890%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141868141895%_))
                              (let ((_%e141869141898%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141868141895%_))))
                                (let ((_%hd141870141901%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141869141898%_)))
                                      (_%tl141871141903%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141869141898%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141871141903%_))
                                      (let ((_%e141872141906%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141871141903%_))))
                                        (let ((_%hd141873141909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141872141906%_)))
                                              (_%tl141874141911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141872141906%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141874141911%_))
                                              (let ((_%e141875141914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141874141911%_))))
                                                (let ((_%hd141876141917%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141875141914%_)))
                                                      (_%tl141877141919%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141875141914%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl141877141919%_))
                                                      (let ((_%e141878141922%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl141877141919%_))))
                (let ((_%hd141879141925%_
                       (let () (declare (not safe)) (##car _%e141878141922%_)))
                      (_%tl141880141927%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141878141922%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141880141927%_))
                      ((lambda (_%L141930%_
                                _%L141931%_
                                _%L141932%_
                                _%L141933%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self141857%_
                                            _%L141931%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self141857%_
                                                  _%L141930%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self141857%_
                                                        _%L141932%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp141954%_ ((_%rest141957%_
                                                 (cons _%L141932%_
                                                       (cons _%L141930%_
                                                             (cons _%L141931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind141959%_ '())
                                                (_%args141960%_ '()))
                               (let* ((_%rest141961141969%_ _%rest141957%_)
                                      (_%else141963141977%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind141959%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp150389 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp150389 _%args141960%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K141965142063%_
                                       (lambda (_%rest141980%_ _%e141981%_)
                                         (let* ((_%__stx150070150071%_
                                                 _%e141981%_)
                                                (_%g141986142004%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx150070150071%_)))))
                                           (let ((_%__kont150072150073%_
                                                  (lambda ()
                                                    (_%lp141954%_
                                                     _%rest141980%_
                                                     _%bind141959%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e141981%_))
                                                           _%args141960%_))))
                                                 (_%__kont150074150075%_
                                                  (lambda ()
                                                    (_%lp141954%_
                                                     _%rest141980%_
                                                     _%bind141959%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e141981%_))
                                                           _%args141960%_))))
                                                 (_%__kont150076150077%_
                                                  (lambda ()
                                                    (let ((_%tmp142011%_
                                                           (let ((__tmp150390
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp150390))))
              (_%lp141954%_
               _%rest141980%_
               (cons (cons _%tmp142011%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e141981%_))
                                 '()))
                     _%bind141959%_)
               (cons _%tmp142011%_ _%args141960%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx150070150071%_))
                                                 (let ((_%e141988142042%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx150070150071%_))))
                                                   (let ((_%tl141990142047%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141988142042%_)))
                                                         (_%hd141989142045%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141988142042%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd141989142045%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd141989142045%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl141990142047%_))
                         (let ((_%e141991142050%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl141990142047%_))))
                           (let ((_%tl141993142055%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e141991142050%_)))
                                 (_%hd141992142053%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e141991142050%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl141993142055%_))
                                 (_%__kont150072150073%_)
                                 (_%__kont150076150077%_))))
                         (_%__kont150076150077%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd141989142045%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl141990142047%_))
                             (let ((_%e141997142027%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl141990142047%_))))
                               (let ((_%tl141999142032%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e141997142027%_)))
                                     (_%hd141998142030%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e141997142027%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl141999142032%_))
                                     (_%__kont150074150075%_)
                                     (_%__kont150076150077%_))))
                             (_%__kont150076150077%_))
                         (_%__kont150076150077%_)))
                 (_%__kont150076150077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont150076150077%_)))))))
                                 (if (pair? _%rest141961141969%_)
                                     (let ((_%hd141966142066%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest141961141969%_)))
                                           (_%tl141967142068%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest141961141969%_))))
                                       (let* ((_%e142071%_ _%hd141966142066%_)
                                              (_%rest142073%_
                                               _%tl141967142068%_))
                                         (_%K141965142063%_
                                          _%rest142073%_
                                          _%e142071%_)))
                                     (_%else141963141977%_))))))
                       _%hd141879141925%_
                       _%hd141876141917%_
                       _%hd141873141909%_
                       _%hd141870141901%_)
                      (_%g141860141885%_ _%g141861141888%_))))
              (_%g141860141885%_ _%g141861141888%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141860141885%_
                                               _%g141861141888%_))))
                                      (_%g141860141885%_ _%g141861141888%_))))
                              (_%g141860141885%_ _%g141861141888%_))))
                      (_%g141860141885%_ _%g141861141888%_)))))
          (_%g141859142075%_ _%stx141858%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self141696%_ _%stx141697%_)
        (letrec ((_%import-set-template141699%_
                  (lambda (_%in141802%_ _%phi141803%_)
                    (let ((_%iphi141805%_
                           (fx+ _%phi141803%_
                                (##direct-structure-ref
                                 _%in141802%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports141806%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in141802%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp141808%_ ((_%rest141810%_ _%imports141806%_)
                                         (_%r141811%_ '()))
                        (let* ((_%rest141812141820%_ _%rest141810%_)
                               (_%else141814141828%_ (lambda () _%r141811%_))
                               (_%K141816141845%_
                                (lambda (_%rest141831%_ _%in141832%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in141832%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi141805%_))
                                          (_%lp141808%_
                                           _%rest141831%_
                                           (cons _%in141832%_ _%r141811%_))
                                          (_%lp141808%_
                                           _%rest141831%_
                                           _%r141811%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in141832%_
                                             'gx#module-import::t))
                                          (let ((_%iphi141836%_
                                                 (fx+ _%phi141803%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in141832%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi141836%_))
                                                (_%lp141808%_
                                                 _%rest141831%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in141832%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r141811%_))
                                                (_%lp141808%_
                                                 _%rest141831%_
                                                 _%r141811%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in141832%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi141839%_
                                                     (fx+ _%iphi141805%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in141832%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi141839%_))
                                                    (_%lp141808%_
                                                     _%rest141831%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in141832%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r141811%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi141839%_))
                                                        (_%lp141808%_
                                                         _%rest141831%_
                                                         (let ((__tmp150391
                                                                (_%import-set-template141699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in141832%_
                         _%iphi141805%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r141811%_ __tmp150391)))
                (_%lp141808%_ _%rest141831%_ _%r141811%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp141808%_
                                               _%rest141831%_
                                               _%r141811%_)))))))
                          (if (pair? _%rest141812141820%_)
                              (let ((_%hd141817141848%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest141812141820%_)))
                                    (_%tl141818141850%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest141812141820%_))))
                                (let* ((_%in141853%_ _%hd141817141848%_)
                                       (_%rest141855%_ _%tl141818141850%_))
                                  (_%K141816141845%_
                                   _%rest141855%_
                                   _%in141853%_)))
                              (_%else141814141828%_))))))))
          (let* ((_%g141701141711%_
                  (lambda (_%g141702141708%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141702141708%_))))
                 (_%g141700141799%_
                  (lambda (_%g141702141714%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141702141714%_))
                        (let ((_%e141704141716%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141702141714%_))))
                          (let ((_%hd141705141719%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141704141716%_)))
                                (_%tl141706141721%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141704141716%_))))
                            ((lambda (_%L141724%_)
                               (let ((_%ht141735%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp141737%_ ((_%rest141739%_
                                                     _%L141724%_)
                                                    (_%loads141740%_ '()))
                                   (letrec ((_%K141742%_
                                             (lambda (_%ctx141792%_
                                                      _%rest141793%_)
                                               (let ((_%id141795%_
                                                      (##structure-ref
                                                       _%ctx141792%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht141735%_
                                                        _%id141795%_))
                                                     (_%lp141737%_
                                                      _%rest141793%_
                                                      _%loads141740%_)
                                                     (let ((_%rt141797%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id141795%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht141735%_
                                                          _%id141795%_
                                                          _%rt141797%_))
                                                       (_%lp141737%_
                                                        _%rest141793%_
                                                        (cons _%rt141797%_
                                                              _%loads141740%_))))))))
                                     (let* ((_%rest141743141751%_
                                             _%rest141739%_)
                                            (_%else141745141763%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp150393
                                                            (lambda (_%g141758141760%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g141758141760%_)))
                   (__tmp150392 (reverse _%loads141740%_)))
               (declare (not safe))
               (##map __tmp150393 __tmp150392)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K141747141780%_
                                             (lambda (_%rest141766%_
                                                      _%in141767%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in141767%_
                                                      'gx#module-context::t))
                                                   (_%K141742%_
                                                    _%in141767%_
                                                    _%rest141766%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in141767%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in141767%_
                               '3
                               '#f
                               '#f)))
                   (_%K141742%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in141767%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest141766%_)
                   (_%lp141737%_ _%rest141766%_ _%loads141740%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in141767%_
                      'gx#import-set::t))
                   (let ((_%phi141772%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in141767%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi141772%_)
                         (_%K141742%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in141767%_
                             '1
                             '#f
                             '#f))
                          _%rest141766%_)
                         (if (fxpositive? _%phi141772%_)
                             (let ((_%deps141776%_
                                    (_%import-set-template141699%_
                                     _%in141767%_
                                     '0)))
                               (_%lp141737%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest141766%_
                                   _%deps141776%_))
                                _%loads141740%_))
                             (_%lp141737%_ _%rest141766%_ _%loads141740%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx141697%_
                      _%in141767%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest141743141751%_)
                                           (let ((_%hd141748141783%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest141743141751%_)))
                                                 (_%tl141749141785%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest141743141751%_))))
                                             (let* ((_%in141788%_
                                                     _%hd141748141783%_)
                                                    (_%rest141790%_
                                                     _%tl141749141785%_))
                                               (_%K141747141780%_
                                                _%rest141790%_
                                                _%in141788%_)))
                                           (_%else141745141763%_)))))))
                             _%tl141706141721%_)))
                        (_%g141701141711%_ _%g141702141714%_)))))
            (_%g141700141799%_ _%stx141697%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self141509%_ _%stx141510%_)
        (letrec ((_%add-lift!141512%_
                  (lambda (_%expr141694%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr141694%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote141513%_
                  (lambda (_%id141691%_ _%marks141692%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id141691%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks141692%_
                                                        '()))))))))
                 (_%generate-simple141514%_
                  (lambda (_%stxq141686%_)
                    (let ((_%gid141688%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid141689%_
                           (gxc#generate-runtime-identifier _%stxq141686%_)))
                      (_%add-lift!141512%_
                       (cons 'define
                             (cons _%gid141688%_
                                   (cons (_%generate-syntax-quote141513%_
                                          _%qid141689%_
                                          ''())
                                         '()))))
                      (let ((__tmp150394
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp150394 _%stxq141686%_ _%gid141688%_))
                      _%gid141688%_)))
                 (_%generate-serialized141515%_
                  (lambda (_%stxq141676%_ _%marks141677%_)
                    (let* ((_%mark-refs141679%_
                            (map _%generate-mark141516%_ _%marks141677%_))
                           (_%gid141681%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid141683%_
                            (gxc#generate-runtime-identifier _%stxq141676%_)))
                      (_%add-lift!141512%_
                       (cons 'define
                             (cons _%gid141681%_
                                   (cons (_%generate-syntax-quote141513%_
                                          _%qid141683%_
                                          (cons 'list _%mark-refs141679%_))
                                         '()))))
                      (let ((__tmp150395
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp150395 _%stxq141676%_ _%gid141681%_))
                      _%gid141681%_)))
                 (_%generate-mark141516%_
                  (lambda (_%mark141661%_)
                    (let ((_%$e141663%_
                           (let ((__tmp150396
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp150396 _%mark141661%_))))
                      (if _%$e141663%_
                          _%$e141663%_
                          (let* ((_%gid141667%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr141669%_
                                  (_%serialize-mark141517%_ _%mark141661%_))
                                 (_%ctx141671%_
                                  (let ((__tmp150397
                                         (##structure-ref
                                          _%mark141661%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp150397)))
                                 (_%ctx-ref141673%_
                                  (if (eq? _%ctx141671%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref141518%_
                                                               _%ctx141671%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp150398
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp150398
                               _%mark141661%_
                               _%gid141667%_))
                            (_%add-lift!141512%_
                             (cons 'define
                                   (cons _%gid141667%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr141669%_ '()))
                   (cons _%ctx-ref141673%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid141667%_)))))
                 (_%serialize-mark141517%_
                  (lambda (_%mark141608%_)
                    (letrec ((_%quote-e141610%_
                              (lambda (_%sym141659%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym141659%_))
                                    _%sym141659%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym141659%_))))))
                      (let* ((_%mark141611141620%_ _%mark141608%_)
                             (_%E141613141624%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark141611141620%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K141614141636%_
                              (lambda (_%trace141627%_
                                       _%phi141628%_
                                       _%ctx141629%_
                                       _%subst141630%_)
                                (let ((_%subs141632%_
                                       (if _%subst141630%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst141630%_))
                                           '())))
                                  (cons _%phi141628%_
                                        (map (lambda (_%pair141634%_)
                                               (cons (_%quote-e141610%_
                                                      (car _%pair141634%_))
                                                     (_%quote-e141610%_
                                                      (cdr _%pair141634%_))))
                                             _%subs141632%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark141611141620%_
                               'gx#expander-mark::t))
                            (let* ((_%e141615141639%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141611141620%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst141642%_ _%e141615141639%_)
                                   (_%e141616141644%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141611141620%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx141647%_ _%e141616141644%_)
                                   (_%e141617141649%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141611141620%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi141652%_ _%e141617141649%_)
                                   (_%e141618141654%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark141611141620%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace141657%_ _%e141618141654%_))
                              (_%K141614141636%_
                               _%trace141657%_
                               _%phi141652%_
                               _%ctx141647%_
                               _%subst141642%_))
                            (_%E141613141624%_))))))
                 (_%context-ref141518%_
                  (lambda (_%ctx141595%_)
                    (if (let ((__tmp150399
                               (##structure-ref
                                _%ctx141595%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp150399
                           'gx#module-context::t))
                        (let ((_%ctx-ref141597%_
                               (_%context-ref-nested141520%_ _%ctx141595%_))
                              (_%ctx-origin141598%_
                               (_%context-ref-origin141519%_ _%ctx141595%_))
                              (_%origin141599%_
                               (_%context-ref-origin141519%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin141599%_ _%ctx-origin141598%_)
                              (let ((_%ref141601%_
                                     (_%context-ref-nested141520%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp141603%_ ((_%ref141605%_
                                                    (cdr _%ref141601%_))
                                                   (_%ctx-ref141606%_
                                                    (cdr _%ctx-ref141597%_)))
                                  (if (and (pair? _%ref141605%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref141605%_))
                                                (car _%ctx-ref141606%_)))
                                      (_%lp141603%_
                                       (cdr _%ref141605%_)
                                       (cdr _%ctx-ref141606%_))
                                      (cons '#f _%ctx-ref141606%_))))
                              _%ctx-ref141597%_))
                        (let ((__tmp150400
                               (##structure-ref
                                _%ctx141595%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp150400)))))
                 (_%context-ref-origin141519%_
                  (lambda (_%ctx141587%_)
                    (let _%lp141589%_ ((_%ctx141591%_ _%ctx141587%_))
                      (let ((_%super141593%_
                             (##structure-ref
                              _%ctx141591%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super141593%_
                               'gx#module-context::t))
                            (_%lp141589%_ _%super141593%_)
                            _%ctx141591%_)))))
                 (_%context-ref-nested141520%_
                  (lambda (_%ctx141578%_)
                    (let _%lp141580%_ ((_%ctx141582%_ _%ctx141578%_)
                                       (_%r141583%_ '()))
                      (let ((_%super141585%_
                             (##structure-ref
                              _%ctx141582%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super141585%_
                               'gx#module-context::t))
                            (_%lp141580%_
                             _%super141585%_
                             (cons (car (##structure-ref
                                         _%ctx141582%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r141583%_))
                            (cons (let ((__tmp150401
                                         (##structure-ref
                                          _%ctx141582%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp150401))
                                  _%r141583%_)))))))
          (let* ((_%g141522141535%_
                  (lambda (_%g141523141532%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141523141532%_))))
                 (_%g141521141575%_
                  (lambda (_%g141523141538%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141523141538%_))
                        (let ((_%e141525141540%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141523141538%_))))
                          (let ((_%hd141526141543%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141525141540%_)))
                                (_%tl141527141545%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141525141540%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141527141545%_))
                                (let ((_%e141528141548%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141527141545%_))))
                                  (let ((_%hd141529141551%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141528141548%_)))
                                        (_%tl141530141553%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141528141548%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141530141553%_))
                                        ((lambda (_%L141556%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L141556%_))
                                               (let ((_%$e141569%_
                                                      (let ((__tmp150402
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp150402 _%L141556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e141569%_
                                                     _%$e141569%_
                                                     (let ((_%marks141573%_
                                                            (##direct-structure-ref
                                                             _%L141556%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks141573%_)
                                                           (_%generate-simple141514%_
                                                            _%L141556%_)
                                                           (_%generate-serialized141515%_
                                                            _%L141556%_
                                                            _%marks141573%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L141556%_))))
                                         _%hd141529141551%_)
                                        (_%g141522141535%_
                                         _%g141523141538%_))))
                                (_%g141522141535%_ _%g141523141538%_))))
                        (_%g141522141535%_ _%g141523141538%_)))))
            (_%g141521141575%_ _%stx141510%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self141441%_ _%stx141442%_)
        (let* ((_%g141444141461%_
                (lambda (_%g141445141458%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141445141458%_))))
               (_%g141443141506%_
                (lambda (_%g141445141464%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141445141464%_))
                      (let ((_%e141448141466%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141445141464%_))))
                        (let ((_%hd141449141469%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141448141466%_)))
                              (_%tl141450141471%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141448141466%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141450141471%_))
                              (let ((_%e141451141474%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141450141471%_))))
                                (let ((_%hd141452141477%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141451141474%_)))
                                      (_%tl141453141479%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141451141474%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141453141479%_))
                                      (let ((_%e141454141482%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141453141479%_))))
                                        (let ((_%hd141455141485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141454141482%_)))
                                              (_%tl141456141487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141454141482%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141456141487%_))
                                              ((lambda (_%L141490%_
                                                        _%L141491%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L141491%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self141441%_ _%L141490%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141455141485%_
                                               _%hd141452141477%_)
                                              (_%g141444141461%_
                                               _%g141445141464%_))))
                                      (_%g141444141461%_ _%g141445141464%_))))
                              (_%g141444141461%_ _%g141445141464%_))))
                      (_%g141444141461%_ _%g141445141464%_)))))
          (_%g141443141506%_ _%stx141442%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self141390%_ _%stx141391%_)
        (let* ((_%g141393141403%_
                (lambda (_%g141394141400%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141394141400%_))))
               (_%g141392141438%_
                (lambda (_%g141394141406%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141394141406%_))
                      (let ((_%e141396141408%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141394141406%_))))
                        (let ((_%hd141397141411%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141396141408%_)))
                              (_%tl141398141413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141396141408%_))))
                          ((lambda (_%L141416%_)
                             (let* ((_%c-body141430%_
                                     (map (lambda (_%g141425141427%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self141390%_
                                               _%g141425141427%_)))
                                          _%L141416%_))
                                    (_%c-body141435%_
                                     (let ((__tmp150403
                                            (lambda (_%$obj141432%_)
                                              (not (eq? _%$obj141432%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp150403
                                        _%c-body141430%_))))
                               (cons '%#begin _%c-body141435%_)))
                           _%tl141398141413%_)))
                      (_%g141393141403%_ _%g141394141406%_)))))
          (_%g141392141438%_ _%stx141391%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self141295%_ _%stx141296%_)
        (let* ((_%g141298141308%_
                (lambda (_%g141299141305%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141299141305%_))))
               (_%g141297141387%_
                (lambda (_%g141299141311%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141299141311%_))
                      (let ((_%e141301141313%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141299141311%_))))
                        (let ((_%hd141302141316%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141301141313%_)))
                              (_%tl141303141318%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141301141313%_))))
                          ((lambda (_%L141321%_)
                             (let* ((_%phi141331%_
                                     (let ((__tmp150404
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp150404 '1)))
                                    (_%block141333%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self141295%_ 'state))
                                      _%phi141331%_))
                                    (_%compiled141336%_
                                     (let ((__tmp150405
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self141295%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L141321%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp150405
                                        gx#current-expander-phi
                                        _%phi141331%_)))
                                    (_%g141339141349%_
                                     (lambda (_%g141340141346%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g141340141346%_))))
                                    (_%g141338141384%_
                                     (lambda (_%g141340141352%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g141340141352%_))
                                           (let ((_%e141342141354%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g141340141352%_))))
                                             (let ((_%hd141343141357%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e141342141354%_)))
                                                   (_%tl141344141359%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e141342141354%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd141343141357%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd141343141357%_))
                                                       ((lambda (_%L141362%_)
                                                          (let ((_%c-body141379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj141376%_)
                                   (not (eq? _%$obj141376%_ '#!void)))
                                 _%L141362%_)))
                    (if _%block141333%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block141333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body141379%_))
                        (if (null? _%c-body141379%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body141379%_)))))
                _%tl141344141359%_)
               (_%g141339141349%_ _%g141340141352%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g141339141349%_
                                                    _%g141340141352%_))))
                                           (_%g141339141349%_
                                            _%g141340141352%_)))))
                               (_%g141338141384%_ _%compiled141336%_)))
                           _%tl141303141318%_)))
                      (_%g141298141308%_ _%g141299141311%_)))))
          (_%g141297141387%_ _%stx141296%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self141226%_ _%stx141227%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self141226%_ 'state)))
        (let* ((_%g141229141243%_
                (lambda (_%g141230141240%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141230141240%_))))
               (_%g141228141292%_
                (lambda (_%g141230141246%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141230141246%_))
                      (let ((_%e141233141248%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141230141246%_))))
                        (let ((_%hd141234141251%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141233141248%_)))
                              (_%tl141235141253%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141233141248%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141235141253%_))
                              (let ((_%e141236141256%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141235141253%_))))
                                (let ((_%hd141237141259%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141236141256%_)))
                                      (_%tl141238141261%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141236141256%_))))
                                  ((lambda (_%L141264%_ _%L141265%_)
                                     (let ((_%key141278%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L141265%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key141278%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx141227%_
                                              _%L141265%_
                                              _%key141278%_)))
                                       (let* ((_%ctx141280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L141265%_)))
                                              (_%code141283%_
                                               (let ((__tmp150406
                                                      (lambda ()
                                                        (let ((__tmp150407
                                                               (##structure-ref
                                                                _%ctx141280%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self141226%_
                                                           __tmp150407)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp150406
                                                  gx#current-expander-context
                                                  _%ctx141280%_)))
                                              (_%rt141285%_
                                               (let ((__tmp150408
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp150408
                                                  _%ctx141280%_)))
                                              (_%loader141287%_
                                               (if _%rt141285%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt141285%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid141289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L141265%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self141226%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid141289%_
                                                     (cons _%code141283%_
                                                           _%loader141287%_))))))
                                   _%tl141238141261%_
                                   _%hd141237141259%_)))
                              (_%g141229141243%_ _%g141230141246%_))))
                      (_%g141229141243%_ _%g141230141246%_)))))
          (_%g141228141292%_ _%stx141227%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx141213%_ _%context-chain141214%_)
        (let _%lp141216%_ ((_%ctx141218%_ _%ctx141213%_) (_%path141219%_ '()))
          (let ((_%super141221%_
                 (##structure-ref _%ctx141218%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super141221%_ _%context-chain141214%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx141218%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path141219%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super141221%_
                       'gx#module-context::t))
                    (_%lp141216%_
                     _%super141221%_
                     (cons (car (##structure-ref
                                 _%ctx141218%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path141219%_))
                    (cons (let ((__tmp150409
                                 (##structure-ref
                                  _%ctx141218%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp150409))
                          _%path141219%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp141206%_ ((_%ctx141208%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r141209%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx141208%_ 'gx#module-context::t))
              (_%lp141206%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx141208%_ '3 '#f '#f))
               (cons _%ctx141208%_ _%r141209%_))
              _%r141209%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self140969%_ _%stx140970%_)
        (letrec* ((_%context-chain140972%_ (gxc#current-context-chain))
                  (_%make-import-spec140973%_
                   (lambda (_%in141142%_)
                     (let* ((_%in141143141155%_ _%in141142%_)
                            (_%E141145141159%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in141143141155%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K141146141169%_
                             (lambda (_%phi141162%_
                                      _%name141163%_
                                      _%src-name141164%_
                                      _%src-phi141165%_
                                      _%src-key141166%_
                                      _%src-ctx141167%_)
                               (cons _%phi141162%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name141163%_)
                                           (cons _%src-phi141165%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name141164%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in141143141155%_
                              'gx#module-import::t))
                           (let ((_%e141147141172%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in141143141155%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e141147141172%_
                                    'gx#module-export::t))
                                 (let* ((_%e141150141175%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e141147141172%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx141178%_ _%e141150141175%_)
                                        (_%e141151141180%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e141147141172%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key141183%_ _%e141151141180%_)
                                        (_%e141152141185%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e141147141172%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi141188%_ _%e141152141185%_)
                                        (_%e141153141190%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e141147141172%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name141193%_ _%e141153141190%_)
                                        (_%e141148141195%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in141143141155%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name141198%_ _%e141148141195%_)
                                        (_%e141149141200%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in141143141155%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi141203%_ _%e141149141200%_))
                                   (_%K141146141169%_
                                    _%phi141203%_
                                    _%name141198%_
                                    _%src-name141193%_
                                    _%src-phi141188%_
                                    _%src-key141183%_
                                    _%src-ctx141178%_))
                                 (_%E141145141159%_)))
                           (_%E141145141159%_)))))
                  (_%make-import-path140974%_
                   (lambda (_%ctx141140%_)
                     (gxc#generate-meta-import-path
                      _%ctx141140%_
                      _%context-chain140972%_)))
                  (_%make-import-spec-in140975%_
                   (lambda (_%ctx141137%_ _%in141138%_)
                     (cons 'spec:
                           (cons (_%make-import-path140974%_ _%ctx141137%_)
                                 (reverse _%in141138%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self140969%_ 'state)))
          (let* ((_%g140977140987%_
                  (lambda (_%g140978140984%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140978140984%_))))
                 (_%g140976141134%_
                  (lambda (_%g140978140990%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140978140990%_))
                        (let ((_%e140980140992%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140978140990%_))))
                          (let ((_%hd140981140995%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140980140992%_)))
                                (_%tl140982140997%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140980140992%_))))
                            ((lambda (_%L141000%_)
                               (let _%lp141011%_ ((_%rest141013%_ _%L141000%_)
                                                  (_%current-src141014%_ '#f)
                                                  (_%current-in141015%_ '())
                                                  (_%r141016%_ '()))
                                 (let* ((_%rest141017141025%_ _%rest141013%_)
                                        (_%else141019141035%_
                                         (lambda ()
                                           (let ((_%r141033%_
                                                  (if _%current-src141014%_
                                                      (cons (_%make-import-spec-in140975%_
                                                             _%current-src141014%_
                                                             _%current-in141015%_)
                                                            _%r141016%_)
                                                      _%r141016%_)))
                                             (cons '%#import
                                                   (reverse _%r141033%_)))))
                                        (_%K141021141122%_
                                         (lambda (_%rest141038%_ _%in141039%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in141039%_
                                                  'gx#module-import::t))
                                               (let* ((_%in141041141048%_
                                                       _%in141039%_)
                                                      (_%E141043141052%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in141041141048%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K141044141060%_
               (lambda (_%src-ctx141055%_)
                 (if (eq? _%current-src141014%_ _%src-ctx141055%_)
                     (_%lp141011%_
                      _%rest141038%_
                      _%current-src141014%_
                      (cons (_%make-import-spec140973%_ _%in141039%_)
                            _%current-in141015%_)
                      _%r141016%_)
                     (if _%current-src141014%_
                         (_%lp141011%_
                          _%rest141038%_
                          _%src-ctx141055%_
                          (cons (_%make-import-spec140973%_ _%in141039%_) '())
                          (cons (_%make-import-spec-in140975%_
                                 _%current-src141014%_
                                 _%current-in141015%_)
                                _%r141016%_))
                         (_%lp141011%_
                          _%rest141038%_
                          _%src-ctx141055%_
                          (cons (_%make-import-spec140973%_ _%in141039%_) '())
                          _%r141016%_)))))
              (_%e141045141063%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in141041141048%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e141045141063%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e141046141066%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e141045141063%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx141069%_ _%e141046141066%_))
               (_%K141044141060%_ _%src-ctx141069%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E141043141052%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in141039%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi141072%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in141039%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src141074%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in141039%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in141114%_
                                                           (let* ((_%g141075141084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path140974%_ _%src141074%_))
                          (_%E141078141088%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g141075141084%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K141080141104%_
                            (lambda (_%path141102%_) _%path141102%_))
                           (_%K141079141094%_
                            (lambda (_%path141092%_)
                              (cons 'in: _%path141092%_))))
                       (if (pair? _%g141075141084%_)
                           (let ((_%tl141082141109%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g141075141084%_)))
                                 (_%hd141081141107%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g141075141084%_))))
                             (if (null? _%tl141082141109%_)
                                 (let ((_%path141112%_ _%hd141081141107%_))
                                   (_%K141080141104%_ _%path141112%_))
                                 (let ((_%path141097%_ _%g141075141084%_))
                                   (_%K141079141094%_ _%path141097%_))))
                           (let ((_%path141097%_ _%g141075141084%_))
                             (_%K141079141094%_ _%path141097%_))))))
                  (_%r141116%_
                   (if _%current-src141014%_
                       (cons (_%make-import-spec-in140975%_
                              _%current-src141014%_
                              _%current-in141015%_)
                             _%r141016%_)
                       _%r141016%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp141011%_
                                                      _%rest141038%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi141072%_)
                                                                _%src-in141114%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi141072%_
                                    (cons _%src-in141114%_ '()))))
                    _%r141116%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in141039%_
                                                          'gx#module-context::t))
                                                       (let ((_%r141120%_
                                                              (if _%current-src141014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in140975%_
                                 _%current-src141014%_
                                 _%current-in141015%_)
                                _%r141016%_)
                          _%r141016%_)))
                 (_%lp141011%_
                  _%rest141038%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path140974%_ _%in141039%_))
                        _%r141120%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest141017141025%_)
                                       (let ((_%hd141022141125%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest141017141025%_)))
                                             (_%tl141023141127%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest141017141025%_))))
                                         (let* ((_%in141130%_
                                                 _%hd141022141125%_)
                                                (_%rest141132%_
                                                 _%tl141023141127%_))
                                           (_%K141021141122%_
                                            _%rest141132%_
                                            _%in141130%_)))
                                       (_%else141019141035%_)))))
                             _%tl140982140997%_)))
                        (_%g140977140987%_ _%g140978140990%_)))))
            (_%g140976141134%_ _%stx140970%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self140779%_ _%stx140780%_)
        (letrec* ((_%context-chain140782%_ (gxc#current-context-chain))
                  (_%make-import-path140783%_
                   (lambda (_%ctx140967%_)
                     (gxc#generate-meta-import-path
                      _%ctx140967%_
                      _%context-chain140782%_))))
          (let* ((_%g140785140795%_
                  (lambda (_%g140786140792%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140786140792%_))))
                 (_%g140784140964%_
                  (lambda (_%g140786140798%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140786140798%_))
                        (let ((_%e140788140800%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140786140798%_))))
                          (let ((_%hd140789140803%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140788140800%_)))
                                (_%tl140790140805%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140788140800%_))))
                            ((lambda (_%L140808%_)
                               (let _%lp140819%_ ((_%rest140821%_ _%L140808%_)
                                                  (_%r140822%_ '()))
                                 (let* ((_%rest140823140831%_ _%rest140821%_)
                                        (_%else140825140839%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r140822%_))))
                                        (_%K140827140952%_
                                         (lambda (_%rest140842%_ _%out140843%_)
                                           (let* ((_%out140844140857%_
                                                   _%out140843%_)
                                                  (_%E140847140861%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out140844140857%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K140851140931%_
                                                    (lambda (_%name140927%_
                                                             _%phi140928%_
                                                             _%key140929%_)
                                                      (_%lp140819%_
                                                       _%rest140842%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi140928%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key140929%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name140927%_)
                                             '()))))
                     _%r140822%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K140848140911%_
                                                    (lambda (_%phi140865%_
                                                             _%src140866%_)
                                                      (let* ((_%out140906%_
                                                              (if _%src140866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g140867140876%_
                                              (_%make-import-path140783%_
                                               _%src140866%_))
                                             (_%E140870140880%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g140867140876%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K140872140896%_
                                               (lambda (_%path140894%_)
                                                 _%path140894%_))
                                              (_%K140871140886%_
                                               (lambda (_%path140884%_)
                                                 (cons 'in: _%path140884%_))))
                                          (if (pair? _%g140867140876%_)
                                              (let ((_%tl140874140901%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g140867140876%_)))
                                                    (_%hd140873140899%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g140867140876%_))))
                                                (if (null? _%tl140874140901%_)
                                                    (let ((_%path140904%_
                                                           _%hd140873140899%_))
                                                      (_%K140872140896%_
                                                       _%path140904%_))
                                                    (let ((_%path140889%_
                                                           _%g140867140876%_))
                                                      (_%K140871140886%_
                                                       _%path140889%_))))
                                              (let ((_%path140889%_
                                                     _%g140867140876%_))
                                                (_%K140871140886%_
                                                 _%path140889%_)))))
                                      '()))
                          '#t))
                     (_%out140908%_
                      (if (fxzero? _%phi140865%_)
                          _%out140906%_
                          (cons 'phi:
                                (cons _%phi140865%_
                                      (cons _%out140906%_ '()))))))
                (_%lp140819%_
                 _%rest140842%_
                 (cons _%out140908%_ _%r140822%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match140846140924%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out140844140857%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e140849140914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out140844140857%_
                               '1
                               '#f
                               '#f)))
                           (_%e140850140919%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out140844140857%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src140917%_ _%e140849140914%_)
                            (_%phi140922%_ _%e140850140919%_))
                        (_%K140848140911%_ _%phi140922%_ _%src140917%_)))
                    (_%E140847140861%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out140844140857%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e140852140934%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out140844140857%_
                        '1
                        '#f
                        '#f)))
                    (_%e140853140937%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out140844140857%_
                        '2
                        '#f
                        '#f)))
                    (_%e140854140942%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out140844140857%_
                        '3
                        '#f
                        '#f)))
                    (_%e140855140947%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out140844140857%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key140940%_ _%e140853140937%_)
                     (_%phi140945%_ _%e140854140942%_)
                     (_%name140950%_ _%e140855140947%_))
                 (_%K140851140931%_
                  _%name140950%_
                  _%phi140945%_
                  _%key140940%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match140846140924%_))))))))
                                   (if (pair? _%rest140823140831%_)
                                       (let ((_%hd140828140955%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest140823140831%_)))
                                             (_%tl140829140957%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest140823140831%_))))
                                         (let* ((_%out140960%_
                                                 _%hd140828140955%_)
                                                (_%rest140962%_
                                                 _%tl140829140957%_))
                                           (_%K140827140952%_
                                            _%rest140962%_
                                            _%out140960%_)))
                                       (_%else140825140839%_)))))
                             _%tl140790140805%_)))
                        (_%g140785140795%_ _%g140786140798%_)))))
            (_%g140784140964%_ _%stx140780%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self140740%_ _%stx140741%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140740%_ 'state)))
        (let* ((_%g140743140753%_
                (lambda (_%g140744140750%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140744140750%_))))
               (_%g140742140776%_
                (lambda (_%g140744140756%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140744140756%_))
                      (let ((_%e140746140758%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140744140756%_))))
                        (let ((_%hd140747140761%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140746140758%_)))
                              (_%tl140748140763%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140746140758%_))))
                          ((lambda (_%L140766%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L140766%_)))
                           _%tl140748140763%_)))
                      (_%g140743140753%_ _%g140744140756%_)))))
          (_%g140742140776%_ _%stx140741%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self140611%_ _%stx140612%_)
        (letrec ((_%generate1140614%_
                  (lambda (_%id140735%_ _%eid140736%_)
                    (let ((_%eid140738%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid140736%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid140738%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx140612%_
                             _%eid140738%_)))
                      (cons (gxc#generate-runtime-identifier _%id140735%_)
                            (cons _%eid140738%_ '()))))))
          (let* ((_%g140616140644%_
                  (lambda (_%g140617140641%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140617140641%_))))
                 (_%g140615140732%_
                  (lambda (_%g140617140647%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140617140647%_))
                        (let ((_%e140620140649%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140617140647%_))))
                          (let ((_%hd140621140652%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140620140649%_)))
                                (_%tl140622140654%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140620140649%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl140622140654%_))
                                (let ((_g150410_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl140622140654%_
                                          '0))))
                                  (begin
                                    (let ((_g150411_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g150410_)
                                                 (##values-length _g150410_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g150411_ 2)))
                                          (error "Context expects 2 values"
                                                 _g150411_)))
                                    (let ((_%target140623140657%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150410_ 0)))
                                          (_%tl140625140659%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g150410_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140625140659%_))
                                          (letrec ((_%loop140626140662%_
                                                    (lambda (_%hd140624140665%_
                                                             _%eid140630140667%_
                                                             _%id140631140669%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd140624140665%_))
                                                          (let ((_%e140627140672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd140624140665%_))))
                    (let ((_%lp-hd140628140675%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140627140672%_)))
                          (_%lp-tl140629140677%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140627140672%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd140628140675%_))
                          (let ((_%e140634140680%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd140628140675%_))))
                            (let ((_%hd140635140683%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140634140680%_)))
                                  (_%tl140636140685%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140634140680%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl140636140685%_))
                                  (let ((_%e140637140688%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl140636140685%_))))
                                    (let ((_%hd140638140691%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140637140688%_)))
                                          (_%tl140639140693%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140637140688%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140639140693%_))
                                          (_%loop140626140662%_
                                           _%lp-tl140629140677%_
                                           (cons _%hd140638140691%_
                                                 _%eid140630140667%_)
                                           (cons _%hd140635140683%_
                                                 _%id140631140669%_))
                                          (_%g140616140644%_
                                           _%g140617140647%_))))
                                  (_%g140616140644%_ _%g140617140647%_))))
                          (_%g140616140644%_ _%g140617140647%_))))
                  (let ((_%eid140632140696%_ (reverse _%eid140630140667%_))
                        (_%id140633140698%_ (reverse _%id140631140669%_)))
                    ((lambda (_%L140701%_ _%L140702%_)
                       (cons '%#extern
                             (map _%generate1140614%_
                                  (let ((__tmp150412
                                         (lambda (_%g140717140720%_
                                                  _%g140718140722%_)
                                           (cons _%g140717140720%_
                                                 _%g140718140722%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp150412 '() _%L140702%_))
                                  (let ((__tmp150413
                                         (lambda (_%g140724140727%_
                                                  _%g140725140729%_)
                                           (cons _%g140724140727%_
                                                 _%g140725140729%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp150413 '() _%L140701%_)))))
                     _%eid140632140696%_
                     _%id140633140698%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop140626140662%_
                                             _%target140623140657%_
                                             '()
                                             '()))
                                          (_%g140616140644%_
                                           _%g140617140647%_)))))
                                (_%g140616140644%_ _%g140617140647%_))))
                        (_%g140616140644%_ _%g140617140647%_)))))
            (_%g140615140732%_ _%stx140612%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self140401%_ _%stx140402%_)
        (letrec ((_%generate1140404%_
                  (lambda (_%id140606%_)
                    (let ((_%eid140608%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id140606%_)))
                          (_%ident140609%_
                           (gxc#generate-runtime-identifier _%id140606%_)))
                      (cons '%#define-runtime
                            (cons _%ident140609%_ (cons _%eid140608%_ '()))))))
                 (_%generate*140405%_
                  (lambda (_%all140574%_)
                    (let* ((_%all140575140583%_ _%all140574%_)
                           (_%else140577140591%_
                            (lambda () (cons '%#begin _%all140574%_)))
                           (_%K140579140596%_
                            (lambda (_%one140594%_) _%one140594%_)))
                      (if (pair? _%all140575140583%_)
                          (let ((_%hd140580140599%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all140575140583%_)))
                                (_%tl140581140601%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all140575140583%_))))
                            (let ((_%one140604%_ _%hd140580140599%_))
                              (if (null? _%tl140581140601%_)
                                  (_%K140579140596%_ _%one140604%_)
                                  (_%else140577140591%_))))
                          (_%else140577140591%_))))))
          (let* ((_%g140407140424%_
                  (lambda (_%g140408140421%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140408140421%_))))
                 (_%g140406140571%_
                  (lambda (_%g140408140427%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140408140427%_))
                        (let ((_%e140411140429%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140408140427%_))))
                          (let ((_%hd140412140432%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140411140429%_)))
                                (_%tl140413140434%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140411140429%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140413140434%_))
                                (let ((_%e140414140437%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140413140434%_))))
                                  (let ((_%hd140415140440%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140414140437%_)))
                                        (_%tl140416140442%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140414140437%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140416140442%_))
                                        (let ((_%e140417140445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140416140442%_))))
                                          (let ((_%hd140418140448%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140417140445%_)))
                                                (_%tl140419140450%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140417140445%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140419140450%_))
                                                ((lambda (_%L140453%_
                                                          _%L140454%_)
                                                   (let _%lp140470%_ ((_%rest140472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L140454%_)
                              (_%r140473%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx150149150150%_
                                                             _%rest140472%_)
                                                            (_%g140478140495%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx150149150150%_)))))
               (let ((_%__kont150151150152%_
                      (lambda (_%L140558%_)
                        (_%lp140470%_ _%L140558%_ _%r140473%_)))
                     (_%__kont150153150154%_
                      (lambda (_%L140531%_ _%L140532%_)
                        (_%lp140470%_
                         _%L140531%_
                         (cons (_%generate1140404%_ _%L140532%_)
                               _%r140473%_))))
                     (_%__kont150155150156%_
                      (lambda (_%L140507%_)
                        (_%generate*140405%_
                         (let ((__tmp150414
                                (cons (_%generate1140404%_ _%L140507%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp150414 _%r140473%_)))))
                     (_%__kont150157150158%_
                      (lambda () (_%generate*140405%_ (reverse _%r140473%_)))))
                 (let ((_%g140476140518%_
                        (lambda ()
                          (let ((_%L140507%_ _%__stx150149150150%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L140507%_))
                                (_%__kont150155150156%_ _%L140507%_)
                                (_%__kont150157150158%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx150149150150%_))
                       (let ((_%e140481140547%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx150149150150%_))))
                         (let ((_%tl140483140552%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e140481140547%_)))
                               (_%hd140482140550%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e140481140547%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd140482140550%_))
                               (let ((_%e140484140555%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd140482140550%_))))
                                 (if (equal? _%e140484140555%_ '#f)
                                     (_%__kont150151150152%_
                                      _%tl140483140552%_)
                                     (_%__kont150153150154%_
                                      _%tl140483140552%_
                                      _%hd140482140550%_)))
                               (_%__kont150153150154%_
                                _%tl140483140552%_
                                _%hd140482140550%_))))
                       (let () (declare (not safe)) (_%g140476140518%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd140418140448%_
                                                 _%hd140415140440%_)
                                                (_%g140407140424%_
                                                 _%g140408140427%_))))
                                        (_%g140407140424%_
                                         _%g140408140427%_))))
                                (_%g140407140424%_ _%g140408140427%_))))
                        (_%g140407140424%_ _%g140408140427%_)))))
            (_%g140406140571%_ _%stx140402%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self140298%_ _%stx140299%_)
        (let* ((_%g140301140318%_
                (lambda (_%g140302140315%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140302140315%_))))
               (_%g140300140398%_
                (lambda (_%g140302140321%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140302140321%_))
                      (let ((_%e140305140323%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140302140321%_))))
                        (let ((_%hd140306140326%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140305140323%_)))
                              (_%tl140307140328%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140305140323%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140307140328%_))
                              (let ((_%e140308140331%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140307140328%_))))
                                (let ((_%hd140309140334%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140308140331%_)))
                                      (_%tl140310140336%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140308140331%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140310140336%_))
                                      (let ((_%e140311140339%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140310140336%_))))
                                        (let ((_%hd140312140342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140311140339%_)))
                                              (_%tl140313140344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140311140339%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140313140344%_))
                                              ((lambda (_%L140347%_
                                                        _%L140348%_)
                                                 (let* ((_%eid140363%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L140348%_)))
                                                        (_%phi140365%_
                                                         (let ((__tmp150415
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp150415 '1)))
                (_%block140367%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self140298%_ 'state))
                  _%phi140365%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g140370140377%_
                                                           (lambda (_%g140371140374%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g140371140374%_))))
                  (_%g140369140395%_
                   (lambda (_%g140371140380%_)
                     ((lambda (_%L140382%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self140298%_ 'state))
                         _%phi140365%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L140382%_ (cons _%L140347%_ '())))))
                      _%g140371140380%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g140369140395%_
                                                      _%eid140363%_))
                                                   (if _%block140367%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block140367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L140348%_)
                                             (cons _%eid140363%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L140348%_)
                           (cons _%eid140363%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140312140342%_
                                               _%hd140309140334%_)
                                              (_%g140301140318%_
                                               _%g140302140321%_))))
                                      (_%g140301140318%_ _%g140302140321%_))))
                              (_%g140301140318%_ _%g140302140321%_))))
                      (_%g140301140318%_ _%g140302140321%_)))))
          (_%g140300140398%_ _%stx140299%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self140230%_ _%stx140231%_)
        (let* ((_%g140233140250%_
                (lambda (_%g140234140247%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140234140247%_))))
               (_%g140232140295%_
                (lambda (_%g140234140253%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140234140253%_))
                      (let ((_%e140237140255%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140234140253%_))))
                        (let ((_%hd140238140258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140237140255%_)))
                              (_%tl140239140260%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140237140255%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140239140260%_))
                              (let ((_%e140240140263%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140239140260%_))))
                                (let ((_%hd140241140266%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140240140263%_)))
                                      (_%tl140242140268%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140240140263%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140242140268%_))
                                      (let ((_%e140243140271%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140242140268%_))))
                                        (let ((_%hd140244140274%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140243140271%_)))
                                              (_%tl140245140276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140243140271%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140245140276%_))
                                              ((lambda (_%L140279%_
                                                        _%L140280%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L140280%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L140279%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140244140274%_
                                               _%hd140241140266%_)
                                              (_%g140233140250%_
                                               _%g140234140253%_))))
                                      (_%g140233140250%_ _%g140234140253%_))))
                              (_%g140233140250%_ _%g140234140253%_))))
                      (_%g140233140250%_ _%g140234140253%_)))))
          (_%g140232140295%_ _%stx140231%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self140227%_ _%stx140228%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140227%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx140228%_)
        (gxc#generate-meta-define-values% _%self140227%_ _%stx140228%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self140224%_ _%stx140225%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140224%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx140225%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp150417 (list)) (__tmp150416 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp150417
         '(src n open blocks)
         __tmp150416
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args140221%_
        (apply make-instance gxc#meta-state::t _%$args140221%_)))
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
      (lambda (_%self139566140205%_ _%ctx140207%_)
        (let* ((_%self140209%_ _%self139566140205%_)
               (_%self140211%_ _%self140209%_))
          (if (let ((__tmp150418
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self140211%_))))
                (declare (not safe))
                (##fx< '4 __tmp150418))
              (begin
                (let ((__tmp150419
                       (let ((__tmp150420
                              (##structure-ref
                               _%ctx140207%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp150420))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self140211%_
                   __tmp150419
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self140211%_ '1 '2 '#f '#f))
                (let ((__tmp150421
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self140211%_
                   __tmp150421
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self140211%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp150422
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self140211%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self140211%_
                       '4
                       __tmp150422))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp150424 (list)) (__tmp150423 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp150424
         '(ctx phi n code)
         __tmp150423
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args140080%_
        (apply make-instance gxc#meta-state-block::t _%$args140080%_)))
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
      (lambda (_%state140039%_ _%phi140040%_)
        (let* ((_%state140041140049%_ _%state140039%_)
               (_%E140043140053%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state140041140049%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K140044140062%_
                (lambda (_%open140056%_ _%n140057%_ _%src140058%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open140056%_ _%phi140040%_))
                      '#f
                      (let ((_%block-ref140060%_
                             (let ((__tmp150425 (number->string _%n140057%_)))
                               (declare (not safe))
                               (##string-append
                                _%src140058%_
                                '"~"
                                __tmp150425))))
                        (##structure-set!
                         _%state140039%_
                         (let () (declare (not safe)) (##fx+ _%n140057%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp150426
                               (let ((__tmp150427
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp150427
                                  _%phi140040%_
                                  _%n140057%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open140056%_ _%phi140040%_ __tmp150426))
                        _%block-ref140060%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state140041140049%_
                 'gxc#meta-state::t))
              (let* ((_%e140045140065%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state140041140049%_
                         '1
                         '#f
                         '#f)))
                     (_%src140068%_ _%e140045140065%_)
                     (_%e140046140070%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state140041140049%_
                         '2
                         '#f
                         '#f)))
                     (_%n140073%_ _%e140046140070%_)
                     (_%e140047140075%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state140041140049%_
                         '3
                         '#f
                         '#f)))
                     (_%open140078%_ _%e140047140075%_))
                (_%K140044140062%_ _%open140078%_ _%n140073%_ _%src140068%_))
              (_%E140043140053%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state140033%_ _%phi140034%_ _%stx140035%_)
        (let ((_%block140037%_
               (let ((__tmp150428
                      (##structure-ref
                       _%state140033%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp150428 _%phi140034%_))))
          (##structure-set!
           _%block140037%_
           (cons _%stx140035%_
                 (##structure-ref
                  _%block140037%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state140027%_)
        (##structure-set!
         _%state140027%_
         (let ((__tmp150431
                (lambda (_%_140029%_ _%block140030%_ _%r140031%_)
                  (cons _%block140030%_ _%r140031%_)))
               (__tmp150430
                (##structure-ref _%state140027%_ '4 gxc#meta-state::t '#f))
               (__tmp150429
                (##structure-ref _%state140027%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp150431 __tmp150430 __tmp150429))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state140027%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state139979%_)
        (gxc#meta-state-end-phi! _%state139979%_)
        (let ((__tmp150433
               (lambda (_%block139981%_ _%r139982%_)
                 (let* ((_%block139983139992%_ _%block139981%_)
                        (_%E139985139996%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block139983139992%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K139986140004%_
                         (lambda (_%code139999%_
                                  _%n140000%_
                                  _%phi140001%_
                                  _%ctx140002%_)
                           (if (null? _%code139999%_)
                               _%r139982%_
                               (cons (cons _%ctx140002%_
                                           (cons _%phi140001%_
                                                 (cons _%n140000%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code139999%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r139982%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block139983139992%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e139987140007%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139983139992%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx140010%_ _%e139987140007%_)
                              (_%e139988140012%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139983139992%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi140015%_ _%e139988140012%_)
                              (_%e139989140017%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139983139992%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n140020%_ _%e139989140017%_)
                              (_%e139990140022%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block139983139992%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code140025%_ _%e139990140022%_))
                         (_%K139986140004%_
                          _%code140025%_
                          _%n140020%_
                          _%phi140015%_
                          _%ctx140010%_))
                       (_%E139985139996%_)))))
              (__tmp150432
               (##structure-ref _%state139979%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp150433 '() __tmp150432))))
    (define gxc#collect-expression-refs
      (lambda (_%stx139975%_)
        (let ((_%ht139977%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht139977%_ _%stx139975%_)
          _%ht139977%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self139918%_ _%stx139919%_)
        (let* ((_%g139921139934%_
                (lambda (_%g139922139931%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139922139931%_))))
               (_%g139920139972%_
                (lambda (_%g139922139937%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139922139937%_))
                      (let ((_%e139924139939%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139922139937%_))))
                        (let ((_%hd139925139942%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139924139939%_)))
                              (_%tl139926139944%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139924139939%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139926139944%_))
                              (let ((_%e139927139947%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139926139944%_))))
                                (let ((_%hd139928139950%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139927139947%_)))
                                      (_%tl139929139952%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139927139947%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl139929139952%_))
                                      ((lambda (_%L139955%_)
                                         (let* ((_%bind139967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L139955%_)))
                                                (_%eid139969%_
                                                 (if _%bind139967%_
                                                     (##structure-ref
                                                      _%bind139967%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L139955%_))))
                                                (__tmp150434
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self139918%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp150434
                                            _%eid139969%_
                                            _%eid139969%_)))
                                       _%hd139928139950%_)
                                      (_%g139921139934%_ _%g139922139937%_))))
                              (_%g139921139934%_ _%g139922139937%_))))
                      (_%g139921139934%_ _%g139922139937%_)))))
          (_%g139920139972%_ _%stx139919%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self139845%_ _%stx139846%_)
        (let* ((_%g139848139865%_
                (lambda (_%g139849139862%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139849139862%_))))
               (_%g139847139915%_
                (lambda (_%g139849139868%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139849139868%_))
                      (let ((_%e139852139870%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139849139868%_))))
                        (let ((_%hd139853139873%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139852139870%_)))
                              (_%tl139854139875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139852139870%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139854139875%_))
                              (let ((_%e139855139878%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139854139875%_))))
                                (let ((_%hd139856139881%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139855139878%_)))
                                      (_%tl139857139883%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139855139878%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139857139883%_))
                                      (let ((_%e139858139886%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139857139883%_))))
                                        (let ((_%hd139859139889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139858139886%_)))
                                              (_%tl139860139891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139858139886%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139860139891%_))
                                              ((lambda (_%L139894%_
                                                        _%L139895%_)
                                                 (let* ((_%bind139910%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L139895%_)))
                                                        (_%eid139912%_
                                                         (if _%bind139910%_
                                                             (##structure-ref
                                                              _%bind139910%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L139895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150435
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self139845%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp150435
                                                      _%eid139912%_
                                                      _%eid139912%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139845%_
                                                      _%L139894%_))))
                                               _%hd139859139889%_
                                               _%hd139856139881%_)
                                              (_%g139848139865%_
                                               _%g139849139868%_))))
                                      (_%g139848139865%_ _%g139849139868%_))))
                              (_%g139848139865%_ _%g139849139868%_))))
                      (_%g139848139865%_ _%g139849139868%_)))))
          (_%g139847139915%_ _%stx139846%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self139802%_ _%stx139803%_)
        (let* ((_%g139805139815%_
                (lambda (_%g139806139812%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139806139812%_))))
               (_%g139804139842%_
                (lambda (_%g139806139818%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139806139818%_))
                      (let ((_%e139808139820%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139806139818%_))))
                        (let ((_%hd139809139823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139808139820%_)))
                              (_%tl139810139825%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139808139820%_))))
                          ((lambda (_%L139828%_)
                             (let ((__tmp150436
                                    (lambda (_%g139837139839%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self139802%_
                                         _%g139837139839%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp150436 _%L139828%_)))
                           _%tl139810139825%_)))
                      (_%g139805139815%_ _%g139806139818%_)))))
          (_%g139804139842%_ _%stx139803%_))))
    (define gxc#count-values-single%
      (lambda (_%self139799%_ _%stx139800%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self139665%_ _%stx139666%_)
        (let* ((_%__stx150179150180%_ _%stx139666%_)
               (_%g139669139698%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx150179150180%_)))))
          (let ((_%__kont150181150182%_
                 (lambda (_%L139766%_ _%L139767%_)
                   (length (let ((__tmp150437
                                  (lambda (_%g139788139791%_ _%g139789139793%_)
                                    (cons _%g139788139791%_
                                          _%g139789139793%_))))
                             (declare (not safe))
                             (__foldr1 __tmp150437 '() _%L139766%_)))))
                (_%__kont150185150186%_ (lambda () '#f)))
            (let ((_%__match150224150225%_
                   (lambda (_%e139673139710%_
                            _%hd139674139713%_
                            _%tl139675139715%_
                            _%e139676139718%_
                            _%hd139677139721%_
                            _%tl139678139723%_
                            _%e139679139726%_
                            _%hd139680139729%_
                            _%tl139681139731%_
                            _%e139682139734%_
                            _%hd139683139737%_
                            _%tl139684139739%_
                            _%__splice150183150184%_
                            _%target139685139742%_
                            _%tl139687139744%_)
                     (letrec ((_%loop139688139747%_
                               (lambda (_%hd139686139750%_
                                        _%rand139692139752%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd139686139750%_))
                                     (let ((_%e139689139755%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd139686139750%_))))
                                       (let ((_%lp-tl139691139760%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e139689139755%_)))
                                             (_%lp-hd139690139758%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e139689139755%_))))
                                         (_%loop139688139747%_
                                          _%lp-tl139691139760%_
                                          (cons _%lp-hd139690139758%_
                                                _%rand139692139752%_))))
                                     (let ((_%rand139693139763%_
                                            (reverse _%rand139692139752%_)))
                                       (let ((_%L139766%_ _%rand139693139763%_)
                                             (_%L139767%_ _%hd139683139737%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L139767%_
                                                'values))
                                             (_%__kont150181150182%_
                                              _%L139766%_
                                              _%L139767%_)
                                             (_%__kont150185150186%_))))))))
                       (_%loop139688139747%_ _%target139685139742%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx150179150180%_))
                  (let ((_%e139673139710%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx150179150180%_))))
                    (let ((_%tl139675139715%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e139673139710%_)))
                          (_%hd139674139713%_
                           (let ()
                             (declare (not safe))
                             (##car _%e139673139710%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139675139715%_))
                          (let ((_%e139676139718%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139675139715%_))))
                            (let ((_%tl139678139723%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139676139718%_)))
                                  (_%hd139677139721%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139676139718%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd139677139721%_))
                                  (let ((_%e139679139726%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd139677139721%_))))
                                    (let ((_%tl139681139731%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e139679139726%_)))
                                          (_%hd139680139729%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e139679139726%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd139680139729%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd139680139729%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl139681139731%_))
                                                  (let ((_%e139682139734%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl139681139731%_))))
                                                    (let ((_%tl139684139739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e139682139734%_)))
                                                          (_%hd139683139737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e139682139734%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl139684139739%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl139678139723%_))
                      (let ((_%__splice150183150184%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl139678139723%_
                                '0))))
                        (let ((_%tl139687139744%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice150183150184%_ '1)))
                              (_%target139685139742%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice150183150184%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl139687139744%_))
                              (_%__match150224150225%_
                               _%e139673139710%_
                               _%hd139674139713%_
                               _%tl139675139715%_
                               _%e139676139718%_
                               _%hd139677139721%_
                               _%tl139678139723%_
                               _%e139679139726%_
                               _%hd139680139729%_
                               _%tl139681139731%_
                               _%e139682139734%_
                               _%hd139683139737%_
                               _%tl139684139739%_
                               _%__splice150183150184%_
                               _%target139685139742%_
                               _%tl139687139744%_)
                              (_%__kont150185150186%_))))
                      (_%__kont150185150186%_))
                  (_%__kont150185150186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150185150186%_))
                                              (_%__kont150185150186%_))
                                          (_%__kont150185150186%_))))
                                  (_%__kont150185150186%_))))
                          (_%__kont150185150186%_))))
                  (_%__kont150185150186%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self139568%_ _%stx139569%_)
        (let* ((_%g139571139592%_
                (lambda (_%g139572139589%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139572139589%_))))
               (_%g139570139662%_
                (lambda (_%g139572139595%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139572139595%_))
                      (let ((_%e139576139597%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139572139595%_))))
                        (let ((_%hd139577139600%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139576139597%_)))
                              (_%tl139578139602%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139576139597%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139578139602%_))
                              (let ((_%e139579139605%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139578139602%_))))
                                (let ((_%hd139580139608%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139579139605%_)))
                                      (_%tl139581139610%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139579139605%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139581139610%_))
                                      (let ((_%e139582139613%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139581139610%_))))
                                        (let ((_%hd139583139616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139582139613%_)))
                                              (_%tl139584139618%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139582139613%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139584139618%_))
                                              (let ((_%e139585139621%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139584139618%_))))
                                                (let ((_%hd139586139624%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139585139621%_)))
                                                      (_%tl139587139626%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139585139621%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139587139626%_))
                                                      ((lambda (_%L139629%_
                                                                _%L139630%_
                                                                _%L139631%_)
                                                         (let ((_%c1139648139650%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self139568%_ _%L139630%_))))
                   (if _%c1139648139650%_
                       (let* ((_%c1139653%_ _%c1139648139650%_)
                              (_%c2139654139656%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self139568%_
                                  _%L139629%_))))
                         (if _%c2139654139656%_
                             (let ((_%c2139659%_ _%c2139654139656%_))
                               (if (fx= _%c1139653%_ _%c2139659%_)
                                   _%c1139653%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd139586139624%_
               _%hd139583139616%_
               _%hd139580139608%_)
              (_%g139571139592%_ _%g139572139595%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139571139592%_
                                               _%g139572139595%_))))
                                      (_%g139571139592%_ _%g139572139595%_))))
                              (_%g139571139592%_ _%g139572139595%_))))
                      (_%g139571139592%_ _%g139572139595%_)))))
          (_%g139570139662%_ _%stx139569%_))))))
